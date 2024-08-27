struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_1(vec4<i32>(45841i, 1i, 0i, -33129i), vec3<i32>(-744i, 1i, 37064i), -21205i, vec2<u32>(4294967295u, 72916u))), Struct_4(Struct_1(vec4<i32>(-60371i, 0i, -1i, -36491i), vec3<i32>(-10998i, -80300i, -1i), 19208i, vec2<u32>(4294967295u, 1u))), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 201i, -13414i), vec3<i32>(1i, 2147483647i, 2147483647i), -31461i, vec2<u32>(1u, 0u))), Struct_4(Struct_1(vec4<i32>(22918i, 1i, 32439i, i32(-2147483648)), vec3<i32>(-71653i, i32(-2147483648), -38022i), -8236i, vec2<u32>(40466u, 22626u))), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), -6916i, 30233i, -1i), vec3<i32>(20501i, -7355i, 5430i), 12100i, vec2<u32>(4294967295u, 51945u))), Struct_4(Struct_1(vec4<i32>(0i, 0i, 1i, -42931i), vec3<i32>(-20001i, -36005i, -1i), -1i, vec2<u32>(70966u, 32977u))), Struct_4(Struct_1(vec4<i32>(1i, 1i, 44862i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, -42448i), 29422i, vec2<u32>(1u, 50833u))), Struct_4(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 6664i, -13187i), vec3<i32>(2147483647i, 13687i, 25128i), -37933i, vec2<u32>(0u, 4097u))), Struct_4(Struct_1(vec4<i32>(-45650i, 8220i, 54299i, 26453i), vec3<i32>(2147483647i, -6941i, -1i), 47928i, vec2<u32>(0u, 4294967295u))), Struct_4(Struct_1(vec4<i32>(3577i, -1i, 42583i, -14879i), vec3<i32>(14259i, 1i, -8876i), 0i, vec2<u32>(5163u, 4294967295u))), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), 0i, -57765i, i32(-2147483648)), vec3<i32>(2147483647i, -346i, 1i), 1i, vec2<u32>(1u, 73747u))), Struct_4(Struct_1(vec4<i32>(-44296i, i32(-2147483648), -1i, -45143i), vec3<i32>(0i, 0i, -6534i), -1i, vec2<u32>(0u, 69329u))), Struct_4(Struct_1(vec4<i32>(-62256i, -22033i, 0i, 27908i), vec3<i32>(-28890i, 2147483647i, 2147483647i), 1i, vec2<u32>(40276u, 27459u))), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), -37562i, i32(-2147483648), -1i), vec3<i32>(-1i, -1i, 2147483647i), -19956i, vec2<u32>(1u, 3720u))), Struct_4(Struct_1(vec4<i32>(16878i, -40279i, 81978i, 23211i), vec3<i32>(0i, -1i, -21283i), 46273i, vec2<u32>(1u, 4294967295u))), Struct_4(Struct_1(vec4<i32>(-33947i, 0i, 2147483647i, -15680i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), -19743i, vec2<u32>(37139u, 29050u))), Struct_4(Struct_1(vec4<i32>(-13622i, 1i, 0i, -71730i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), -24400i, vec2<u32>(15328u, 4294967295u))), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), 0i, 6952i, 23699i), vec3<i32>(2147483647i, -22338i, i32(-2147483648)), -2777i, vec2<u32>(0u, 32146u))), Struct_4(Struct_1(vec4<i32>(18373i, -24376i, -36738i, -2383i), vec3<i32>(1i, -12225i, -10432i), 1i, vec2<u32>(9519u, 35224u))), Struct_4(Struct_1(vec4<i32>(-101771i, 1i, 26480i, 1i), vec3<i32>(0i, -3527i, -18982i), i32(-2147483648), vec2<u32>(7452u, 4294967295u))), Struct_4(Struct_1(vec4<i32>(-54739i, -5011i, 2147483647i, 1i), vec3<i32>(45998i, i32(-2147483648), -39666i), -5243i, vec2<u32>(54780u, 1u))), Struct_4(Struct_1(vec4<i32>(-14646i, 30655i, 0i, 0i), vec3<i32>(0i, 1i, 1i), i32(-2147483648), vec2<u32>(4294967295u, 90428u))), Struct_4(Struct_1(vec4<i32>(70607i, 20968i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 2695i, -14396i), 1i, vec2<u32>(118876u, 29669u))), Struct_4(Struct_1(vec4<i32>(0i, i32(-2147483648), -1i, 2147483647i), vec3<i32>(i32(-2147483648), -66169i, 2147483647i), 1i, vec2<u32>(0u, 61219u))), Struct_4(Struct_1(vec4<i32>(-25745i, -3335i, -1i, -1i), vec3<i32>(-55986i, 50130i, 1i), -33531i, vec2<u32>(1874u, 28742u))));

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(1i, -1i, 25025i, i32(-2147483648)), vec4<i32>(-1i, 27106i, i32(-2147483648), 32996i));

