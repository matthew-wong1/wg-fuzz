struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec2<f32>(-1225f, -1000f), vec2<bool>(false, false), vec2<f32>(-415f, 155f)), Struct_1(vec4<u32>(0u, 0u, 1u, 4294967295u), vec2<f32>(566f, 2858f), vec2<bool>(true, true), vec2<f32>(311f, -475f)), Struct_1(vec4<u32>(42929u, 0u, 0u, 4294967295u), vec2<f32>(1010f, 897f), vec2<bool>(true, true), vec2<f32>(-482f, 263f)), Struct_1(vec4<u32>(63452u, 29076u, 0u, 73377u), vec2<f32>(-1123f, -1302f), vec2<bool>(false, false), vec2<f32>(-372f, -703f)), Struct_1(vec4<u32>(2021u, 1u, 1u, 114641u), vec2<f32>(-484f, -1267f), vec2<bool>(false, true), vec2<f32>(-1312f, -321f)), Struct_1(vec4<u32>(62362u, 3673u, 1632u, 4294967295u), vec2<f32>(904f, -291f), vec2<bool>(false, true), vec2<f32>(-390f, 166f)), Struct_1(vec4<u32>(44099u, 4294967295u, 1u, 30120u), vec2<f32>(315f, -1067f), vec2<bool>(true, true), vec2<f32>(115f, 278f)), Struct_1(vec4<u32>(34940u, 4294967295u, 12100u, 43721u), vec2<f32>(1110f, 563f), vec2<bool>(false, false), vec2<f32>(634f, 956f)), Struct_1(vec4<u32>(80240u, 1u, 56107u, 54938u), vec2<f32>(1132f, -379f), vec2<bool>(true, false), vec2<f32>(880f, 1506f)), Struct_1(vec4<u32>(4294967295u, 52266u, 22349u, 13024u), vec2<f32>(796f, 1840f), vec2<bool>(true, true), vec2<f32>(1718f, -852f)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 7490u), vec2<f32>(-820f, -1750f), vec2<bool>(false, false), vec2<f32>(-1787f, -407f)), Struct_1(vec4<u32>(19765u, 57373u, 4336u, 4294967295u), vec2<f32>(1000f, 1925f), vec2<bool>(false, false), vec2<f32>(1099f, 733f)), Struct_1(vec4<u32>(53584u, 17941u, 65707u, 4294967295u), vec2<f32>(-702f, 934f), vec2<bool>(true, false), vec2<f32>(1463f, 1697f)), Struct_1(vec4<u32>(0u, 1u, 0u, 33016u), vec2<f32>(114f, 253f), vec2<bool>(true, false), vec2<f32>(1188f, 1728f)), Struct_1(vec4<u32>(9794u, 14276u, 116211u, 84297u), vec2<f32>(1850f, -443f), vec2<bool>(false, true), vec2<f32>(336f, 1418f)), Struct_1(vec4<u32>(33791u, 21461u, 54362u, 134414u), vec2<f32>(1126f, -369f), vec2<bool>(false, false), vec2<f32>(1401f, -549f)), Struct_1(vec4<u32>(18458u, 16043u, 0u, 9730u), vec2<f32>(-1000f, 584f), vec2<bool>(false, false), vec2<f32>(1673f, 1022f)), Struct_1(vec4<u32>(22271u, 77345u, 40231u, 4294967295u), vec2<f32>(-898f, -418f), vec2<bool>(false, true), vec2<f32>(169f, 543f)), Struct_1(vec4<u32>(0u, 1u, 0u, 20106u), vec2<f32>(-404f, 2478f), vec2<bool>(false, false), vec2<f32>(167f, 1065f)), Struct_1(vec4<u32>(0u, 99754u, 57462u, 11855u), vec2<f32>(2356f, 685f), vec2<bool>(false, true), vec2<f32>(309f, -836f)), Struct_1(vec4<u32>(4294967295u, 39116u, 5646u, 53562u), vec2<f32>(-1000f, 152f), vec2<bool>(false, true), vec2<f32>(1013f, -771f)), Struct_1(vec4<u32>(23434u, 4294967295u, 20232u, 0u), vec2<f32>(-285f, 145f), vec2<bool>(false, false), vec2<f32>(1227f, 467f)));

var<private> global1: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false));

var<private> global2: Struct_2;

