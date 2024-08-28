struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(Struct_1(-1466f, 1u, vec2<u32>(4294967295u, 0u), vec2<u32>(63520u, 1u)), vec3<i32>(0i, 1i, 2147483647i), Struct_1(-164f, 19634u, vec2<u32>(0u, 4294967295u), vec2<u32>(124390u, 1u)), 0i), Struct_2(Struct_1(-531f, 0u, vec2<u32>(4294967295u, 1u), vec2<u32>(46778u, 4294967295u)), vec3<i32>(1i, 1i, -22766i), Struct_1(344f, 0u, vec2<u32>(1u, 1u), vec2<u32>(1u, 6534u)), 19583i), Struct_2(Struct_1(257f, 1u, vec2<u32>(646u, 43869u), vec2<u32>(19481u, 28777u)), vec3<i32>(-40432i, 0i, -7181i), Struct_1(-2354f, 21730u, vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u)), i32(-2147483648)), Struct_2(Struct_1(-119f, 39945u, vec2<u32>(43013u, 24010u), vec2<u32>(41821u, 0u)), vec3<i32>(i32(-2147483648), -10857i, 0i), Struct_1(-366f, 0u, vec2<u32>(1u, 0u), vec2<u32>(3848u, 1u)), 56334i), Struct_2(Struct_1(152f, 5860u, vec2<u32>(30748u, 61976u), vec2<u32>(0u, 32113u)), vec3<i32>(0i, -17897i, i32(-2147483648)), Struct_1(385f, 1u, vec2<u32>(0u, 63639u), vec2<u32>(59174u, 24153u)), i32(-2147483648)), Struct_2(Struct_1(-1977f, 58057u, vec2<u32>(1u, 1u), vec2<u32>(3567u, 14295u)), vec3<i32>(17713i, 0i, 21851i), Struct_1(-177f, 58343u, vec2<u32>(32577u, 1u), vec2<u32>(38651u, 1u)), i32(-2147483648)), Struct_2(Struct_1(134f, 0u, vec2<u32>(47962u, 1u), vec2<u32>(78583u, 1u)), vec3<i32>(38443i, 1i, 60067i), Struct_1(691f, 0u, vec2<u32>(16597u, 4294967295u), vec2<u32>(56677u, 34814u)), 29774i), Struct_2(Struct_1(329f, 13620u, vec2<u32>(80540u, 4294967295u), vec2<u32>(57528u, 815u)), vec3<i32>(-17385i, -20651i, -27721i), Struct_1(-810f, 4294967295u, vec2<u32>(23625u, 1u), vec2<u32>(1u, 50450u)), 54192i), Struct_2(Struct_1(-1000f, 0u, vec2<u32>(1u, 2949u), vec2<u32>(53294u, 2021u)), vec3<i32>(-26944i, -14362i, 9858i), Struct_1(-1000f, 69298u, vec2<u32>(6839u, 4294967295u), vec2<u32>(43178u, 8493u)), 0i), Struct_2(Struct_1(1081f, 28138u, vec2<u32>(1u, 1u), vec2<u32>(36779u, 0u)), vec3<i32>(-1i, -1i, -37739i), Struct_1(-1029f, 11580u, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 3761u)), 1i), Struct_2(Struct_1(1000f, 0u, vec2<u32>(4294967295u, 1u), vec2<u32>(34225u, 1u)), vec3<i32>(64366i, 1i, 26313i), Struct_1(788f, 0u, vec2<u32>(24013u, 89698u), vec2<u32>(43964u, 50995u)), 2147483647i), Struct_2(Struct_1(1000f, 61216u, vec2<u32>(4294967295u, 61167u), vec2<u32>(4777u, 7677u)), vec3<i32>(28388i, -1i, 0i), Struct_1(654f, 4294967295u, vec2<u32>(81295u, 32354u), vec2<u32>(4294967295u, 18742u)), 2147483647i), Struct_2(Struct_1(-1776f, 1u, vec2<u32>(4294967295u, 16098u), vec2<u32>(44824u, 1u)), vec3<i32>(-21702i, 41407i, 1i), Struct_1(-1813f, 0u, vec2<u32>(0u, 0u), vec2<u32>(48762u, 4294967295u)), 86421i), Struct_2(Struct_1(-1104f, 4294967295u, vec2<u32>(59412u, 107170u), vec2<u32>(34959u, 4294967295u)), vec3<i32>(-23689i, 2147483647i, i32(-2147483648)), Struct_1(-964f, 4294967295u, vec2<u32>(4294967295u, 0u), vec2<u32>(98034u, 21958u)), 50975i), Struct_2(Struct_1(1305f, 20964u, vec2<u32>(33196u, 75734u), vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(-1i, 2147483647i, 2147483647i), Struct_1(1000f, 16607u, vec2<u32>(4294967295u, 87386u), vec2<u32>(48397u, 54399u)), 27191i), Struct_2(Struct_1(-768f, 4294967295u, vec2<u32>(0u, 0u), vec2<u32>(62663u, 4294967295u)), vec3<i32>(20861i, 63503i, 38132i), Struct_1(-1497f, 1u, vec2<u32>(1u, 27353u), vec2<u32>(4294967295u, 11249u)), -19383i), Struct_2(Struct_1(-425f, 0u, vec2<u32>(1u, 15270u), vec2<u32>(4294967295u, 21124u)), vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), Struct_1(-1472f, 47011u, vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 18336u)), 2147483647i), Struct_2(Struct_1(965f, 56491u, vec2<u32>(0u, 0u), vec2<u32>(33716u, 51849u)), vec3<i32>(16936i, -18586i, -1i), Struct_1(-456f, 1u, vec2<u32>(1u, 10763u), vec2<u32>(1u, 0u)), i32(-2147483648)), Struct_2(Struct_1(820f, 18757u, vec2<u32>(6868u, 4294967295u), vec2<u32>(1u, 0u)), vec3<i32>(2147483647i, 0i, -1i), Struct_1(105f, 4294967295u, vec2<u32>(1u, 20017u), vec2<u32>(79319u, 13900u)), 0i), Struct_2(Struct_1(1038f, 2828u, vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u)), vec3<i32>(10833i, -31756i, 32331i), Struct_1(113f, 29211u, vec2<u32>(47362u, 8123u), vec2<u32>(13929u, 5593u)), 1i), Struct_2(Struct_1(932f, 44179u, vec2<u32>(0u, 3375u), vec2<u32>(4294967295u, 4294967295u)), vec3<i32>(0i, -2079i, 57521i), Struct_1(1000f, 4294967295u, vec2<u32>(0u, 56303u), vec2<u32>(4294967295u, 85447u)), 10263i), Struct_2(Struct_1(-2037f, 0u, vec2<u32>(1u, 1u), vec2<u32>(60846u, 4294967295u)), vec3<i32>(-1i, 12723i, 1i), Struct_1(-231f, 14501u, vec2<u32>(0u, 1u), vec2<u32>(27699u, 83798u)), -17339i), Struct_2(Struct_1(-1109f, 90412u, vec2<u32>(14249u, 14436u), vec2<u32>(38907u, 4294967295u)), vec3<i32>(-44281i, -31719i, i32(-2147483648)), Struct_1(-2396f, 1u, vec2<u32>(120332u, 22074u), vec2<u32>(1u, 7998u)), 2147483647i), Struct_2(Struct_1(-1000f, 4294967295u, vec2<u32>(0u, 1u), vec2<u32>(69817u, 1u)), vec3<i32>(-1i, 16480i, i32(-2147483648)), Struct_1(-1000f, 0u, vec2<u32>(37582u, 0u), vec2<u32>(1u, 0u)), 46240i), Struct_2(Struct_1(-1387f, 8373u, vec2<u32>(1u, 4294967295u), vec2<u32>(54468u, 4294967295u)), vec3<i32>(i32(-2147483648), 0i, -1630i), Struct_1(-125f, 50746u, vec2<u32>(38420u, 23795u), vec2<u32>(0u, 60863u)), 11210i));

