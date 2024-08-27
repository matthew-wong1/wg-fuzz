struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: vec3<i32>,
    c: Struct_4,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(-2211i, vec3<i32>(i32(-2147483648), -5880i, 24619i), Struct_4(true, Struct_1(27603i, vec4<i32>(-12033i, 0i, 1i, 1i), vec3<f32>(631f, 2140f, -1504f)), -12154i, false), vec4<bool>(true, true, true, true), Struct_1(1i, vec4<i32>(-10943i, -1i, -13682i, i32(-2147483648)), vec3<f32>(660f, 294f, 225f))), Struct_5(i32(-2147483648), vec3<i32>(-1i, 0i, -56423i), Struct_4(false, Struct_1(1i, vec4<i32>(2147483647i, -1i, -13720i, 32457i), vec3<f32>(358f, 1188f, -668f)), 1i, true), vec4<bool>(true, true, true, false), Struct_1(0i, vec4<i32>(1i, 47852i, -139i, 2147483647i), vec3<f32>(2309f, -281f, 847f))), Struct_5(30681i, vec3<i32>(-27042i, -45289i, -1i), Struct_4(false, Struct_1(1i, vec4<i32>(0i, 63663i, -72667i, 15412i), vec3<f32>(-651f, -775f, 1059f)), -28546i, false), vec4<bool>(false, false, true, true), Struct_1(1i, vec4<i32>(2147483647i, -17580i, -1i, -39690i), vec3<f32>(-975f, -693f, -1698f))), Struct_5(-1i, vec3<i32>(-15828i, 1i, i32(-2147483648)), Struct_4(true, Struct_1(-11761i, vec4<i32>(1i, -35322i, 1i, 39353i), vec3<f32>(-184f, 1094f, 361f)), -1i, false), vec4<bool>(false, false, false, false), Struct_1(16304i, vec4<i32>(1i, -11158i, 16629i, 255i), vec3<f32>(1795f, 305f, 418f))), Struct_5(1i, vec3<i32>(10498i, -4702i, 55091i), Struct_4(false, Struct_1(-14454i, vec4<i32>(2147483647i, 1i, 7951i, 23135i), vec3<f32>(-591f, -776f, -818f)), -18088i, true), vec4<bool>(false, true, false, false), Struct_1(1i, vec4<i32>(2147483647i, -1i, 20647i, -1i), vec3<f32>(-1051f, -503f, -267f))), Struct_5(0i, vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), Struct_4(false, Struct_1(73133i, vec4<i32>(-18703i, 4408i, -9420i, -37647i), vec3<f32>(-491f, -851f, 555f)), 1i, false), vec4<bool>(true, false, true, true), Struct_1(-20765i, vec4<i32>(-12424i, -25446i, 36584i, 1i), vec3<f32>(-651f, -1111f, -367f))), Struct_5(31957i, vec3<i32>(-51792i, 19243i, 0i), Struct_4(false, Struct_1(50328i, vec4<i32>(-1639i, 0i, 0i, -29163i), vec3<f32>(351f, 2091f, -176f)), -48413i, false), vec4<bool>(true, true, false, false), Struct_1(-14740i, vec4<i32>(38195i, 2147483647i, i32(-2147483648), 31493i), vec3<f32>(-203f, -636f, 601f))), Struct_5(13124i, vec3<i32>(45888i, 10274i, -1i), Struct_4(true, Struct_1(2147483647i, vec4<i32>(-1i, -1i, 8750i, i32(-2147483648)), vec3<f32>(1667f, -2294f, -1740f)), 1i, true), vec4<bool>(true, true, false, true), Struct_1(-40892i, vec4<i32>(1i, -2461i, 39515i, 13631i), vec3<f32>(1000f, 1944f, 351f))));

var<private> global1: vec4<i32>;

var<private> global2: bool;

var<private> global3: array<bool, 7>;

