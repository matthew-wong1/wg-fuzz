struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = min(firstTrailingBit(countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a.zy), -u_input.a.wy))), _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, 49886i | u_input.a.x)), u_input.a.xz));
    var var_1 = vec4<i32>(u_input.a.x, _wgslsmith_div_i32(-31536i, 1i), 1i, 0i);
    var_1 = _wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, var_0.x), 58355i, -1i), -firstTrailingBit(var_1.x), -min(var_1.x, var_0.x), _wgslsmith_mult_i32(u_input.a.x, 1i)), _wgslsmith_div_vec4_i32(u_input.a, max(vec4<i32>(-4108i, 0i, ~11332i, 1i), vec4<i32>(select(var_1.x, 13993i, false), -14509i ^ u_input.a.x, var_1.x, -1i))));
    return _wgslsmith_sub_vec3_u32(~u_input.d, u_input.d);
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec2<f32>(-618f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1388f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)), -108f)));
    let var_1 = select(!select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false))), vec4<bool>(true, true, true, true), true), vec4<bool>(false, !(~51503i < -u_input.a.x), true, true), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(871f + 1089f) * _wgslsmith_f_op_f32(442f * var_0.x)) >= var_0.x));
    let var_2 = arg_0;
    var var_3 = u_input.b.x;
    var var_4 = Struct_1(_wgslsmith_clamp_u32(arg_0.a, _wgslsmith_mult_u32(var_2.a, func_2(vec2<f32>(var_0.x, var_0.x)).x), _wgslsmith_clamp_u32(0u, 25809u, ~arg_0.a)) ^ 1u);
    return min(firstTrailingBit(reverseBits(u_input.d << ((u_input.d & vec3<u32>(4294967295u, var_2.a, 1u)) % vec3<u32>(32u)))), vec3<u32>(~(~(~70036u)), 22502u, ~(~_wgslsmith_div_u32(u_input.b.x, arg_0.a))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~arg_1.b, 94880u, _wgslsmith_mult_u32(24579u, 5741u)), min(~vec3<u32>(0u, 36669u, 6932u), u_input.d)) << (~func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1086f, 835f) + vec2<f32>(1169f, -185f))) % vec3<u32>(32u)), vec3<u32>(4294967295u, arg_1.b, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d ^ u_input.d)) << (func_3(Struct_1(1u)) % vec3<u32>(32u)));
    var_0 = select(func_2(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-583f * 498f), _wgslsmith_f_op_f32(f32(-1f) * -557f), any(vec2<bool>(false, false)))), 255f)), countOneBits(reverseBits(reverseBits(~vec3<u32>(1u, 4294967295u, arg_0.b)))), _wgslsmith_clamp_i32(-1i, 1i, -31517i) != select(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(47081i, arg_0.a), _wgslsmith_add_i32(-1i, u_input.a.x), arg_1.a), arg_0.a, all(vec4<bool>(true, false, false, false))));
    let var_1 = arg_1;
    var_0 = u_input.d >> ((vec3<u32>(1u, var_1.b, ~_wgslsmith_div_u32(var_0.x, 4294967295u)) << (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_2 = 726f;
    return Struct_1(1u);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_3(vec4<bool>(1000f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1145f, arg_1))), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(abs(-1798f)) >= arg_1));
    let var_1 = _wgslsmith_add_vec4_i32(min(u_input.a, vec4<i32>(-_wgslsmith_mod_i32(arg_3.x, 1i), firstLeadingBit(firstLeadingBit(u_input.a.x)), 35344i, 61038i)), ~max(-(vec4<i32>(2147483647i, 2147483647i, 0i, arg_3.x) >> (vec4<u32>(u_input.b.x, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))), ~(~vec4<i32>(arg_3.x, -1i, arg_3.x, 28898i))));
    var var_2 = vec4<bool>(true, true, var_0.a.x, var_0.a.x);
    var_2 = vec4<bool>(~(13647u >> (arg_0.a % 32u)) <= firstLeadingBit(firstTrailingBit(max(arg_0.a, 4294967295u))), any(vec3<bool>(var_0.a.x, !var_0.a.x, any(var_0.a))), !all(select(var_0.a.wwx, var_2.yyw, var_0.a.x)), var_0.a.x);
    return !var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a.x & firstTrailingBit(u_input.a.x)) == u_input.a.x;
    var_0 = !(!all(func_4(func_1(Struct_2(u_input.a.x, 4294967295u), Struct_2(u_input.a.x, 15074u)), -874f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, -905f, 133f)), select(vec3<i32>(u_input.a.x, -12766i, -8135i), u_input.a.wxx, vec3<bool>(false, true, false)))));
    var var_1 = Struct_2(-2147483647i, 1u);
    var var_2 = max(_wgslsmith_mult_i32(_wgslsmith_sub_i32(1820i, 3081i & _wgslsmith_add_i32(var_1.a, var_1.a)), u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.yx, max(vec2<i32>(var_1.a, -33973i), u_input.a.zw)), -u_input.a.ww));
    var var_3 = ~(~_wgslsmith_mod_i32(var_1.a, abs(~var_1.a)));
    var var_4 = _wgslsmith_sub_i32(abs(reverseBits(i32(-1i) * -37571i)) ^ u_input.a.x, -(~2147483647i));
    var_4 = var_1.a;
    let var_5 = vec3<bool>(((all(vec3<bool>(false, false, true)) && (u_input.d.x > u_input.c)) & true) || any(vec2<bool>(true, true)), true, any(vec4<bool>(any(func_4(Struct_1(u_input.d.x), -2184f, vec3<f32>(-530f, -1121f, 566f), u_input.a.wyw).wx), any(vec3<bool>(true, true, true)), any(vec2<bool>(false, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.b, 1u, 1u));
}

