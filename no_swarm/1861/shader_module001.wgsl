struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-851f, 648f), vec2<f32>(440f, 697f), vec2<f32>(323f, 877f), vec2<f32>(138f, -821f), vec2<f32>(-740f, -1000f));

var<private> global1: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4294967295u, 17346u), vec2<u32>(1u, 25534u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(82693u, 57651u), vec2<u32>(2552u, 1u), vec2<u32>(62273u, 0u), vec2<u32>(73552u, 1u), vec2<u32>(4294967295u, 32009u), vec2<u32>(90200u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(61041u, 4294967295u), vec2<u32>(67262u, 25070u), vec2<u32>(0u, 1u), vec2<u32>(44374u, 47212u), vec2<u32>(4294967295u, 5509u), vec2<u32>(0u, 120614u), vec2<u32>(7743u, 3989u), vec2<u32>(1u, 0u), vec2<u32>(26979u, 84151u), vec2<u32>(48194u, 27900u), vec2<u32>(52378u, 0u), vec2<u32>(11048u, 4294967295u), vec2<u32>(1u, 5636u), vec2<u32>(1u, 2338u), vec2<u32>(11877u, 4294967295u), vec2<u32>(1u, 53284u), vec2<u32>(1u, 2782u), vec2<u32>(0u, 26901u), vec2<u32>(0u, 4294967295u), vec2<u32>(36574u, 27342u));

var<private> global2: array<bool, 22>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec4<i32>) -> vec4<bool> {
    global2 = array<bool, 22>();
    let var_0 = arg_1;
    let var_1 = Struct_3(!(!vec4<bool>(true, true, arg_1.a.x, var_0.d || false)), Struct_1(var_0.a, firstTrailingBit(select(arg_1.c, var_0.b, true) & vec2<u32>(54446u, 20468u)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_1.c.x), vec2<u32>(arg_1.b.x, arg_2) << (vec2<u32>(4294967295u, 30566u) % vec2<u32>(32u)))), false), ~_wgslsmith_dot_vec2_u32(vec2<u32>(~0u, reverseBits(30518u)), vec2<u32>(var_0.b.x, _wgslsmith_mult_u32(0u, arg_0))));
    global0 = array<vec2<f32>, 5>();
    global2 = array<bool, 22>();
    return select(select(vec4<bool>(countOneBits(var_1.b.c.x) < 39402u, true | any(var_0.a), arg_3.x < -17409i, !(global2[_wgslsmith_index_u32(1u, 22u)] == var_0.d)), select(var_1.a, select(vec4<bool>(var_0.d, arg_1.a.x, true, global2[_wgslsmith_index_u32(1u, 22u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.x, 22u)], var_0.d, var_1.a.x, var_1.a.x), vec4<bool>(arg_1.a.x, var_1.b.a.x, var_1.b.a.x, false), vec4<bool>(true, false, true, true)), any(vec2<bool>(true, true))), any(vec2<bool>(arg_1.d, var_1.b.d))), !var_1.b.d), !vec4<bool>(true, var_1.a.x, false || !var_1.b.d, global2[_wgslsmith_index_u32(arg_0, 22u)]), var_1.a);
}

