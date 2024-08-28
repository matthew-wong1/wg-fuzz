struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(49256u, vec4<u32>(22731u, 0u, 5497u, 9746u), vec3<u32>(0u, 67973u, 43809u)), Struct_1(4294967295u, vec4<u32>(6846u, 0u, 1u, 62330u), vec3<u32>(56746u, 27701u, 4294967295u)), Struct_1(4294967295u, vec4<u32>(1u, 1u, 0u, 0u), vec3<u32>(4294967295u, 1u, 15991u)), Struct_1(48161u, vec4<u32>(80555u, 64042u, 1u, 2928u), vec3<u32>(4294967295u, 74770u, 39405u)), Struct_1(0u, vec4<u32>(0u, 49762u, 45806u, 76267u), vec3<u32>(0u, 42442u, 17402u)), Struct_1(1u, vec4<u32>(12501u, 1u, 19487u, 15796u), vec3<u32>(4294967295u, 4294967295u, 11508u)), Struct_1(14112u, vec4<u32>(64999u, 4294967295u, 16189u, 13734u), vec3<u32>(0u, 0u, 4294967295u)), Struct_1(17553u, vec4<u32>(39080u, 4294967295u, 25045u, 1u), vec3<u32>(70785u, 38172u, 5280u)), Struct_1(41206u, vec4<u32>(30826u, 4981u, 4294967295u, 0u), vec3<u32>(4294967295u, 1u, 97675u)), Struct_1(4294967295u, vec4<u32>(34100u, 49100u, 1u, 95947u), vec3<u32>(4294967295u, 4294967295u, 15714u)), Struct_1(1u, vec4<u32>(0u, 0u, 0u, 0u), vec3<u32>(46063u, 79124u, 1540u)), Struct_1(6886u, vec4<u32>(1u, 12493u, 2878u, 4294967295u), vec3<u32>(54105u, 47644u, 1u)), Struct_1(0u, vec4<u32>(34964u, 60024u, 0u, 40369u), vec3<u32>(14949u, 0u, 71125u)), Struct_1(6938u, vec4<u32>(0u, 99520u, 1u, 5352u), vec3<u32>(4294967295u, 40344u, 4294967295u)), Struct_1(1u, vec4<u32>(22062u, 8073u, 33165u, 8061u), vec3<u32>(4294967295u, 4517u, 1u)), Struct_1(0u, vec4<u32>(54841u, 1u, 59104u, 1u), vec3<u32>(127946u, 29108u, 1u)), Struct_1(26471u, vec4<u32>(1u, 0u, 0u, 1u), vec3<u32>(1u, 0u, 6324u)), Struct_1(4294967295u, vec4<u32>(37212u, 4294967295u, 0u, 0u), vec3<u32>(1u, 72463u, 4294967295u)), Struct_1(23826u, vec4<u32>(0u, 0u, 4294967295u, 0u), vec3<u32>(25122u, 95795u, 2330u)), Struct_1(1628u, vec4<u32>(4294967295u, 4294967295u, 12508u, 0u), vec3<u32>(1u, 73260u, 50391u)), Struct_1(4294967295u, vec4<u32>(0u, 0u, 46045u, 26098u), vec3<u32>(17066u, 1u, 33753u)), Struct_1(4294967295u, vec4<u32>(0u, 17238u, 0u, 32794u), vec3<u32>(0u, 0u, 59574u)), Struct_1(1u, vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec3<u32>(0u, 8966u, 44626u)), Struct_1(0u, vec4<u32>(4294967295u, 73421u, 1910u, 4814u), vec3<u32>(9206u, 7348u, 27960u)));

