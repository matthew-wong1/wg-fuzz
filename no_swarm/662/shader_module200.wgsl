struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(245f, -108f), vec2<f32>(1000f, 112f), vec2<f32>(-1164f, -403f), vec2<f32>(825f, -106f), vec2<f32>(-428f, 563f), vec2<f32>(-254f, 102f), vec2<f32>(-1629f, -771f), vec2<f32>(366f, -865f), vec2<f32>(1129f, 2391f), vec2<f32>(151f, -1000f), vec2<f32>(-197f, -367f), vec2<f32>(-1698f, 1721f));

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(2147483647i, 33416i, 41579i, 1i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), vec4<i32>(-51054i, 2147483647i, -20076i, -1i), vec4<i32>(-12323i, 25889i, 41170i, -1i), vec4<i32>(1i, 0i, 0i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, -1i, -14261i), vec4<i32>(1i, i32(-2147483648), 2147483647i, -23445i), vec4<i32>(i32(-2147483648), -1i, -1532i, -4507i), vec4<i32>(-10479i, -8120i, -35382i, 23706i), vec4<i32>(-1i, -1i, -1i, -7443i), vec4<i32>(0i, 14116i, 1i, -5946i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 25709i), vec4<i32>(12294i, 2147483647i, -1i, 75930i), vec4<i32>(13327i, 0i, -1i, -19552i), vec4<i32>(-1i, i32(-2147483648), 21004i, 2147483647i), vec4<i32>(-14512i, i32(-2147483648), -19154i, 63532i), vec4<i32>(-21763i, i32(-2147483648), 2147483647i, -1i));

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    global1 = array<vec2<f32>, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1622f, -1470f, true)), 118f)), -184f)), 305f, -1000f, -861f), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-256f, -870f, -1583f, 1882f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-307f, -2076f, -207f, 1000f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2221f + -1495f), _wgslsmith_f_op_f32(188f * -321f), _wgslsmith_f_op_f32(max(1198f, -2211f)), _wgslsmith_f_op_f32(select(171f, 302f, true))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -160f), -805f, -731f, _wgslsmith_f_op_f32(sign(1530f)))))));
    global2 = array<vec4<i32>, 17>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(158f, var_0.x))))) - var_0.x), ~firstTrailingBit(_wgslsmith_mult_u32(u_input.a, 5752u) & firstLeadingBit(1u)), arg_0);
    let var_2 = vec4<f32>(-1713f, 789f, -671f, _wgslsmith_f_op_f32(-var_1.a));
    return u_input.a;
}

