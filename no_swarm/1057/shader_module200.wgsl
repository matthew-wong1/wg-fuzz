struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 23>;

var<private> global1: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(-2693f, 688f, 1003f, -1000f), vec4<f32>(762f, -2126f, 263f, -400f), vec4<f32>(-1480f, 944f, 870f, -890f), vec4<f32>(662f, -1889f, -1000f, 1896f), vec4<f32>(191f, -830f, 453f, 497f), vec4<f32>(1025f, 408f, 1600f, 868f), vec4<f32>(-424f, -443f, 1000f, -742f), vec4<f32>(248f, 333f, 216f, -817f), vec4<f32>(-324f, -713f, 1855f, 839f), vec4<f32>(844f, -642f, -737f, 199f), vec4<f32>(-650f, -647f, 2576f, -779f), vec4<f32>(138f, -1309f, 1434f, -1000f));

var<private> global2: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(-23159i, 36665i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 19315i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, 31705i, -57209i, i32(-2147483648)), vec4<i32>(0i, -59018i, 0i, -25186i), vec4<i32>(24707i, 2147483647i, 5744i, 1i), vec4<i32>(-1i, -1i, 2218i, 1i), vec4<i32>(16242i, -1i, 0i, 16407i), vec4<i32>(-1i, -1i, 22996i, 1i), vec4<i32>(2147483647i, i32(-2147483648), 44766i, 0i), vec4<i32>(2147483647i, 2147483647i, -738i, 0i));

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32) -> vec3<bool> {
    global2 = array<vec4<i32>, 10>();
    var var_0 = global2[_wgslsmith_index_u32(~(~(_wgslsmith_mult_u32(u_input.a, u_input.b.x) | u_input.b.x)), 10u)] << (_wgslsmith_div_vec4_u32(~reverseBits(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 80712u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, 37589u) ^ vec4<u32>(u_input.a, 23251u, u_input.b.x, 32176u), vec4<u32>(59293u, 1u, u_input.b.x, u_input.a))) % vec4<u32>(32u));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.b.x, u_input.a)) | select(vec3<u32>(u_input.b.x, 48049u, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(40887u, 15431u, 50184u), vec3<u32>(u_input.a, u_input.b.x, 0u)), vec3<bool>(false, false, true)), abs(abs(vec3<u32>(4294967295u, u_input.b.x, 4294967295u))) ^ vec3<u32>(~21194u, ~u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, 50650u), vec3<u32>(u_input.a, u_input.a, u_input.a)))), ~(~u_input.b.x)), 19u)];
    global2 = array<vec4<i32>, 10>();
    var_1 = Struct_1(var_1.a, ~var_0.x, false);
    return !var_1.a.zxw;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = !func_2(-195f);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-685f)))), _wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(847f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(568f - 1560f))), 883f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) + _wgslsmith_f_op_f32(f32(-1f) * -709f))));
    var var_2 = vec3<f32>(1298f, var_1.x, var_1.x);
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 19u)];
    var_2 = _wgslsmith_f_op_vec3_f32(-var_1.zxx);
    return _wgslsmith_f_op_f32(f32(-1f) * -1364f);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> bool {
    global3 = array<Struct_1, 19>();
    let var_0 = arg_1;
    global2 = array<vec4<i32>, 10>();
    let var_1 = true;
    global2 = array<vec4<i32>, 10>();
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = Struct_1(vec4<bool>(!all(!arg_1.a.zz), true, all(vec2<bool>(true, true)), !arg_1.c), u_input.c.x, func_3(vec4<u32>(u_input.b.x, ~_wgslsmith_sub_u32(0u, u_input.a), u_input.b.x, ~_wgslsmith_clamp_u32(1u, arg_2, 4294967295u)), arg_1, arg_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), 1f))));
    global0 = array<vec4<f32>, 23>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0);
    var var_2 = arg_1;
    var var_3 = Struct_1(var_0.a, ~(~arg_1.b), false);
    return 882f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 23>();
    global0 = array<vec4<f32>, 23>();
    let var_0 = _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(282f, 605f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(-722f + 1176f)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(772f, -1743f)), _wgslsmith_f_op_f32(func_1(u_input.c.x)), any(vec2<bool>(true, false)))))), Struct_1(!vec4<bool>(false, true, false, func_3(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.b.x), Struct_1(vec4<bool>(true, true, false, true), -37654i, false), true, vec2<f32>(-1636f, -547f))), -20651i, !(21483u < u_input.a)), _wgslsmith_sub_u32(~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_mod_u32(5042u, 4294967295u))));
    global0 = array<vec4<f32>, 23>();
    let var_1 = Struct_1(vec4<bool>(all(vec4<bool>(u_input.b.x == 0u, true, true, true)), func_3(vec4<u32>(u_input.b.x, u_input.a | u_input.b.x, u_input.b.x >> (0u % 32u), ~1u), global3[_wgslsmith_index_u32(firstLeadingBit(1u), 19u)], _wgslsmith_f_op_f32(1306f * 568f) > var_0, vec2<f32>(var_0, var_0)), false, var_0 > var_0), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.c.x, -2147483647i), u_input.e, -2147483647i, 1i), global2[_wgslsmith_index_u32(~u_input.a, 10u)]), true);
    global3 = array<Struct_1, 19>();
    global1 = array<vec4<f32>, 12>();
    global2 = array<vec4<i32>, 10>();
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-115f, var_0, 703f, 156f)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 20290u, u_input.b.x), 23u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(4294967295u, 12u)])), vec4<bool>(true, false, true, !var_2.a.x))), vec4<f32>(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(491f * var_0)), -1047f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<f32>(var_0, 288f), Struct_1(var_1.a, 77850i, var_1.c), u_input.b.x)))), true)), ~u_input.d.x, 1u, _wgslsmith_div_u32(firstTrailingBit(28919u), u_input.b.x), -2147483647i);
}