var<private> global4: Struct_4 = Struct_4(false, Struct_1(-44821i, vec4<i32>(0i, -15230i, 0i, -11649i), vec3<f32>(362f, -546f, -1049f)), 645i, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>) -> vec3<i32> {
    var var_0 = 1u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.b.c.x, -446f)))) * -1474f));
    let var_2 = _wgslsmith_div_vec3_u32(firstTrailingBit(select(vec3<u32>(929u, ~9988u, ~1u), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<bool>(false, global3[_wgslsmith_index_u32(1u, 7u)], global4.d)), any(vec4<bool>(arg_0, arg_0, true, global3[_wgslsmith_index_u32(1u, 7u)])))), ~select(firstTrailingBit(reverseBits(vec3<u32>(33872u, 79880u, 9732u))), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 60066u), vec3<u32>(26775u, 14698u, 76631u)), select(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 49650u), vec3<bool>(global4.d, arg_0, false))), all(vec3<bool>(arg_0, true, arg_0))));
    var var_3 = Struct_2(select(select(vec3<bool>(true, any(vec3<bool>(global3[_wgslsmith_index_u32(var_2.x, 7u)], global3[_wgslsmith_index_u32(3290u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)])), arg_0), select(select(vec3<bool>(true, global3[_wgslsmith_index_u32(var_2.x, 7u)], global4.d), vec3<bool>(global4.d, false, true), vec3<bool>(global3[_wgslsmith_index_u32(74849u, 7u)], arg_0, true)), vec3<bool>(global4.d, global4.d, true), !vec3<bool>(true, false, global4.a)), !any(vec4<bool>(true, false, true, global4.d))), select(select(!vec3<bool>(true, global3[_wgslsmith_index_u32(62524u, 7u)], false), select(vec3<bool>(true, false, false), vec3<bool>(global3[_wgslsmith_index_u32(2623u, 7u)], true, true), false), select(vec3<bool>(global4.d, global3[_wgslsmith_index_u32(var_2.x, 7u)], false), vec3<bool>(true, global4.a, global4.d), global4.a)), !(!vec3<bool>(global3[_wgslsmith_index_u32(1u, 7u)], global4.d, arg_0)), true), _wgslsmith_f_op_f32(sign(-173f)) <= 1670f), global1.x, _wgslsmith_sub_u32(~firstTrailingBit(23767u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(var_2.x, var_2.x)), ~var_2.xx)), any(vec2<bool>(arg_0, any(vec2<bool>(true, true)))), global4.b);
    global0 = array<Struct_5, 8>();
    return var_3.e.b.xyw;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    global0 = array<Struct_5, 8>();
    let var_0 = countOneBits(_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c, 38224u, 35203u), ~vec3<u32>(0u, arg_1.c, 1109u)), _wgslsmith_add_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, arg_1.c), vec3<u32>(arg_1.c, 4294967295u, 41107u))), max(abs(vec3<u32>(1u, arg_1.c, arg_1.c)), _wgslsmith_add_vec3_u32(vec3<u32>(66391u, 4294967295u, 0u), vec3<u32>(71231u, arg_1.c, arg_1.c))))));
    var var_1 = vec4<f32>(-416f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.b.c.x - _wgslsmith_f_op_f32(arg_1.e.c.x * -456f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.e.c.x - 1268f))))), 686f, _wgslsmith_f_op_f32(f32(-1f) * -538f));
    return false;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global4 = Struct_4(func_4(-abs(u_input.a.yy), Struct_2(!vec3<bool>(false, global3[_wgslsmith_index_u32(76749u, 7u)], arg_0), 6478i, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(38633u, 0u, 0u, 0u), vec4<u32>(30034u, 4294967295u, 2652u, 4294967295u))), arg_0, global4.b), _wgslsmith_mod_vec3_i32(abs(~vec3<i32>(1i, -2147483647i, u_input.a.x)), func_3(any(vec2<bool>(arg_0, false)), vec2<i32>(global1.x, global4.c)))), global4.b, 27299i, global3[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(1u, 71917u)), 7u)]);
    var var_0 = (global4.a & select(true, true, _wgslsmith_f_op_f32(step(global4.b.c.x, global4.b.c.x)) >= _wgslsmith_f_op_f32(-558f - global4.b.c.x))) || any(vec4<bool>(arg_0, false, any(vec4<bool>(true, global3[_wgslsmith_index_u32(84747u, 7u)], global3[_wgslsmith_index_u32(34462u, 7u)], false)) || true, false));
    let var_1 = firstLeadingBit(vec2<u32>(reverseBits(_wgslsmith_clamp_u32(71710u, 70769u, 1u)), _wgslsmith_mod_u32(firstLeadingBit(4294967295u), ~74286u)) ^ vec2<u32>(~4294967295u, 50652u));
    let var_2 = Struct_3(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.x, ~var_1.x, var_1.x & _wgslsmith_div_u32(var_1.x, var_1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 1u, 4294967295u, 4294967295u) << (firstLeadingBit(vec4<u32>(var_1.x, 28143u, 0u, 45743u)) % vec4<u32>(32u)), ~select(vec4<u32>(var_1.x, var_1.x, var_1.x, 10688u), vec4<u32>(16144u, 4294967295u, var_1.x, 42254u), true), ~select(vec4<u32>(1u, var_1.x, var_1.x, var_1.x), vec4<u32>(var_1.x, 1u, var_1.x, var_1.x), vec4<bool>(global4.a, global4.d, global4.d, global4.d)))), ~_wgslsmith_div_u32(39977u, var_1.x), Struct_2(!vec3<bool>(true, false, any(vec4<bool>(global4.a, global3[_wgslsmith_index_u32(590u, 7u)], arg_0, false))), firstTrailingBit(_wgslsmith_sub_i32(max(-20742i, global4.b.b.x), global1.x)), ~_wgslsmith_mult_u32(min(var_1.x, var_1.x), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b.c.x - global4.b.c.x) + 117f) != _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(-_wgslsmith_sub_i32(global4.c, 42041i), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.b.b.x, 2147483647i, u_input.a.x, 5729i), vec4<i32>(-1i, global4.b.a, -2147483647i, global4.b.b.x)), ~vec4<i32>(global4.b.b.x, global4.c, 0i, global1.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.b.c.x, 550f, global4.b.c.x), global4.b.c)))));
    global4 = Struct_4(false, global4.b, min(~(-2147483647i), 1i), select(all(select(var_2.c.a, vec3<bool>(global4.a, false, false), vec3<bool>(false, true, global3[_wgslsmith_index_u32(var_2.b, 7u)]))), true, !(!global4.a)) | true);
    return var_2.c;
}