var<private> global3: vec2<f32> = vec2<f32>(-1178f, 1817f);

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec4<u32>(9122u, 58354u, 4294967295u, 1u), vec2<f32>(1249f, -806f), vec2<bool>(true, true), vec2<f32>(887f, 1675f))), Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 1u, 25592u), vec2<f32>(1392f, 1521f), vec2<bool>(true, false), vec2<f32>(1004f, 1000f))), Struct_2(Struct_1(vec4<u32>(12497u, 72669u, 65159u, 1u), vec2<f32>(402f, -307f), vec2<bool>(true, false), vec2<f32>(769f, -1000f))), Struct_2(Struct_1(vec4<u32>(56579u, 67081u, 70179u, 1u), vec2<f32>(-1092f, -1384f), vec2<bool>(false, true), vec2<f32>(-752f, 536f))), Struct_2(Struct_1(vec4<u32>(0u, 17667u, 1u, 0u), vec2<f32>(322f, 1110f), vec2<bool>(false, false), vec2<f32>(-1501f, 1312f))), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 60711u, 4294967295u), vec2<f32>(-942f, -261f), vec2<bool>(false, false), vec2<f32>(-614f, -434f))), Struct_2(Struct_1(vec4<u32>(7023u, 34135u, 56096u, 4294967295u), vec2<f32>(453f, -723f), vec2<bool>(true, false), vec2<f32>(-512f, 501f))), Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 19300u, 26392u), vec2<f32>(118f, -622f), vec2<bool>(true, true), vec2<f32>(-1189f, 1186f))), Struct_2(Struct_1(vec4<u32>(0u, 12295u, 31317u, 18119u), vec2<f32>(423f, 446f), vec2<bool>(true, false), vec2<f32>(1473f, -1363f))), Struct_2(Struct_1(vec4<u32>(1u, 0u, 2996u, 72603u), vec2<f32>(1495f, 1557f), vec2<bool>(false, false), vec2<f32>(1112f, 749f))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global2.a.b);
    var var_1 = global2.a.d.x;
    global0 = array<Struct_1, 22>();
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(468f, 772f))))), global3.x, -1280f, global2.a.d.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1441f, global3.x)) - global3.x), _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(trunc(-1000f)))), global3.x, global2.a.b.x))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), -1421f, _wgslsmith_f_op_f32(f32(-1f) * -340f)))));
    return !global2.a.c;
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_2(Struct_1(max(vec4<u32>(4294967295u, ~global2.a.a.x, global2.a.a.x >> (global2.a.a.x % 32u), _wgslsmith_clamp_u32(4294967295u, global2.a.a.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.a.a.x, global2.a.a.x, 0u, 4294967295u), _wgslsmith_clamp_vec4_u32(global2.a.a, vec4<u32>(14671u, 1u, global2.a.a.x, 4294967295u), global2.a.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(global2.a.b)))), select(func_3(), select(!vec2<bool>(global2.a.c.x, global2.a.c.x), !vec2<bool>(true, global2.a.c.x), !vec2<bool>(false, global2.a.c.x)), global2.a.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-790f, global2.a.b.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.d.x, global3.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a.d.x, global3.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(sign(316f))))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -616f), -951f, 540f)))));
    let var_2 = var_0.a.c.x;
    global1 = array<vec3<bool>, 22>();
    global0 = array<Struct_1, 22>();
    return vec4<i32>(~9486i, ~(-abs(2147483647i)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, ~u_input.a.x, -u_input.a.x)), max(_wgslsmith_add_vec3_i32(u_input.a | u_input.a, u_input.a), ~vec3<i32>(44360i, 1i, u_input.a.x))), u_input.a.x);
}

fn func_1() -> i32 {
    let var_0 = -8761i;
    let var_1 = countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 45389i, ~u_input.a.x, -2147483647i), _wgslsmith_sub_vec4_i32(select(vec4<i32>(2147483647i, -2111i, var_0, u_input.a.x), func_2(), any(vec2<bool>(global2.a.c.x, global2.a.c.x))), abs(vec4<i32>(u_input.a.x, u_input.a.x, var_0, -14750i))), select(vec4<i32>(_wgslsmith_mod_i32(-72492i, var_0), u_input.a.x, 2147483647i, u_input.a.x ^ u_input.a.x), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-33952i, 1i, 17988i, 2147483647i), vec4<i32>(var_0, var_0, -8025i, var_0), vec4<i32>(-3476i, var_0, 17964i, -1i)), vec4<i32>(var_0, u_input.a.x, u_input.a.x, 1143i)), select(!vec4<bool>(false, false, global2.a.c.x, true), vec4<bool>(false, false, false, global2.a.c.x), select(vec4<bool>(global2.a.c.x, true, false, global2.a.c.x), vec4<bool>(true, global2.a.c.x, true, true), global2.a.c.x)))));
    global3 = _wgslsmith_f_op_vec2_f32(-global2.a.b);
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(11079u, 22u)]);
    var_2 = global4[_wgslsmith_index_u32(var_2.a.a.x, 10u)];
    return ~_wgslsmith_dot_vec4_i32(var_1, ~(var_1 | vec4<i32>(var_0, var_1.x, var_1.x, 2147483647i))) | u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(~(-27213i), u_input.a.x), firstTrailingBit(-2147483647i), func_1(), u_input.a.x << (((global2.a.a.x & global2.a.a.x) & min(global2.a.a.x, global2.a.a.x)) % 32u)), vec4<i32>(1i, -4909i, min(u_input.a.x, ~reverseBits(u_input.a.x)), -(~u_input.a.x)));
    var var_1 = global3.x;
    global0 = array<Struct_1, 22>();
    let var_2 = -2147483647i | var_0.x;
    let var_3 = Struct_2(Struct_1(global2.a.a, vec2<f32>(global3.x, _wgslsmith_f_op_f32(min(-1086f, _wgslsmith_div_f32(-1000f, -499f)))), func_3(), _wgslsmith_f_op_vec2_f32(global2.a.d * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.a.d, global2.a.b)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1189f, 797f, var_3.a.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-548f, 2054f, global2.a.b.x) * vec3<f32>(-1373f, 1526f, -1099f))))))));
    global4 = array<Struct_2, 10>();
    global1 = array<vec3<bool>, 22>();
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1779f, var_4.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(822f, global3.x))) + global2.a.b))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_4.xz)), vec2<f32>(var_3.a.d.x, var_3.a.b.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, global3.x) - vec2<f32>(-1091f, var_3.a.b.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_0.x, 1i, func_2().x, u_input.a.x)), reverseBits((vec4<i32>(-1i, 47534i, 0i, 1i) & vec4<i32>(-2147483647i, var_0.x, -3142i, var_0.x)) ^ vec4<i32>(u_input.a.x, var_2, -30384i, 2147483647i))), vec2<u32>(global2.a.a.x, global2.a.a.x), 4336i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1107f, _wgslsmith_f_op_f32(f32(-1f) * -401f))))), global2.a.a.xz);
}