fn func_2() -> vec2<bool> {
    global3 = array<Struct_1, 11>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 11u)];
    var var_1 = _wgslsmith_add_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(1u, 1u), reverseBits(u_input.a), 1u, 1u))), _wgslsmith_div_vec4_u32(~vec4<u32>(func_3(Struct_2(vec4<i32>(-41588i, u_input.b.x, u_input.b.x, u_input.b.x), true), true, vec4<bool>(true, false, true, true)), 1u, ~60508u, var_0.a), ~abs(select(vec4<u32>(var_0.a, 0u, u_input.a, 62679u), vec4<u32>(u_input.a, 1u, u_input.a, 81835u), true))));
    var_1 = ~(~(~abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(58075u, var_0.a, var_1.x, 68991u), vec4<u32>(28750u, 62311u, var_0.a, var_1.x), vec4<u32>(1u, 67854u, 41148u, 43611u)))));
    let var_2 = Struct_3(1255f, var_1.x, Struct_2(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(29877i, 2147483647i, u_input.b.x, u_input.b.x), vec4<i32>(18891i, u_input.b.x, -1i, u_input.b.x)) ^ (global2[_wgslsmith_index_u32(var_0.a, 17u)] << (vec4<u32>(4294967295u, var_1.x, var_0.a, 10045u) % vec4<u32>(32u)))), !(!any(vec3<bool>(true, true, true)))));
    return !(!select(!select(vec2<bool>(false, true), vec2<bool>(var_2.c.b, var_2.c.b), var_2.c.b), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(var_2.c.b, var_2.c.b), vec2<bool>(true, false), vec2<bool>(false, true)), any(vec3<bool>(var_2.c.b, var_2.c.b, false)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = -vec3<i32>(u_input.b.x, ~0i, firstTrailingBit(u_input.b.x));
    let var_1 = _wgslsmith_mod_vec2_i32(-var_0.xz, ~(-_wgslsmith_mult_vec2_i32(u_input.b, var_0.yz)) >> (vec2<u32>(~57410u, u_input.a) % vec2<u32>(32u)));
    var_0 = vec3<i32>(var_1.x, select(u_input.b.x, 16146i, arg_0.x), -2147483647i);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(528f, -333f, -1079f, 662f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(292f, -639f, 1670f, 576f), vec4<f32>(-811f, 188f, 491f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(248f, -372f, 684f, 447f))))));
    var_0 = vec3<i32>(-1i) * -vec3<i32>(var_1.x >> (reverseBits(13821u) % 32u), u_input.b.x, u_input.b.x);
    return vec3<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-545f, -1193f)), var_2.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1217f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))))), _wgslsmith_f_op_f32(453f - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(1000f)))), (var_2.x <= _wgslsmith_f_op_f32(f32(-1f) * -281f)) | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))));
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(func_2(), max(~vec4<u32>(u_input.a, 20978u, var_0, var_0), ~vec4<u32>(4294967295u, u_input.a, 1u, 20711u)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, 819f, -291f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, -457f, -768f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, -2195f, 614f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1000f, 1769f) - vec3<f32>(233f, -760f, -846f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(316f, -880f, -532f))))))), any(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true)))));
    global1 = array<vec2<f32>, 12>();
    global2 = array<vec4<i32>, 17>();
    global0 = _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(abs(-u_input.b.x), -30383i, -_wgslsmith_div_i32(0i, u_input.b.x))), select(vec3<i32>(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(var_0, 17u)], vec4<i32>(u_input.b.x, 51344i, -1i, 31264i)), 19263i, -(i32(-1i) * -13285i)), ~vec3<i32>(_wgslsmith_add_i32(-2147483647i, u_input.b.x), countOneBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-57044i, u_input.b.x, u_input.b.x, 1i), vec4<i32>(31374i, u_input.b.x, u_input.b.x, u_input.b.x))), false));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -473f) - 1626f)), 72645u, Struct_2(select(global2[_wgslsmith_index_u32(max(1u, 1u), 17u)], _wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x), global2[_wgslsmith_index_u32(u_input.a, 17u)]) ^ vec4<i32>(0i, u_input.b.x, 578i, -14007i), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 12>();
    var var_0 = func_1();
    var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(func_4(!vec2<bool>(var_0.c.b, true), select(~(vec4<u32>(52990u, 0u, 27958u, var_0.b) >> (vec4<u32>(103550u, 15067u, u_input.a, var_0.b) % vec4<u32>(32u))), abs(vec4<u32>(18318u, 0u, u_input.a, 4294967295u)) >> (~vec4<u32>(50786u, 21403u, var_0.b, 6270u) % vec4<u32>(32u)), select(vec4<bool>(false, false, true, var_0.c.b), vec4<bool>(true, true, var_0.c.b, true), !vec4<bool>(var_0.c.b, var_0.c.b, var_0.c.b, var_0.c.b))))).x, 80087u, func_1().c);
    let var_1 = Struct_2(vec4<i32>(countOneBits(~firstTrailingBit(var_0.c.a.x)), 525i, u_input.b.x, var_0.c.a.x), !var_0.c.b);
    global1 = array<vec2<f32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(step(var_0.a, var_0.a)), var_0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(186f, 2106f, -1000f) - vec3<f32>(-436f, var_0.a, var_0.a)))), func_1().c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1689f), true)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-881f)) - _wgslsmith_div_f32(var_0.a, 951f))))));
}