var<private> global1: bool;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: f32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.a)), 24506u, _wgslsmith_mod_vec2_u32(u_input.c.yy, ~(~u_input.c.yz)), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.c.c.x | ~arg_2.c.x, (arg_2.c.x | arg_1.x) << (~arg_2.b % 32u)), vec2<u32>(arg_1.x, arg_1.x ^ 4294967295u)));
    var_0 = Struct_1(746f, ~_wgslsmith_div_u32(43875u, 50123u), arg_1.yz, max(vec2<u32>(75928u, arg_0.c.b), min(~_wgslsmith_clamp_vec2_u32(arg_2.c, arg_2.d, arg_2.c), ~abs(u_input.c.zx))));
    let var_1 = 13735i;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1179f)) * arg_3);
    let var_3 = 1u;
    return arg_0.b & abs(vec3<i32>(var_1, -950i, arg_0.d) & arg_0.b);
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-435f, 356f)) * -1854f)), 0u, (~vec2<u32>(u_input.a, 0u) & ~vec2<u32>(60134u, arg_0)) | _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, arg_0)), _wgslsmith_mult_vec2_u32(vec2<u32>(20978u, arg_0), u_input.c.xy), u_input.c.xz), vec2<u32>(arg_0, ~_wgslsmith_mult_u32(30035u, 50085u))), _wgslsmith_mod_vec3_i32(countOneBits(~vec3<i32>(-5392i, u_input.b, 2147483647i)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -50472i, u_input.b), vec3<i32>(29264i, 13481i, u_input.b) >> (u_input.c % vec3<u32>(32u))), func_3(Struct_2(Struct_1(816f, 26782u, u_input.c.yz, u_input.c.zx), vec3<i32>(u_input.b, 16654i, -78223i), Struct_1(-345f, arg_0, u_input.c.yy, vec2<u32>(arg_0, arg_0)), 20206i), vec3<u32>(66903u, 1u, arg_0), Struct_1(400f, 9145u, u_input.c.zx, vec2<u32>(u_input.c.x, arg_0)), 399f) | ~vec3<i32>(-28277i, u_input.b, 12887i))), Struct_1(-784f, abs(~_wgslsmith_mod_u32(u_input.c.x, 4294967295u)), firstLeadingBit(u_input.c.xy), _wgslsmith_clamp_vec2_u32(~u_input.c.xy, _wgslsmith_div_vec2_u32(u_input.c.xy & vec2<u32>(58716u, 0u), vec2<u32>(29299u, arg_0)), _wgslsmith_add_vec2_u32(u_input.c.xz, u_input.c.zx) & u_input.c.yy)), 46764i);
    global1 = !global2.x;
    var var_1 = -_wgslsmith_div_i32(min(-4180i, reverseBits(_wgslsmith_sub_i32(var_0.b.x, var_0.d))), var_0.b.x);
    var var_2 = var_0;
    global1 = true;
    return global2.x;
}

