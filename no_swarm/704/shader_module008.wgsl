struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec3<bool>(false, false, true), -1i, Struct_3(vec2<bool>(false, true), Struct_2(vec3<i32>(54724i, -17001i, 37071i), 1i, vec2<bool>(true, true), vec3<bool>(false, false, false), vec3<u32>(1u, 1u, 33512u)))), Struct_4(vec3<bool>(false, true, false), 44540i, Struct_3(vec2<bool>(true, false), Struct_2(vec3<i32>(-40317i, 39932i, 48614i), 1i, vec2<bool>(true, false), vec3<bool>(false, false, true), vec3<u32>(6893u, 1859u, 68886u)))), Struct_4(vec3<bool>(true, true, true), -1i, Struct_3(vec2<bool>(false, false), Struct_2(vec3<i32>(4059i, 2147483647i, -93808i), 65688i, vec2<bool>(false, false), vec3<bool>(false, true, false), vec3<u32>(4294967295u, 4294967295u, 3737u)))), Struct_4(vec3<bool>(true, true, true), 1i, Struct_3(vec2<bool>(false, true), Struct_2(vec3<i32>(30978i, -1i, -39024i), 0i, vec2<bool>(false, true), vec3<bool>(true, false, true), vec3<u32>(50757u, 4294967295u, 38995u)))), Struct_4(vec3<bool>(true, true, true), 13681i, Struct_3(vec2<bool>(true, true), Struct_2(vec3<i32>(i32(-2147483648), 729i, -55948i), -10173i, vec2<bool>(false, false), vec3<bool>(false, false, true), vec3<u32>(1u, 1u, 35318u)))), Struct_4(vec3<bool>(true, false, false), 2147483647i, Struct_3(vec2<bool>(false, true), Struct_2(vec3<i32>(26457i, -1i, 2147483647i), i32(-2147483648), vec2<bool>(false, false), vec3<bool>(false, true, true), vec3<u32>(21946u, 1u, 19748u)))), Struct_4(vec3<bool>(false, true, false), -16228i, Struct_3(vec2<bool>(false, false), Struct_2(vec3<i32>(-1i, 0i, i32(-2147483648)), -7025i, vec2<bool>(false, true), vec3<bool>(true, true, false), vec3<u32>(28066u, 4294967295u, 1u)))), Struct_4(vec3<bool>(false, true, true), 17199i, Struct_3(vec2<bool>(false, false), Struct_2(vec3<i32>(1i, 2147483647i, -1i), i32(-2147483648), vec2<bool>(true, false), vec3<bool>(true, false, false), vec3<u32>(114112u, 36531u, 1u)))), Struct_4(vec3<bool>(false, false, false), 9480i, Struct_3(vec2<bool>(true, false), Struct_2(vec3<i32>(0i, 10692i, i32(-2147483648)), -1i, vec2<bool>(false, false), vec3<bool>(true, true, false), vec3<u32>(2561u, 23636u, 16311u)))), Struct_4(vec3<bool>(true, false, false), -18620i, Struct_3(vec2<bool>(true, true), Struct_2(vec3<i32>(0i, -43584i, 11198i), 2147483647i, vec2<bool>(false, true), vec3<bool>(true, false, true), vec3<u32>(76084u, 0u, 4294967295u)))), Struct_4(vec3<bool>(true, true, false), -24587i, Struct_3(vec2<bool>(true, false), Struct_2(vec3<i32>(-1i, i32(-2147483648), 57309i), -31887i, vec2<bool>(true, false), vec3<bool>(false, true, false), vec3<u32>(4294967295u, 4294967295u, 1u)))), Struct_4(vec3<bool>(true, false, true), 1i, Struct_3(vec2<bool>(false, false), Struct_2(vec3<i32>(0i, -35666i, 39598i), 4241i, vec2<bool>(true, true), vec3<bool>(false, true, false), vec3<u32>(33924u, 38017u, 0u)))), Struct_4(vec3<bool>(true, false, true), -54585i, Struct_3(vec2<bool>(true, true), Struct_2(vec3<i32>(12873i, i32(-2147483648), i32(-2147483648)), 1i, vec2<bool>(false, true), vec3<bool>(false, true, false), vec3<u32>(1u, 38267u, 1u)))), Struct_4(vec3<bool>(false, true, false), -29585i, Struct_3(vec2<bool>(true, true), Struct_2(vec3<i32>(-58744i, 1i, -5031i), 2147483647i, vec2<bool>(false, false), vec3<bool>(false, true, true), vec3<u32>(70129u, 4294967295u, 13662u)))), Struct_4(vec3<bool>(true, true, true), -45170i, Struct_3(vec2<bool>(false, true), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), -44637i, vec2<bool>(true, false), vec3<bool>(false, true, false), vec3<u32>(3204u, 55670u, 4294967295u)))), Struct_4(vec3<bool>(true, true, false), 2147483647i, Struct_3(vec2<bool>(false, false), Struct_2(vec3<i32>(26383i, 0i, i32(-2147483648)), -2994i, vec2<bool>(false, false), vec3<bool>(true, false, false), vec3<u32>(55558u, 5680u, 4294967295u)))), Struct_4(vec3<bool>(false, false, true), 34529i, Struct_3(vec2<bool>(true, false), Struct_2(vec3<i32>(-35278i, i32(-2147483648), -1i), 39079i, vec2<bool>(false, false), vec3<bool>(false, true, false), vec3<u32>(8054u, 1u, 753u)))), Struct_4(vec3<bool>(true, false, true), 58135i, Struct_3(vec2<bool>(true, true), Struct_2(vec3<i32>(12131i, 24970i, 1i), 0i, vec2<bool>(false, false), vec3<bool>(true, false, true), vec3<u32>(4294967295u, 6034u, 4541u)))), Struct_4(vec3<bool>(true, true, false), -1i, Struct_3(vec2<bool>(false, true), Struct_2(vec3<i32>(-26953i, i32(-2147483648), i32(-2147483648)), 1455i, vec2<bool>(false, false), vec3<bool>(true, false, true), vec3<u32>(0u, 104441u, 17355u)))), Struct_4(vec3<bool>(false, false, false), -5586i, Struct_3(vec2<bool>(true, false), Struct_2(vec3<i32>(i32(-2147483648), 54860i, -15742i), 1i, vec2<bool>(true, false), vec3<bool>(false, false, true), vec3<u32>(1u, 4294967295u, 1u)))), Struct_4(vec3<bool>(true, true, true), 29078i, Struct_3(vec2<bool>(false, false), Struct_2(vec3<i32>(11800i, -1i, 791i), 39851i, vec2<bool>(false, false), vec3<bool>(false, true, false), vec3<u32>(17590u, 0u, 56855u)))), Struct_4(vec3<bool>(false, false, true), -1i, Struct_3(vec2<bool>(false, false), Struct_2(vec3<i32>(-43513i, -1i, 43481i), 19915i, vec2<bool>(false, true), vec3<bool>(true, true, false), vec3<u32>(1u, 68668u, 48219u)))), Struct_4(vec3<bool>(false, true, true), 31468i, Struct_3(vec2<bool>(true, false), Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -24367i), -36783i, vec2<bool>(true, true), vec3<bool>(false, false, false), vec3<u32>(1u, 38456u, 2635u)))));