var<private> global1: vec4<u32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(trunc(arg_0))))), -1593f));
    var var_1 = Struct_4(-1886f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(trunc(718f)), _wgslsmith_f_op_f32(trunc(arg_0)), var_0.x, _wgslsmith_div_f32(781f, var_0.x))))), Struct_2(_wgslsmith_mult_i32(max(u_input.b.x >> (0u % 32u), 1i), -23500i), _wgslsmith_div_vec3_f32(vec3<f32>(-1182f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1170f, 893f, var_0.x) - vec3<f32>(939f, var_0.x, -772f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, arg_0, arg_0))))), !(true && all(vec2<bool>(false, true))), global0[_wgslsmith_index_u32(global1.x, 24u)]), vec4<bool>(true, true, true, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), true))), Struct_2(~(~2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(422f)), _wgslsmith_f_op_f32(var_0.x * arg_0), -984f)), true, global0[_wgslsmith_index_u32(1u, 24u)]));
    var_1 = Struct_4(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(floor(var_1.c.b.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) + var_1.b) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.b.x) * var_1.b.x), -587f, 824f)), Struct_2(~var_1.c.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -359f), _wgslsmith_f_op_f32(var_0.x - -296f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), var_1.d.x, global0[_wgslsmith_index_u32(var_1.e.d.a, 24u)]), !select(vec4<bool>(var_1.d.x, true, any(var_1.d.wxy), var_1.c.c), vec4<bool>(var_1.d.x, var_1.d.x & true, var_1.d.x, true), !(var_1.c.d.c.x != global1.x)), var_1.c);
    var var_2 = firstTrailingBit((~(~global1.yy) << (select(_wgslsmith_div_vec2_u32(global1.zy, var_1.c.d.c.xy), global1.yx, true) % vec2<u32>(32u))) << ((~_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, var_1.e.d.b.x), vec2<u32>(global1.x, var_1.c.d.b.x)) >> (vec2<u32>(global1.x, _wgslsmith_sub_u32(global1.x, 66534u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_2 = global1.yy;
    return vec2<bool>(true, _wgslsmith_mod_u32(49820u, ~(~var_1.e.d.a)) < _wgslsmith_clamp_u32(1u, ~global1.x, 38270u));
}

fn func_2() -> Struct_1 {
    var var_0 = 15518u;
    var var_1 = -15065i;
    var var_2 = Struct_3(Struct_2(87031i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-590f, -253f, -137f) + vec3<f32>(-361f, -1000f, -1681f))))), false, global0[_wgslsmith_index_u32(4294967295u, 24u)]));
    var var_3 = select(func_3(_wgslsmith_f_op_f32(120f - _wgslsmith_f_op_f32(var_2.a.b.x - _wgslsmith_f_op_f32(-var_2.a.b.x)))), select(!select(vec2<bool>(var_2.a.c, true), !vec2<bool>(var_2.a.c, var_2.a.c), select(vec2<bool>(var_2.a.c, true), vec2<bool>(false, false), true)), select(!vec2<bool>(var_2.a.c, false), vec2<bool>(true, true), vec2<bool>(true, true)), var_2.a.c), !vec2<bool>(select(true, false, all(vec3<bool>(var_2.a.c, var_2.a.c, true))), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_2.a.c, true, var_2.a.c), vec4<bool>(false, var_2.a.c, var_2.a.c, var_2.a.c)))));
    var var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b.x))))));
    return Struct_1(_wgslsmith_div_u32(4294967295u, ~var_2.a.d.b.x), vec4<u32>(~(reverseBits(4294967295u) ^ ~global1.x), global1.x, _wgslsmith_div_u32(firstTrailingBit(76721u & global1.x), ~abs(53345u)), var_2.a.d.a), var_2.a.d.b.yzz);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> vec4<i32> {
    global0 = array<Struct_1, 24>();
    return -arg_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -1482f, _wgslsmith_div_f32(arg_2, 1000f), _wgslsmith_f_op_f32(round(arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-602f, arg_1.b.x, arg_1.b.x, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-844f, arg_2, arg_1.b.x, arg_2), vec4<f32>(-870f, arg_1.b.x, 250f, arg_1.b.x), true)) - vec4<f32>(-1388f, -1397f, 291f, 1000f)))), arg_1, vec4<bool>(any(vec4<bool>(true, arg_1.a == arg_0.x, arg_1.c || true, true)), (1i >> ((arg_1.d.a | 0u) % 32u)) > reverseBits(1i), select(arg_1.c, _wgslsmith_f_op_f32(round(arg_2)) <= -604f, true), 1u == reverseBits(_wgslsmith_dot_vec4_u32(arg_1.d.b, arg_1.d.b))), arg_1);
    var var_1 = Struct_2(-29118i, var_0.c.b, func_3(_wgslsmith_f_op_f32(var_0.c.b.x + 1614f)).x, global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.d.b.x, 66797u, arg_1.d.a), global1.zxx) ^ vec3<u32>(arg_1.d.c.x, 33075u, 5400u), vec3<u32>(~120784u, _wgslsmith_mod_u32(1u, var_0.e.d.c.x), 0u))), 24u)]);
    global0 = array<Struct_1, 24>();
    var var_2 = Struct_1(min(~(~var_0.c.d.a), ~(~arg_1.d.c.x)) >> (((arg_1.d.a << (~40475u % 32u)) & _wgslsmith_mod_u32(global1.x, var_1.d.b.x | arg_1.d.a)) % 32u), (reverseBits(vec4<u32>(4294967295u, var_0.c.d.b.x, 1u, 1u)) << ((var_0.c.d.b & arg_1.d.b) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.d.b.x, 1u, var_0.c.d.a) ^ (vec4<u32>(var_0.c.d.a, 44486u, global1.x, 32400u) ^ vec4<u32>(var_0.c.d.b.x, 15340u, arg_1.d.a, 4294967295u)), ~vec4<u32>(arg_1.d.a, 12145u, 4294967295u, 25356u) << (arg_1.d.b % vec4<u32>(32u))), vec3<u32>(~1u, global1.x, var_1.d.c.x));
    let var_3 = vec4<i32>(func_4(Struct_2(u_input.c, vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.b.x, var_0.b.x)), _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_f32(arg_2 * 823f)), arg_1.c, Struct_1(1u, ~vec4<u32>(12329u, 1u, var_0.e.d.c.x, 1u), vec3<u32>(var_1.d.b.x, arg_1.d.b.x, 1u))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a, -1576i, u_input.b.x, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, arg_1.a, arg_0.x, u_input.b.x), arg_0)), ~(-vec4<i32>(u_input.b.x, 1930i, 27880i, arg_0.x)))).x, 2147483647i, -1i >> (_wgslsmith_mod_u32(~select(0u, 111775u, true), reverseBits(~global1.x)) % 32u), u_input.a);
    return Struct_1(21472u, _wgslsmith_sub_vec4_u32(max(vec4<u32>(72497u, 1u << (var_2.c.x % 32u), ~25757u, select(22435u, var_2.a, true)), select(~vec4<u32>(var_1.d.a, arg_1.d.b.x, 38269u, arg_1.d.a), abs(var_2.b), select(vec4<bool>(arg_1.c, var_0.c.c, false, arg_1.c), var_0.d, arg_1.c))), var_1.d.b), vec3<u32>(62021u, _wgslsmith_div_u32(firstLeadingBit(firstLeadingBit(11484u)), ~(~var_0.e.d.b.x)), var_1.d.b.x));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_3 {
    var var_0 = Struct_2(~(u_input.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, global1.x, 5538u) & global1.zzx, global1.xwz) % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1334f, 341f, -1522f)) * vec3<f32>(-418f, _wgslsmith_f_op_f32(-352f + 630f), _wgslsmith_f_op_f32(-626f + 864f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(477f, -2147f, 1255f))) - vec3<f32>(-241f, -512f, 1000f))))), ~(~0i) < ~(-2147483647i << (firstTrailingBit(global1.x) % 32u)), Struct_1(_wgslsmith_mult_u32(global1.x, global1.x), _wgslsmith_mult_vec4_u32(arg_0.b, vec4<u32>(arg_0.c.x ^ global1.x, select(global1.x, global1.x, arg_1), 17083u, 1547u)), vec3<u32>(1u, ~(~arg_0.c.x), ~arg_0.c.x)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -495f);
    var var_2 = select(select(!(!vec3<bool>(var_0.c, true, false)), !vec3<bool>(any(vec3<bool>(false, var_0.c, arg_1)), var_0.c, false), !(!vec3<bool>(arg_1, var_0.c, var_0.c))), !select(select(select(vec3<bool>(arg_1, var_0.c, arg_1), vec3<bool>(var_0.c, false, var_0.c), true), vec3<bool>(false, false, var_0.c), !vec3<bool>(var_0.c, false, arg_1)), select(vec3<bool>(false, true, false), vec3<bool>(arg_1, false, arg_1), select(vec3<bool>(false, var_0.c, var_0.c), vec3<bool>(true, false, arg_1), var_0.c)), false), func_3(_wgslsmith_f_op_f32(f32(-1f) * -996f)).x);
    var_2 = select(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(arg_1, true, false), true)), select(select(vec3<bool>(false, true, true), !vec3<bool>(var_0.c, true, false), all(vec3<bool>(true, var_0.c, true))), !(!vec3<bool>(var_2.x, var_2.x, false)), false), vec3<bool>(func_3(var_0.b.x).x, !var_2.x, true)), !vec3<bool>(false, true, all(vec4<bool>(arg_1, var_2.x, false, true))), select(vec3<bool>(var_2.x, select(true, all(vec2<bool>(false, var_2.x)), false), var_2.x), select(vec3<bool>(var_0.c, true, any(vec4<bool>(true, true, false, arg_1))), !(!vec3<bool>(arg_1, false, false)), var_2.x), select(select(!vec3<bool>(var_2.x, true, true), vec3<bool>(false, true, var_2.x), all(vec3<bool>(arg_1, false, var_0.c))), vec3<bool>(!var_2.x, true, var_0.b.x > 1111f), select(select(vec3<bool>(false, false, var_0.c), vec3<bool>(false, arg_1, true), false), vec3<bool>(false, var_0.c, arg_1), vec3<bool>(var_2.x, false, var_2.x)))));
    var_1 = 599f;
    return Struct_3(Struct_2(var_0.a, _wgslsmith_div_vec3_f32(vec3<f32>(302f, var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(813f, -197f, -180f))))), _wgslsmith_div_f32(2319f, _wgslsmith_f_op_f32(abs(var_0.b.x))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), Struct_1(global1.x, ~abs(var_0.d.b), vec3<u32>(25968u, 4294967295u, var_0.d.b.x) << (_wgslsmith_sub_vec3_u32(var_0.d.b.www, var_0.d.b.zyz) % vec3<u32>(32u)))));
}

