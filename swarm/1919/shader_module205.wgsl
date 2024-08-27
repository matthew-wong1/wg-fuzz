struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    let var_0 = max(-u_input.a.x, -(~0i));
    let var_1 = abs(1i);
    var var_2 = -u_input.a;
    var_2 = u_input.a;
    let var_3 = ~abs(~_wgslsmith_div_u32(_wgslsmith_div_u32(117408u, 38140u), 4294967295u));
    return firstLeadingBit(var_3 | firstTrailingBit(1u));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_1(!arg_0, u_input.a, -vec2<i32>(-reverseBits(u_input.a.x), u_input.a.x));
    var var_1 = _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 2912u, 4294967295u, 0u), vec4<u32>(9892u, 4294967295u, 38676u, 1u)) >> (1u % 32u)), ~1u);
    var_1 = _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(~0u, ~4294967295u, reverseBits(111566u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(52658u, 15271u, 1u), ~vec3<u32>(51613u, 70037u, 1u), vec3<u32>(1u, 1u, 1u))), ((countOneBits(vec3<u32>(0u, 27586u, 4294967295u)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) & select(vec3<u32>(18869u, 0u, 0u), vec3<u32>(1u, 1u, 1u), vec3<bool>(var_0.a.x, arg_0.x, var_0.a.x))) | vec3<u32>(1u, 1u, 1u));
    let var_2 = vec2<u32>(40957u, _wgslsmith_dot_vec2_u32(vec2<u32>(53925u, _wgslsmith_mod_u32(4294967295u, max(4294967295u, 1u))), select(vec2<u32>(5935u, select(1u, 90151u, false)), _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(20970u, 48801u)), vec2<u32>(6834u, 12890u)), select(!vec2<bool>(var_0.a.x, true), !var_0.a.wy, !arg_0.xz))));
    var var_3 = _wgslsmith_f_op_f32(round(259f));
    return _wgslsmith_mod_vec4_u32(max(select(~vec4<u32>(var_2.x, 1u, 4294967295u, var_2.x) | (vec4<u32>(var_2.x, 4294967295u, var_2.x, 1u) ^ vec4<u32>(0u, var_2.x, var_2.x, 42062u)), firstTrailingBit(~vec4<u32>(5251u, var_2.x, 1u, var_2.x)), vec4<bool>(53045u != var_2.x, var_0.a.x | true, false, true)), ~(vec4<u32>(var_2.x, var_2.x, var_2.x, 24327u) ^ ~vec4<u32>(var_2.x, 1u, 0u, var_2.x))), ~abs(abs(vec4<u32>(15993u, 34850u, 14490u, 4294967295u) ^ vec4<u32>(0u, var_2.x, var_2.x, 4294967295u))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: bool) -> vec3<bool> {
    let var_0 = ~(~func_3(select(!vec4<bool>(false, arg_3, true, arg_3), !vec4<bool>(true, arg_3, true, arg_3), select(vec4<bool>(arg_3, arg_3, true, arg_3), vec4<bool>(false, true, true, arg_3), true)), vec3<f32>(_wgslsmith_f_op_f32(abs(682f)), _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-arg_0)), vec2<f32>(_wgslsmith_f_op_f32(floor(-803f)), -1594f)));
    var var_1 = _wgslsmith_f_op_f32(-arg_2);
    let var_2 = true;
    let var_3 = Struct_2(!vec3<bool>(all(vec3<bool>(arg_3, arg_3, arg_3)), all(select(vec2<bool>(false, var_2), vec2<bool>(true, arg_3), false)), true), firstTrailingBit(vec4<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, firstLeadingBit(u_input.a.x))) >> (~var_0 % vec4<u32>(32u)), Struct_1(select(vec4<bool>(arg_0 <= -1161f, any(vec4<bool>(true, true, false, false)), arg_3, any(vec3<bool>(arg_3, true, var_2))), vec4<bool>(var_2, var_2, !arg_3, !var_2), arg_3), vec2<i32>(_wgslsmith_div_i32(-50802i, u_input.a.x) ^ -3686i, u_input.a.x), vec2<i32>(select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 46550i, -19499i), vec3<i32>(38004i, -894i, 0i)), u_input.a.x, any(vec3<bool>(false, false, var_2))), -1478i)));
    let var_4 = (var_2 && var_2) | any(select(var_3.a, var_3.a, var_3.c.a.yww));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = select(select(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(var_0, false), vec2<bool>(true, var_0), var_0)), vec2<bool>(false, true), var_0), !select(select(!vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0)), !select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), var_0), !(!var_0)), countOneBits(~54514u) >= func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(333f)), _wgslsmith_f_op_f32(f32(-1f) * -144f)), vec2<bool>(all(vec2<bool>(false, true)), var_0 | var_0)));
    let var_2 = _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-55487i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, -6616i)), _wgslsmith_mult_i32(1i, u_input.a.x))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, 1i, _wgslsmith_mult_i32(2147483647i, u_input.a.x)), max(vec3<i32>(2147483647i, u_input.a.x, -14065i), vec3<i32>(u_input.a.x, -11621i, u_input.a.x))), countOneBits(-abs(vec3<i32>(-2972i, -2147483647i, u_input.a.x))), select(func_2(_wgslsmith_f_op_f32(round(-631f)), ~1u, -248f, true), select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, false, false)), func_2(-1127f, 4294967295u, 696f, true))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -11818i, -2147483647i), firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(u_input.a.x, 32788i, u_input.a.x)) >> (max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 0u, 0u)) % vec3<u32>(32u)), abs(-vec3<i32>(u_input.a.x, 56182i, -2147483647i) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), true));
    var var_3 = var_0;
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(544f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(641f))));
    let var_4 = Struct_5(vec4<u32>(firstLeadingBit(firstLeadingBit(~33931u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(9063u, 58906u, 0u), ~vec3<u32>(29855u, 1u, 28243u)), (4294967295u | _wgslsmith_clamp_u32(0u, 79382u, 687u)) ^ 0u, ~55910u), abs(-(~(vec2<i32>(var_2.x, u_input.a.x) & u_input.a))), var_2.x, select(!vec4<bool>(var_1.x, var_1.x, all(vec3<bool>(var_1.x, var_0, true)), all(vec3<bool>(var_1.x, true, true))), !select(vec4<bool>(var_0, false, false, var_0), select(vec4<bool>(true, true, false, true), vec4<bool>(true, var_0, true, var_1.x), vec4<bool>(true, true, false, false)), !vec4<bool>(var_0, true, var_0, true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, (_wgslsmith_mult_u32(var_4.a.x, ~4294967295u) << ((select(var_4.a.x, 53590u, true) << (var_4.a.x % 32u)) % 32u)) & 0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-991f, 1000f)) - vec2<f32>(-219f, 145f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1775f, 1000f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(206f, -468f), vec2<f32>(967f, 736f))))), vec2<f32>(_wgslsmith_f_op_f32(round(-1309f)), -1134f))));
}