var<private> global1: array<bool, 6>;

var<private> global2: array<i32, 17> = array<i32, 17>(-6425i, -66944i, 31923i, 0i, 4447i, 49993i, 1i, -4437i, -20301i, i32(-2147483648), 17996i, 30460i, i32(-2147483648), 2952i, 1i, i32(-2147483648), 0i);

var<private> global3: array<vec2<bool>, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_4(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_0.x, 6u)]), global1[_wgslsmith_index_u32(4294967295u, 6u)]))), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~(~1u), arg_0.x), 17u)], Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(arg_0.x, 1u, arg_0.x, 17907u), vec4<u32>(0u, arg_0.x, 1u, arg_0.x)), vec4<u32>(1u, 33481u, ~4294967295u, firstLeadingBit(68187u))), 27u)], Struct_2(_wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(global2[_wgslsmith_index_u32(21441u, 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)], u_input.a.x)), vec3<i32>(global2[_wgslsmith_index_u32(1u, 17u)], 2147483647i, u_input.a.x), ~vec3<i32>(52861i, global2[_wgslsmith_index_u32(arg_0.x, 17u)], u_input.a.x)), 2147483647i, select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 6u)], global1[_wgslsmith_index_u32(arg_0.x, 6u)]), vec2<bool>(true, true), select(false, true, true)), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 6u)], false), select(vec3<bool>(global1[_wgslsmith_index_u32(36297u, 6u)], true, global1[_wgslsmith_index_u32(arg_0.x, 6u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 6u)], false, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 6u)], global1[_wgslsmith_index_u32(arg_0.x, 6u)], global1[_wgslsmith_index_u32(arg_0.x, 6u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_0.x, 6u)]), global1[_wgslsmith_index_u32(1u, 6u)])), vec3<u32>(arg_0.x, arg_0.x << (arg_0.x % 32u), reverseBits(arg_0.x)))));
    global1 = array<bool, 6>();
    return select(var_0.a.zy, !var_0.c.b.c, !select(select(!vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 6u)]), var_0.c.b.c, !var_0.c.a), global3[_wgslsmith_index_u32(arg_0.x, 27u)], !select(vec2<bool>(false, false), global3[_wgslsmith_index_u32(arg_0.x, 27u)], false)));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1143f);
    let var_1 = Struct_1(select(!(!func_3(vec3<u32>(arg_0.c.b.e.x, 10406u, 49165u))), arg_0.a.yy, arg_0.a.zy), vec2<u32>(66026u, 4294967295u), _wgslsmith_add_i32(abs(-9965i), global2[_wgslsmith_index_u32(arg_0.c.b.e.x, 17u)]), ~arg_0.c.b.b);
    let var_2 = vec4<i32>(41008i, u_input.a.x | u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(-vec4<i32>(var_1.d, -10656i, global2[_wgslsmith_index_u32(9496u, 17u)], 0i)), reverseBits(vec4<i32>(arg_0.b, 0i, 86864i, var_1.d))), _wgslsmith_add_vec4_i32(~vec4<i32>(-44267i, 74635i, 1i, u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(1u, 17u)] >> (var_1.b.x % 32u), global2[_wgslsmith_index_u32(arg_0.c.b.e.x, 17u)] << (arg_0.c.b.e.x % 32u), 22093i >> (0u % 32u), abs(5476i)))), -4405i);
    global0 = array<Struct_4, 23>();
    global1 = array<bool, 6>();
    return arg_0.a.x;
}

