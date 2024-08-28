struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

var<private> global1: f32;

var<private> global2: i32 = 1i;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(16404u, -597f, i32(-2147483648), vec4<bool>(true, true, false, false), 23570u), vec3<bool>(false, true, true), Struct_1(58494u, -1383f, i32(-2147483648), vec4<bool>(true, true, true, true), 3189u)), Struct_2(Struct_1(9960u, 1000f, -24426i, vec4<bool>(false, true, true, true), 3638u), vec3<bool>(false, true, false), Struct_1(30520u, -668f, i32(-2147483648), vec4<bool>(true, false, false, false), 16380u)), Struct_2(Struct_1(4294967295u, 194f, -8083i, vec4<bool>(false, false, false, true), 1u), vec3<bool>(false, false, true), Struct_1(0u, 623f, -1i, vec4<bool>(false, true, false, true), 63206u)), Struct_2(Struct_1(1u, 1052f, 15726i, vec4<bool>(true, false, false, true), 3089u), vec3<bool>(false, true, false), Struct_1(1u, -474f, 1i, vec4<bool>(true, true, true, false), 1u)), Struct_2(Struct_1(75418u, -1515f, i32(-2147483648), vec4<bool>(true, true, false, true), 19648u), vec3<bool>(true, true, true), Struct_1(0u, 626f, -39880i, vec4<bool>(true, true, false, true), 58280u)), Struct_2(Struct_1(75858u, 625f, 12306i, vec4<bool>(true, true, false, true), 1u), vec3<bool>(true, false, true), Struct_1(26296u, 1343f, 1i, vec4<bool>(true, true, true, false), 0u)), Struct_2(Struct_1(4294967295u, 1228f, 21925i, vec4<bool>(true, true, false, false), 5950u), vec3<bool>(true, true, false), Struct_1(20774u, -609f, 0i, vec4<bool>(true, true, true, false), 59057u)), Struct_2(Struct_1(4294967295u, 368f, -15053i, vec4<bool>(false, false, false, true), 4294967295u), vec3<bool>(true, true, false), Struct_1(0u, -1792f, -54252i, vec4<bool>(false, false, true, true), 36349u)), Struct_2(Struct_1(0u, 357f, 19837i, vec4<bool>(false, true, false, true), 20111u), vec3<bool>(false, false, true), Struct_1(4294967295u, 605f, 0i, vec4<bool>(false, false, true, true), 104157u)), Struct_2(Struct_1(25724u, -133f, -28584i, vec4<bool>(true, true, false, false), 16303u), vec3<bool>(false, true, false), Struct_1(0u, 842f, 10423i, vec4<bool>(true, true, true, false), 4294967295u)), Struct_2(Struct_1(4294967295u, -722f, -1i, vec4<bool>(false, true, true, true), 26848u), vec3<bool>(false, true, true), Struct_1(22867u, -351f, -1i, vec4<bool>(true, true, true, true), 0u)), Struct_2(Struct_1(4294967295u, 778f, 71609i, vec4<bool>(true, true, false, true), 1u), vec3<bool>(false, true, true), Struct_1(45402u, 1871f, -1i, vec4<bool>(true, false, true, true), 385u)), Struct_2(Struct_1(1u, 1100f, i32(-2147483648), vec4<bool>(true, true, true, false), 0u), vec3<bool>(true, true, true), Struct_1(4294967295u, -768f, -15486i, vec4<bool>(false, true, true, false), 1u)), Struct_2(Struct_1(29514u, -570f, i32(-2147483648), vec4<bool>(true, false, false, false), 4294967295u), vec3<bool>(false, false, true), Struct_1(59971u, 911f, 25045i, vec4<bool>(true, false, false, true), 28942u)), Struct_2(Struct_1(0u, 1075f, 2147483647i, vec4<bool>(false, false, true, false), 3132u), vec3<bool>(false, false, true), Struct_1(0u, 630f, 24621i, vec4<bool>(false, false, false, true), 4294967295u)), Struct_2(Struct_1(4294967295u, 1709f, 15070i, vec4<bool>(false, false, false, true), 0u), vec3<bool>(true, true, true), Struct_1(19917u, -1219f, 13944i, vec4<bool>(false, true, false, false), 4294967295u)), Struct_2(Struct_1(16488u, 1538f, i32(-2147483648), vec4<bool>(true, true, false, false), 4294967295u), vec3<bool>(false, false, false), Struct_1(16244u, 392f, 6083i, vec4<bool>(true, false, false, true), 4294967295u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_4(select(!vec3<bool>(arg_0.c.a.d.x, arg_1.x, false), vec3<bool>(all(arg_2.b.d.wwy), arg_1.x, false), !(!(-443f <= arg_2.b.b))));
    global0 = array<vec2<f32>, 21>();
    return arg_1.yy;
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    var var_0 = Struct_3(global3[_wgslsmith_index_u32(1u ^ _wgslsmith_mod_u32(~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 15882u), vec3<u32>(21702u, 71787u, 1u)) | 1u), 17u)], Struct_1(_wgslsmith_mult_u32(~(~32118u), 1u), -1000f, 2147483647i, select(select(vec4<bool>(true, false, false, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), all(vec4<bool>(true, arg_1, true, arg_1))), !select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, true, arg_0.x, true), true), select(vec4<bool>(false, false, arg_0.x, true), !vec4<bool>(arg_0.x, arg_1, true, false), arg_1)), ~(~249u)));
    var var_1 = var_0.b.d.zxz;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1107f + -1571f))));
    var var_2 = true;
    var var_3 = Struct_3(var_0.a, Struct_1(~_wgslsmith_mult_u32(var_0.a.c.e & var_0.a.a.e, ~var_0.b.e), var_0.b.b, _wgslsmith_sub_i32(1i, u_input.a.x), var_0.a.c.d, 5284u));
    return 255f;
}

