struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec3<i32>(-12789i, 39419i, -60999i), Struct_1(vec3<bool>(false, true, false), -1i), 33882i, vec3<bool>(false, false, true), vec3<u32>(14040u, 0u, 4294967295u)), Struct_2(vec3<i32>(-1i, 63369i, 2147483647i), Struct_1(vec3<bool>(true, false, false), 2147483647i), 41738i, vec3<bool>(true, true, false), vec3<u32>(6046u, 0u, 0u)), Struct_2(vec3<i32>(46308i, 13811i, 1i), Struct_1(vec3<bool>(false, true, false), -25428i), -21080i, vec3<bool>(true, false, true), vec3<u32>(36129u, 1u, 1u)), Struct_2(vec3<i32>(-8314i, 0i, 28771i), Struct_1(vec3<bool>(false, false, true), -11461i), 29803i, vec3<bool>(true, true, false), vec3<u32>(11175u, 0u, 1u)), Struct_2(vec3<i32>(74288i, -32633i, 50966i), Struct_1(vec3<bool>(true, false, true), 0i), -1i, vec3<bool>(true, false, false), vec3<u32>(4294967295u, 8308u, 6837u)), Struct_2(vec3<i32>(1i, -3810i, 2147483647i), Struct_1(vec3<bool>(false, false, false), 0i), 1i, vec3<bool>(true, true, true), vec3<u32>(41309u, 21548u, 18009u)), Struct_2(vec3<i32>(i32(-2147483648), -12828i, 1i), Struct_1(vec3<bool>(false, true, false), 56976i), -8225i, vec3<bool>(false, false, false), vec3<u32>(0u, 1u, 4294967295u)), Struct_2(vec3<i32>(0i, -31465i, i32(-2147483648)), Struct_1(vec3<bool>(true, true, false), -621i), 1i, vec3<bool>(false, false, true), vec3<u32>(12958u, 1u, 20114u)), Struct_2(vec3<i32>(-35002i, 12001i, 462i), Struct_1(vec3<bool>(true, false, true), 0i), 2147483647i, vec3<bool>(false, true, true), vec3<u32>(19832u, 55589u, 12705u)), Struct_2(vec3<i32>(7252i, -44638i, 0i), Struct_1(vec3<bool>(false, false, false), 31240i), 9422i, vec3<bool>(false, true, false), vec3<u32>(45232u, 19697u, 1u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = false;
    global0 = array<Struct_2, 10>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1579f)))));
    let var_2 = u_input.a.x;
    let var_3 = Struct_1(vec3<bool>(false, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(301f))) <= _wgslsmith_f_op_f32(abs(145f))), ~u_input.a.x);
    return u_input.b.x;
}

fn func_2() -> bool {
    global0 = array<Struct_2, 10>();
    let var_0 = ~vec3<u32>(4294967295u, u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, func_3()));
    let var_1 = Struct_1(vec3<bool>(_wgslsmith_f_op_f32(step(768f, _wgslsmith_f_op_f32(sign(-1000f)))) > _wgslsmith_f_op_f32(trunc(-115f)), select(true, !any(vec2<bool>(false, true)), false), !(23543u < u_input.b.x)), u_input.a.x);
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    return var_1.a.x;
}

fn func_1() -> Struct_2 {
    var var_0 = !func_2();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_1 = Struct_1(vec3<bool>(!any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))), true, any(vec3<bool>(select(false, true, false), true, true))), 5998i);
    return Struct_2(-select(vec3<i32>(firstLeadingBit(-35039i), var_1.b, abs(-16939i)), vec3<i32>(firstTrailingBit(40760i), var_1.b, abs(var_1.b)), var_1.a.x == select(var_1.a.x, var_1.a.x, var_1.a.x)), var_1, u_input.a.x & var_1.b, !var_1.a, vec3<u32>(select(~_wgslsmith_add_u32(21682u, u_input.b.x), max(_wgslsmith_clamp_u32(37195u, u_input.b.x, u_input.b.x), _wgslsmith_add_u32(u_input.b.x, 1u)), !var_1.a.x), 64737u, u_input.b.x ^ min(1707u, abs(u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 10>();
    var var_0 = Struct_2(countOneBits(~min(vec3<i32>(1i, u_input.a.x, u_input.a.x), u_input.a.xyx)), Struct_1(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), abs(u_input.a.x)), abs(u_input.a.x), vec3<bool>(true, false, false), ~vec3<u32>(~(~4294967295u), 0u, min(u_input.b.x | 4294967295u, _wgslsmith_div_u32(u_input.b.x, 1u))));
    var var_1 = -2147483647i;
    var var_2 = func_1();
    let var_3 = var_0.b.a.yz;
    var_2 = func_1();
    let var_4 = var_2.a.yz;
    let var_5 = global0[_wgslsmith_index_u32(0u, 10u)];
    let var_6 = Struct_1(select(vec3<bool>(true, any(!var_5.d), var_5.d.x), vec3<bool>(false, var_5.b.a.x, var_2.d.x), select(vec3<bool>(all(vec3<bool>(false, false, false)), true, false), vec3<bool>(var_5.b.a.x, true, var_2.b.a.x), select(func_1().d, vec3<bool>(var_5.d.x, false, true), !var_2.d.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(func_1().a.xz, var_0.a.xx), -vec2<i32>(-1i, 27221i)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~_wgslsmith_mod_vec3_u32(var_0.e, vec3<u32>(u_input.b.x, 1u, var_2.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1688f, -1411f)), _wgslsmith_f_op_f32(select(-1000f, -493f, false)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-544f + -214f))), var_5.e.x, vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(select(u_input.a, u_input.a, vec4<bool>(false, var_3.x, var_3.x, false)), u_input.a ^ vec4<i32>(var_4.x, var_5.a.x, 20135i, var_5.c)));
}

