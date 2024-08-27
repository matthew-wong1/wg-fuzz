struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_1(false, 59056i, 14621u), 4294967295u, Struct_1(true, 2147483647i, 0u)), Struct_3(Struct_1(true, 0i, 4294967295u), 31572u, Struct_1(false, 0i, 4294967295u)), Struct_3(Struct_1(false, i32(-2147483648), 9064u), 62162u, Struct_1(false, -20328i, 7197u)), Struct_3(Struct_1(false, -56536i, 71612u), 49907u, Struct_1(false, 19218i, 1204u)), Struct_3(Struct_1(true, 1i, 43773u), 0u, Struct_1(false, 0i, 0u)), Struct_3(Struct_1(false, 23204i, 1u), 28535u, Struct_1(false, 34440i, 0u)), Struct_3(Struct_1(true, 76249i, 4294967295u), 44421u, Struct_1(false, 20071i, 11744u)), Struct_3(Struct_1(false, -6906i, 14592u), 82942u, Struct_1(true, 29124i, 1u)), Struct_3(Struct_1(true, -43217i, 4294967295u), 1u, Struct_1(false, i32(-2147483648), 1u)), Struct_3(Struct_1(true, -1i, 68920u), 1u, Struct_1(true, 16587i, 36961u)), Struct_3(Struct_1(true, 2147483647i, 1u), 26722u, Struct_1(true, -23985i, 47678u)), Struct_3(Struct_1(true, -12120i, 51842u), 9679u, Struct_1(true, i32(-2147483648), 10755u)), Struct_3(Struct_1(false, 0i, 2563u), 42409u, Struct_1(true, 81683i, 44255u)), Struct_3(Struct_1(true, -34574i, 51192u), 62208u, Struct_1(true, -27437i, 1u)));

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-1456f, 1998f, -1362f, 2178f), vec4<f32>(436f, 459f, 901f, 1486f), vec4<f32>(-836f, 1115f, -385f, -881f), vec4<f32>(-286f, -1682f, 165f, 741f), vec4<f32>(-1024f, -579f, 160f, -692f), vec4<f32>(724f, 1000f, 1549f, 1000f), vec4<f32>(1000f, 619f, -108f, -145f), vec4<f32>(-1507f, 278f, -1344f, 1177f), vec4<f32>(-392f, -878f, 212f, -524f), vec4<f32>(1274f, -3176f, 1000f, -178f), vec4<f32>(709f, 205f, 436f, 197f), vec4<f32>(452f, 246f, -289f, 950f), vec4<f32>(-751f, 598f, 1000f, 1000f), vec4<f32>(726f, 1892f, 760f, 266f), vec4<f32>(1862f, 1020f, -870f, 765f), vec4<f32>(469f, 294f, -766f, 477f), vec4<f32>(-183f, -130f, -249f, 1411f), vec4<f32>(923f, 467f, 1000f, 203f), vec4<f32>(-295f, 437f, 384f, -257f), vec4<f32>(-1303f, 605f, -1838f, -454f), vec4<f32>(-940f, 710f, -1000f, 1316f), vec4<f32>(120f, 2575f, -880f, 177f), vec4<f32>(-1000f, -1021f, -1005f, 772f), vec4<f32>(-109f, -663f, 247f, 2848f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = true;
    global0 = array<f32, 1>();
    let var_1 = ~_wgslsmith_sub_u32(~(~67200u), reverseBits(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(106269u, 1u), vec2<u32>(4294967295u, 4294967295u)), 1u)));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 14u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_2.b, 1u)] * 1000f)), 1000f, 1434f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1354f, global0[_wgslsmith_index_u32(var_2.b, 1u)], global0[_wgslsmith_index_u32(var_1, 1u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(5615u, 1u)], global0[_wgslsmith_index_u32(var_1, 1u)], 805f)), !var_2.a.a)))));
    return ~1u;
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = Struct_2(u_input.a.www, Struct_1(any(vec2<bool>(true, false)), 30509i, countOneBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(34661u, 19555u, 0u), vec3<u32>(0u, 4294967295u, 0u)), ~113997u))), _wgslsmith_mod_u32(_wgslsmith_add_u32(~(~22628u), _wgslsmith_mod_u32(func_3(), ~33924u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), select(vec3<u32>(5641u, 45302u, 0u), vec3<u32>(1u, 1u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false))))));
    global2 = array<vec4<f32>, 24>();
    var var_1 = global1[_wgslsmith_index_u32(select(33446u, _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.c) << (vec2<u32>(56512u, 1u) % vec2<u32>(32u)), vec2<u32>(var_0.b.c, var_0.b.c)), reverseBits(var_0.c)), !var_0.b.a), 14u)];
    let var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.c, 1u)]);
    var var_3 = _wgslsmith_add_i32(-18690i, var_0.b.b);
    return 835f;
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(3172u, 1u)];
    let var_1 = vec4<f32>(1295f, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~max(35098u, _wgslsmith_sub_u32(arg_0, arg_0)), arg_0), 1u)], -1951f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(firstTrailingBit(arg_0), 1u)], 198f, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1.x))))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-771f, 520f), vec2<f32>(var_1.x, global0[_wgslsmith_index_u32(arg_0, 1u)]), false)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1378f, global0[_wgslsmith_index_u32(4294967295u, 1u)]))), false)), vec2<f32>(-1002f, -502f))))));
    var var_3 = any(!vec4<bool>((-1i >> (arg_0 % 32u)) < max(arg_1.x, arg_2), true, true && any(vec2<bool>(false, true)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false))));
    let var_4 = Struct_2(_wgslsmith_mult_vec3_i32(u_input.a.zwx, u_input.a.zxz), Struct_1(any(vec2<bool>(false, all(vec2<bool>(true, true)))), countOneBits(~u_input.a.x) & -19048i, ~(~0u)), 4294967295u);
    return Struct_1(any(vec4<bool>(true, !(!var_4.b.a), all(select(vec2<bool>(false, true), vec2<bool>(var_4.b.a, var_4.b.a), var_4.b.a)), true | any(vec4<bool>(var_4.b.a, false, var_4.b.a, true)))), _wgslsmith_div_i32(u_input.b, select(~arg_1.x, ~(-30442i), any(vec2<bool>(var_4.b.a, true)))) | arg_1.x, var_4.c);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = arg_2.b.a;
    return arg_0.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_3(func_1(firstTrailingBit(515u), ~u_input.a.yx, -27289i), 1u, Struct_1(true, max(u_input.b, u_input.a.x), 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(54967u, 80777u, 4294967295u, 128560u), vec4<u32>(0u, 48707u, 1u, 0u)), 1u), firstTrailingBit(abs(vec4<u32>(23178u, 17903u, 0u, 57335u)))), Struct_2(reverseBits(countOneBits(u_input.a.zzz)), Struct_1(true, -33218i, abs(11999u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u)) & 31677u), true), vec4<u32>(func_1(0u >> (1u % 32u), ~u_input.a.yz, max(u_input.a.x, u_input.a.x)).c >> (136920u % 32u), _wgslsmith_mult_u32(1u, ~1u), 0u, 0u), _wgslsmith_mod_vec3_u32(abs(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(5470u, 0u, 39720u), vec3<u32>(1u, 35506u, 49356u)))), _wgslsmith_mod_vec3_u32(abs(abs(vec3<u32>(92033u, 32677u, 17778u))), ~vec3<u32>(1u, 0u, 24198u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 1u)], -1360f, -318f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-213f, 524f, global0[_wgslsmith_index_u32(16333u, 1u)])))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1003f, -448f, global0[_wgslsmith_index_u32(4294967295u, 1u)]) + vec3<f32>(global0[_wgslsmith_index_u32(28519u, 1u)], -928f, 116f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1105f, 156f, 1633f))))))));
}

