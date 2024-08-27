struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25> = array<vec4<f32>, 25>(vec4<f32>(-2227f, -624f, 2331f, -414f), vec4<f32>(768f, 678f, 1029f, -919f), vec4<f32>(543f, 1363f, -343f, 2042f), vec4<f32>(377f, -330f, -1408f, 1000f), vec4<f32>(243f, 215f, -2244f, 1742f), vec4<f32>(200f, 957f, -523f, -1121f), vec4<f32>(-861f, -714f, 118f, -478f), vec4<f32>(107f, 382f, -612f, 698f), vec4<f32>(-1807f, 713f, 1509f, -1906f), vec4<f32>(-1212f, 1247f, 421f, 577f), vec4<f32>(-592f, 502f, -115f, 1314f), vec4<f32>(-437f, 1000f, 1481f, -579f), vec4<f32>(283f, 437f, -1450f, 1563f), vec4<f32>(857f, 161f, 392f, -993f), vec4<f32>(1005f, -126f, 577f, 1326f), vec4<f32>(-881f, -166f, -800f, -1141f), vec4<f32>(1385f, -2216f, 1485f, 1229f), vec4<f32>(262f, 548f, -962f, 542f), vec4<f32>(389f, 1520f, 410f, 1000f), vec4<f32>(-139f, 889f, -415f, -398f), vec4<f32>(464f, 448f, -690f, 1186f), vec4<f32>(-455f, 797f, -1359f, -457f), vec4<f32>(1208f, -197f, -164f, 500f), vec4<f32>(774f, -2299f, -196f, 1228f), vec4<f32>(249f, 626f, 1925f, 1399f));

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, true, true), vec2<f32>(1000f, 711f), vec3<bool>(false, true, false));

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), i32(-2147483648));

var<private> global3: vec4<u32> = vec4<u32>(1u, 47015u, 19877u, 64134u);

var<private> global4: array<Struct_2, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    let var_0 = -28503i;
    let var_1 = vec4<bool>(true, global1.c.x, global1.a.x, !global1.c.x);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + global1.b.x)))));
    global3 = ~abs(_wgslsmith_div_vec4_u32(~(~u_input.b), vec4<u32>(_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_div_u32(25684u, global3.x), 1u, 44000u)));
    global4 = array<Struct_2, 26>();
    return vec4<bool>(false, true, !(4294967295u < (firstLeadingBit(global3.x) | ~u_input.b.x)), all(vec3<bool>(true, false, global1.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, 260f, _wgslsmith_div_f32(var_0.a, var_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, global1.b.x, var_0.a))))));
    global0 = array<vec4<f32>, 25>();
    global3 = ~vec4<u32>(_wgslsmith_sub_u32(select(global3.x, ~u_input.b.x, arg_1.x | true), ~(~0u)), _wgslsmith_sub_u32(select(~global3.x, ~global3.x, true), select(49029u, _wgslsmith_add_u32(1u, u_input.b.x), false || arg_1.x)), 4294967295u, 1u);
    global4 = array<Struct_2, 26>();
    return arg_1;
}

fn func_2() -> bool {
    let var_0 = global3.x;
    global2 = ~vec2<i32>(-_wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(-9978i, u_input.a)), u_input.a);
    let var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(-global1.b.x)), func_3(), !global1.c.x);
    var var_2 = ~global3.xx;
    var var_3 = Struct_1(global1.b.x);
    return false;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    var var_0 = !vec4<bool>(func_2(), 1i == abs(-u_input.a), global1.c.x == global1.c.x, !global1.a.x);
    var var_1 = global4[_wgslsmith_index_u32(abs(abs(countOneBits(~_wgslsmith_dot_vec3_u32(u_input.b.wxw, vec3<u32>(u_input.b.x, 1u, u_input.b.x))))), 26u)];
    return global3.zx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -216f), global1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -496f), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(f32(-1f) * -482f))));
    global0 = array<vec4<f32>, 25>();
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(-1744f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-1257f, _wgslsmith_f_op_f32(select(1116f, 492f, false)))))), -116f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(861f, 1059f, var_0.x) * vec3<f32>(1482f, 1000f, global1.b.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, var_0.x, -1053f), vec3<f32>(-1319f, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_div_f32(global1.b.x, -927f), -780f, _wgslsmith_f_op_f32(round(global1.b.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, var_0.x, var_0.x) - vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), global1.b.x, -1147f)), true)));
    var var_2 = ~(~abs(func_1(Struct_1(-1225f), 16916u)) >> ((~u_input.b.xw | select(~u_input.b.ww, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), global3.xx), true)) % vec2<u32>(32u)));
    let var_3 = Struct_2(global1.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + 607f))), vec3<bool>(true, !(!global1.c.x), global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

