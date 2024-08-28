struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(48491u, 65858u, 0u, 43723u, 51164u, 4294967295u, 21605u, 0u, 6589u, 1u, 1u, 1u, 24917u, 0u, 91211u);

var<private> global1: array<Struct_4, 29>;

var<private> global2: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = global0[_wgslsmith_index_u32(~reverseBits(1u), 15u)];
    let var_1 = _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(arg_1.c.d.zy, arg_0.a.a.d.yw)), _wgslsmith_mult_vec2_u32(arg_0.a.a.d.wx, vec2<u32>(global0[_wgslsmith_index_u32(3067u, 15u)], 53059u) & arg_1.c.d.zw))), 15u)]);
    return select(vec3<bool>(all(select(arg_1.d, vec2<bool>(arg_0.a.d.x, arg_1.d.x), !arg_1.a.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-855f)), arg_0.a.a.b.x) > -961f, any(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_1.c.c), arg_1.d, arg_1.a.a), arg_0.a.a.d.x > u_input.c.x))), vec3<bool>(!(_wgslsmith_f_op_f32(arg_0.a.c.b.x - arg_1.a.b.x) > _wgslsmith_f_op_f32(arg_0.a.c.b.x * arg_1.a.b.x)), select(all(arg_0.a.d), false, true), arg_1.d.x), vec3<bool>(all(vec4<bool>(arg_1.a.c, arg_0.a.a.a, arg_0.a.c.c, arg_0.a.d.x)) | true, arg_1.c.a, !(!arg_0.a.c.a) & false));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool) -> vec4<f32> {
    global1 = array<Struct_4, 29>();
    var var_0 = !vec4<bool>(func_1(Struct_3(Struct_2(arg_1.c, 2147483647i, Struct_1(arg_1.c.c, vec4<f32>(arg_0.a.x, 917f, 1439f, arg_0.a.x), false, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], arg_1.c.d.x, 4294967295u, 4294967295u), 2147483647i), vec2<bool>(arg_0.b.x, false)), select(0u, 21275u, arg_2)), arg_1).x, !(!(!arg_1.a.a)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.x * arg_0.a.x)) > arg_0.a.x);
    let var_1 = Struct_3(Struct_2(arg_1.a, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, -2147483647i)), _wgslsmith_mult_i32(-6864i, 21906i)), arg_1.a, arg_0.b.yy), 4294967295u);
    global0 = array<u32, 15>();
    var var_2 = -vec3<i32>(min(-74457i, 73939i), -firstLeadingBit(2147483647i), arg_1.c.e);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a.b * _wgslsmith_div_vec4_f32(var_1.a.c.b, var_1.a.a.b)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = !vec2<bool>(true, all(vec3<bool>(any(vec2<bool>(false, arg_0.x)), false, any(arg_0.xx))));
    global1 = array<Struct_4, 29>();
    let var_1 = _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31463u, 15u)], 15u)] >> (~_wgslsmith_dot_vec2_u32(u_input.c.wz, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.c.zy)) % 32u), ~u_input.c.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -486f);
    global1 = array<Struct_4, 29>();
    return Struct_1(false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-570f, 1256f, 2506f, 226f) + vec4<f32>(-2124f, -732f, -1477f, -732f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec2<f32>(407f, 682f), arg_0), Struct_2(Struct_1(false, vec4<f32>(150f, -1000f, 130f, 1525f), true, vec4<u32>(0u, 71838u, 87482u, u_input.b), 2147483647i), 0i, Struct_1(false, vec4<f32>(-598f, -2235f, 1584f, 147f), false, u_input.c, u_input.d.x), vec2<bool>(true, arg_0.x)), var_0.x))))), false, ~select(_wgslsmith_add_vec4_u32(u_input.c, abs(vec4<u32>(global0[_wgslsmith_index_u32(var_1, 15u)], 7709u, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(760u, 15u)]))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1, 48853u, 1u), u_input.c), !(0u > global0[_wgslsmith_index_u32(1u, 15u)])), -1i << ((4294967295u << (firstTrailingBit(1u) % 32u)) % 32u));
}

