struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(false, false, true, true, false, true, false, true, true, true, true, true);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(false, -2097f), Struct_1(true, -1436f), Struct_1(true, -3081f), Struct_1(true, -1630f), Struct_1(true, 610f), Struct_1(true, -590f), Struct_1(false, 1527f), Struct_1(true, -1008f), Struct_1(false, -1000f), Struct_1(true, -1296f), Struct_1(true, 1196f));

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(0u, Struct_1(true, -335f), Struct_1(false, -1185f), vec2<bool>(true, true)), Struct_2(1u, Struct_1(true, 1393f), Struct_1(true, -475f), vec2<bool>(true, false)), Struct_2(58427u, Struct_1(false, 1000f), Struct_1(true, 233f), vec2<bool>(true, true)), Struct_2(33082u, Struct_1(true, -272f), Struct_1(true, 497f), vec2<bool>(true, true)), Struct_2(1u, Struct_1(false, -971f), Struct_1(false, 853f), vec2<bool>(false, true)), Struct_2(27574u, Struct_1(false, 283f), Struct_1(true, -707f), vec2<bool>(true, false)), Struct_2(15126u, Struct_1(false, -1127f), Struct_1(true, -805f), vec2<bool>(false, false)), Struct_2(26318u, Struct_1(false, 596f), Struct_1(false, -224f), vec2<bool>(false, false)), Struct_2(0u, Struct_1(false, 351f), Struct_1(true, -620f), vec2<bool>(false, true)), Struct_2(1u, Struct_1(false, 211f), Struct_1(false, 290f), vec2<bool>(false, false)), Struct_2(22834u, Struct_1(false, -287f), Struct_1(false, -1826f), vec2<bool>(true, false)), Struct_2(51310u, Struct_1(true, 1119f), Struct_1(true, -1687f), vec2<bool>(false, true)), Struct_2(32680u, Struct_1(true, 444f), Struct_1(false, 1022f), vec2<bool>(false, false)), Struct_2(45752u, Struct_1(false, -1422f), Struct_1(false, 902f), vec2<bool>(true, false)), Struct_2(57630u, Struct_1(false, -1000f), Struct_1(false, 183f), vec2<bool>(false, false)), Struct_2(0u, Struct_1(true, -1000f), Struct_1(true, -1549f), vec2<bool>(false, true)), Struct_2(0u, Struct_1(true, 2094f), Struct_1(false, -788f), vec2<bool>(false, true)), Struct_2(28850u, Struct_1(false, 522f), Struct_1(true, -1000f), vec2<bool>(false, false)), Struct_2(13950u, Struct_1(false, 394f), Struct_1(false, 1271f), vec2<bool>(false, true)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool) -> f32 {
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-1983f, -1387f, false))))), -285f));
}

fn func_2() -> Struct_4 {
    global2 = array<Struct_2, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3(true)), 548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(106f, 1000f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)])), -1080f)))))));
    let var_1 = Struct_1(!global0[_wgslsmith_index_u32(4294967295u, 12u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(724f))))))));
    let var_2 = ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x);
    var var_3 = Struct_2(1u, global1[_wgslsmith_index_u32(u_input.b.x, 11u)], Struct_1(var_1.a, var_1.b), vec2<bool>(true || all(vec4<bool>(false, var_1.a, false, global0[_wgslsmith_index_u32(1u, 12u)])), global0[_wgslsmith_index_u32(~abs(4294967295u), 12u)]));
    return Struct_4(Struct_1(true, var_3.b.b));
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = func_2();
    var var_1 = ~(~max(0u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.b.x)));
    var var_2 = Struct_1(arg_0, 2686f);
    var var_3 = var_2.b;
    global1 = array<Struct_1, 11>();
    return firstTrailingBit(_wgslsmith_div_u32(u_input.b.x, min(u_input.b.x, u_input.b.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = ~0i;
    let var_1 = var_0;
    global1 = array<Struct_1, 11>();
    let var_2 = var_0 & -abs(0i);
    global1 = array<Struct_1, 11>();
    return Struct_2(firstLeadingBit(u_input.b.x >> (~(~15329u) % 32u)), func_2().a, func_2().a, vec2<bool>(!(!(arg_0.b != arg_1.b)), arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global1 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_div_u32(min(49493u, _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 1u)), 1u) >= abs(select(0u, ~u_input.b.x | (u_input.b.x << (u_input.b.x % 32u)), !(15349u > u_input.b.x)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 12u)];
    var_1 = any(vec3<bool>(any(!vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 12u)], false)) && (!global0[_wgslsmith_index_u32(40444u, 12u)] || true), global0[_wgslsmith_index_u32(u_input.b.x, 12u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(45513u, 45250u), 20549u), 12u)] | true));
    global1 = array<Struct_1, 11>();
    var var_3 = func_4(global1[_wgslsmith_index_u32(func_1(any(vec2<bool>(false & global0[_wgslsmith_index_u32(27001u, 12u)], false))), 11u)], Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1431f))))));
    global0 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_sub_i32(~u_input.a.x, u_input.c.x ^ 2147483647i), ~4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_3.b.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(578f))))));
}

