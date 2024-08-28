struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_5 = Struct_5(vec2<i32>(12740i, 2147483647i), true, Struct_2(vec2<bool>(false, true)), Struct_3(vec2<f32>(-1341f, 475f), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, false), vec3<f32>(-143f, 217f, -1000f), vec2<bool>(true, true), 10498i)));

var<private> global2: array<Struct_1, 30>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    var var_0 = ~vec3<u32>(max(abs(~16599u), 25970u), 0u, 1u);
    global2 = array<Struct_1, 30>();
    global2 = array<Struct_1, 30>();
    global4 = global3.x;
    global2 = array<Struct_1, 30>();
    return ~(~max(1u, var_0.x) ^ _wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(var_0.x, 0u, var_0.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, 7074u), ~vec3<u32>(var_0.x, var_0.x, var_0.x))));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_4, arg_3: u32) -> u32 {
    var var_0 = global1.d.b.c.zz;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.a.x, 1625f)))) + global1.d.a));
    global1 = Struct_5(u_input.b.zx, true, Struct_2(arg_2.b), global1.d);
    let var_1 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - -225f))), global1.d.b.c.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(235f)) + _wgslsmith_f_op_f32(global1.d.a.x + var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -703f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.x, var_0.x)))), var_1.x, _wgslsmith_f_op_f32(-1074f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))))));
    return ~1u >> (~reverseBits(arg_1) % 32u);
}

fn func_1() -> vec2<i32> {
    global3 = select(select(!(!select(vec2<bool>(global3.x, false), vec2<bool>(true, false), false)), !(!(!vec2<bool>(global1.c.a.x, true))), global1.d.b.a.xz), global1.c.a, !all(select(!vec2<bool>(global1.c.a.x, true), !vec2<bool>(global3.x, false), !global1.c.a)));
    var var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), func_3(global1.a.x, func_2(), Struct_4(select(vec3<bool>(global1.d.b.d.x, true, true), vec3<bool>(true, global1.d.b.d.x, true), global1.d.b.a), global1.d.b.b), abs(~11590u)) << ((_wgslsmith_mod_u32(~1u, 70472u) & _wgslsmith_div_u32(func_3(-2147483647i, 4294967295u, Struct_4(global1.d.b.a, vec2<bool>(true, false)), 50918u), _wgslsmith_dot_vec4_u32(vec4<u32>(17754u, 13199u, 0u, 63350u), vec4<u32>(10891u, 0u, 37427u, 71046u)))) % 32u), ~_wgslsmith_mod_u32(~(~1u), 69u), 1u);
    let var_1 = Struct_3(global1.d.b.c.zz, Struct_1(vec3<bool>(true, !(false & global3.x), true), vec2<bool>(!global3.x, global3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d.b.c) + global1.d.b.c), select(!select(global1.c.a, global1.c.a, global1.c.a), !(!vec2<bool>(global1.c.a.x, true)), vec2<bool>(true, global1.c.a.x || false)), 2147483647i));
    let var_2 = vec4<i32>(-47553i, u_input.a, -9948i, abs(-var_1.b.e));
    let var_3 = _wgslsmith_f_op_f32(exp2(var_1.b.c.x));
    return reverseBits(var_2.xy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_5(func_1(), global1.c.a.x, global1.c, global1.d);
    var var_0 = vec2<bool>(false, false);
    global3 = global1.c.a;
    var var_1 = !global1.c.a;
    global4 = any(select(global1.d.b.a, !vec3<bool>(true, any(global1.d.b.a), true), !global1.d.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(abs(3407u)) | func_3(~58432i, _wgslsmith_add_u32(48987u, 38486u), Struct_4(global1.d.b.a, vec2<bool>(false, var_0.x)), 4294967295u), _wgslsmith_sub_u32(19967u, _wgslsmith_mult_u32(0u, 1u))), global1.d.b.c, select(~_wgslsmith_div_vec4_u32(vec4<u32>(45509u, 12029u, 9086u, 69488u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_vec4_u32(countOneBits(~vec4<u32>(26817u, 2855u, 23493u, 25905u)), vec4<u32>(1u, 1u, 1u, 1u), countOneBits(~vec4<u32>(1u, 0u, 24961u, 1u))), vec4<bool>(false, !(false | global1.d.b.b.x), var_1.x, select(true, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global1.d.b.c.x)), -521f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d.b.c.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(global1.d.b.c.x, _wgslsmith_f_op_f32(max(global1.d.b.c.x, 147f)))))), false & global3.x)));
}