fn func_1() -> Struct_2 {
    global2 = global3[_wgslsmith_index_u32(abs(1u), 7u)];
    var var_0 = -687f;
    global2 = true;
    let var_1 = func_2(!any(select(vec4<bool>(true, global3[_wgslsmith_index_u32(26732u, 7u)], false, global4.a), vec4<bool>(global3[_wgslsmith_index_u32(26623u, 7u)], true, true, global3[_wgslsmith_index_u32(64669u, 7u)]), vec4<bool>(true, true, global4.d, false))) & true);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.e.c.xy)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global4.b.c.yx, vec2<f32>(var_1.e.c.x, global4.b.c.x), vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(-var_1.e.c.yx)))) - func_2(global3[_wgslsmith_index_u32(10597u, 7u)]).e.c.xx), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.e.c.zz + vec2<f32>(1004f, -1186f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 772f)))), func_2(false).e.c.zx) * var_1.e.c.xx));
    return Struct_2(var_1.a, global4.b.a, _wgslsmith_dot_vec2_u32(~firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c, 4294967295u), vec2<u32>(1u, var_1.c), vec2<u32>(var_1.c, var_1.c))), ~(vec2<u32>(var_1.c, 94712u) >> ((vec2<u32>(var_1.c, 43300u) & vec2<u32>(var_1.c, 8800u)) % vec2<u32>(32u)))), true, func_2(!((var_1.c | var_1.c) != 4294967295u)).e);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> i32 {
    var var_0 = func_2(any(arg_1.c.a));
    global2 = 2540i != arg_1.c.e.a;
    let var_1 = Struct_4(false, Struct_1(~(~arg_1.c.e.b.x), vec4<i32>(24170i, (var_0.b << (arg_1.a.x % 32u)) ^ 6092i, global1.x, 1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(global4.b.c.x - 351f), 770f) * vec3<f32>(-292f, global4.b.c.x, _wgslsmith_f_op_f32(arg_1.c.e.c.x + -842f)))), global1.x, var_0.d);
    var var_2 = -653f;
    var var_3 = !vec3<bool>(global3[_wgslsmith_index_u32(~(~(~12943u)), 7u)], all(!(!vec2<bool>(global4.d, false))), !(true && var_1.d));
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = -1936i;
    let var_2 = -func_5(vec4<u32>(1u, 1u, 1u, 1u), Struct_3(vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 67470u), vec2<u32>(4294967295u, 1u)), func_1()));
    global4 = Struct_4(global4.d, global4.b, global1.x, global4.d);
    var_0 = ~1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 1u, 1u, 1u)) % 32u);
    global1 = vec4<i32>(-func_5(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), Struct_3(vec4<u32>(112926u, 4294967295u, 0u, 4294967295u), 1u, func_1())), -_wgslsmith_div_i32(global1.x, ~u_input.a.x), var_2, ~func_3(!func_4(vec2<i32>(6446i, 0i), Struct_2(vec3<bool>(global3[_wgslsmith_index_u32(84489u, 7u)], global4.a, global4.d), 2147483647i, 4294967295u, global4.d, global4.b), u_input.a), _wgslsmith_mult_vec2_i32(~vec2<i32>(var_2, 2147483647i), vec2<i32>(var_2, var_2))).x);
    let var_3 = vec2<bool>(true, !(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 31265u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(46203u, 32268u, 45210u)), vec3<u32>(1u, 1u, 1u)), 7u)]));
    var var_4 = _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(~min(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u)), vec2<u32>(0u, max(4294967295u, 76847u))), firstLeadingBit(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 31825u), vec2<u32>(1551u, 46842u), vec2<u32>(1u, 62982u))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

