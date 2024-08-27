struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec2<u32>(25281u, 4294967295u), 4294967295u);

var<private> global1: array<vec3<f32>, 10>;

var<private> global2: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(vec3<i32>(-12369i, i32(-2147483648), 14543i), Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 3632u), 4294967295u), Struct_1(vec3<bool>(true, true, false), vec2<u32>(41978u, 1u), 29612u), 54841i, vec3<f32>(-207f, 1552f, -1051f)), Struct_2(vec3<i32>(1i, 1i, 34174i), Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 31779u), 18598u), Struct_1(vec3<bool>(true, true, false), vec2<u32>(30789u, 4294967295u), 45715u), i32(-2147483648), vec3<f32>(156f, -204f, 1718f)), Struct_2(vec3<i32>(9355i, 2147483647i, -10288i), Struct_1(vec3<bool>(true, false, false), vec2<u32>(137u, 0u), 3665u), Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 52283u), 8735u), -1235i, vec3<f32>(1443f, 1532f, -1135f)), Struct_2(vec3<i32>(-9640i, i32(-2147483648), -56606i), Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, 117227u), 71734u), Struct_1(vec3<bool>(false, false, false), vec2<u32>(40655u, 0u), 16354u), 1i, vec3<f32>(-2745f, -959f, 484f)), Struct_2(vec3<i32>(-10721i, -7307i, 1i), Struct_1(vec3<bool>(true, false, false), vec2<u32>(6773u, 76687u), 4294967295u), Struct_1(vec3<bool>(false, false, true), vec2<u32>(33275u, 79993u), 0u), -18497i, vec3<f32>(-878f, -1793f, -1041f)), Struct_2(vec3<i32>(i32(-2147483648), 8290i, -1i), Struct_1(vec3<bool>(false, true, true), vec2<u32>(54441u, 11036u), 0u), Struct_1(vec3<bool>(true, true, false), vec2<u32>(0u, 60481u), 23295u), 9385i, vec3<f32>(986f, -432f, -704f)), Struct_2(vec3<i32>(53064i, 5340i, -18031i), Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 84525u), 65028u), Struct_1(vec3<bool>(true, false, false), vec2<u32>(22474u, 22399u), 40290u), 1i, vec3<f32>(-1517f, -1101f, -1649f)), Struct_2(vec3<i32>(-1i, i32(-2147483648), -1160i), Struct_1(vec3<bool>(true, true, true), vec2<u32>(47048u, 0u), 1u), Struct_1(vec3<bool>(true, false, true), vec2<u32>(12152u, 0u), 50256u), i32(-2147483648), vec3<f32>(1000f, -1792f, -942f)), Struct_2(vec3<i32>(-22731i, 45928i, 1i), Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 4294967295u), 11908u), Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 202u), 4294967295u), 31866i, vec3<f32>(-275f, 433f, -1000f)), Struct_2(vec3<i32>(0i, 1i, 6086i), Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 1u), 0u), Struct_1(vec3<bool>(false, true, true), vec2<u32>(21496u, 0u), 103232u), -1i, vec3<f32>(-1226f, 426f, 232f)), Struct_2(vec3<i32>(2147483647i, 1i, 0i), Struct_1(vec3<bool>(false, false, false), vec2<u32>(12453u, 1u), 73461u), Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 28066u), 32924u), -1i, vec3<f32>(818f, -371f, 709f)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 2147483647i), Struct_1(vec3<bool>(true, false, true), vec2<u32>(11310u, 4294967295u), 3697u), Struct_1(vec3<bool>(true, true, true), vec2<u32>(59749u, 4294967295u), 0u), 2147483647i, vec3<f32>(634f, -1533f, 697f)), Struct_2(vec3<i32>(-26530i, 1i, 28010i), Struct_1(vec3<bool>(false, false, false), vec2<u32>(117615u, 1u), 6148u), Struct_1(vec3<bool>(false, false, true), vec2<u32>(1u, 25413u), 50350u), i32(-2147483648), vec3<f32>(2269f, -288f, -453f)), Struct_2(vec3<i32>(-44905i, 2577i, 0i), Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 56880u), 0u), Struct_1(vec3<bool>(false, false, false), vec2<u32>(30030u, 6189u), 31315u), -1i, vec3<f32>(-1000f, 408f, -779f)), Struct_2(vec3<i32>(2147483647i, 2147483647i, 0i), Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 45558u), 26489u), Struct_1(vec3<bool>(true, true, false), vec2<u32>(4250u, 4294967295u), 0u), 1i, vec3<f32>(2478f, -766f, -561f)), Struct_2(vec3<i32>(0i, 9390i, 2147483647i), Struct_1(vec3<bool>(true, true, false), vec2<u32>(2494u, 47584u), 8046u), Struct_1(vec3<bool>(false, false, true), vec2<u32>(54485u, 13862u), 4294967295u), -28100i, vec3<f32>(530f, 674f, -1000f)), Struct_2(vec3<i32>(1i, 0i, -466i), Struct_1(vec3<bool>(true, true, false), vec2<u32>(1u, 6883u), 4294967295u), Struct_1(vec3<bool>(false, false, true), vec2<u32>(1u, 40987u), 0u), -717i, vec3<f32>(744f, -1098f, -1139f)), Struct_2(vec3<i32>(8593i, i32(-2147483648), -31661i), Struct_1(vec3<bool>(true, true, false), vec2<u32>(33287u, 0u), 1u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(3485u, 0u), 86670u), -21344i, vec3<f32>(-234f, 1000f, 2189f)), Struct_2(vec3<i32>(0i, -14830i, -1i), Struct_1(vec3<bool>(true, false, true), vec2<u32>(113529u, 45695u), 32869u), Struct_1(vec3<bool>(false, false, true), vec2<u32>(55133u, 4294967295u), 4294967295u), i32(-2147483648), vec3<f32>(1282f, 125f, 1518f)), Struct_2(vec3<i32>(-48483i, 14255i, -18594i), Struct_1(vec3<bool>(true, false, true), vec2<u32>(31009u, 43719u), 19214u), Struct_1(vec3<bool>(true, true, false), vec2<u32>(0u, 72058u), 4294967295u), -1i, vec3<f32>(-131f, 368f, 238f)), Struct_2(vec3<i32>(22287i, 0i, -27454i), Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 49305u), 4294967295u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(20349u, 12433u), 1u), i32(-2147483648), vec3<f32>(1601f, -186f, -710f)), Struct_2(vec3<i32>(-1i, i32(-2147483648), -23463i), Struct_1(vec3<bool>(false, true, false), vec2<u32>(0u, 37319u), 37082u), Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 75881u), 113229u), 30637i, vec3<f32>(-371f, -768f, 308f)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, 1u), 46601u), Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 4294967295u), 133020u), 0i, vec3<f32>(1285f, 118f, 1288f)), Struct_2(vec3<i32>(25393i, -4678i, 2147483647i), Struct_1(vec3<bool>(true, true, true), vec2<u32>(9740u, 4294967295u), 52182u), Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 1u), 4294967295u), 44747i, vec3<f32>(464f, 504f, 668f)), Struct_2(vec3<i32>(2319i, i32(-2147483648), 0i), Struct_1(vec3<bool>(true, true, false), vec2<u32>(4294967295u, 48366u), 39383u), Struct_1(vec3<bool>(true, false, true), vec2<u32>(67832u, 0u), 95583u), 1i, vec3<f32>(2194f, 976f, -2044f)), Struct_2(vec3<i32>(-1i, 0i, 12515i), Struct_1(vec3<bool>(false, true, true), vec2<u32>(1u, 4294967295u), 1u), Struct_1(vec3<bool>(false, false, false), vec2<u32>(70691u, 44358u), 4294967295u), -1i, vec3<f32>(-560f, 449f, 537f)), Struct_2(vec3<i32>(-34086i, -1i, -33833i), Struct_1(vec3<bool>(true, false, false), vec2<u32>(24179u, 0u), 21134u), Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, 44435u), 0u), -25796i, vec3<f32>(223f, -1812f, -1579f)), Struct_2(vec3<i32>(2147483647i, -1i, 1i), Struct_1(vec3<bool>(false, false, false), vec2<u32>(64796u, 41765u), 4294967295u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 0u), 4294967295u), -2623i, vec3<f32>(669f, 311f, 997f)), Struct_2(vec3<i32>(2147483647i, -1i, -1i), Struct_1(vec3<bool>(false, false, true), vec2<u32>(27493u, 11171u), 1u), Struct_1(vec3<bool>(false, false, false), vec2<u32>(59205u, 35706u), 4294967295u), 0i, vec3<f32>(-558f, 964f, 626f)), Struct_2(vec3<i32>(-21281i, 18216i, -1i), Struct_1(vec3<bool>(false, true, false), vec2<u32>(13577u, 809u), 1u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(1u, 4294967295u), 1u), 45209i, vec3<f32>(-663f, 527f, -1860f)), Struct_2(vec3<i32>(0i, -3524i, -1i), Struct_1(vec3<bool>(false, false, false), vec2<u32>(1388u, 54529u), 84694u), Struct_1(vec3<bool>(false, false, false), vec2<u32>(0u, 44324u), 1u), 8064i, vec3<f32>(-374f, -1412f, 801f)));