fn func_1() -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(743f)) * -1029f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_2(Struct_5(true, 18490u, global3[_wgslsmith_index_u32(85878u, 17u)]), vec4<bool>(false, true, true, false), Struct_3(global3[_wgslsmith_index_u32(0u, 17u)], Struct_1(4294967295u, 1239f, 44075i, vec4<bool>(true, true, false, true), 0u)), vec2<u32>(1u, 24921u)), all(vec2<bool>(false, true)))))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1511f)), 1631f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1680f)))));
    var var_0 = vec4<bool>(true & (1u <= _wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_sub_u32(4294967295u, 4294967295u))), false, all(!vec4<bool>(true, false, all(vec2<bool>(true, false)), true)), func_2(Struct_5(any(vec2<bool>(true, false)), ~4294967295u, global3[_wgslsmith_index_u32(62772u, 17u)]), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), Struct_3(Struct_2(Struct_1(52432u, 921f, 45760i, vec4<bool>(false, true, false, true), 1u), vec3<bool>(true, true, true), Struct_1(0u, 2485f, 54322i, vec4<bool>(false, true, false, true), 22437u)), Struct_1(15430u, 809f, -2147483647i, vec4<bool>(true, true, false, false), 0u)), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(118163u, 53000u), vec2<u32>(87219u, 0u), vec2<u32>(46616u, 35263u)), vec2<u32>(1u, 1u))).x | select(false, true, true));
    var var_1 = ~min(vec4<u32>(min(_wgslsmith_mult_u32(26164u, 33591u), 1u), 4294967295u, ~_wgslsmith_add_u32(24323u, 45188u), ~_wgslsmith_div_u32(21259u, 4294967295u)), firstTrailingBit(~vec4<u32>(1u, 1u, 1u, 1u)));
    global2 = -2147483647i;
    let var_2 = Struct_4(select(!var_0.yzy, select(var_0.ywy, vec3<bool>(var_0.x, all(vec4<bool>(var_0.x, false, var_0.x, false)), any(vec2<bool>(true, true))), all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, true), var_0.x))), all(var_0.yzx)));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-433f - -1125f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f))))), firstLeadingBit(_wgslsmith_add_i32(u_input.b, ~u_input.b) ^ _wgslsmith_clamp_i32(u_input.b, firstLeadingBit(u_input.b), _wgslsmith_mod_i32(u_input.b, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

