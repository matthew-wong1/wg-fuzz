struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1229f, -228f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_3(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(floor(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) * _wgslsmith_div_f32(global0.x, 635f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-579f, _wgslsmith_div_f32(global0.x, global0.x))) - _wgslsmith_div_f32(global0.x, _wgslsmith_div_f32(global0.x, global0.x)))), (true && (true && any(vec2<bool>(true, true)))) & false, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f + _wgslsmith_f_op_f32(-234f - global0.x))), ~_wgslsmith_clamp_vec2_u32(arg_0.ww, ~vec2<u32>(4555u, u_input.d), ~vec2<u32>(1u, 72585u)), max(u_input.b, ~(u_input.b << (4294967295u % 32u)))));
    var var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(672f))) != 632f) || all(vec2<bool>(var_0.d.a < _wgslsmith_div_f32(var_0.b, -420f), all(vec2<bool>(var_0.c, false))));
    var var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 47238u, _wgslsmith_dot_vec4_u32(select(_wgslsmith_mult_vec4_u32(arg_0, arg_0), ~arg_0, !vec4<bool>(var_0.c, true, false, true)), vec4<u32>(~10505u, ~arg_0.x, 0u, 61244u))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(arg_0.x, u_input.c & 0u, 1u), 1u, arg_0.x, _wgslsmith_mod_u32(1u, 4294967295u)), vec4<u32>(~(arg_0.x >> (9225u % 32u)), _wgslsmith_dot_vec4_u32(arg_0 & arg_0, vec4<u32>(56151u, 38003u, 14343u, arg_0.x)), var_0.d.b.x, abs(u_input.a.x))), arg_0);
    let var_3 = _wgslsmith_div_i32(2147483647i, var_0.d.c);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-520f, var_0.b, 768f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(var_0.d.a * -917f), _wgslsmith_f_op_f32(f32(-1f) * -247f))), !(!(!vec3<bool>(true, var_0.c, true))))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(259f, 1029f, false)) * 242f), global0.x, _wgslsmith_f_op_f32(max(-2637f, _wgslsmith_f_op_f32(1627f * 1175f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(408f, -1814f, 1000f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, global0.x) * vec3<f32>(-454f, global0.x, var_0.b)))))));
    return select(select(select(select(vec3<bool>(var_0.c, false, var_0.c), !vec3<bool>(true, var_0.c, var_0.c), select(vec3<bool>(true, false, var_0.c), vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(var_0.c, false, false))), !vec3<bool>(var_0.c, var_0.c, true), true), !select(select(vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(var_0.c, true, true), false), vec3<bool>(var_0.c, false, var_0.c), select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.c, var_0.c, false), vec3<bool>(var_0.c, var_0.c, false))), !(!any(vec3<bool>(var_0.c, var_0.c, true)))), !select(vec3<bool>(true, false, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(var_0.c, false, true)), !var_0.c), true);
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_3(~_wgslsmith_mod_u32(max(reverseBits(58267u), _wgslsmith_sub_u32(u_input.c, u_input.c)), _wgslsmith_sub_u32(~0u, ~18737u)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-462f + global0.x))), !any(select(func_3(vec4<u32>(u_input.a.x, 58559u, 4294967295u, u_input.c)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)))), Struct_2(-173f, u_input.a.yz, firstLeadingBit(u_input.b)));
    var_0 = Struct_3(u_input.d, var_0.d.a, all(!func_3(min(vec4<u32>(28253u, 1u, 0u, 27557u), vec4<u32>(u_input.a.x, 4294967295u, var_0.d.b.x, 11626u)))), var_0.d);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1566f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.d.a)))))));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -543f))))));
    let var_2 = _wgslsmith_sub_u32(~(~16997u), u_input.a.x);
    return max(countOneBits(vec4<i32>(-2147483647i, _wgslsmith_sub_i32(-var_0.d.c, ~(-2147483647i)), 2147483647i, 4479i)), firstTrailingBit(abs(vec4<i32>(var_0.d.c, var_0.d.c, var_0.d.c, u_input.e)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(3228u, 0u, 4294967295u, var_0.a), ~vec4<u32>(0u, 23813u, var_2, var_2)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    global0 = vec2<f32>(-2505f, 747f);
    let var_0 = ~abs(func_2());
    let var_1 = select(max(var_0, var_0), -(~(-var_0)), false);
    var var_2 = vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var_2 = arg_1.yy;
    return 43904u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = !vec3<bool>(true, select(func_1(Struct_1(-562f), vec4<f32>(global0.x, global0.x, 226f, -786f)) > var_0, (global0.x < global0.x) || true, firstLeadingBit(u_input.c) < max(1u, 47806u)), any(vec2<bool>(true, true)));
    let var_2 = Struct_4(Struct_3(~var_0, _wgslsmith_f_op_f32(floor(478f)), all(!vec2<bool>(false, var_1.x)), Struct_2(-1027f, reverseBits(u_input.a.yz), 0i)), !select(select(var_1.yy, select(var_1.yy, var_1.xz, var_1.x), all(vec3<bool>(var_1.x, true, false))), !(!var_1.xy), var_1.x), vec4<u32>(~_wgslsmith_clamp_u32(~u_input.d, 4294967295u, var_0), countOneBits(u_input.a.x) ^ _wgslsmith_dot_vec2_u32(select(u_input.a.xx, vec2<u32>(4294967295u, 4294967295u), vec2<bool>(var_1.x, true)), u_input.a.xy), var_0, _wgslsmith_mult_u32(var_0, ~0u)));
    let var_3 = vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.d.b.x, 1u), vec2<u32>(var_0, 20243u)), _wgslsmith_mod_u32(u_input.a.x, var_0)), _wgslsmith_dot_vec4_u32(~var_2.c, ~var_2.c))), var_0, firstTrailingBit(1u), var_2.c.x);
    var_1 = vec3<bool>(true, false, !(var_2.a.d.a <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -501f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~(firstTrailingBit(var_2.a.d.b) >> (var_2.a.d.b % vec2<u32>(32u))), vec2<u32>(var_0, var_3.x)), var_2.a.d.c, vec3<f32>(-525f, 239f, 1184f), u_input.d);
}