fn func_1() -> u32 {
    global0 = array<Struct_1, 24>();
    let var_0 = ~_wgslsmith_mult_i32(2147483647i | (0i & _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-4701i, u_input.a))), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-5492i, 52965i, -1i, 0i), vec4<i32>(1i, 1i, u_input.a, 2147483647i)), u_input.c));
    global0 = array<Struct_1, 24>();
    var var_1 = func_6(func_5(func_4(Struct_2(var_0, vec3<f32>(-1048f, -1000f, 872f), any(vec2<bool>(false, true)), func_2()), _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(0i, var_0, var_0, u_input.c)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, 2147483647i, var_0, var_0), vec4<i32>(var_0, -2147483647i, -2147483647i, u_input.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, var_0, -161i, -13324i), vec4<i32>(23047i, -2147483647i, var_0, var_0)))), Struct_2(var_0, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(125f, -1865f, 1307f), vec3<f32>(1000f, -182f, 1594f)), _wgslsmith_div_vec3_f32(vec3<f32>(729f, -993f, -461f), vec3<f32>(-434f, -182f, -937f)))), true, global0[_wgslsmith_index_u32(~17308u, 24u)]), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1205f, _wgslsmith_f_op_f32(-409f - -1818f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-326f * 228f))))), all(vec3<bool>(any(vec3<bool>(true, true, true)), false, false)));
    var_1 = Struct_3(func_6(global0[_wgslsmith_index_u32((global1.x ^ _wgslsmith_clamp_u32(1u, 0u, global1.x)) >> (global1.x % 32u), 24u)], abs(var_0 >> (global1.x % 32u)) > ~(~1i)).a);
    return _wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_1.a.d.b.yx, var_1.a.d.c.zy), firstLeadingBit(~global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1640f * _wgslsmith_f_op_f32(step(681f, -727f))), _wgslsmith_f_op_f32(-1172f + _wgslsmith_f_op_f32(round(1718f))))));
    global1 = vec4<u32>(40208u, global1.x, global1.x, 4294967295u);
    var var_1 = 29532u;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1349f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(607f, 1629f) + _wgslsmith_f_op_f32(1000f * -1233f)))), _wgslsmith_f_op_f32(f32(-1f) * -663f), true));
    var var_3 = Struct_5(_wgslsmith_f_op_f32(max(103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + var_2))), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(global1.x, 11560u, func_1()), min(vec4<u32>(~global1.x, ~min(global1.x, 1u), ~global1.x, 16680u), vec4<u32>(~1u, 1u, global1.x ^ ~global1.x, max(global1.x, 34925u))), _wgslsmith_dot_vec4_i32((vec4<i32>(0i, u_input.a, u_input.a, u_input.a) >> (countOneBits(vec4<u32>(global1.x, global1.x, global1.x, global1.x)) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_add_i32(-2131i, u_input.c), u_input.c, -37808i, reverseBits(u_input.b.x)), vec4<i32>(i32(-1i) * -u_input.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.b.x, u_input.c, 8242i), vec4<i32>(44101i, u_input.c, 84559i, -42092i)), vec4<i32>(2147483647i, -1i, u_input.a, -22009i)), u_input.c, ~1i)));
}

