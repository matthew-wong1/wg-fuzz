struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: bool,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 26>;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(93592u, vec2<bool>(false, false)), vec3<u32>(2037u, 4294967295u, 1u), Struct_1(4294967295u, vec2<bool>(false, true))), Struct_2(Struct_1(0u, vec2<bool>(true, true)), vec3<u32>(80750u, 0u, 1u), Struct_1(38843u, vec2<bool>(true, false))), Struct_2(Struct_1(1u, vec2<bool>(false, false)), vec3<u32>(0u, 1u, 68269u), Struct_1(4294967295u, vec2<bool>(false, true))), Struct_2(Struct_1(28950u, vec2<bool>(false, false)), vec3<u32>(16434u, 1u, 81669u), Struct_1(1u, vec2<bool>(true, true))), Struct_2(Struct_1(30633u, vec2<bool>(false, false)), vec3<u32>(0u, 950u, 75627u), Struct_1(4294967295u, vec2<bool>(false, true))), Struct_2(Struct_1(27263u, vec2<bool>(false, true)), vec3<u32>(20856u, 19962u, 12081u), Struct_1(4294967295u, vec2<bool>(true, false))), Struct_2(Struct_1(1u, vec2<bool>(true, false)), vec3<u32>(0u, 87451u, 1695u), Struct_1(51497u, vec2<bool>(true, true))), Struct_2(Struct_1(6218u, vec2<bool>(false, true)), vec3<u32>(31784u, 1u, 70545u), Struct_1(72015u, vec2<bool>(true, false))), Struct_2(Struct_1(14258u, vec2<bool>(false, true)), vec3<u32>(50696u, 0u, 29959u), Struct_1(26466u, vec2<bool>(true, true))), Struct_2(Struct_1(4175u, vec2<bool>(true, true)), vec3<u32>(0u, 0u, 4294967295u), Struct_1(3413u, vec2<bool>(false, true))), Struct_2(Struct_1(9516u, vec2<bool>(true, true)), vec3<u32>(34976u, 101256u, 78775u), Struct_1(0u, vec2<bool>(true, false))), Struct_2(Struct_1(0u, vec2<bool>(false, true)), vec3<u32>(3968u, 1u, 4294967295u), Struct_1(1u, vec2<bool>(true, true))), Struct_2(Struct_1(2832u, vec2<bool>(false, false)), vec3<u32>(23208u, 0u, 71727u), Struct_1(17588u, vec2<bool>(true, false))), Struct_2(Struct_1(0u, vec2<bool>(true, false)), vec3<u32>(26906u, 4294967295u, 4294967295u), Struct_1(0u, vec2<bool>(true, true))), Struct_2(Struct_1(4347u, vec2<bool>(false, true)), vec3<u32>(66578u, 77329u, 1u), Struct_1(1u, vec2<bool>(false, false))), Struct_2(Struct_1(0u, vec2<bool>(true, true)), vec3<u32>(49785u, 19507u, 0u), Struct_1(0u, vec2<bool>(true, false))), Struct_2(Struct_1(4294967295u, vec2<bool>(false, false)), vec3<u32>(49553u, 0u, 38896u), Struct_1(92221u, vec2<bool>(false, false))), Struct_2(Struct_1(0u, vec2<bool>(false, false)), vec3<u32>(49164u, 2894u, 4294967295u), Struct_1(12512u, vec2<bool>(true, false))), Struct_2(Struct_1(95577u, vec2<bool>(false, false)), vec3<u32>(0u, 12265u, 15131u), Struct_1(9403u, vec2<bool>(false, false))), Struct_2(Struct_1(54446u, vec2<bool>(false, false)), vec3<u32>(1u, 1u, 1u), Struct_1(4294967295u, vec2<bool>(true, true))), Struct_2(Struct_1(0u, vec2<bool>(false, false)), vec3<u32>(1u, 4294967295u, 32574u), Struct_1(4294967295u, vec2<bool>(true, true))), Struct_2(Struct_1(1u, vec2<bool>(false, false)), vec3<u32>(1u, 33937u, 19399u), Struct_1(4294967295u, vec2<bool>(true, false))), Struct_2(Struct_1(1u, vec2<bool>(true, false)), vec3<u32>(4294967295u, 9225u, 66924u), Struct_1(1u, vec2<bool>(false, true))), Struct_2(Struct_1(7563u, vec2<bool>(false, false)), vec3<u32>(1u, 2080u, 1u), Struct_1(4294967295u, vec2<bool>(true, false))), Struct_2(Struct_1(1u, vec2<bool>(false, false)), vec3<u32>(0u, 0u, 4294967295u), Struct_1(4294967295u, vec2<bool>(true, true))), Struct_2(Struct_1(100073u, vec2<bool>(false, true)), vec3<u32>(1u, 2953u, 35672u), Struct_1(19855u, vec2<bool>(true, true))));

