struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, vec2<f32>(-1633f, -1138f), false), Struct_1(true, vec2<f32>(859f, -247f), false), Struct_1(false, vec2<f32>(-869f, 1000f), false), Struct_1(false, vec2<f32>(1427f, -2166f), false), Struct_1(true, vec2<f32>(-1596f, -1000f), false), Struct_1(true, vec2<f32>(-548f, 215f), false), Struct_1(true, vec2<f32>(-123f, -450f), true), Struct_1(false, vec2<f32>(342f, -1394f), false), Struct_1(true, vec2<f32>(-1632f, 1029f), true), Struct_1(false, vec2<f32>(-841f, -1686f), false), Struct_1(true, vec2<f32>(1000f, 248f), true), Struct_1(true, vec2<f32>(-1023f, 1000f), false), Struct_1(false, vec2<f32>(-316f, -1031f), false), Struct_1(false, vec2<f32>(-814f, -531f), true), Struct_1(true, vec2<f32>(1058f, 1000f), false));

var<private> global2: bool = false;

var<private> global3: u32;

var<private> global4: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(5692i, 9492i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 35223i), vec2<i32>(40554i, 0i), vec2<i32>(-24515i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 3836i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    var var_0 = (-countOneBits(countOneBits(u_input.a)) >> (_wgslsmith_mult_u32(~(~70295u), 54161u) % 32u)) < _wgslsmith_clamp_i32(u_input.a, ~(select(u_input.a, u_input.a, true) | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 2147483647i, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, -1i))), -(0i ^ ~u_input.a));
    var var_1 = firstLeadingBit(1u);
    global0 = 4294967295u;
    let var_2 = abs(min(vec3<u32>(1u, 1u, 1u), max(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(54222u, 4294967295u, 1u)), vec3<u32>(41254u, min(20296u, 40551u), min(1u, 1u)))));
    global1 = array<Struct_1, 15>();
    return select(!vec2<bool>(true, arg_1), vec2<bool>(arg_0.a, arg_0.c), !(_wgslsmith_dot_vec2_i32(vec2<i32>(24032i, u_input.a), vec2<i32>(u_input.a, u_input.a)) == _wgslsmith_sub_i32(-17956i, u_input.a)));
}

fn func_4(arg_0: vec2<bool>, arg_1: f32) -> vec2<i32> {
    global0 = ~abs(abs(min(36850u, 42559u))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(20938u, ~41032u << (~4294967295u % 32u), ~6886u), vec3<u32>(firstLeadingBit(firstLeadingBit(6616u)), ~1u, ~(~4294967295u))) % 32u);
    global4 = array<vec2<i32>, 6>();
    let var_0 = countOneBits(vec4<u32>(min(1u, 4294967295u), 0u, 12473u, reverseBits(12352u)));
    let var_1 = -vec4<i32>(u_input.a, u_input.a, 0i, reverseBits(u_input.a)) >> (~(max(vec4<u32>(1u, 65279u, var_0.x, 17889u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 40081u, 1u, var_0.x), var_0)) & var_0) % vec4<u32>(32u));
    let var_2 = false | (var_0.x <= abs(~(~37335u)));
    return var_1.wy;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    let var_0 = -func_4(func_3(global1[_wgslsmith_index_u32(0u, 15u)], true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x))) | ~vec2<i32>(select(reverseBits(-34522i), _wgslsmith_add_i32(2147483647i, -2147483647i), false & arg_2), _wgslsmith_add_i32(max(-18389i, 0i), 1i));
    let var_1 = Struct_1(any(!(!vec4<bool>(arg_2, arg_2, true, false))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(arg_0)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-880f, -694f))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.b - arg_1.b), vec2<f32>(arg_1.b.x, arg_1.b.x)))), vec2<f32>(arg_0.x, arg_1.b.x), var_0.x > countOneBits(u_input.a))), true);
    global1 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(15189u, 1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(74896u, 89001u)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_clamp_u32(36975u, 0u, 40536u)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(756f, -340f, var_1.b.x, -908f) - vec4<f32>(321f, arg_0.x, -856f, -1458f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1396f, 370f, var_1.b.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.b.x, -384f, 204f, 231f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, arg_1.b.x, var_1.b.x, 2139f) - vec4<f32>(-918f, arg_0.x, 171f, arg_1.b.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(603f, -804f, -770f, -228f) * vec4<f32>(208f, 763f, var_1.b.x, 213f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, arg_0.x, -1000f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1942f, 279f, -1891f, 649f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -1321f, -1000f, 429f))), var_1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-510f, 1000f, 1208f, -231f), vec4<f32>(1372f, arg_0.x, -1825f, arg_0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 378f, 283f, var_1.b.x) + vec4<f32>(arg_0.x, 903f, arg_1.b.x, -1452f))))))));
    return var_2.x;
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<u32>(5660u, 20630u, 0u) << (select(~(~vec3<u32>(1u, 1u, 1u)), vec3<u32>(0u, func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1072f, -223f))), Struct_1(false, vec2<f32>(1530f, -287f), false), true, vec3<bool>(false, false, false)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1063f, 883f)), global1[_wgslsmith_index_u32(~5362u, 15u)], true, select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))), vec3<bool>(all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, false, true, true)))) % vec3<u32>(32u));
    global4 = array<vec2<i32>, 6>();
    global3 = ~var_0.x;
    global0 = ~(abs(abs(~1u)) & ((func_2(vec2<f32>(423f, -129f), global1[_wgslsmith_index_u32(var_0.x, 15u)], false, vec3<bool>(false, true, false)) << (_wgslsmith_sub_u32(0u, var_0.x) % 32u)) >> (~var_0.x % 32u)));
    global0 = ~var_0.x | _wgslsmith_mult_u32(4294967295u, var_0.x);
    return Struct_1(false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(-414f)), -188f), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-937f, -148f), vec2<f32>(384f, 154f), vec2<bool>(true, true))))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -754f), _wgslsmith_f_op_f32(min(-1606f, _wgslsmith_f_op_f32(f32(-1f) * -495f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec3<bool>(false, true, false))))), !(!(!(u_input.a == 2147483647i))));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = func_1(firstLeadingBit(abs(vec4<i32>(1i, -u_input.a, i32(-1i) * -2147483647i, u_input.a))));
    global1 = array<Struct_1, 15>();
    var var_1 = func_1(vec4<i32>(u_input.a, u_input.a, reverseBits(-u_input.a >> (~arg_3 % 32u)), 22698i));
    global2 = !(u_input.a >= ~63794i);
    global2 = arg_2.c;
    return -159f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1203f, -1319f) + _wgslsmith_f_op_f32(max(780f, -288f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-725f - -1390f)))), _wgslsmith_f_op_f32(func_5(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)), func_1(-vec4<i32>(2147483647i, u_input.a, u_input.a, -37955i)), global1[_wgslsmith_index_u32(1u, 15u)], 53125u))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1006f + -1030f)), -376f), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-333f * 1244f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(239f)) - -134f))));
    var var_1 = vec3<f32>(-1721f, var_0.x, var_0.x);
    let var_2 = !vec4<bool>(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), false, true, any(vec3<bool>(true, true, true)) && false);
    var var_3 = 67407u;
    var_3 = ~(~firstTrailingBit(~51194u));
    global4 = array<vec2<i32>, 6>();
    var var_4 = 1u;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x + var_0.x))) * _wgslsmith_f_op_f32(func_1(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a)).b.x + _wgslsmith_f_op_f32(f32(-1f) * -744f)))), _wgslsmith_f_op_f32(floor(338f)), 1834f);
}

