struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23> = array<vec3<i32>, 23>(vec3<i32>(-27956i, -2296i, -7598i), vec3<i32>(-47711i, 81990i, 18270i), vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-45854i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 1i, 1i), vec3<i32>(2147483647i, -21136i, 0i), vec3<i32>(0i, -71626i, 1i), vec3<i32>(65894i, i32(-2147483648), -1i), vec3<i32>(1i, -1i, 0i), vec3<i32>(i32(-2147483648), 1i, -29224i), vec3<i32>(-20534i, -1i, 0i), vec3<i32>(0i, 0i, 4341i), vec3<i32>(1i, i32(-2147483648), 13910i), vec3<i32>(26767i, 41350i, 2147483647i), vec3<i32>(i32(-2147483648), 0i, -16213i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -50255i), vec3<i32>(10998i, -31763i, -38934i), vec3<i32>(17435i, -6643i, -39665i), vec3<i32>(-6300i, 1i, 0i), vec3<i32>(-30517i, 1327i, 8258i), vec3<i32>(-1i, -4444i, 0i), vec3<i32>(14681i, 4071i, -825i));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), 958f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-512f)) * var_0.a)));
    let var_2 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), true)), 1052f)) * 200f);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_2) -> vec3<i32> {
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_1)))), _wgslsmith_f_op_f32(-arg_2.a.a.x), global1.a.x), ~_wgslsmith_dot_vec2_u32(arg_1.b, vec2<u32>(1u, ~u_input.c)));
    var var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.a.a.x, arg_2.b.a.x)))), arg_2.e), ~arg_1.b, abs(_wgslsmith_dot_vec4_i32(~(~u_input.a), u_input.a)));
    global1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-877f, global1.a.x, _wgslsmith_f_op_f32(min(var_0.a, arg_1.a)))), arg_2.a.a), 15985u);
    global0 = array<vec3<i32>, 23>();
    var var_1 = global1.b <= 4294967295u;
    return _wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_sub_i32(abs(-8089i), -28i & var_0.c), -2724i, -30040i), vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(u_input.a.yxx, abs(vec3<i32>(-1i, u_input.a.x, -1i))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global0 = array<vec3<i32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(floor(1f));
    var var_1 = select(~(func_2(select(vec4<i32>(u_input.a.x, u_input.b, -1i, 9254i), u_input.a, vec4<bool>(true, true, true, false)), Struct_3(458f, vec2<u32>(u_input.c, global1.b), -2147483647i), Struct_2(Struct_1(vec3<f32>(arg_0, 900f, arg_0), global1.b), Struct_1(vec3<f32>(arg_0, 353f, global1.a.x), u_input.c), 12377u, true, global1.a.x)) ^ abs(-vec3<i32>(u_input.b, u_input.b, -4585i))), u_input.a.yxw, select(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true), vec3<bool>(true, any(vec3<bool>(false, false, false)), func_2(vec4<i32>(-59620i, 40834i, u_input.b, u_input.b), Struct_3(-336f, vec2<u32>(0u, 11657u), 0i), Struct_2(Struct_1(global1.a, 78596u), Struct_1(vec3<f32>(arg_0, 717f, arg_0), global1.b), global1.b, false, 1019f)).x >= ~u_input.b), true));
    global1 = Struct_1(global1.a, global1.b);
    global0 = array<vec3<i32>, 23>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(ceil(arg_0)), global1.a.x)), ~global1.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    var var_0 = u_input.c;
    global1 = arg_0.a;
    let var_1 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a.x - arg_1.a.a.x)))))));
    global0 = array<vec3<i32>, 23>();
    var var_2 = Struct_2(arg_0.b, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(415f, arg_0.a.a.x, -324f), _wgslsmith_f_op_vec3_f32(vec3<f32>(783f, arg_1.b.a.x, arg_1.e) * arg_1.b.a))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.a) * _wgslsmith_f_op_vec3_f32(trunc(var_1.a)))), ~(u_input.c | _wgslsmith_add_u32(global1.b, 63444u))), arg_1.c, _wgslsmith_f_op_f32(min(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, arg_0.d)) * func_1(global1.a.x).a.x))) >= _wgslsmith_div_f32(global1.a.x, 302f), 2126f);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e)))), max(~vec2<u32>(~u_input.c, 1u << (0u % 32u)), ~max(vec2<u32>(u_input.c, global1.b), _wgslsmith_div_vec2_u32(vec2<u32>(var_1.b, arg_1.b.b), vec2<u32>(arg_1.a.b, var_2.a.b)))), ~u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 23>();
    let var_0 = func_4(Struct_2(func_1(global1.a.x), func_1(_wgslsmith_f_op_f32(f32(-1f) * -465f)), ~(~firstLeadingBit(global1.b)), any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false)), _wgslsmith_f_op_f32(1362f + -1341f)), Struct_2(Struct_1(global1.a, 4294967295u), func_1(_wgslsmith_f_op_f32(global1.a.x + 1000f)), 1u, select(!(u_input.a.x >= -48981i), select(true, true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -876f) - -1000f))));
    let var_1 = 78668u;
    let var_2 = func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1321f))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + -378f);
    var var_4 = var_3;
    var var_5 = global1.a.x;
    var var_6 = func_1(var_3);
    var var_7 = func_1(-144f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, ~(~0u)) & var_0.b, vec2<f32>(-154f, var_6.a.x), -826f, 36001i, var_0.b);
}

