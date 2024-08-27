struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-598f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1452f, 263f), _wgslsmith_div_f32(-1397f, 1306f))))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(f32(-1f) * -552f)))))), -2822f);
    var var_1 = -106f >= _wgslsmith_f_op_f32(floor(-188f));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-167f, 108f), vec2<f32>(-2274f, -1216f), vec2<bool>(true, false)))))));
    var var_3 = var_2;
    return ~(~_wgslsmith_mult_u32(~(~1u), min(1u, 1u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = -1i;
    let var_1 = vec3<u32>(~(~abs(_wgslsmith_div_u32(4294967295u, 32401u))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4216u, 4294967295u, 0u, 4294967295u)), ~abs(vec4<u32>(5626u, 70644u, 22291u, 3160u))), abs(func_3()));
    let var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(1u, max(abs(var_1.x), var_1.x & var_1.x), 93010u, _wgslsmith_div_u32(firstLeadingBit(4294967295u), var_1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u >> (var_1.x % 32u), 5987u & var_1.x, abs(var_1.x), ~1u), vec4<u32>(var_1.x ^ var_1.x, ~0u, ~1u, 74713u)));
    var var_3 = true;
    var var_4 = max(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_2, max(var_2, ~var_2)), ((vec4<u32>(var_2.x, 88126u, var_1.x, var_2.x) | var_2) | var_2) >> (vec4<u32>(1u, min(var_1.x, var_2.x), reverseBits(var_1.x), var_2.x) % vec4<u32>(32u))), select(select(var_2, firstTrailingBit(~var_2), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), true)), vec4<u32>(firstLeadingBit(4294967295u), ~(0u ^ var_2.x), ~_wgslsmith_sub_u32(var_2.x, 4294967295u), var_1.x), vec4<bool>(true, true, true, true)));
    return 2147483647i;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    let var_0 = -_wgslsmith_mod_i32(1i, firstLeadingBit(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-954f, arg_1.e, -371f, arg_2.a.a.x) + vec4<f32>(1000f, arg_1.e, 1353f, -1137f)), arg_1.d.b & arg_2.b)));
    let var_1 = arg_1;
    let var_2 = 19771u;
    let var_3 = arg_1.a;
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(995f, -207f) * _wgslsmith_f_op_f32(var_3.a.x - var_1.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(607f + _wgslsmith_f_op_f32(var_3.a.x * var_3.a.x))), var_3.a.x));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.d.d.a, vec2<f32>(-1465f, -1741f))))), reverseBits(-max(-1i, -u_input.a.x)), true, Struct_2(arg_1.d.a, arg_2.b, arg_1.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.a.x, arg_2.d.a.x)) * _wgslsmith_f_op_vec2_f32(trunc(arg_1.d.d.a)))), arg_1.d.c), -131f);
    var var_1 = all(select(select(!(!arg_0.yz), select(select(vec2<bool>(true, arg_0.x), arg_0.zx, true), vec2<bool>(true, var_0.c), true & var_0.c), any(!vec4<bool>(arg_1.c, true, false, arg_1.c))), !arg_0.xy, func_1(~arg_1.d.b.x, arg_1, arg_1.d)));
    var var_2 = var_0.c;
    var var_3 = u_input.b.zyz << (vec3<u32>(1u, select(_wgslsmith_mult_u32(19477u, 1u), 1u, true), firstTrailingBit(26880u)) % vec3<u32>(32u));
    var_1 = true;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1215f, 1968f, 1384f, -327f)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(958f, 494f, -232f, -1270f) + vec4<f32>(1000f, -442f, -157f, 262f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-287f, -995f, 787f, 137f), vec4<f32>(107f, -1042f, 483f, -395f)))))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-2677f)))), var_0.x, _wgslsmith_f_op_f32(step(1172f, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)))));
    let var_1 = -1487f;
    let var_2 = func_4(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, func_1(u_input.a.x, Struct_3(Struct_1(vec2<f32>(var_0.x, -635f)), u_input.b.x, false, Struct_2(Struct_1(vec2<f32>(1000f, var_0.x)), vec2<i32>(-63163i, u_input.b.x), Struct_1(vec2<f32>(-1767f, -182f)), Struct_1(vec2<f32>(var_0.x, var_1)), Struct_1(vec2<f32>(var_1, 513f))), var_1), Struct_2(Struct_1(var_0.xy), vec2<i32>(u_input.b.x, 0i), Struct_1(var_0.xx), Struct_1(vec2<f32>(var_0.x, var_1)), Struct_1(vec2<f32>(173f, var_0.x))))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true | any(vec3<bool>(true, false, false)))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_0.xy, vec2<f32>(-580f, var_1)))))), reverseBits(u_input.a.x), true, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_0.x) - var_0.zy)), u_input.b.zx, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1712f, var_0.x) + var_0.xz)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.ww)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.xz))), _wgslsmith_f_op_f32(1317f * _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), 784f))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, 683f), var_0.ww, true)) * var_0.zz)), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b.zyy, u_input.b.xxz, u_input.b.xyw), u_input.b.xzw << (vec3<u32>(1u, 52675u, 13238u) % vec3<u32>(32u))), -(-5667i >> (1u % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.wx * vec2<f32>(var_0.x, 121f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.xw)))), Struct_1(_wgslsmith_f_op_vec2_f32(max(var_0.yz, vec2<f32>(438f, var_0.x))))));
    var var_3 = select(firstLeadingBit(firstTrailingBit(_wgslsmith_add_u32(32292u, 1u))), 70470u, var_2.c);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.e), _wgslsmith_f_op_f32(-var_1)), 3780f, 389f, _wgslsmith_f_op_f32(-910f - _wgslsmith_f_op_f32(select(1714f, -469f, var_2.c)))) - vec4<f32>(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-var_0.x), func_4(vec3<bool>(true, var_2.c, var_2.c), Struct_3(var_2.d.d, var_2.b, true, Struct_2(Struct_1(var_2.d.c.a), u_input.a, Struct_1(vec2<f32>(var_1, var_2.a.a.x)), var_2.d.e, Struct_1(var_2.d.c.a)), 1675f), var_2.d).c)), var_1, 1488f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(612f, var_0.x, var_2.e, var_2.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_2.a.a.x, 159f, 674f) - vec4<f32>(-507f, -2644f, var_0.x, var_2.a.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-310f, var_0.x, 1308f, var_2.d.a.a.x))) + vec4<f32>(-925f, -890f, -554f, var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1354f, var_0.x, -854f, 857f))))), !vec4<bool>(true, !var_2.c, var_2.c & var_2.c, var_2.c))), _wgslsmith_div_vec4_f32(vec4<f32>(func_4(vec3<bool>(true, true, true), Struct_3(Struct_1(vec2<f32>(var_1, 396f)), var_2.d.b.x, true, Struct_2(Struct_1(var_2.d.a.a), vec2<i32>(-2147483647i, u_input.b.x), var_2.d.a, var_2.a, var_2.a), var_2.d.d.a.x), var_2.d).a.a.x, var_0.x, -551f, -1000f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1274f, var_2.e, 364f, 386f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1447f, var_0.x, 411f, 509f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1268f, -132f, var_2.a.a.x, var_0.x)))))), !select(vec4<bool>(true, all(vec2<bool>(true, var_2.c)), !var_2.c, all(vec4<bool>(var_2.c, var_2.c, false, var_2.c))), !vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c), vec4<bool>(true, true, !var_2.c, false))));
    let x = u_input.a;
    s_output = StorageBuffer(47249i, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~countOneBits(vec2<u32>(1u, 28184u)), vec2<u32>(1u, 1u)) | ~firstTrailingBit(firstLeadingBit(vec2<u32>(50197u, 4294967295u))), _wgslsmith_add_vec4_u32(~vec4<u32>(~42271u, abs(1u), 1u, 1u << (0u % 32u)), vec4<u32>(1u, 1u, 1u, 1u)));
}

