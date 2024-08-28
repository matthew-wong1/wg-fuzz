struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: i32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, u_input.a.x >= (2372i << (arg_1 % 32u)), true), vec4<bool>(true, any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), any(vec2<bool>(true, true)), false));
    let var_1 = arg_1;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 - arg_0), _wgslsmith_f_op_f32(min(arg_0, 723f))))), !select(vec2<bool>(var_0.x, !var_0.x), select(var_0.yx, var_0.wz, !var_0.yy), var_0.zx), arg_0);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_f_op_f32(arg_0 + arg_0)))), 553f, _wgslsmith_f_op_f32(f32(-1f) * -532f)));
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = ~(-(~(-62214i)));
    let var_0 = -1458f;
    global1 = ~((-1i >> (select(4294967295u, firstLeadingBit(0u), true) % 32u)) & _wgslsmith_sub_i32(u_input.a.x, i32(-1i) * -47864i));
    var var_1 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + -991f), -1908f))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2068f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -521f))));
    return ~u_input.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-118f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2283f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1849f, -560f))), true)), _wgslsmith_f_op_f32(1000f * 1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(floor(1996f))), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_div_f32(716f, -663f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_2, arg_2) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, 1273f, -286f, -283f) + vec4<f32>(arg_2, -2217f, -1000f, 448f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, arg_2, arg_2)) + vec4<f32>(-642f, arg_2, arg_2, -112f)))));
    var var_1 = _wgslsmith_f_op_f32(round(103f));
    let var_2 = vec4<i32>(~arg_3.x, _wgslsmith_sub_i32(2147483647i, ~_wgslsmith_div_i32(~(-23672i), _wgslsmith_sub_i32(-1i, arg_3.x))), arg_3.x, _wgslsmith_dot_vec2_i32(~(vec2<i32>(-11073i, 1i) ^ vec2<i32>(arg_1, -51220i)), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.x, u_input.a.x), u_input.a))) ^ ~arg_3.x);
    let var_3 = _wgslsmith_f_op_f32(round(var_0.x));
    var var_4 = _wgslsmith_sub_i32(firstLeadingBit(~(-66556i)), func_3(func_2(_wgslsmith_f_op_f32(var_0.x + var_3), ~538u), true) >> (_wgslsmith_mult_u32(~countOneBits(arg_0.x), _wgslsmith_mult_u32(arg_0.x, arg_0.x)) % 32u));
    return Struct_2(arg_0, min(arg_0.x, _wgslsmith_add_u32(~_wgslsmith_sub_u32(1u, arg_0.x), _wgslsmith_div_u32(30863u, arg_0.x))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_2) -> bool {
    global0 = -firstTrailingBit(firstTrailingBit(func_3(func_2(881f, arg_2), true)));
    var var_0 = func_2(_wgslsmith_f_op_f32(-arg_1.x), arg_2);
    global1 = -36100i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.a, arg_1.yx))))), vec2<bool>(~(1u ^ arg_3.b) != arg_2, any(!vec4<bool>(false, var_0.b.x, false, false))), arg_1.x);
    let var_2 = arg_0;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<i32>(u_input.a.x, ~2147483647i, abs(5887i | u_input.a.x)) & _wgslsmith_mod_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(26846i, u_input.a.x, u_input.a.x))), vec3<i32>(-u_input.a.x, -2147483647i, -u_input.a.x)), vec3<i32>(-(i32(-1i) * -30440i), -u_input.a.x, -30627i), vec3<bool>((all(vec2<bool>(false, false)) & true) & true, false, !func_4(11736i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(890f, 890f, -455f)), 0u, func_1(vec3<u32>(0u, 65432u, 66884u), u_input.a.x, 532f, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(10092u, reverseBits(_wgslsmith_sub_u32(firstLeadingBit(22280u), _wgslsmith_mod_u32(4294967295u, 4294967295u)))), 40512u, _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1380f))), ~_wgslsmith_mod_u32(63562u, 4294967295u)).a.x), 10021u, vec4<u32>(min(0u, 1u), _wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, 1u), ~_wgslsmith_sub_u32(4294967295u, 27844u)), ~48240u, _wgslsmith_mult_u32(1u, ~1u >> (firstTrailingBit(19243u) % 32u))));
}