var<private> global3: bool;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a, ~8176u), global0.b) << (~vec2<u32>(4294967295u, _wgslsmith_sub_u32(0u, u_input.a)) % vec2<u32>(32u)), countOneBits(~abs(global0.b)) << (vec2<u32>(~(~u_input.a), ~0u) % vec2<u32>(32u)));
    var var_1 = abs(36407i);
    return (vec3<i32>(16052i, arg_1.x, -_wgslsmith_div_i32(23531i, arg_1.x)) | vec3<i32>(arg_1.x, 30409i, 59458i)) ^ -_wgslsmith_div_vec3_i32(-arg_1, arg_1);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec3<bool> {
    var var_0 = Struct_1(arg_0.b.a, abs(~(~vec2<u32>(1u, arg_0.c.c))), global4.c);
    let var_1 = _wgslsmith_clamp_i32(~reverseBits(abs(arg_0.d)), ~_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_0.d, arg_0.d), _wgslsmith_sub_i32(arg_0.a.x, 1i) << (~1u % 32u)), select(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d, arg_0.d, countOneBits(arg_0.d), 48105i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.x, 61985i, arg_0.d, 54862i), vec4<i32>(-12314i, -13172i, arg_0.d, arg_0.a.x)) ^ ~vec4<i32>(arg_0.d, -1i, 0i, arg_0.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.d, arg_0.a.x) << (vec4<u32>(var_0.c, 1u, 0u, 0u) % vec4<u32>(32u)), vec4<i32>(arg_0.d, arg_0.d, -1i, arg_0.d) >> (vec4<u32>(0u, 150855u, global0.b.x, global4.b.x) % vec4<u32>(32u))) >> (firstTrailingBit(arg_0.b.c) % 32u), global0.a.x));
    let var_2 = Struct_2(vec3<i32>(0i, reverseBits(29132i), firstTrailingBit(_wgslsmith_mod_i32(arg_0.d, -13371i))), arg_0.c, arg_0.c, firstTrailingBit(-(-10683i >> (abs(0u) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(arg_0.e.x * -518f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(1983f, arg_0.e.x), arg_0.e.x)))));
    var var_3 = _wgslsmith_f_op_f32(sign(1676f));
    let var_4 = Struct_1(var_2.b.a, ~(~_wgslsmith_add_vec2_u32(vec2<u32>(global4.c, 0u) & global4.b, _wgslsmith_add_vec2_u32(arg_0.b.b, global0.b))), 4294967295u);
    return vec3<bool>(false, all(vec4<bool>(arg_0.d >= _wgslsmith_add_i32(var_2.d, 2147483647i), var_2.c.a.x, arg_0.c.a.x, true)), true != !select(all(vec3<bool>(true, global0.a.x, global4.a.x)), true, var_4.a.x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    global3 = !arg_0.x;
    var var_0 = vec2<bool>(false, !(!func_3(Struct_2(vec3<i32>(0i, -21734i, 2147483647i), Struct_1(vec3<bool>(false, false, arg_2.a.x), arg_1.b, 79195u), Struct_1(vec3<bool>(true, arg_1.a.x, false), vec2<u32>(arg_1.b.x, 0u), global4.b.x), -219i, global1[_wgslsmith_index_u32(4294967295u, 10u)]), arg_3).x && !arg_0.x));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 1u, global4.c, 25193u), vec4<u32>(57700u, 29335u, arg_2.b.x, 4294967295u))), ~_wgslsmith_add_u32(41401u, arg_1.c) ^ ~(~u_input.a)) & (select(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 1u, global4.c), ~vec3<u32>(4294967295u, arg_1.b.x, arg_1.c)), arg_1.b.x, !select(true, global0.a.x, arg_2.a.x)) & ~(~43615u)), 31u)];
    var var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(41513u, 0u, 30272u, 85663u), ~vec4<u32>(arg_1.c, 4294967295u, 0u, 4294967295u)) & ~u_input.a, ~_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.c.c, 1u, 1u), vec4<u32>(7785u, arg_1.b.x, arg_2.b.x, global4.c))))), 31u)];
    global4 = var_1.c;
    return vec3<bool>(arg_0.x, !all(!(!vec4<bool>(var_1.c.a.x, true, var_2.c.a.x, true))), all(vec3<bool>(var_0.x, false, true)));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    global3 = !global0.a.x;
    global3 = !global4.a.x;
    global3 = any(!(!global0.a));
    let var_0 = 9357u;
    var var_1 = Struct_2(func_2(Struct_1(!vec3<bool>(true, global4.a.x, global0.a.x), vec2<u32>(global4.c, 56732u) ^ vec2<u32>(global4.c, 0u), firstLeadingBit(global0.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(6052i, -9749i, -1i), vec3<i32>(-29912i, 1i, -2147483647i)) << (~vec3<u32>(global4.c, 33469u, 31849u) % vec3<u32>(32u))) & ~abs(abs(vec3<i32>(53133i, -6672i, 0i))), Struct_1(vec3<bool>(!global4.a.x, true, global0.a.x), vec2<u32>(u_input.a, 0u), ~global4.b.x), Struct_1(func_4(vec2<bool>(false && arg_0, global0.a.x && false), Struct_1(func_3(Struct_2(vec3<i32>(-1763i, 6499i, -9067i), Struct_1(global0.a, global0.b, global4.b.x), Struct_1(global4.a, vec2<u32>(0u, 4294967295u), 90582u), -2147483647i, vec3<f32>(867f, -253f, -1415f)), 1967f), select(global4.b, vec2<u32>(4294967295u, 1u), global4.a.yz), ~33099u), Struct_1(global0.a, ~global4.b, ~4294967295u), _wgslsmith_f_op_f32(-678f + -406f)), reverseBits(global4.b), 4294967295u), -2147483647i, vec3<f32>(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1150f, 2645f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return Struct_1(!var_1.b.a, var_1.b.b, _wgslsmith_add_u32(var_0, min(arg_1, _wgslsmith_div_u32(arg_1, 1u) | ~2310u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<i32> {
    var var_0 = Struct_2(abs(firstLeadingBit(-vec3<i32>(-26208i, -31038i, -2147483647i))), func_1(any(select(vec4<bool>(global4.a.x, false, global0.a.x, false), !vec4<bool>(false, false, global0.a.x, global0.a.x), global4.a.x)), arg_0.b.x ^ (_wgslsmith_clamp_u32(0u, u_input.a, arg_0.c) & 4294967295u)), func_1((16097i < firstTrailingBit(-8300i)) && arg_0.a.x, 15802u), ~2147483647i, global1[_wgslsmith_index_u32(global4.b.x, 10u)]);
    let var_1 = vec4<i32>(var_0.d, i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_div_i32(1i, 43024i), firstTrailingBit(var_0.a.x), var_0.d), func_2(arg_0, abs(var_0.a)).x, _wgslsmith_sub_i32(~var_0.d, countOneBits(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d, var_0.d, var_0.d), var_0.a)))));
    global1 = array<vec3<f32>, 10>();
    let var_2 = global2[_wgslsmith_index_u32(17297u, 31u)];
    let var_3 = false;
    return func_2(var_2.b, vec3<i32>(-_wgslsmith_clamp_i32(var_0.d, -2147483647i, var_1.x), abs(func_2(var_2.c, vec3<i32>(var_0.d, 0i, var_1.x)).x), ~var_2.a.x)) | _wgslsmith_add_vec3_i32(var_2.a, vec3<i32>(firstLeadingBit(var_2.a.x), 1i, -33454i << ((4294967295u ^ arg_0.c) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~func_5(func_1(true, global4.b.x), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1746f), _wgslsmith_f_op_f32(f32(-1f) * -1026f))) >> ((_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 24045u, global4.c), ~select(vec3<u32>(4294967295u, global4.c, global4.c), vec3<u32>(4294967295u, global4.c, 91407u), global4.a.x)) ^ ~vec3<u32>(~global4.b.x, ~0u, ~3699u)) % vec3<u32>(32u));
    global0 = Struct_1(!(!global0.a), ~global4.b, min(global0.b.x, ~1u & ((global4.b.x | u_input.a) ^ (global0.c ^ global4.c))));
    var_1 = firstLeadingBit(-(~abs(~vec3<i32>(-2147483647i, var_1.x, 1i))));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(471f * 478f), -715f, _wgslsmith_f_op_f32(186f + -382f)))))), global1[_wgslsmith_index_u32(11448u, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1173f, var_2.x, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(185f, var_2.x, 1172f, 926f)), !vec4<bool>(false, global4.a.x, false, true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 965f, var_2.x, var_2.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + 1632f), var_2.x, -1854f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -767f, var_2.x, var_2.x) + vec4<f32>(584f, -1570f, var_2.x, var_2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-114f, var_2.x, -342f, var_2.x) * vec4<f32>(var_2.x, -263f, 286f, var_2.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1469f, -352f), vec4<f32>(var_2.x, 747f, var_2.x, var_2.x))))), ~(~firstTrailingBit(1i)));
}

