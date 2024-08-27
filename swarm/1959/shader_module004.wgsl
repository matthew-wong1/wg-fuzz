struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(-176f, Struct_1(7054u, 85645i, i32(-2147483648), vec2<bool>(true, false)), vec4<bool>(false, true, true, true), Struct_1(4294967295u, 2147483647i, 14864i, vec2<bool>(false, false)), Struct_1(35139u, 0i, -25856i, vec2<bool>(false, false))), Struct_2(1853f, Struct_1(15440u, -23427i, 50651i, vec2<bool>(false, false)), vec4<bool>(true, true, false, false), Struct_1(4294967295u, 0i, 1i, vec2<bool>(true, true)), Struct_1(1u, 16632i, -37533i, vec2<bool>(true, false))), Struct_2(503f, Struct_1(43029u, 16967i, -29236i, vec2<bool>(false, true)), vec4<bool>(false, true, false, false), Struct_1(0u, -74062i, 19222i, vec2<bool>(false, false)), Struct_1(9145u, 13333i, -26788i, vec2<bool>(false, true))), Struct_2(-1514f, Struct_1(4294967295u, 32585i, -1343i, vec2<bool>(false, false)), vec4<bool>(true, true, true, false), Struct_1(28328u, 68970i, 22020i, vec2<bool>(true, true)), Struct_1(1u, 1i, 2147483647i, vec2<bool>(false, true))), Struct_2(-1025f, Struct_1(1u, -40880i, -1i, vec2<bool>(true, true)), vec4<bool>(false, false, true, false), Struct_1(57769u, 34743i, -1i, vec2<bool>(true, false)), Struct_1(4294967295u, 27708i, 34252i, vec2<bool>(true, true))), Struct_2(454f, Struct_1(4294967295u, -27449i, -16264i, vec2<bool>(true, true)), vec4<bool>(false, true, false, true), Struct_1(8009u, 13717i, -1i, vec2<bool>(false, true)), Struct_1(4294967295u, -72516i, -59923i, vec2<bool>(false, true))), Struct_2(1392f, Struct_1(1u, -1i, 2147483647i, vec2<bool>(false, false)), vec4<bool>(true, true, false, false), Struct_1(4294967295u, -44684i, 0i, vec2<bool>(true, false)), Struct_1(45250u, 0i, 1i, vec2<bool>(true, false))), Struct_2(1153f, Struct_1(39839u, 18757i, 0i, vec2<bool>(false, true)), vec4<bool>(true, true, true, false), Struct_1(1u, 71671i, 34295i, vec2<bool>(true, true)), Struct_1(0u, 16688i, 6887i, vec2<bool>(false, false))), Struct_2(-1017f, Struct_1(79018u, 42846i, 0i, vec2<bool>(true, true)), vec4<bool>(true, false, false, true), Struct_1(51698u, 1i, 2147483647i, vec2<bool>(true, false)), Struct_1(63142u, -15974i, 5154i, vec2<bool>(false, true))), Struct_2(903f, Struct_1(1u, 23873i, i32(-2147483648), vec2<bool>(true, true)), vec4<bool>(false, false, false, false), Struct_1(0u, 0i, -1i, vec2<bool>(false, false)), Struct_1(0u, 0i, 39259i, vec2<bool>(true, false))), Struct_2(-196f, Struct_1(0u, 29950i, i32(-2147483648), vec2<bool>(false, true)), vec4<bool>(false, false, false, true), Struct_1(12u, 1i, 1i, vec2<bool>(true, false)), Struct_1(1u, i32(-2147483648), -17446i, vec2<bool>(true, true))), Struct_2(360f, Struct_1(4294967295u, i32(-2147483648), -19123i, vec2<bool>(false, true)), vec4<bool>(true, true, true, false), Struct_1(9788u, -1i, -42607i, vec2<bool>(false, true)), Struct_1(15317u, 2147483647i, -28225i, vec2<bool>(false, true))), Struct_2(341f, Struct_1(70942u, -2390i, -59624i, vec2<bool>(true, false)), vec4<bool>(false, false, false, false), Struct_1(0u, 2147483647i, -7425i, vec2<bool>(true, true)), Struct_1(10692u, 2147483647i, -3938i, vec2<bool>(true, false))), Struct_2(-149f, Struct_1(4294967295u, -5344i, -21593i, vec2<bool>(true, false)), vec4<bool>(false, false, false, true), Struct_1(4294967295u, 41915i, 9232i, vec2<bool>(false, true)), Struct_1(9078u, -2237i, -803i, vec2<bool>(true, false))), Struct_2(-797f, Struct_1(5373u, 1i, 0i, vec2<bool>(true, false)), vec4<bool>(false, true, true, true), Struct_1(23853u, -7459i, -69974i, vec2<bool>(true, true)), Struct_1(47372u, -19586i, i32(-2147483648), vec2<bool>(false, true))), Struct_2(-371f, Struct_1(1u, -15501i, 2147483647i, vec2<bool>(true, false)), vec4<bool>(false, true, true, false), Struct_1(0u, 42540i, 2147483647i, vec2<bool>(true, false)), Struct_1(89250u, -60034i, -12757i, vec2<bool>(true, false))), Struct_2(-531f, Struct_1(22268u, 2147483647i, -1i, vec2<bool>(false, false)), vec4<bool>(false, false, true, true), Struct_1(114419u, -7601i, -55932i, vec2<bool>(true, false)), Struct_1(4294967295u, 12516i, -1i, vec2<bool>(false, false))), Struct_2(1348f, Struct_1(4294967295u, -23047i, i32(-2147483648), vec2<bool>(true, true)), vec4<bool>(false, false, true, false), Struct_1(0u, -59874i, 31293i, vec2<bool>(false, false)), Struct_1(41248u, 15173i, -1i, vec2<bool>(true, false))), Struct_2(1470f, Struct_1(42904u, -54454i, 2147483647i, vec2<bool>(false, true)), vec4<bool>(false, false, false, true), Struct_1(4294967295u, 0i, -55803i, vec2<bool>(true, true)), Struct_1(56610u, 17303i, 37941i, vec2<bool>(false, true))), Struct_2(-627f, Struct_1(4294967295u, -20250i, 1405i, vec2<bool>(false, true)), vec4<bool>(false, false, false, true), Struct_1(4294967295u, 55301i, 1i, vec2<bool>(true, true)), Struct_1(0u, 12999i, 42496i, vec2<bool>(false, false))), Struct_2(-1478f, Struct_1(19687u, -29312i, -8756i, vec2<bool>(false, true)), vec4<bool>(true, false, true, true), Struct_1(0u, -4140i, -1i, vec2<bool>(false, false)), Struct_1(31688u, 26207i, 0i, vec2<bool>(false, true))), Struct_2(-1000f, Struct_1(20322u, -37079i, 4941i, vec2<bool>(false, false)), vec4<bool>(true, true, false, false), Struct_1(4294967295u, 2147483647i, -12574i, vec2<bool>(false, false)), Struct_1(31843u, 0i, 2147483647i, vec2<bool>(false, true))), Struct_2(-1000f, Struct_1(23837u, i32(-2147483648), 16494i, vec2<bool>(false, false)), vec4<bool>(false, false, false, true), Struct_1(53996u, 73923i, 10595i, vec2<bool>(false, true)), Struct_1(13982u, 2147483647i, -1i, vec2<bool>(true, true))), Struct_2(162f, Struct_1(2881u, -1i, -51696i, vec2<bool>(true, true)), vec4<bool>(false, true, true, true), Struct_1(41906u, -2887i, 1i, vec2<bool>(false, true)), Struct_1(2622u, -13841i, 1i, vec2<bool>(true, true))), Struct_2(370f, Struct_1(0u, 0i, 36145i, vec2<bool>(true, true)), vec4<bool>(true, true, false, true), Struct_1(2735u, 1i, -17063i, vec2<bool>(false, false)), Struct_1(66911u, 1i, 2147483647i, vec2<bool>(false, true))));