var<private> global3: array<Struct_4, 20>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: Struct_4) -> f32 {
    global3 = array<Struct_4, 20>();
    let var_0 = Struct_3(Struct_1(max(_wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(arg_3.a.a, arg_3.a.a)), -(vec4<i32>(arg_0, 39143i, arg_0, 0i) << (vec4<u32>(0u, 4294967295u, arg_3.a.d.x, arg_3.a.d.x) % vec4<u32>(32u)))), ~_wgslsmith_sub_vec3_i32(reverseBits(u_input.a.yxz), -vec3<i32>(-1i, arg_0, -3122i)), -1i, _wgslsmith_clamp_vec2_u32(arg_3.a.d, min(arg_3.a.d, vec2<u32>(31019u, 1u)), arg_3.a.d) << (arg_3.a.d % vec2<u32>(32u))));
    global1 = array<Struct_3, 20>();
    return 1356f;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4) -> bool {
    global0 = array<Struct_4, 25>();
    var var_0 = arg_2.a.d;
    var var_1 = !vec2<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), true);
    let var_2 = ~_wgslsmith_add_i32(arg_1.a.a.x, arg_1.a.b.x);
    global1 = array<Struct_3, 20>();
    return !any(!select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, true, false), true));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec3<f32>(-339f, -2593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(823f))) + 703f));
    var var_1 = 0u;
    return vec3<bool>(true, false | (-33541i > _wgslsmith_mod_i32(u_input.a.x | 2147483647i, _wgslsmith_clamp_i32(26574i, arg_0.a.b.x, arg_0.a.a.x))), false);
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: i32) -> vec3<f32> {
    let var_0 = vec4<bool>(arg_1.x, all(!select(!vec4<bool>(arg_1.x, true, true, true), !vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), true)), arg_1.x, arg_1.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1289f, _wgslsmith_f_op_f32(f32(-1f) * -1234f))))));
    let var_2 = true;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(-662f * var_1.x), _wgslsmith_f_op_f32(func_1(-50964i, vec3<f32>(-1000f, arg_0, var_1.x), Struct_2(u_input.a.x, arg_0, arg_1.x), Struct_4(Struct_1(global2[_wgslsmith_index_u32(65944u, 2u)], u_input.a.yzy, u_input.b, vec2<u32>(29240u, 0u)))))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 580f, _wgslsmith_div_f32(var_1.x, arg_0)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 630f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_0, 741f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -427f) * vec3<f32>(-210f, 1230f, arg_0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0, arg_0, 1388f), vec3<f32>(var_1.x, -244f, arg_0))), vec3<f32>(1451f, var_1.x, arg_0), false)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1300f, var_1.x, arg_0))))));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<u32>) -> StorageBuffer {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1315f, 2386f, arg_0, 470f), vec4<f32>(-1321f, arg_0, arg_2, arg_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(547f, arg_0, arg_0, arg_2) * vec4<f32>(arg_0, -211f, arg_2, arg_2)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1229f, arg_0, 1000f))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)))))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_2, arg_2, true || (arg_2 == arg_0))), _wgslsmith_div_f32(-1571f, _wgslsmith_f_op_f32(abs(-408f))), _wgslsmith_f_op_f32(round(-150f)), 575f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_0, true))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 - 756f)))))));
    global3 = array<Struct_4, 20>();
    var var_2 = Struct_2(-u_input.a.x, _wgslsmith_f_op_f32(-1f), !(false || ((arg_0 >= var_1.x) || true)));
    var var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.x, 4294967295u), ~arg_1.yx, arg_3.wy ^ _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, arg_3.x), arg_3.xw) >> (arg_1.yx % vec2<u32>(32u)), vec2<u32>(4294967295u, arg_1.x)));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), -709f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_f32(1689f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(458f + 2337f), -1234f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.a.x, vec3<f32>(1387f, -1000f, 388f), Struct_2(u_input.a.x, -511f, false), Struct_4(Struct_1(vec4<i32>(-2147483647i, u_input.a.x, -2135i, u_input.a.x), u_input.a.xxx, u_input.a.x, vec2<u32>(1u, 4294967295u))))) * _wgslsmith_f_op_f32(sign(-178f)))))), select(vec4<u32>(firstTrailingBit(30996u), 75258u, abs(4294967295u), 78224u), vec4<u32>(80288u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(8321u, 0u), vec2<u32>(8017u, 7389u)), 4294967295u << (0u % 32u)), vec4<bool>(true, true, true, func_2(vec4<f32>(748f, 1006f, -372f, -156f), Struct_3(Struct_1(vec4<i32>(28168i, u_input.b, u_input.a.x, -56652i), u_input.a.ywx, 0i, vec2<u32>(81987u, 0u))), Struct_4(Struct_1(vec4<i32>(u_input.a.x, 1i, 1i, u_input.a.x), u_input.a.zxy, u_input.b, vec2<u32>(13225u, 4294967295u)))))) | (vec4<u32>(abs(45667u), 1u, _wgslsmith_clamp_u32(47041u, 92042u, 1u), 0u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(func_1(u_input.a.x | u_input.b, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -284f)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), func_3(Struct_4(Struct_1(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.b), 37137i, vec2<u32>(20504u, 135557u))), Struct_1(vec4<i32>(-23139i, u_input.a.x, u_input.a.x, 2147483647i), vec3<i32>(u_input.b, -52780i, u_input.a.x), u_input.a.x, vec2<u32>(84411u, 0u)))), u_input.a.x)), Struct_2(countOneBits(-u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1186f)), !all(vec4<bool>(true, true, false, false))), Struct_4(Struct_1(vec4<i32>(1i, u_input.b, 12642i, u_input.b), u_input.a.zwy, countOneBits(u_input.a.x), ~vec2<u32>(44454u, 88519u))))), max((~vec4<u32>(1u, 78678u, 10742u, 4294967295u) | select(vec4<u32>(4294967295u, 16534u, 0u, 1u), vec4<u32>(0u, 21971u, 25796u, 37011u), false)) >> (min(~vec4<u32>(46809u, 4294967295u, 0u, 28432u), vec4<u32>(27599u, 31579u, 34554u, 1u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(~19954u, abs(0u)), 0u, ~0u, 1u)));
}

