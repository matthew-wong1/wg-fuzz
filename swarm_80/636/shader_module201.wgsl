struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -33982i;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(6811i, -438f, 1673f, vec3<f32>(-560f, -548f, -1270f)), Struct_1(-22389i, 1780f, 336f, vec3<f32>(-760f, 211f, 448f)), Struct_1(-21640i, -114f, 962f, vec3<f32>(-759f, -1000f, 321f)), Struct_1(1i, -555f, -926f, vec3<f32>(-1595f, -178f, 234f)), Struct_1(-1i, -758f, -1409f, vec3<f32>(1626f, 411f, 470f)), Struct_1(i32(-2147483648), -2915f, 1088f, vec3<f32>(1324f, -1000f, 786f)), Struct_1(-1i, -147f, -1677f, vec3<f32>(1000f, -528f, 1421f)), Struct_1(-1i, -1980f, -264f, vec3<f32>(1522f, 1000f, -964f)), Struct_1(-28178i, 1146f, 557f, vec3<f32>(1000f, -218f, 1000f)), Struct_1(2147483647i, -1046f, 675f, vec3<f32>(1001f, 148f, 312f)));

var<private> global2: array<bool, 1>;

var<private> global3: Struct_3 = Struct_3(-1223f, vec3<f32>(-923f, 180f, 954f));

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec2<u32>(34090u, 1u)), Struct_2(vec2<u32>(35854u, 15988u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = !(!any(vec4<bool>(true || global2[_wgslsmith_index_u32(3688u, 1u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(80193u, 7083u), 1u)], any(vec4<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], false)), all(vec4<bool>(true, global2[_wgslsmith_index_u32(77618u, 1u)], global2[_wgslsmith_index_u32(77535u, 1u)], true)))));
    return arg_0.d.x;
}

fn func_2() -> Struct_2 {
    global3 = Struct_3(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 0u), 10u)])), global3.b);
    global4 = array<Struct_2, 2>();
    global3 = Struct_3(-1058f, vec3<f32>(-1197f, _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(f32(-1f) * -369f)));
    var var_0 = global3.a;
    var var_1 = Struct_2(_wgslsmith_div_vec2_u32(~countOneBits(vec2<u32>(1u, 0u)), select(vec2<u32>(2064u, 1u), vec2<u32>(1u, 1u), select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(53848u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]), vec2<bool>(true, true)))));
    return Struct_2(vec2<u32>(~var_1.a.x, ~countOneBits(~var_1.a.x)));
}

fn func_1() -> Struct_4 {
    let var_0 = func_2();
    var var_1 = global3.b.x;
    global0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-13235i, _wgslsmith_clamp_i32(-21410i, u_input.a, u_input.a)) | abs(max(firstTrailingBit(vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(-27673i, u_input.a))), abs(select(abs(vec2<i32>(-1i, u_input.a)), -vec2<i32>(0i, -21802i), select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 1u)], global2[_wgslsmith_index_u32(60997u, 1u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 1u)], global2[_wgslsmith_index_u32(50939u, 1u)]))) & vec2<i32>(u_input.a, _wgslsmith_clamp_i32(0i, 1107i, -1i))));
    var var_2 = _wgslsmith_div_vec4_i32(select(vec4<i32>(8731i, ~u_input.a, _wgslsmith_mod_i32(u_input.a, -2147483647i), countOneBits(u_input.a)), ~(vec4<i32>(-475i, u_input.a, 2147483647i, u_input.a) ^ vec4<i32>(u_input.a, 0i, u_input.a, 0i)), !vec4<bool>(false, global2[_wgslsmith_index_u32(14138u, 1u)], global2[_wgslsmith_index_u32(99006u, 1u)], true)) | vec4<i32>(_wgslsmith_mod_i32(u_input.a, 1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(8773i, u_input.a, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_i32(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, -18458i), vec3<i32>(u_input.a, u_input.a, 39503i)), u_input.a), 14433i), select(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 39865i, 1i, u_input.a), vec4<i32>(u_input.a, u_input.a, 0i, -1i) | vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), reverseBits(vec4<i32>(92i, u_input.a, -1964i, u_input.a)))), vec4<i32>(-18586i, 2147483647i, _wgslsmith_div_i32(-2147483647i, ~28051i), u_input.a), select(!select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(26781u, 1u)]), vec4<bool>(global2[_wgslsmith_index_u32(47472u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(var_0.a.x, 1u)], false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)])), select(!vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(var_0.a.x, 1u)]), !vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 1u)], global2[_wgslsmith_index_u32(var_0.a.x, 1u)], true, global2[_wgslsmith_index_u32(var_0.a.x, 1u)]), all(vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 1u)], false, global2[_wgslsmith_index_u32(35860u, 1u)]))), !(global2[_wgslsmith_index_u32(var_0.a.x, 1u)] && false))));
    let var_3 = var_0;
    return Struct_4(true, func_2(), global1[_wgslsmith_index_u32(var_0.a.x, 10u)]);
}

fn func_4(arg_0: Struct_4) -> i32 {
    let var_0 = true;
    let var_1 = firstTrailingBit(arg_0.b.a.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -443f);
    return 0i;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(firstTrailingBit(firstTrailingBit(firstLeadingBit(vec2<u32>(1u, 1u)))));
    let var_1 = func_1();
    var var_2 = func_1();
    var var_3 = var_0;
    let var_4 = true;
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 10>();
    global0 = -reverseBits(_wgslsmith_clamp_i32(u_input.a, 0i, 41588i) << (firstTrailingBit(1u) % 32u)) ^ _wgslsmith_add_i32(~0i, _wgslsmith_mult_i32(u_input.a, 2147483647i));
    var var_0 = Struct_4(select(4294967295u, max(1u, 1u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(1u, 12241u, false), 1u), 1u)]) >= 4294967295u, func_5(func_4(func_1()), countOneBits(1i), true, false), Struct_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -803f), -661f, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3.b, global3.b, vec3<bool>(global2[_wgslsmith_index_u32(0u, 1u)], false, global2[_wgslsmith_index_u32(11652u, 1u)]))))))));
    let var_1 = vec4<u32>(var_0.b.a.x, min(var_0.b.a.x, var_0.b.a.x), select(~func_5(var_0.c.a, ~u_input.a, any(vec2<bool>(var_0.a, var_0.a)), all(vec3<bool>(var_0.a, true, true))).a.x, func_1().b.a.x, global2[_wgslsmith_index_u32(select(1u, 30452u, var_0.a), 1u)]), _wgslsmith_mod_u32(var_0.b.a.x, var_0.b.a.x << (select(var_0.b.a.x, _wgslsmith_mod_u32(1u, var_0.b.a.x), select(true, var_0.a, true)) % 32u)));
    var var_2 = func_5(_wgslsmith_mult_i32(_wgslsmith_add_i32(28145i, -u_input.a), (2147483647i ^ max(-1i, var_0.c.a)) & _wgslsmith_div_i32(13610i, reverseBits(var_0.c.a))), _wgslsmith_mult_i32(~(-29095i), u_input.a), false, global2[_wgslsmith_index_u32(1u, 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.c.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1172f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f), -534f), _wgslsmith_f_op_f32(f32(-1f) * -683f)), select(var_2.a.x, ~(~0u), var_0.a) >> (~var_0.b.a.x % 32u));
}

