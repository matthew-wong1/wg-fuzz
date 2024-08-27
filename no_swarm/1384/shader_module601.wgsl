struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-20595i, 0i, 0i, -4775i, -26992i, -1i, 1i, 2564i, 1i, i32(-2147483648), 2147483647i, 44906i, 2147483647i, -1i, 0i);

var<private> global1: array<bool, 27> = array<bool, 27>(false, true, false, true, true, true, false, false, true, true, false, true, true, false, true, true, false, false, false, false, false, false, false, false, true, false, true);

var<private> global2: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-861f, -2004f, -1525f, -426f), vec4<f32>(-619f, -649f, -925f, -529f), vec4<f32>(-1058f, -1000f, 1961f, 1590f), vec4<f32>(-1116f, 221f, -630f, 1637f), vec4<f32>(-1566f, 432f, -2032f, 1361f), vec4<f32>(-1616f, -544f, 1387f, -846f), vec4<f32>(-670f, -463f, -834f, 1375f), vec4<f32>(-392f, -1000f, 1737f, 533f), vec4<f32>(-492f, 1663f, -1802f, 633f), vec4<f32>(1074f, 2314f, 1000f, 927f), vec4<f32>(-1689f, -508f, -199f, -1033f), vec4<f32>(-1000f, -404f, -1045f, 778f), vec4<f32>(-597f, -2497f, -1966f, 1000f), vec4<f32>(771f, -1163f, -1433f, -1000f), vec4<f32>(420f, -644f, -181f, 120f), vec4<f32>(-1123f, 438f, -463f, 1134f), vec4<f32>(914f, -1750f, -1233f, -416f), vec4<f32>(1000f, -639f, 857f, -2011f), vec4<f32>(346f, 1161f, -1000f, 223f), vec4<f32>(-1000f, 1000f, -1000f, 479f), vec4<f32>(-690f, 2806f, -465f, 1393f), vec4<f32>(260f, -917f, -216f, 604f), vec4<f32>(-1036f, 140f, 1147f, 161f), vec4<f32>(496f, 1442f, -752f, 181f), vec4<f32>(851f, -2133f, -1000f, 2095f), vec4<f32>(-869f, -700f, 723f, 353f), vec4<f32>(1715f, -1330f, 1982f, -1621f), vec4<f32>(-1000f, 497f, -1499f, -1000f), vec4<f32>(-1593f, -1435f, -1160f, -1890f));

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 74994u), vec3<i32>(0i, 26134i, i32(-2147483648)), 2147483647i), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 118699u), vec3<i32>(i32(-2147483648), i32(-2147483648), -26508i), 49757i), Struct_1(vec4<u32>(43936u, 33941u, 0u, 22224u), vec3<i32>(1i, -23788i, -1i), 7724i), Struct_1(vec4<u32>(0u, 36882u, 18097u, 59000u), vec3<i32>(1i, 0i, 3014i), i32(-2147483648)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 64834u, 1833u), vec3<i32>(i32(-2147483648), -28799i, 2147483647i), -53851i));

var<private> global4: Struct_1 = Struct_1(vec4<u32>(33594u, 0u, 1u, 1u), vec3<i32>(-62411i, 2147483647i, 1i), i32(-2147483648));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    global1 = array<bool, 27>();
    var var_0 = u_input.a.x;
    let var_1 = global4.a.x;
    var var_2 = Struct_1(vec4<u32>(~min(abs(global4.a.x), 4294967295u), _wgslsmith_clamp_u32(firstTrailingBit(1u) << (1712u % 32u), 4294967295u, select(1u, 1u >> (0u % 32u), true)), countOneBits(~26798u) & ~global4.a.x, ~(~min(u_input.a.x, 1u))), _wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(i32(-1i) * -2147483647i), abs(global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), u_input.b.x), global4.b), (1i & global4.b.x) >> ((abs(_wgslsmith_mult_u32(3482u, u_input.a.x)) >> (abs(global4.a.x) % 32u)) % 32u));
    var var_3 = Struct_1(~(~_wgslsmith_mult_vec4_u32(u_input.a, ~vec4<u32>(global4.a.x, var_2.a.x, 52208u, var_2.a.x))), vec3<i32>(-_wgslsmith_sub_i32(2147483647i, firstLeadingBit(u_input.b.x)), u_input.b.x, ~(~_wgslsmith_add_i32(-2147483647i, u_input.b.x))), global4.b.x);
    return vec3<u32>(1u, 4294967295u, var_2.a.x);
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_1, 5>();
    global0 = array<i32, 15>();
    var var_0 = Struct_1(~u_input.a, -vec3<i32>(~(global4.b.x >> (u_input.a.x % 32u)), global4.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), -1i);
    var var_1 = func_3();
    global0 = array<i32, 15>();
    return Struct_1(u_input.a, var_0.b, u_input.b.x ^ global0[_wgslsmith_index_u32(~u_input.a.x, 15u)]);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global1 = array<bool, 27>();
    global1 = array<bool, 27>();
    var var_0 = ~arg_0 >> (u_input.a.x % 32u);
    var var_1 = global1[_wgslsmith_index_u32(~u_input.a.x >> (abs(global4.a.x) % 32u), 27u)];
    var var_2 = select(!(!vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 27u)], true, true, false)), vec4<bool>(true, any(select(!vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1.a.x, 27u)]), select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1.a.x, 27u)]), vec2<bool>(global1[_wgslsmith_index_u32(3125u, 27u)], global1[_wgslsmith_index_u32(arg_1.a.x, 27u)]), global1[_wgslsmith_index_u32(6749u, 27u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 27u)]))), select(global1[_wgslsmith_index_u32(53365u, 27u)], false, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4665u, 106904u, 4294967295u), arg_1.a | arg_1.a), 27u)]), true), select(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 27u)], global1[_wgslsmith_index_u32(global4.a.x, 27u)], global1[_wgslsmith_index_u32(arg_0, 27u)])), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.x << (_wgslsmith_sub_u32(4294967295u, 35067u) % 32u), 27u)], global1[_wgslsmith_index_u32(122930u, 27u)], true, true), !global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(arg_1.a.wx, u_input.a.xz)), 27u)]));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -17394i;
    var var_1 = ~0u;
    var var_2 = Struct_1(~u_input.a, -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.c << (arg_3.a.x % 32u), 1i, ~arg_3.c), global4.b), _wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(2147483647i | arg_1.c, -global0[_wgslsmith_index_u32(arg_2.x, 15u)]), arg_1.b.x), -477i));
    var var_3 = -abs(_wgslsmith_sub_i32(arg_3.b.x, -17168i));
    let var_4 = func_4((~(~4294967295u) << (~_wgslsmith_div_u32(arg_2.x, 26773u) % 32u)) >> (4294967295u % 32u), Struct_1(vec4<u32>(11966u | (arg_3.a.x | arg_0.a.x), arg_3.a.x, var_2.a.x, _wgslsmith_mod_u32(global4.a.x, _wgslsmith_mod_u32(0u, arg_1.a.x))), -vec3<i32>(-45115i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 19580i, u_input.b.x), arg_3.b), -70657i ^ global4.b.x), 0i));
    return global3[_wgslsmith_index_u32(51062u, 5u)];
}

