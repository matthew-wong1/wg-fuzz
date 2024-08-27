struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-892f, 1006f, 245f))), vec3<f32>(200f, 170f, 225f)))), vec3<f32>(_wgslsmith_f_op_f32(select(104f, _wgslsmith_f_op_f32(ceil(656f)), u_input.c.x > u_input.a)), _wgslsmith_div_f32(645f, -845f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1670f * 779f)))));
    let var_1 = 4294967295u;
    return select(select(vec2<bool>(true, true), vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -2221f)) < _wgslsmith_div_f32(-502f, _wgslsmith_f_op_f32(ceil(var_0.x)))), vec2<bool>(true, any(select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), false))), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = arg_3.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(1287f - 335f)))));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.d, 0i), -(vec2<i32>(1i, 1i) | vec2<i32>(42419i, u_input.e)) << (~reverseBits(_wgslsmith_div_vec2_u32(u_input.b.yz, vec2<u32>(57714u, u_input.b.x))) % vec2<u32>(32u)));
    var_2 = -1i;
    let var_3 = arg_0;
    return select(func_3(), select(var_3.a, vec2<bool>(true | var_3.a.x, (var_0 >> (21750u % 32u)) == _wgslsmith_sub_u32(8583u, 0u)), false), select(vec2<bool>(true, u_input.d == 1i), select(select(vec2<bool>(arg_0.a.x, arg_0.a.x), vec2<bool>(var_3.a.x, false), select(arg_0.a, var_3.a, arg_0.a)), select(select(vec2<bool>(true, var_3.a.x), vec2<bool>(false, true), vec2<bool>(var_3.a.x, var_3.a.x)), vec2<bool>(var_3.a.x, var_3.a.x), true || var_3.a.x), arg_0.a.x), false));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true), false), !func_2(Struct_1(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(154f, 561f, -472f, 1842f)), _wgslsmith_f_op_f32(f32(-1f) * -627f), _wgslsmith_mod_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, u_input.b.x))), true));
    let var_1 = var_0.a;
    var_0 = Struct_1(var_0.a);
    var var_2 = u_input.d <= min(-u_input.e, _wgslsmith_add_i32(-(u_input.e ^ u_input.e), ~reverseBits(1i)));
    var_0 = Struct_1(var_0.a);
    return u_input.b.x | 1u;
}

fn func_4(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_1(!(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true)));
    var var_1 = false;
    var var_2 = vec2<u32>(~firstLeadingBit(_wgslsmith_div_u32(arg_0, u_input.c.x) >> (27696u % 32u)), ~_wgslsmith_dot_vec3_u32(u_input.c.www << ((u_input.c.wwx << (vec3<u32>(arg_0, 4294967295u, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~u_input.b)));
    var var_3 = _wgslsmith_mult_u32(~var_2.x, ~min(4294967295u, abs(u_input.a | var_2.x)));
    let var_4 = select(u_input.b, vec3<u32>(_wgslsmith_add_u32(u_input.a, 14784u), min(1u, 4294967295u), 41848u), vec3<bool>(true || var_0.a.x, true, false));
    return Struct_3(52003u, Struct_2(var_0.a.x, Struct_1(var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec4_u32(select(~u_input.c, _wgslsmith_mult_vec4_u32(~u_input.c, _wgslsmith_mod_vec4_u32(u_input.c, u_input.c)), false), ~vec4<u32>(45682u >> (u_input.c.x % 32u), u_input.c.x, ~u_input.c.x, ~4294967295u));
    var var_1 = func_4(func_1());
    let var_2 = vec2<f32>(464f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-682f - 320f))))));
    let var_3 = Struct_1(vec2<bool>(55373u <= var_0.x, all(vec2<bool>(true, true))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(789f)) * _wgslsmith_f_op_f32(-var_2.x));
    let var_5 = var_1.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(27154u, ~(~vec3<u32>(var_1.a, 32775u, 35536u) & _wgslsmith_mult_vec3_u32(vec3<u32>(25494u, u_input.a, 1u), var_0.wwx)) >> (u_input.c.xwy % vec3<u32>(32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1272f)), _wgslsmith_f_op_f32(var_2.x - -716f)))), 1000f));
}

