struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(52982i);

var<private> global1: array<vec4<i32>, 9>;

var<private> global2: Struct_3;

var<private> global3: array<f32, 32> = array<f32, 32>(773f, -424f, -347f, -140f, 1000f, -2237f, -2134f, -190f, 1261f, 1000f, 1086f, 637f, 1662f, 662f, 372f, -1000f, 656f, 116f, 366f, 151f, -661f, -120f, -222f, -1000f, 234f, -2681f, 650f, -3084f, -625f, 873f, 1159f, 1122f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    var var_0 = global2.c;
    global1 = array<vec4<i32>, 9>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-global2.d);
    var var_2 = Struct_3(_wgslsmith_div_i32(-(_wgslsmith_sub_i32(55793i, 0i) | -u_input.a.x), ~(i32(-1i) * -3114i)), global2.b, Struct_2(Struct_1(u_input.a.x), true, vec2<i32>(-48558i, global2.a)), _wgslsmith_f_op_vec4_f32(ceil(global2.d)), var_0.a);
    global3 = array<f32, 32>();
    return global2.b;
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    global2 = Struct_3(-2147483647i, min(firstLeadingBit(4294967295u), _wgslsmith_mod_u32(arg_0.x, 0u)), global2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-511f, -1000f)), _wgslsmith_f_op_f32(877f - global2.d.x), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(105822u, 32u)]), _wgslsmith_div_f32(-837f, 1140f)))), global2.c.a);
    var var_0 = Struct_4(!vec4<bool>(global2.c.b, true, global2.c.b, true));
    global3 = array<f32, 32>();
    let var_1 = Struct_4(vec4<bool>(any(vec4<bool>(all(var_0.a.wx), true, var_0.a.x && true, true)), global2.c.b, var_0.a.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.x, 1u), ~0u) != countOneBits(6612u)));
    var var_2 = vec4<bool>(all(var_1.a), !(false & ((false & global2.c.b) && false)), all(!vec2<bool>(u_input.a.x >= u_input.a.x, true & global2.c.b)), true);
    return ~select(vec4<u32>(max(arg_0.x, global2.b) >> (global2.b % 32u), 44596u, ~arg_0.x, arg_0.x), abs(select(vec4<u32>(19795u, 14025u, 4294967295u, 1u) & vec4<u32>(global2.b, 36803u, arg_0.x, 4294967295u), ~vec4<u32>(arg_0.x, 18704u, 26673u, 50355u), vec4<bool>(false, var_1.a.x, false, var_1.a.x))), var_0.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>) -> u32 {
    global3 = array<f32, 32>();
    let var_0 = abs(2147483647i);
    var var_1 = ~(~38140u >> (~(~global2.b) % 32u));
    global3 = array<f32, 32>();
    global3 = array<f32, 32>();
    return arg_0.x;
}

fn func_1() -> Struct_1 {
    global3 = array<f32, 32>();
    global1 = array<vec4<i32>, 9>();
    let var_0 = func_4(func_3(vec3<u32>(func_2(), ~1u, 46259u)), vec3<bool>(true, true, false));
    var var_1 = 0i;
    let var_2 = Struct_5(_wgslsmith_div_vec3_f32(global2.d.wxz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(31700u, 32u)], -473f, -533f) + vec3<f32>(1216f, 717f, global3[_wgslsmith_index_u32(var_0, 32u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global2.d.zxz, vec3<f32>(333f, global2.d.x, global3[_wgslsmith_index_u32(global2.b, 32u)]))), global2.c.b))), Struct_4(vec4<bool>(true, global2.c.b & any(vec2<bool>(false, global2.c.b)), global2.c.b, false)));
    return Struct_1(max(0i, global0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global2.c.c;
    var var_1 = func_1();
    global0 = global2.c.a;
    let var_2 = global2.d.yyx;
    var var_3 = -1000f;
    var var_4 = Struct_4(vec4<bool>(true, !global2.c.b, global2.c.b, global2.c.b));
    let var_5 = global2.d.xx;
    let x = u_input.a;
    s_output = StorageBuffer(global2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.b, 32u)]))))), _wgslsmith_f_op_f32(-global2.d.x), max(-4756i, global0.a));
}