fn func_4(arg_0: bool) -> i32 {
    var var_0 = vec4<bool>(true && any(select(vec3<bool>(arg_0, false, global1[_wgslsmith_index_u32(39636u, 6u)]), !vec3<bool>(true, true, arg_0), true)), global1[_wgslsmith_index_u32(~47453u, 6u)] && arg_0, !(global1[_wgslsmith_index_u32(39678u, 6u)] & arg_0), true | global1[_wgslsmith_index_u32(~(~firstLeadingBit(16667u)), 6u)]);
    var var_1 = global0[_wgslsmith_index_u32(0u, 23u)];
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-310f, 524f, var_1.c.a.x)))), -438f), -885f);
    let var_3 = Struct_5(max(_wgslsmith_sub_i32(u_input.a.x, ~var_1.c.b.b), global2[_wgslsmith_index_u32(~9369u, 17u)] | ~1i), select(vec3<u32>(0u, 7311u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.b.e.x, var_1.c.b.e.x, 1u, 102400u), vec4<u32>(4294967295u, var_1.c.b.e.x, 59628u, 80391u)), firstTrailingBit(vec4<u32>(var_1.c.b.e.x, var_1.c.b.e.x, 27429u, 56622u)))), vec3<u32>(var_1.c.b.e.x, ~var_1.c.b.e.x, 1u), false), Struct_3(select(var_1.c.b.c, func_3(~var_1.c.b.e), var_0.wz), Struct_2(_wgslsmith_div_vec3_i32(var_1.c.b.a, ~vec3<i32>(u_input.a.x, 1i, -25613i)), firstLeadingBit(-45576i << (1u % 32u)), select(vec2<bool>(var_0.x, true), select(vec2<bool>(global1[_wgslsmith_index_u32(3000u, 6u)], true), var_0.yz, false), arg_0), select(var_0.wyy, select(var_0.yzw, vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 6u)], false), var_1.c.b.d), var_1.a), _wgslsmith_clamp_vec3_u32(var_1.c.b.e, var_1.c.b.e, var_1.c.b.e))), 23465u);
    let var_4 = firstLeadingBit(firstTrailingBit(firstLeadingBit(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_1.c.b.e.x), 17u)], reverseBits(var_3.a)))));
    return 0i;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    let var_0 = ~u_input.a.zx;
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-255f, 897f, -603f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1128f, 1399f, 1000f) - vec3<f32>(1047f, 1000f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-137f, -159f, -909f) + vec3<f32>(236f, -1181f, 676f))))) + vec3<f32>(-759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f - 1749f)), -208f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-139f, -1000f, 477f))))));
    let var_3 = !select(!select(!vec4<bool>(arg_2.a.x, false, true, false), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 6u)], arg_3.x, global1[_wgslsmith_index_u32(arg_0.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec4<bool>(false, true, arg_3.x, true), true), !vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(arg_1, 6u)])), select(vec4<bool>(false, true, -1303f > var_2.x, arg_3.x), vec4<bool>(any(vec4<bool>(true, true, arg_3.x, false)), true, false, false), all(!vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 6u)], false, arg_3.x))), vec4<bool>(global1[_wgslsmith_index_u32(~(~1u), 6u)], !global1[_wgslsmith_index_u32(arg_2.b.x, 6u)], select(!global1[_wgslsmith_index_u32(arg_0.x, 6u)], true, true), true));
    let var_4 = Struct_3(!global3[_wgslsmith_index_u32(~(~29180u), 27u)], Struct_2(vec3<i32>(0i, 32046i, max(-1i, u_input.a.x)), -var_0.x, arg_2.a, var_3.xyy, (max(vec3<u32>(14767u, 4294967295u, arg_1), vec3<u32>(arg_2.b.x, 4052u, arg_0.x)) | (vec3<u32>(31682u, 19453u, 1u) & vec3<u32>(arg_2.b.x, arg_1, 0u))) >> ((vec3<u32>(arg_1, 0u, arg_1) | firstTrailingBit(vec3<u32>(80967u, arg_1, arg_0.x))) % vec3<u32>(32u))));
    return _wgslsmith_mod_i32(func_4(any(vec4<bool>(func_2(global0[_wgslsmith_index_u32(arg_2.b.x, 23u)], vec2<bool>(var_4.b.c.x, true)), global1[_wgslsmith_index_u32(arg_1, 6u)], var_3.x, var_4.b.d.x | true))), -firstLeadingBit(-2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(!(!global1[_wgslsmith_index_u32(69769u, 6u)]) || false, all(vec3<bool>(true, global1[_wgslsmith_index_u32(47023u, 6u)], true))), vec2<u32>(max(~(~9447u), ~(~1u)), abs(1u)), _wgslsmith_mult_i32(-1i, -2147483647i), firstLeadingBit(select(func_1(vec2<u32>(4294967295u, 15676u), 45469u, Struct_1(vec2<bool>(false, true), vec2<u32>(54362u, 0u), 24855i, -19391i), vec2<bool>(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(8049u, 6u)])) & 1i, i32(-1i) * -6022i, func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(3154u, 1u), vec2<u32>(51434u, 35856u)), 23u)], func_3(vec3<u32>(81226u, 37095u, 35498u))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-577f, -1000f, 588f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(173f, 827f, -579f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1264f, 269f, 1032f))), vec3<bool>(!var_0.a.x, any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_0.b.x, 6u)])), all(vec4<bool>(var_0.a.x, false, var_0.a.x, true))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(419f, -369f, -1748f) + vec3<f32>(1000f, 2414f, -647f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-125f, 2233f, -358f)))))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(694f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f + -388f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-945f - _wgslsmith_f_op_f32(floor(-278f))), 1000f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(994f, -848f)))))));
    var var_2 = Struct_5(-countOneBits(~u_input.a.x), (vec3<u32>(var_0.b.x, ~var_0.b.x, _wgslsmith_div_u32(var_0.b.x, 0u)) << (reverseBits(firstTrailingBit(vec3<u32>(var_0.b.x, 111388u, var_0.b.x))) % vec3<u32>(32u))) << (~select(vec3<u32>(var_0.b.x, var_0.b.x, 55684u), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<u32>(44597u, var_0.b.x, 36022u)), global1[_wgslsmith_index_u32(~var_0.b.x, 6u)]) % vec3<u32>(32u)), Struct_3(select(select(vec2<bool>(var_0.a.x, false), !var_0.a, func_3(vec3<u32>(var_0.b.x, 102501u, 4294967295u))), !(!vec2<bool>(var_0.a.x, var_0.a.x)), global1[_wgslsmith_index_u32(var_0.b.x | abs(13773u), 6u)]), Struct_2(u_input.a, ~_wgslsmith_mult_i32(0i, 0i), select(select(var_0.a, var_0.a, global1[_wgslsmith_index_u32(1u, 6u)]), !global3[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(0u & var_0.b.x, 6u)]), select(select(vec3<bool>(var_0.a.x, false, var_0.a.x), vec3<bool>(false, true, global1[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 6u)])), vec3<bool>(true, true, true), false), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x) >> (vec3<u32>(var_0.b.x, var_0.b.x, 53116u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 18021u, var_0.b.x), vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x))))), abs(abs(var_0.b.x)));
    var var_3 = _wgslsmith_mult_u32(countOneBits(reverseBits(var_0.b.x)), select(_wgslsmith_div_u32(firstTrailingBit(var_0.b.x), 12467u ^ var_0.b.x) >> (var_2.d % 32u), (~0u ^ var_0.b.x) | _wgslsmith_mult_u32(~1u, var_0.b.x), !global1[_wgslsmith_index_u32(~1u, 6u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, var_2.c.b.a.x, -2147483647i, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_2.d, _wgslsmith_mod_u32(8151u, var_0.b.x), _wgslsmith_div_u32(65897u, 4294967295u)) >> (~max(vec4<u32>(17632u, var_2.b.x, var_2.b.x, var_2.b.x), vec4<u32>(var_0.b.x, 68440u, var_2.c.b.e.x, 18813u)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_2.b.x, ~var_2.c.b.e.x, 15853u, 34541u), vec4<u32>(~var_0.b.x, _wgslsmith_mod_u32(var_2.b.x, var_0.b.x), ~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.b.x), var_2.b.xx)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, 487f))))));
}