fn func_1() -> Struct_3 {
    global1 = func_2(~max(4294967295u, ~1u) << ((~_wgslsmith_add_u32(u_input.a, 92113u) << (~abs(28216u) % 32u)) % 32u));
    let var_0 = ~u_input.c.yy & (u_input.c.zy << (~u_input.c.yy % vec2<u32>(32u)));
    global2 = select(vec2<bool>(global2.x, true), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(global2.x, true), global2.x), select(vec2<bool>(false, global2.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, true)), vec2<bool>(false, global2.x))), select(!vec2<bool>(global2.x, false), !vec2<bool>(global2.x, true), !all(vec4<bool>(true, global2.x, global2.x, global2.x))), false), select(!(!(global2.x & false)), global2.x, true));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-370f + 1000f))), 1000f)), ~_wgslsmith_div_u32(43596u, 55717u), var_0, vec2<u32>(0u, 16797u)), select(vec4<bool>(any(!vec3<bool>(global2.x, global2.x, global2.x)), global2.x, global2.x, true), select(vec4<bool>(true, true, false, true), select(select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, true, true, global2.x), vec4<bool>(global2.x, false, true, global2.x)), !vec4<bool>(global2.x, true, global2.x, global2.x), global2.x), vec4<bool>(global2.x || true, global2.x && false, global2.x, all(vec3<bool>(true, false, true)))), !select(vec4<bool>(global2.x, true, true, global2.x), !vec4<bool>(global2.x, global2.x, true, global2.x), !global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -442f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(347f))), _wgslsmith_f_op_f32(select(-629f, 1985f, false))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2058f, _wgslsmith_f_op_f32(abs(846f)))), firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.c.yy, var_0)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(0u, 79628u)), vec2<u32>(abs(u_input.c.x), 8358u), ~(var_0 << (var_0 % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.c.x), ~var_0.x), _wgslsmith_mod_vec2_u32(~var_0, vec2<u32>(var_0.x, u_input.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = u_input.b;
    var var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_1.e.b, 4294967295u), arg_0.b), 1u)), 25u)];
    let var_2 = 1u;
    var var_3 = all(func_1().b);
    let var_4 = var_1.c.a;
    return firstTrailingBit(~u_input.c);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = arg_1;
    global0 = array<Struct_2, 25>();
    let var_1 = !(!select(!func_1().b, select(func_1().b, select(vec4<bool>(false, arg_1, true, true), vec4<bool>(false, false, var_0, arg_1), vec4<bool>(arg_1, false, arg_1, var_0)), all(vec2<bool>(arg_1, global2.x))), select(func_1().b, vec4<bool>(true, arg_1, false, false), global2.x)));
    let var_2 = ~arg_2.x;
    global2 = func_1().b.xz;
    return global0[_wgslsmith_index_u32(func_4(Struct_1(1116f, _wgslsmith_div_u32(1u, ~u_input.a >> (~106016u % 32u)), u_input.c.yy, abs(vec2<u32>(~4294967295u, arg_2.x))), func_1()).x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(true, false);
    let var_0 = Struct_1(1008f, firstLeadingBit(~(36164u ^ u_input.a)) & u_input.a, ~u_input.c.yy, _wgslsmith_mod_vec2_u32(u_input.c.xy, ~u_input.c.xy));
    var var_1 = vec2<u32>(62651u, var_0.d.x);
    var var_2 = abs(countOneBits(vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), -vec4<i32>(45212i, u_input.b, u_input.b, u_input.b)), ~(-53578i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 4207i, u_input.b, -95416i), vec4<i32>(52154i, u_input.b, -1i, 1i)), -abs(0i))));
    var var_3 = func_5(2147483647i, all(!vec4<bool>(true, false, true, global2.x)), func_4(var_0, func_1()));
    var_1 = func_5(-34521i, any(vec3<bool>(any(vec3<bool>(false, true, true)), u_input.a <= var_0.b, true)), ~(~(u_input.c ^ vec3<u32>(var_3.a.c.x, 63841u, var_3.c.d.x)))).c.c ^ vec2<u32>(var_0.b, 0u);
    var var_4 = func_5(firstTrailingBit(u_input.b), !all(select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x), true), select(vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(global2.x, false, false, true)), global2.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(68934u, 0u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, var_0.b), ~var_1.x)), _wgslsmith_div_vec3_u32(u_input.c, u_input.c), ~select(firstLeadingBit(vec3<u32>(4294967295u, var_1.x, var_1.x)), vec3<u32>(var_3.c.b, var_3.c.b, var_0.b) << (vec3<u32>(69976u, var_3.c.c.x, 0u) % vec3<u32>(32u)), global2.x))).a;
    var var_5 = _wgslsmith_f_op_f32(372f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - var_3.c.a) + var_3.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(var_3.d ^ firstTrailingBit(var_2.x)), u_input.c, ~_wgslsmith_add_u32(4565u << (_wgslsmith_dot_vec2_u32(var_4.c, var_4.c) % 32u), 4294967295u), max(firstTrailingBit(vec4<u32>(4294967295u, ~30921u, 57206u ^ var_0.b, ~1445u)), _wgslsmith_add_vec4_u32(~vec4<u32>(17274u, var_3.c.b, var_4.d.x, u_input.c.x), ~_wgslsmith_mult_vec4_u32(vec4<u32>(44866u, var_0.b, 1u, 76884u), vec4<u32>(4294967295u, var_3.c.b, 0u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f)));
}