var<private> global3: array<vec2<i32>, 4>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    global0 = vec4<bool>(true, global0.x, all(vec3<bool>(true, any(vec4<bool>(global0.x, global0.x, true, false)), !global0.x)), all(!(!vec4<bool>(false, global0.x, global0.x, true))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1433f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f - 1393f)))), !vec4<bool>(global0.x, true, true, global0.x), !global0.xzw, !global0.yy);
    let var_1 = -(~vec4<i32>(-(i32(-1i) * -3158i), firstTrailingBit(2147483647i), u_input.d.x, u_input.b.x ^ -10678i));
    global0 = !select(var_0.b, select(select(vec4<bool>(true, true, true, true), select(var_0.b, var_0.b, true), !vec4<bool>(global0.x, global0.x, false, true)), var_0.b, select(vec4<bool>(global0.x, var_0.c.x, global0.x, true), !var_0.b, !var_0.b)), select(select(vec4<bool>(var_0.d.x, var_0.b.x, true, true), select(var_0.b, vec4<bool>(var_0.b.x, global0.x, global0.x, var_0.d.x), vec4<bool>(false, false, global0.x, false)), !vec4<bool>(false, false, var_0.d.x, false)), var_0.b, var_0.c.x));
    global0 = vec4<bool>(!any(!vec3<bool>(var_0.b.x, true, var_0.c.x)), true, false, all(vec2<bool>(true, true)));
    return u_input.a.x;
}

