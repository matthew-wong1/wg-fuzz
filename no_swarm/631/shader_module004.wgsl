struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(641f, 127f), vec2<f32>(-335f, 359f), vec2<f32>(-1212f, 147f), vec2<f32>(1435f, -428f), vec2<f32>(1850f, -507f), vec2<f32>(-940f, -553f), vec2<f32>(533f, 929f), vec2<f32>(-444f, 1087f), vec2<f32>(1829f, 150f), vec2<f32>(158f, -1428f), vec2<f32>(1000f, -1022f), vec2<f32>(-3332f, -328f), vec2<f32>(322f, 216f), vec2<f32>(-1640f, -783f), vec2<f32>(-451f, 1125f), vec2<f32>(1337f, 1086f));

var<private> global2: vec4<i32> = vec4<i32>(-29043i, 2147483647i, -1i, i32(-2147483648));

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<f32>(-1000f, -205f), 4294967295u, vec2<bool>(false, false), 950f), Struct_1(vec2<f32>(1000f, 431f), 4294967295u, vec2<bool>(false, false), -372f), Struct_1(vec2<f32>(-743f, 1000f), 22447u, vec2<bool>(true, true), -1000f), Struct_1(vec2<f32>(-813f, 695f), 4294967295u, vec2<bool>(false, true), -235f), Struct_1(vec2<f32>(558f, -660f), 4294967295u, vec2<bool>(true, true), -221f), Struct_1(vec2<f32>(-206f, 230f), 4294967295u, vec2<bool>(true, true), -460f), Struct_1(vec2<f32>(-131f, 232f), 0u, vec2<bool>(true, false), 875f), Struct_1(vec2<f32>(1375f, 1000f), 4294967295u, vec2<bool>(false, true), 1567f), Struct_1(vec2<f32>(-3443f, 506f), 0u, vec2<bool>(false, false), -105f), Struct_1(vec2<f32>(712f, -1865f), 4294967295u, vec2<bool>(false, false), -499f), Struct_1(vec2<f32>(-1000f, -594f), 60485u, vec2<bool>(false, true), 1000f), Struct_1(vec2<f32>(106f, 1308f), 4294967295u, vec2<bool>(true, false), -1131f), Struct_1(vec2<f32>(544f, -2481f), 0u, vec2<bool>(false, true), 1093f), Struct_1(vec2<f32>(-1269f, 230f), 58145u, vec2<bool>(true, true), 1299f), Struct_1(vec2<f32>(-1078f, -959f), 0u, vec2<bool>(false, false), -105f), Struct_1(vec2<f32>(775f, -1082f), 1u, vec2<bool>(true, false), -1799f), Struct_1(vec2<f32>(-125f, -1367f), 68667u, vec2<bool>(false, true), 132f), Struct_1(vec2<f32>(541f, 664f), 4294967295u, vec2<bool>(false, true), 371f), Struct_1(vec2<f32>(-764f, -112f), 4294967295u, vec2<bool>(false, true), 141f), Struct_1(vec2<f32>(-1823f, -1295f), 72863u, vec2<bool>(false, true), 614f), Struct_1(vec2<f32>(-476f, 1292f), 27893u, vec2<bool>(false, false), 294f), Struct_1(vec2<f32>(769f, 1000f), 20580u, vec2<bool>(true, false), -565f), Struct_1(vec2<f32>(144f, 441f), 63766u, vec2<bool>(false, true), -571f), Struct_1(vec2<f32>(367f, 236f), 65717u, vec2<bool>(true, false), -1636f), Struct_1(vec2<f32>(378f, -288f), 28089u, vec2<bool>(true, true), -372f), Struct_1(vec2<f32>(-424f, 1000f), 4294967295u, vec2<bool>(true, true), 171f), Struct_1(vec2<f32>(-485f, -1000f), 328u, vec2<bool>(false, false), 2745f), Struct_1(vec2<f32>(-183f, 918f), 1u, vec2<bool>(true, false), 928f), Struct_1(vec2<f32>(1000f, 1646f), 48528u, vec2<bool>(false, true), -546f), Struct_1(vec2<f32>(-994f, 1186f), 0u, vec2<bool>(true, true), -476f), Struct_1(vec2<f32>(757f, 316f), 51486u, vec2<bool>(true, true), 794f));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: Struct_2) -> vec4<f32> {
    var var_0 = global2.zxx;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(~arg_1, 16u)])), arg_1 >> (20638u % 32u), select(vec2<bool>(arg_3.b.b < 30107u, arg_0.c.x), vec2<bool>(true, all(vec3<bool>(arg_3.b.c.x, arg_3.b.c.x, arg_0.c.x))), vec2<bool>(true, arg_0.c.x)), -105f), firstTrailingBit(min(~var_0.x, arg_3.c)));
    var var_2 = global2.wxw;
    let var_3 = -40590i;
    let var_4 = 1i;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(736f, arg_3.a.x, arg_0.d, arg_0.d), _wgslsmith_f_op_vec4_f32(-var_1.a))) * arg_3.a)) * _wgslsmith_f_op_vec4_f32(step(arg_3.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(210f, -984f, arg_0.c.x)))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.d, 1000f))))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(-813f)), _wgslsmith_f_op_f32(trunc(-1209f)), _wgslsmith_f_op_f32(755f - 287f), -607f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-524f, 395f, -1931f, 407f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1128f, 362f, -545f, 1450f), vec4<f32>(1456f, -1656f, 2396f, -878f), false))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec2<f32>(-1000f, -250f), 64682u, arg_1, -847f), ~18374u, ~vec2<u32>(57604u, 0u), Struct_2(vec4<f32>(-557f, 1191f, 225f, -1000f), Struct_1(vec2<f32>(-795f, 136f), 76708u, vec2<bool>(false, arg_1.x), 1182f), arg_0))))));
    let var_1 = !(!(!(!vec3<bool>(arg_1.x, true, arg_1.x))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1057f - 656f)))), Struct_2(vec4<f32>(_wgslsmith_div_f32(-1000f, -1326f), _wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(min(-448f, _wgslsmith_f_op_f32(sign(400f)))), var_0.x), Struct_1(vec2<f32>(1000f, var_0.x), 4294967295u, select(vec2<bool>(true, var_1.x), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(var_1.x, false)), _wgslsmith_f_op_f32(select(-710f, var_0.x, arg_1.x))), 35525i));
    var var_3 = Struct_3(-1407f, Struct_2(vec4<f32>(118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b.a.x)) + 182f), _wgslsmith_f_op_f32(sign(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -131f)), var_2.b.b, ~(-35717i)));
    global3 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1136f), -866f), _wgslsmith_f_op_vec3_f32(round(arg_2.b.a.ywy)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(3492i >> (arg_1.b % 32u), vec2<bool>(true, arg_0.b)))), arg_1.d, -1244f));
    let var_1 = min(arg_2.b.b.b, ~max(arg_2.b.b.b ^ arg_1.b, ~1u)) ^ _wgslsmith_dot_vec2_u32(~(~vec2<u32>(63752u, 11625u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.b, 9192u), vec2<u32>(12996u, arg_2.b.b.b)) ^ vec2<u32>(~arg_2.b.b.b, firstLeadingBit(64880u)));
    global3 = array<Struct_1, 31>();
    global2 = firstLeadingBit((firstTrailingBit(abs(vec4<i32>(u_input.a, global2.x, 1i, u_input.a))) | vec4<i32>(u_input.a, u_input.a, select(48648i, 2147483647i, arg_2.b.b.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 0i), global2.wzy))) & (-select(vec4<i32>(-21352i, u_input.a, 2147483647i, arg_2.b.c), vec4<i32>(0i, u_input.a, 0i, arg_2.b.c), vec4<bool>(true, false, arg_1.c.x, true)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b.b.b, 9820u, arg_2.b.b.b, var_1), vec4<u32>(arg_1.b, var_1, arg_2.b.b.b, var_1) << (vec4<u32>(5910u, 0u, arg_1.b, arg_2.b.b.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global1 = array<vec2<f32>, 16>();
    return _wgslsmith_div_f32(-1167f, -487f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 16>();
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(true, true), Struct_1(vec2<f32>(-1749f, -928f), 7403u, vec2<bool>(true, false), -1031f), Struct_3(-648f, Struct_2(vec4<f32>(-463f, -2000f, -1548f, -454f), Struct_1(global1[_wgslsmith_index_u32(1u, 16u)], 1u, vec2<bool>(true, true), -116f), global2.x))))))));
    global1 = array<vec2<f32>, 16>();
    let var_0 = global3[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(11601u, 4294967295u, 34941u) & _wgslsmith_dot_vec3_u32(vec3<u32>(2449u, 48957u, 1u), vec3<u32>(12636u, 35646u, 4294967295u)), ~(~0u)) ^ ~reverseBits(4294967295u), ~_wgslsmith_sub_u32(17238u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 0u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(41185u, 898u, 11425u, 21099u), vec4<u32>(32546u, 51085u, 19897u, 35655u))))), 31u)];
    let var_1 = vec3<i32>(_wgslsmith_div_i32(-global2.x, firstTrailingBit(_wgslsmith_mult_i32(-1i, -2414i))) ^ min(_wgslsmith_sub_i32(~(-24906i), u_input.a), u_input.a >> (~0u % 32u)), 2147483647i, u_input.a);
    global2 = vec4<i32>(_wgslsmith_dot_vec2_i32(-var_1.xy, vec2<i32>(u_input.a, ~12838i)), select(global2.x, ~(var_1.x >> (var_0.b % 32u)), var_0.c.x), var_1.x, 86226i) | vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, var_1.x, var_1.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_0.b, 56052u, 4294967295u), vec4<u32>(var_0.b, var_0.b, 4294967295u, var_0.b)) % vec4<u32>(32u)), vec4<i32>(-24490i, ~var_1.x, ~(-14930i), 1i)), 24701i, 51491i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(_wgslsmith_add_vec2_i32(-var_1.yz, firstTrailingBit(vec2<i32>(u_input.a, -706i))), _wgslsmith_div_vec2_i32(abs(var_1.zy), select(var_1.xx, var_1.zy, vec2<bool>(var_0.c.x, var_0.c.x))), vec2<bool>(false, any(vec3<bool>(true, var_0.c.x, var_0.c.x))))), firstLeadingBit(-515i), abs(var_0.b), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_1, min(var_1, vec3<i32>(u_input.a, var_1.x, -9053i) << (vec3<u32>(var_0.b, 1u, var_0.b) % vec3<u32>(32u)))), -global2.zxy, _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.ywz | vec3<i32>(0i, var_1.x, global2.x), abs(vec3<i32>(var_1.x, -2147483647i, var_1.x)), ~global2.yxy), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, 0i, -1i), var_1))));
}