fn func_4(arg_0: Struct_2) -> f32 {
    var var_0 = ~(~vec3<u32>(arg_0.c.d.x, countOneBits(0u), ~u_input.b));
    let var_1 = _wgslsmith_sub_vec4_u32(reverseBits(firstTrailingBit(vec4<u32>(~1u, ~0u, _wgslsmith_mult_u32(1u, 1634u), 970u))), ~vec4<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b), _wgslsmith_mod_u32(0u, u_input.b), var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.d.x, 16231u), vec2<u32>(u_input.c.x, arg_0.c.d.x)), 15u)]) & vec4<u32>(~abs(global0[_wgslsmith_index_u32(1u, 15u)]), ~abs(var_0.x), ~_wgslsmith_div_u32(arg_0.a.d.x, 0u), select(var_0.x, arg_0.c.d.x, arg_0.d.x | true)));
    global1 = array<Struct_4, 29>();
    global1 = array<Struct_4, 29>();
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.a.b.x)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(func_2(!select(vec3<bool>(arg_0.d.x, arg_0.c.c, arg_0.c.c), vec3<bool>(true, arg_0.a.c, arg_0.a.a), vec3<bool>(false, arg_0.d.x, false))).b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 29>();
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(func_2(func_1(Struct_3(Struct_2(Struct_1(false, vec4<f32>(1000f, 343f, 529f, -1069f), true, u_input.c, 16628i), 56380i, Struct_1(true, vec4<f32>(-214f, -364f, 1000f, 1950f), false, u_input.c, u_input.a), vec2<bool>(true, false)), 4294967295u), Struct_2(Struct_1(false, vec4<f32>(-1388f, 1000f, -168f, 547f), false, u_input.c, u_input.a), 1i, Struct_1(true, vec4<f32>(712f, 1045f, 497f, -123f), false, vec4<u32>(u_input.b, u_input.b, 0u, global0[_wgslsmith_index_u32(60669u, 15u)]), -8229i), global2[_wgslsmith_index_u32(0u, 31u)]))), ~func_2(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)).e, Struct_1(all(func_1(Struct_3(Struct_2(Struct_1(false, vec4<f32>(-438f, -418f, -1004f, 1286f), true, u_input.c, u_input.d.x), 50205i, Struct_1(false, vec4<f32>(-1015f, 1113f, 1024f, 494f), true, u_input.c, -1i), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 15u)], 15u)], 31u)]), 1296u), Struct_2(Struct_1(true, vec4<f32>(229f, 547f, -677f, 1885f), true, vec4<u32>(0u, 1u, 4294967295u, 6403u), u_input.d.x), u_input.a, Struct_1(false, vec4<f32>(719f, -121f, -1266f, -1320f), false, vec4<u32>(global0[_wgslsmith_index_u32(23683u, 15u)], 0u, 48975u, 11380u), -1i), vec2<bool>(false, false))).yz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(749f, 1293f, 499f, -945f)), true, min(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9567u, 15u)], 15u)]), ~u_input.c), ~u_input.a), select(!global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.c.x), 31u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], u_input.c.x, u_input.c.x, u_input.b), max(u_input.c, u_input.c)), 31u)], true))));
    var var_1 = countOneBits(~((~vec3<u32>(52135u, 73642u, global0[_wgslsmith_index_u32(67471u, 15u)]) & ~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) ^ vec3<u32>(reverseBits(u_input.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(9731u, global0[_wgslsmith_index_u32(72374u, 15u)]), vec2<u32>(global0[_wgslsmith_index_u32(48905u, 15u)], 60160u)), ~98612u)));
    var var_2 = select(vec4<bool>((all(vec3<bool>(true, false, false)) || true) || any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), func_1(Struct_3(Struct_2(Struct_1(true, vec4<f32>(var_0, var_0, var_0, var_0), false, vec4<u32>(51675u, 15184u, 16822u, var_1.x), u_input.a), u_input.d.x, Struct_1(false, vec4<f32>(var_0, var_0, var_0, 717f), true, vec4<u32>(global0[_wgslsmith_index_u32(4377u, 15u)], 1u, 16363u, u_input.b), -14854i), global2[_wgslsmith_index_u32(1916u, 31u)]), global0[_wgslsmith_index_u32(func_2(vec3<bool>(true, true, true)).d.x, 15u)]), Struct_2(func_2(vec3<bool>(true, true, true)), 1i, Struct_1(false, vec4<f32>(var_0, var_0, -1168f, var_0), true, u_input.c, u_input.d.x), func_1(Struct_3(Struct_2(Struct_1(true, vec4<f32>(var_0, -1175f, -386f, var_0), false, u_input.c, -29085i), 1i, Struct_1(true, vec4<f32>(1000f, -1895f, var_0, -217f), false, u_input.c, 12496i), global2[_wgslsmith_index_u32(var_1.x, 31u)]), var_1.x), Struct_2(Struct_1(false, vec4<f32>(var_0, var_0, -509f, var_0), false, u_input.c, -2147483647i), 3941i, Struct_1(false, vec4<f32>(var_0, var_0, var_0, -2129f), true, u_input.c, 1i), vec2<bool>(true, false))).xy)).x, (-u_input.a == max(u_input.a, u_input.a)) && any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0 * -1207f), -1000f)) > 1000f), select(vec4<bool>(false, true, true, false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !(!(1i < u_input.a))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), -698f != var_0), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, var_0 > var_0, true, all(global2[_wgslsmith_index_u32(u_input.b, 31u)]))));
    var var_3 = abs(vec3<i32>(_wgslsmith_dot_vec3_i32(select(-vec3<i32>(12159i, -1i, u_input.a), ~vec3<i32>(-1i, u_input.d.x, 2147483647i), select(vec3<bool>(var_2.x, true, true), var_2.zzw, true)), vec3<i32>(u_input.a, u_input.a, u_input.d.x) | reverseBits(vec3<i32>(-28905i, u_input.a, 38823i))), -2147483647i, u_input.d.x ^ 68799i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0)))) + -271f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(ceil(var_0))), var_0))), var_3.x, vec2<i32>(-14017i, 0i >> (~u_input.b % 32u)), _wgslsmith_dot_vec3_i32(max(-select(vec3<i32>(-21128i, u_input.a, u_input.d.x), vec3<i32>(4872i, u_input.d.x, -1i), var_2.yxw), _wgslsmith_mult_vec3_i32(-vec3<i32>(1i, u_input.d.x, 37089i), ~vec3<i32>(-37435i, var_3.x, u_input.a))), countOneBits(vec3<i32>(var_3.x, _wgslsmith_mod_i32(u_input.a, -22908i), var_3.x ^ var_3.x))), u_input.d.x);
}