fn func_2() -> Struct_3 {
    global1 = array<vec2<u32>, 31>();
    global2 = array<bool, 22>();
    var var_0 = 1u;
    global0 = array<vec2<f32>, 5>();
    global0 = array<vec2<f32>, 5>();
    return Struct_3(!(!func_3(firstLeadingBit(39875u), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(65533u, 22u)], global2[_wgslsmith_index_u32(141373u, 22u)], global2[_wgslsmith_index_u32(24140u, 22u)]), global1[_wgslsmith_index_u32(0u, 31u)], vec2<u32>(65978u, 1u), global2[_wgslsmith_index_u32(11800u, 22u)]), 1u, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i))), Struct_1(select(vec3<bool>(false || global2[_wgslsmith_index_u32(49666u, 22u)], false, true), select(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)], true, false), vec3<bool>(true, true, true), !vec3<bool>(false, false, global2[_wgslsmith_index_u32(21024u, 22u)])), global2[_wgslsmith_index_u32(1u, 22u)]), global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(4294967295u, 58872u)), 1u), 31u)], !(!global2[_wgslsmith_index_u32(firstTrailingBit(1u), 22u)])), _wgslsmith_dot_vec2_u32(~(~(~global1[_wgslsmith_index_u32(0u, 31u)])), vec2<u32>(1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(53079u, 1u, 1u, 40800u), vec4<u32>(1u, 0u, 4294967295u, 55086u)), ~(~0u))));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = !vec4<bool>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(abs(arg_1.x))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(717f * arg_1.x) - arg_1.x), true, global2[_wgslsmith_index_u32(0u, 22u)], !(!arg_0));
    let var_1 = u_input.a;
    let var_2 = func_2();
    let var_3 = select(!var_2.a, !vec4<bool>(false, var_2.a.x, global2[_wgslsmith_index_u32(reverseBits(var_2.b.c.x), 22u)], true), !(abs(var_2.c) != firstLeadingBit(_wgslsmith_div_u32(var_2.c, 21964u))));
    global2 = array<bool, 22>();
    return !(!vec4<bool>(arg_0, arg_1.x <= _wgslsmith_f_op_f32(-722f - arg_1.x), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<i32>((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 1i)) & -u_input.a.x) ^ -34742i, _wgslsmith_sub_i32(min(u_input.a.x, _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), ~_wgslsmith_mult_i32(u_input.a.x, -11933i)), _wgslsmith_mult_i32(-firstTrailingBit(u_input.a.x), 2147483647i), u_input.a.x));
    let var_1 = Struct_3(select(select(!select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], false), vec4<bool>(global2[_wgslsmith_index_u32(23041u, 22u)], global2[_wgslsmith_index_u32(40553u, 22u)], global2[_wgslsmith_index_u32(4810u, 22u)], global2[_wgslsmith_index_u32(1u, 22u)]), global2[_wgslsmith_index_u32(15387u, 22u)]), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(16035u, 22u)], false)), any(func_1(global2[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(1u, 5u)]))), vec4<bool>(!global2[_wgslsmith_index_u32(~36632u, 22u)], true, !all(vec4<bool>(global2[_wgslsmith_index_u32(46036u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)], global2[_wgslsmith_index_u32(31376u, 22u)], false)), global2[_wgslsmith_index_u32(4294967295u, 22u)]), !global2[_wgslsmith_index_u32(~1018u, 22u)]), Struct_1(func_2().a.xwy, _wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(abs(151u), 31u)], global1[_wgslsmith_index_u32(~select(0u, 0u, global2[_wgslsmith_index_u32(49623u, 22u)]), 31u)]), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 13179u), max(vec2<u32>(3373u, 25660u), vec2<u32>(60080u, 0u))), false), ~(~countOneBits(_wgslsmith_mod_u32(75124u, 836u))));
    var var_2 = Struct_2(-(~abs(var_0.a)));
    let var_3 = Struct_2(vec4<i32>(select(var_2.a.x, -21250i, var_1.b.c.x <= ~63786u), -46818i, _wgslsmith_mod_i32(1i, var_2.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, var_0.a.x, u_input.a.x), abs(var_0.a.xyy)), u_input.a)));
    global1 = array<vec2<u32>, 31>();
    var_2 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(var_0.a), var_2.a ^ firstLeadingBit(var_2.a)), vec4<i32>(-1i) * -var_2.a));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c, var_1.c, 0u, var_1.c) >> (vec4<u32>(10796u, 1u, 7908u, var_1.b.b.x) % vec4<u32>(32u)), ~vec4<u32>(var_1.c, var_1.b.b.x, 0u, var_1.b.c.x)) << ((_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4503u, var_1.c, var_1.b.c.x), vec4<u32>(var_1.b.b.x, 4294967295u, 24664u, 37225u), vec4<u32>(var_1.b.b.x, var_1.b.b.x, 64170u, 93381u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b.b.x, var_1.c, var_1.b.b.x, var_1.b.c.x), vec4<u32>(0u, var_1.c, 26323u, var_1.c)) % vec4<u32>(32u))) % vec4<u32>(32u))), -308f, ~(~0i));
}