var<private> global4: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_1(max(0u, ~_wgslsmith_mod_u32(1u, 1u)), !vec2<bool>(global2.x | all(vec3<bool>(global2.x, global2.x, false)), true));
    let var_1 = vec3<u32>(max(var_0.a, 4294967295u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, var_0.a << (var_0.a % 32u)), ~(~96263u)), ~16054u) << (vec3<u32>(~var_0.a, 71243u, 0u) % vec3<u32>(32u));
    global3 = array<Struct_2, 26>();
    var var_2 = Struct_2(Struct_1(reverseBits(3305u) << (~(~var_0.a) % 32u), select(vec2<bool>(!var_0.b.x, true), select(var_0.b, var_0.b, var_0.b), !all(var_0.b))), firstTrailingBit(select(~firstLeadingBit(vec3<u32>(1u, 0u, 9974u)), ~var_1, select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), any(vec4<bool>(false, var_0.b.x, false, true))))), Struct_1(countOneBits(~var_0.a | var_0.a), select(select(!vec2<bool>(true, var_0.b.x), !vec2<bool>(var_0.b.x, true), !var_0.b), !(!var_0.b), _wgslsmith_f_op_f32(select(-184f, 2049f, global2.x)) <= -1139f)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f - 1014f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-110f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -928f))), global2.x)))));
    return ~(~((vec2<u32>(16983u, 34386u) << (var_2.b.yx % vec2<u32>(32u))) & vec2<u32>(1u, var_1.x)));
}

fn func_2() -> vec2<u32> {
    global0 = 12091u;
    var var_0 = false;
    var var_1 = -1122f;
    var var_2 = countOneBits(abs(-countOneBits(select(vec4<i32>(-1i, u_input.a.x, 24495i, -51746i), vec4<i32>(u_input.c, 28210i, -9113i, -2745i), vec4<bool>(false, global2.x, false, global2.x)))));
    var var_3 = countOneBits(~49887u);
    return _wgslsmith_add_vec2_u32(~firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(95513u, 18532u), min(vec2<u32>(0u, 68861u), vec2<u32>(57411u, 3823u)), ~vec2<u32>(1u, 4294967295u))), func_3());
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    let var_0 = Struct_5(arg_0.x, func_2() ^ ~(~func_3()), all(arg_0.yy), select(vec3<bool>(global2.x, any(vec2<bool>(false, true)), true && !arg_0.x), arg_0, vec3<bool>(true, arg_0.x, arg_0.x)), 4294967295u);
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-202f)))) * _wgslsmith_f_op_f32(floor(2583f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(910f + _wgslsmith_f_op_f32(trunc(-105f))))) <= _wgslsmith_f_op_f32(1155f * -830f);
    global4 = !any(vec2<bool>(true, !(var_0.b.x >= 0u)));
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.c, 108i | _wgslsmith_add_i32(-14750i, u_input.c)), -_wgslsmith_div_vec3_i32(u_input.a, global1[_wgslsmith_index_u32(var_0.e, 26u)]) & (global1[_wgslsmith_index_u32(var_0.e, 26u)] | min(vec3<i32>(u_input.c, -14819i, u_input.a.x), u_input.a))) ^ -(_wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(~1u, 26u)], vec3<i32>(-72315i, 0i, -20602i)) << (abs(countOneBits(vec3<u32>(var_0.b.x, 45497u, 70583u))) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f), -2015f))))));
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>((~47229u >> (func_1(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, false), global2.x)) % 32u)) > ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(27754u, 102182u, 0u, 0u), vec4<u32>(0u, 105099u, 31192u, 1u))), -60562i == ~u_input.c);
    let var_0 = global3[_wgslsmith_index_u32(~0u, 26u)];
    let var_1 = 0i;
    let var_2 = _wgslsmith_mod_i32(-20189i, var_1);
    var var_3 = select(~(countOneBits(vec4<i32>(1i, var_2, var_2, -1i)) << ((vec4<u32>(1u, 17090u, 36806u, var_0.b.x) ^ vec4<u32>(0u, 10439u, var_0.a.a, 1u)) % vec4<u32>(32u))) & vec4<i32>(max(_wgslsmith_mod_i32(var_1, -2147483647i), ~var_2), 144i, -2147483647i, -13366i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, ~(-1i) << (var_0.a.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_1, -2147483647i), u_input.a), abs(~(-9729i))), vec4<i32>(var_1, max(-67101i, var_1), var_2, -2596i) | ~vec4<i32>(62566i, 0i, u_input.c, var_2)), false);
    let var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(823f, 739f)), -530f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-766f * -185f) * _wgslsmith_f_op_f32(sign(-793f))), true)), 431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1609f * 610f), _wgslsmith_f_op_f32(f32(-1f) * -594f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(f32(-1f) * -406f))), 1151f), !((var_0.c.b.x && true) & global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(-var_2 << (min(1u, 4294967295u) % 32u)), -2147483647i, 2147483647i));
}