fn func_1() -> Struct_1 {
    var var_0 = !(!((global1[_wgslsmith_index_u32(0u, 27u)] & (global4.a.x != 81727u)) & global1[_wgslsmith_index_u32(~0u, 27u)]));
    global2 = array<vec4<f32>, 29>();
    global0 = array<i32, 15>();
    let var_1 = Struct_1(global4.a, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(global4.b.x, global4.b.x, -2147483647i), vec3<i32>(-u_input.b.x, global4.c, -global4.c)), firstLeadingBit(vec3<i32>(~global0[_wgslsmith_index_u32(global4.a.x, 15u)], _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 13310i, 1i, -40101i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global4.b.x, global0[_wgslsmith_index_u32(global4.a.x, 15u)])), 1i))), _wgslsmith_div_i32(1i | -_wgslsmith_clamp_i32(-99i, -9539i, 0i), min(~u_input.b.x, 47001i)));
    global3 = array<Struct_1, 5>();
    return func_5(func_4(max(global4.a.x, _wgslsmith_add_u32(var_1.a.x, ~10495u)), func_2()), Struct_1(~func_4(1u, Struct_1(var_1.a, var_1.b, global0[_wgslsmith_index_u32(global4.a.x, 15u)])).a, var_1.b ^ var_1.b, 2147483647i << (global4.a.x % 32u)), vec4<u32>(var_1.a.x, _wgslsmith_clamp_u32((var_1.a.x ^ 23170u) ^ _wgslsmith_clamp_u32(7584u, 4294967295u, var_1.a.x), abs(~111435u), var_1.a.x), ~7199u, global4.a.x), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_dot_vec4_u32(select(func_5(Struct_1(var_0.a, vec3<i32>(10370i, -1i, u_input.b.x), var_0.c), func_2(), global4.a, func_4(23657u, global3[_wgslsmith_index_u32(0u, 5u)])).a & ~vec4<u32>(global4.a.x, u_input.a.x, 79192u, var_0.a.x), ~(~countOneBits(u_input.a)), select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 27u)], global1[_wgslsmith_index_u32(global4.a.x, 27u)], global1[_wgslsmith_index_u32(var_0.a.x, 27u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(global4.a.x, 27u)], false), vec4<bool>(global1[_wgslsmith_index_u32(16167u, 27u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)])), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(0u, 27u)], true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 27u)], false, global1[_wgslsmith_index_u32(0u, 27u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(60280u, 27u)], global1[_wgslsmith_index_u32(1u, 27u)])), global1[_wgslsmith_index_u32(~4294967295u, 27u)]), vec4<bool>(!global1[_wgslsmith_index_u32(global4.a.x, 27u)], all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 27u)], false)), all(vec3<bool>(true, false, true)), true), !(global1[_wgslsmith_index_u32(global4.a.x, 27u)] | false))), var_0.a);
    let var_2 = Struct_1(vec4<u32>(~u_input.a.x, u_input.a.x, ~0u, 99379u), global4.b, ~var_0.c);
    let var_3 = 0i & (~var_0.b.x ^ 2147483647i);
    let var_4 = Struct_1(u_input.a, vec3<i32>(_wgslsmith_dot_vec2_i32(~(var_2.b.yz << (vec2<u32>(0u, 53488u) % vec2<u32>(32u))), -select(vec2<i32>(-16538i, var_3), var_0.b.xx, false)), -2147483647i, -2147483647i), ~global4.b.x);
    let var_5 = func_2().a;
    var var_6 = var_2;
    global1 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, abs(var_2.b.x & -2147483647i));
}

