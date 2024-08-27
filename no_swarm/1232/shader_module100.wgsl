struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(1i, false, vec2<i32>(0i, 0i)), Struct_3(0i, true, vec2<i32>(2147483647i, -405i)), Struct_3(2147483647i, true, vec2<i32>(i32(-2147483648), -32239i)), Struct_3(-26940i, true, vec2<i32>(38730i, -1i)), Struct_3(i32(-2147483648), true, vec2<i32>(60591i, -21821i)), Struct_3(1i, false, vec2<i32>(25784i, -48288i)), Struct_3(49016i, true, vec2<i32>(i32(-2147483648), -17037i)), Struct_3(-1i, true, vec2<i32>(1i, i32(-2147483648))), Struct_3(1925i, false, vec2<i32>(7452i, 2147483647i)), Struct_3(31939i, false, vec2<i32>(2147483647i, 2147483647i)), Struct_3(-30352i, false, vec2<i32>(22928i, -5253i)), Struct_3(1i, false, vec2<i32>(32994i, -50616i)), Struct_3(-20432i, true, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_3(-40851i, false, vec2<i32>(i32(-2147483648), 33134i)), Struct_3(-56117i, false, vec2<i32>(-1i, i32(-2147483648))), Struct_3(20737i, false, vec2<i32>(2147483647i, 12199i)), Struct_3(-1i, false, vec2<i32>(0i, i32(-2147483648))), Struct_3(16478i, true, vec2<i32>(-58i, 1i)), Struct_3(-20855i, false, vec2<i32>(32200i, -32820i)));

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-668f, 858f), vec2<f32>(1000f, -1108f), vec2<f32>(864f, -275f), vec2<f32>(1000f, -1792f), vec2<f32>(3371f, -1259f), vec2<f32>(-955f, -223f), vec2<f32>(1742f, 1757f), vec2<f32>(-1290f, 248f), vec2<f32>(-1213f, -1063f), vec2<f32>(-1673f, -1696f), vec2<f32>(-917f, 937f), vec2<f32>(-1000f, -353f), vec2<f32>(-761f, 607f), vec2<f32>(580f, -1104f), vec2<f32>(-619f, 1362f), vec2<f32>(972f, 1463f), vec2<f32>(261f, -721f), vec2<f32>(-161f, 1000f), vec2<f32>(1107f, 1000f), vec2<f32>(-185f, 1000f), vec2<f32>(-962f, -1049f), vec2<f32>(976f, -703f), vec2<f32>(-892f, 935f), vec2<f32>(-765f, 519f), vec2<f32>(308f, 710f), vec2<f32>(1049f, 605f), vec2<f32>(506f, 407f), vec2<f32>(114f, -664f), vec2<f32>(210f, -798f), vec2<f32>(246f, -1000f));

var<private> global2: array<vec4<u32>, 3>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(49061i), 0i, -6071i, 2147483647i), firstTrailingBit(vec4<i32>(1075i, 11620i, -2147483647i, 0i)) << (firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)) % vec4<u32>(32u))), ~(~0i));
    global0 = array<Struct_3, 19>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(arg_0.x, u_input.a), 39686u), 3u)];
    var var_2 = vec2<u32>(firstLeadingBit(u_input.a) | _wgslsmith_dot_vec2_u32(vec2<u32>(select(1u, u_input.a, false), 106315u), ~arg_0.wx | arg_0.zw), ~var_1.x);
    var_2 = ~vec2<u32>(9344u, _wgslsmith_sub_u32((4294967295u >> (var_1.x % 32u)) & var_2.x, abs(1u)));
    return -(~(~firstLeadingBit(var_0 ^ var_0)));
}

fn func_2() -> f32 {
    global1 = array<vec2<f32>, 30>();
    let var_0 = ~u_input.a;
    global2 = array<vec4<u32>, 3>();
    var var_1 = Struct_2(vec2<i32>(reverseBits(1i), func_3(max(vec4<u32>(1u, 1u, u_input.a, var_0), _wgslsmith_mult_vec4_u32(global2[_wgslsmith_index_u32(u_input.a, 3u)], vec4<u32>(var_0, 0u, 73137u, u_input.a))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1229f, -429f, 770f, -1122f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-248f, -583f, 902f, -427f))), all(vec3<bool>(true, false, false))))), true, firstLeadingBit(max(0i, reverseBits(1i)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(683f)), _wgslsmith_f_op_f32(abs(-170f)), _wgslsmith_f_op_f32(select(270f, _wgslsmith_f_op_f32(f32(-1f) * -272f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1859f)), 1000f)), true, 1i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -898f))), _wgslsmith_f_op_f32(select(-105f, _wgslsmith_f_op_f32(633f - -2446f), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2000f))), -1115f), all(vec4<bool>(select(false, false, false), true, u_input.a >= 32234u, false)), select(-(i32(-1i) * -1i), 0i, true)));
    let var_2 = var_1.b;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_2.a.x))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    global1 = array<vec2<f32>, 30>();
    var var_0 = arg_1.b && false;
    let var_1 = ~4294967295u;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-324f - 278f) * -1364f)), _wgslsmith_f_op_f32(func_2()));
    var var_3 = !(!select(select(!vec4<bool>(false, false, arg_1.b, arg_1.b), !vec4<bool>(true, true, arg_1.b, false), true), !select(vec4<bool>(false, arg_0.b.b, false, false), vec4<bool>(arg_0.c.b, arg_1.b, false, arg_0.c.b), vec4<bool>(true, false, false, arg_0.b.b)), select(!vec4<bool>(arg_1.b, arg_1.b, arg_0.d.b, true), vec4<bool>(arg_0.b.b, arg_1.b, arg_0.c.b, arg_0.d.b), !vec4<bool>(arg_1.b, false, arg_1.b, true))));
    return arg_0.a.x << (_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a, 0u), vec2<u32>(var_1, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(25237u, 4294967295u))), _wgslsmith_div_u32(0u, var_1))) % 32u);
}