fn func_2() -> i32 {
    global1 = func_3();
    var var_0 = vec3<u32>(_wgslsmith_add_u32(4294967295u >> (max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yz), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) % 32u), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a.yyz, countOneBits(u_input.a.yyw)), ~select(44799u, 33692u, false))), ~countOneBits(4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), vec3<u32>(49304u, max(~u_input.a.x, ~u_input.a.x), ~(~u_input.a.x))));
    global2 = array<Struct_2, 25>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -725f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -260f))) - _wgslsmith_f_op_f32(floor(1093f)))));
    var var_2 = true;
    return firstTrailingBit(min(u_input.c, u_input.c));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(25131u, u_input.d.x, u_input.b.x, !(!global0.ww));
    global2 = array<Struct_2, 25>();
    var var_1 = var_0;
    var var_2 = (vec4<i32>(_wgslsmith_add_i32(-var_1.c, u_input.c), i32(-1i) * -var_1.b, -(u_input.c << (4294967295u % 32u)), ~(-var_0.c)) & abs(~(~vec4<i32>(var_0.c, -71308i, -1i, -36793i)))) ^ (select(~vec4<i32>(-19961i, 13919i, 2147483647i, var_0.b), vec4<i32>(func_2(), 0i, ~(-1i), var_0.b), all(global0.zzw)) ^ _wgslsmith_div_vec4_i32(-(~vec4<i32>(var_1.b, 2147483647i, var_1.b, 28113i)), vec4<i32>(-30977i, var_1.b, u_input.b.x, var_1.b)));
    var_2 = vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, var_0.c), var_2.x, -(~1i), var_0.b);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 25>();
    global0 = !vec4<bool>(false, global0.x, u_input.a.x > abs(1u), true);
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1051f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -541f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_f_op_f32(abs(997f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1687f, -205f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-758f, -1815f))))))));
    global2 = array<Struct_2, 25>();
    var var_1 = -_wgslsmith_add_i32(u_input.d.x, _wgslsmith_mod_i32(u_input.c, ~42619i ^ -u_input.d.x));
    global2 = array<Struct_2, 25>();
    let var_2 = _wgslsmith_f_op_f32(min(846f, -108f));
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~_wgslsmith_sub_i32(1i, 7647i), i32(-1i) * -_wgslsmith_add_i32(-12757i, var_3.c), u_input.d.x, _wgslsmith_clamp_i32(-23798i, func_2(), max(_wgslsmith_clamp_i32(var_3.b, var_3.b, var_3.b), -2147483647i))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 160f, 255f))))))), _wgslsmith_dot_vec4_u32(u_input.a ^ (abs(vec4<u32>(26298u, 0u, u_input.a.x, 0u)) ^ min(vec4<u32>(var_3.a, var_3.a, u_input.a.x, 26742u), vec4<u32>(4294967295u, 1u, 33464u, 18922u))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.a, 5421u, 1u), vec3<u32>(58152u, u_input.a.x, u_input.a.x)), var_3.a << (var_3.a % 32u), 17693u, _wgslsmith_sub_u32(u_input.a.x, 1933u))));
}

