struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: array<vec2<u32>, 22>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    global1 = array<vec2<u32>, 22>();
    let var_0 = Struct_5(Struct_4(firstLeadingBit(abs(u_input.b << (0u % 32u)))), Struct_4(91601u), vec3<i32>(arg_1.c, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a, -1i), ~abs(18243i), reverseBits(~8515i)), ~_wgslsmith_div_i32(-1i, -23679i) ^ ~arg_1.c));
    let var_1 = abs(var_0.c.yx);
    var var_2 = vec4<bool>(true, false, global0.x, !all(!arg_1.a.xx));
    global1 = array<vec2<u32>, 22>();
    return _wgslsmith_f_op_f32(floor(arg_1.b.x));
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(u_input.b, _wgslsmith_mult_u32(~13371u, _wgslsmith_mod_u32(firstTrailingBit(~1u), firstTrailingBit(1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(293f, 1175f, 952f, 1267f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(386f, -172f, 2190f, -968f) * vec4<f32>(3137f, 1776f, -363f, 1169f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(global0.x, global0.x, global0.x, global0.x), Struct_1(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<f32>(860f, 1382f, -423f, 425f), 15798i, vec4<f32>(-1664f, 787f, -2085f, 645f)))) * _wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, false, true), Struct_1(vec4<bool>(true, global0.x, true, global0.x), vec4<f32>(-1282f, 657f, -727f, 261f), u_input.a, vec4<f32>(-296f, 684f, -892f, 160f))))), _wgslsmith_f_op_f32(min(-1641f, _wgslsmith_f_op_f32(f32(-1f) * -551f))), _wgslsmith_f_op_f32(f32(-1f) * -1649f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(763f, 998f) * -775f))));
    let var_1 = Struct_2(u_input.b, ~(~(~12906u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 9681u), vec2<u32>(u_input.b, 120736u)) % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_0.c, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_0.c - var_0.c))))) * var_0.c));
    var var_2 = Struct_4(arg_0);
    var_2 = Struct_4(var_2.a);
    let var_3 = _wgslsmith_f_op_f32(floor(-1164f));
    return Struct_1(select(!vec4<bool>(all(global0.wwz), true, !global0.x, true), select(vec4<bool>(true, global0.x, global0.x, false & global0.x), !(!vec4<bool>(true, false, global0.x, true)), select(select(vec4<bool>(false, false, global0.x, true), vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(true, global0.x, global0.x, true)), select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x), vec4<bool>(global0.x, true, true, global0.x))), vec4<bool>(select(!global0.x, var_1.c.x > var_3, any(vec3<bool>(true, false, global0.x))), false, true, global0.x)), _wgslsmith_f_op_vec4_f32(-var_1.c), u_input.a, var_0.c);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> u32 {
    var var_0 = func_2(~1u);
    let var_1 = vec2<bool>(true, !any(vec4<bool>(var_0.a.x, -62394i != u_input.a, var_0.a.x || false, false)));
    global1 = array<vec2<u32>, 22>();
    var var_2 = !(!((true && all(arg_0.a)) || (arg_1 >= _wgslsmith_f_op_f32(select(var_0.b.x, arg_1, var_1.x)))));
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(2445f)))) * -899f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -125f), arg_0.d.x))))));
    return ~min(u_input.b, ~(~(~arg_2.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-974f - -2009f) * 529f) + -582f), 1066f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-276f + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(-var_0.x));
    let var_1 = ~vec4<i32>(u_input.a, 1i, 2147483647i >> (u_input.b % 32u), 0i >> (~func_1(Struct_1(vec4<bool>(global0.x, false, false, true), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), u_input.a, vec4<f32>(547f, 1523f, -127f, var_0.x)), var_0.x, Struct_4(u_input.b)) % 32u));
    global1 = array<vec2<u32>, 22>();
    global1 = array<vec2<u32>, 22>();
    let var_2 = u_input.b ^ _wgslsmith_sub_u32(u_input.b, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(2876u, 3523u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 46674u, u_input.b), vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(612u, 1u, 1u)))));
    var var_3 = Struct_5(Struct_4(var_2), Struct_4(47080u), var_1.zww);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - 398f), var_0.x))), 29958u ^ _wgslsmith_div_u32(var_2, ~1u));
}