fn func_4(arg_0: vec4<i32>) -> vec2<i32> {
    let var_0 = select(false == any(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_mod_i32(-2147483647i, ~1i) < ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, arg_0.x, arg_0.x, arg_0.x)), firstLeadingBit(vec4<i32>(arg_0.x, 2147483647i, arg_0.x, arg_0.x))), select(!any(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(-1220f - _wgslsmith_f_op_f32(f32(-1f) * -748f)) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -584f)))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-608f)))))));
    var var_3 = var_0 || true;
    var var_4 = true;
    return _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, arg_0.x), vec2<i32>(arg_0.x, _wgslsmith_div_i32(0i, func_1(Struct_2(vec2<i32>(0i, arg_0.x), Struct_1(vec4<f32>(var_2, 502f, var_2, var_2), var_0, arg_0.x), Struct_1(vec4<f32>(var_2, 1957f, var_2, var_2), true, arg_0.x), Struct_1(vec4<f32>(-2369f, var_2, -1549f, -1087f), var_0, arg_0.x)), global0[_wgslsmith_index_u32(var_1, 19u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 30>();
    let var_0 = u_input.a;
    let var_1 = Struct_2(func_4(vec4<i32>(1i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(32699i, -3141i), vec2<i32>(-7813i, -16330i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(49480i, -41094i)), ~36177i | func_1(Struct_2(vec2<i32>(2147483647i, 0i), Struct_1(vec4<f32>(1051f, 1100f, 1000f, 285f), true, 38106i), Struct_1(vec4<f32>(-583f, 674f, 159f, -529f), false, -1i), Struct_1(vec4<f32>(1133f, 307f, 1267f, 1447f), true, 2251i)), global0[_wgslsmith_index_u32(var_0, 19u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, 1226f)), 984f, _wgslsmith_f_op_f32(round(1445f)), _wgslsmith_f_op_f32(1910f - 366f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-117f, 391f, 707f, -1000f), vec4<f32>(-906f, -1547f, 382f, -773f))))), true, _wgslsmith_sub_i32(max(_wgslsmith_mod_i32(1i, -109137i), 1i), 1i)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-865f, _wgslsmith_div_f32(568f, -1494f), all(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(982f + 1255f) + _wgslsmith_f_op_f32(select(-633f, -1255f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1324f)), _wgslsmith_div_f32(222f, -1000f)), 1i != _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), abs(vec4<i32>(-1i, -2612i, 61842i, 0i))), ~_wgslsmith_div_i32(abs(-1i), min(-7684i, -74379i))), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1090f, -313f, 1325f, -794f)))), false && any(vec3<bool>(true, true, true)), ~_wgslsmith_clamp_i32(func_4(vec4<i32>(4899i, -2147483647i, -1i, 5493i)).x, 9554i, -2147483647i)));
    var var_2 = 1i;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(360f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b.a.x))), 552f)), var_1.d.a.x);
    var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_div_f32(-790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-217f))))));
    var var_4 = global2[_wgslsmith_index_u32(select(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, ~(~18710u)), (_wgslsmith_add_u32(0u, var_0) ^ _wgslsmith_mult_u32(var_0, var_0)) | ~(~var_0)), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_clamp_u32(45988u, var_0, var_0), ~u_input.a), ~min(vec2<u32>(78464u, 15297u), vec2<u32>(var_0, var_0)) | _wgslsmith_sub_vec2_u32(~vec2<u32>(var_0, u_input.a), ~vec2<u32>(4294967295u, var_0))), true), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec2<u32>(u_input.a, ~_wgslsmith_mult_u32(78568u, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.d.a.x, _wgslsmith_f_op_f32(115f - var_1.c.a.x), var_1.c.a.x, -257f))) - vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(2476f, -702f, var_1.c.b && false)), 348f, -1691f)), global1[_wgslsmith_index_u32(select(u_input.a, ~(~49543u), true), 30u)]);
}

