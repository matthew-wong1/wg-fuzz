struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<f32, 29> = array<f32, 29>(-1278f, 640f, 1063f, 205f, -1099f, 158f, -1166f, 664f, 607f, 2459f, -1803f, -775f, 524f, -1286f, 446f, -716f, -923f, 225f, -873f, 820f, 614f, -1223f, -490f, 1617f, -1588f, 403f, 365f, -1071f, 433f);

var<private> global2: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3) -> bool {
    var var_0 = select(!(!(!vec4<bool>(arg_0.d.a.b, arg_0.b.b, arg_0.d.a.b, true))), select(select(vec4<bool>(true, true, arg_0.b.b, all(vec3<bool>(arg_0.c.a.b, arg_0.c.a.b, arg_0.c.a.b))), select(select(vec4<bool>(false, arg_0.d.a.b, false, arg_0.c.a.b), vec4<bool>(arg_0.c.a.b, false, false, arg_0.b.b), false), !vec4<bool>(arg_0.d.a.b, false, true, true), select(vec4<bool>(arg_0.c.a.b, arg_0.c.a.b, arg_0.b.b, false), vec4<bool>(arg_0.d.a.b, arg_0.d.a.b, arg_0.b.b, arg_0.b.b), vec4<bool>(arg_0.d.a.b, true, arg_0.c.a.b, arg_0.c.a.b))), !(!vec4<bool>(false, arg_0.b.b, arg_0.c.a.b, arg_0.d.a.b))), !(!(!vec4<bool>(true, false, arg_0.b.b, true))), select(!all(vec3<bool>(true, arg_0.b.b, false)), arg_0.b.b, true)), select(select(vec4<bool>(!arg_0.d.a.b, true, all(vec4<bool>(arg_0.c.a.b, arg_0.c.a.b, true, true)), all(vec2<bool>(arg_0.b.b, false))), select(select(vec4<bool>(true, false, false, arg_0.b.b), vec4<bool>(false, arg_0.c.a.b, arg_0.b.b, arg_0.d.a.b), arg_0.b.b), !vec4<bool>(arg_0.b.b, arg_0.c.a.b, arg_0.c.a.b, true), select(vec4<bool>(true, false, true, arg_0.b.b), vec4<bool>(true, arg_0.c.a.b, arg_0.d.a.b, arg_0.b.b), false)), true), select(vec4<bool>(true && arg_0.d.a.b, true, arg_0.c.a.b, arg_0.c.a.b & arg_0.c.a.b), !select(vec4<bool>(arg_0.b.b, arg_0.c.a.b, true, false), vec4<bool>(arg_0.d.a.b, arg_0.c.a.b, true, false), arg_0.d.a.b), !select(vec4<bool>(arg_0.c.a.b, false, true, arg_0.d.a.b), vec4<bool>(true, false, false, arg_0.c.a.b), vec4<bool>(arg_0.d.a.b, arg_0.b.b, true, arg_0.c.a.b))), arg_0.c.a.b & arg_0.d.a.b));
    return any(vec3<bool>(arg_0.b.b, true, true));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec2<bool> {
    var var_0 = Struct_4((abs(vec4<i32>(-11665i, arg_1, 58474i, arg_1)) & select(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -33888i, arg_1, u_input.a), vec4<i32>(-1i, 2147483647i, -2147483647i, 2695i)), vec4<i32>(u_input.b, u_input.a, arg_1, -32632i), vec4<bool>(true, true, true, true))) ^ vec4<i32>(-1i, _wgslsmith_div_i32(reverseBits(2147483647i), -1i), -_wgslsmith_div_i32(0i, u_input.b), 0i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 18162i, 48391i, 22762i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -16584i, 1i, arg_1), vec4<i32>(1i, 1i, u_input.a, u_input.a)), ~vec4<i32>(u_input.b, -11408i, 2147483647i, arg_1)), vec3<bool>(!(arg_1 > _wgslsmith_add_i32(arg_1, 109595i)), true, func_3(Struct_3(41760i, Struct_1(vec2<u32>(arg_0, 1u), false, 1u, vec2<u32>(arg_0, global2.x)), Struct_2(Struct_1(vec2<u32>(global2.x, arg_0), false, arg_0, vec2<u32>(1u, 35588u)), vec4<f32>(global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(arg_0, 29u)], -742f, 235f), -1361f), Struct_2(Struct_1(vec2<u32>(arg_0, 27880u), true, arg_0, vec2<u32>(0u, 0u)), vec4<f32>(-1205f, global1[_wgslsmith_index_u32(arg_0, 29u)], 1273f, global1[_wgslsmith_index_u32(0u, 29u)]), -1140f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(41686u, 29u)], global1[_wgslsmith_index_u32(global2.x, 29u)])))))));
    global0 = -1301f;
    var var_1 = ~abs(_wgslsmith_clamp_i32(u_input.a, -reverseBits(-15994i), 14110i));
    let var_2 = Struct_1(vec2<u32>(arg_0, abs(~40870u) ^ arg_0), var_0.c.x, ~countOneBits(arg_0), min(_wgslsmith_add_vec2_u32(select(vec2<u32>(14733u, 19312u) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)), vec2<u32>(1u, global2.x) ^ vec2<u32>(84130u, global2.x), true), abs(~vec2<u32>(45700u, arg_0))), ~abs(~vec2<u32>(4955u, 17708u))));
    let var_3 = Struct_4(var_0.b, vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(countOneBits(var_0.a.wxz), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.b, u_input.a), var_0.b.yxw))), u_input.a, u_input.b >> (var_2.d.x % 32u), _wgslsmith_dot_vec2_i32(max(var_0.b.zy, select(vec2<i32>(var_0.a.x, -1i), vec2<i32>(-3450i, 53093i), false)), _wgslsmith_clamp_vec2_i32(var_0.a.yx << (vec2<u32>(var_2.c, 5969u) % vec2<u32>(32u)), vec2<i32>(arg_1, u_input.b), select(vec2<i32>(38930i, 0i), var_0.b.xy, var_0.c.yx)))), vec3<bool>(true, true, var_2.b));
    return var_0.c.zy;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(~vec2<u32>(12097u, 1u), any(!func_2(~global2.x, 10288i)), reverseBits(firstTrailingBit(7606u)), min(abs(~(vec2<u32>(0u, global2.x) << (vec2<u32>(1u, 29569u) % vec2<u32>(32u)))), select(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(global2.x, global2.x)), ~vec2<u32>(global2.x, 1u), ~vec2<u32>(global2.x, global2.x)), ~(~vec2<u32>(global2.x, 1u)), true)));
    var var_1 = min(_wgslsmith_add_vec3_u32(vec3<u32>(~abs(4294967295u), ~var_0.a.x & ~var_0.d.x, var_0.d.x & 82095u), select(~vec3<u32>(global2.x, 0u, 1u), ~vec3<u32>(48224u, 27745u, 42061u), false) << (~vec3<u32>(0u, 1u, var_0.a.x) % vec3<u32>(32u))), vec3<u32>(18533u, abs(~_wgslsmith_clamp_u32(4294967295u, var_0.d.x, global2.x)), firstTrailingBit(~50644u)));
    let var_2 = Struct_3(-85023i, Struct_1(var_0.a, ~u_input.b == reverseBits(abs(u_input.a)), _wgslsmith_div_u32(1u, 23646u), vec2<u32>(_wgslsmith_sub_u32(37878u, _wgslsmith_add_u32(var_1.x, var_0.a.x)), var_1.x)), Struct_2(Struct_1((var_1.zx & vec2<u32>(var_0.d.x, 1u)) ^ var_0.d, true, _wgslsmith_add_u32(13663u | global2.x, 1u), countOneBits(vec2<u32>(global2.x, 4294967295u)) << (var_0.a % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1.x, 29u)])), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.x, var_0.a.x), 29u)], _wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 29u)]))), 192f), Struct_2(Struct_1(reverseBits(~var_1.xx), !(!var_0.b), ~reverseBits(var_0.a.x), vec2<u32>(1u, var_1.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1004f + 782f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(2725u, 29u)] * global1[_wgslsmith_index_u32(var_0.d.x, 29u)]), 258f, global1[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-635f, global1[_wgslsmith_index_u32(~global2.x, 29u)])))), vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.x | 0u), var_0.d), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(reverseBits(3596u), 29u)])))));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-539f, global1[_wgslsmith_index_u32(var_2.b.d.x, 29u)], var_2.c.b.x, -1962f) + vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(0u), 29u)] + -1859f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.c) * _wgslsmith_f_op_f32(-276f - -408f)), 242f), var_2.e.x, -163f));
    var var_4 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~var_2.c.a.d, var_2.c.a.a), _wgslsmith_mod_vec2_u32(vec2<u32>(~var_1.x, _wgslsmith_div_u32(8959u, var_0.a.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.d.x, var_2.b.c), var_1.yx), vec2<u32>(var_2.d.a.c, 58474u), vec2<u32>(var_0.d.x, 51126u)))), var_2.b.b, ~abs(var_0.a.x >> (66065u % 32u)), vec2<u32>(4294967295u, var_1.x));
    return Struct_1(_wgslsmith_mod_vec2_u32(min(var_2.d.a.d, reverseBits(vec2<u32>(45930u, 47924u))), ~_wgslsmith_div_vec2_u32(~var_0.a, var_0.d)), select(any(vec3<bool>(!var_0.b, var_0.b, !var_0.b)), var_2.b.b, true), ~26348u, vec2<u32>(var_4.c, global2.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> bool {
    var var_0 = Struct_3(u_input.a, func_1(), Struct_2(func_1(), _wgslsmith_f_op_vec4_f32(-arg_1.b), arg_1.b.x), arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, global1[_wgslsmith_index_u32(arg_1.a.a.x, 29u)]) - arg_1.b.xz))) * _wgslsmith_f_op_vec2_f32(arg_2.b.ww * _wgslsmith_f_op_vec2_f32(ceil(arg_1.b.zy))))));
    let var_1 = Struct_3(_wgslsmith_sub_i32(abs(-64182i), -1i), Struct_1(vec2<u32>(~arg_0.d.x, ~var_0.d.a.c), arg_3.x, _wgslsmith_sub_u32(arg_2.a.d.x, 67314u), _wgslsmith_add_vec2_u32(firstLeadingBit(~arg_2.a.a), vec2<u32>(select(2511u, 1u, true), 0u))), Struct_2(var_0.c.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.c, arg_1.c, -1037f, 408f) + vec4<f32>(-924f, var_0.e.x, arg_1.b.x, 612f))), _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x)), Struct_2(arg_2.a, vec4<f32>(-577f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(109f + -1292f), -968f), -543f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(208f)), 1433f)), _wgslsmith_f_op_f32(-arg_2.b.x)), vec2<f32>(arg_1.b.x, -1668f));
    global2 = vec2<u32>(func_1().a.x ^ global2.x, _wgslsmith_mod_u32(reverseBits(arg_1.a.c), ~arg_1.a.c));
    global2 = ~(countOneBits(arg_2.a.a) | var_1.d.a.a) << (vec2<u32>(func_1().a.x, firstTrailingBit(arg_1.a.d.x)) % vec2<u32>(32u));
    let var_2 = vec3<bool>(true, _wgslsmith_dot_vec2_u32(var_0.c.a.d, arg_0.d) >= _wgslsmith_clamp_u32(select(0u, global2.x | var_0.d.a.d.x, 0u == global2.x), ~(~62949u), firstTrailingBit(arg_1.a.c)), arg_1.a.b);
    return u_input.b != u_input.a;
}

fn func_5(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(~(~firstLeadingBit(vec2<u32>(7318u, global2.x) << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)))), !(u_input.b <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.b), -vec3<i32>(u_input.b, 22542i, 0i))), 0u, ~_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, global2.x), vec2<u32>(0u, global2.x)) >> (max(vec2<u32>(global2.x, 0u), vec2<u32>(global2.x, 1u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(min(vec2<u32>(100736u, 4294967295u), vec2<u32>(1u, global2.x)), vec2<u32>(global2.x, 1u) ^ vec2<u32>(global2.x, global2.x))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) * _wgslsmith_f_op_f32(step(-1054f, _wgslsmith_f_op_f32(-738f - -1249f))))), -675f, global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~1u), _wgslsmith_add_u32(min(62141u, var_0.a.x), global2.x)), 29u)]);
    var_1 = vec3<f32>(-736f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f) - var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~global2.x, 29u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.c, 29u)] + 1000f))));
    let var_2 = var_0;
    let var_3 = func_1().a;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 429f;
    var var_0 = func_5(((~33072u | (global2.x << (1u % 32u))) < 0u) || func_4(func_1(), Struct_2(Struct_1(vec2<u32>(global2.x, global2.x), false, global2.x, vec2<u32>(global2.x, global2.x)), _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(global2.x, 29u)], global1[_wgslsmith_index_u32(47638u, 29u)], 400f, global1[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<f32>(-671f, 1000f, 557f, global1[_wgslsmith_index_u32(3129u, 29u)])), _wgslsmith_f_op_f32(1136f * 1175f)), Struct_2(Struct_1(vec2<u32>(global2.x, global2.x), true, global2.x, vec2<u32>(1u, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-657f, global1[_wgslsmith_index_u32(global2.x, 29u)], -1665f, global1[_wgslsmith_index_u32(30910u, 29u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 29u)])), vec2<bool>(true, any(vec2<bool>(true, false)))));
    global2 = abs(_wgslsmith_add_vec2_u32(~var_0.d, ~var_0.a) >> ((var_0.d | ~vec2<u32>(var_0.c, 1u)) % vec2<u32>(32u))) << (func_1().d % vec2<u32>(32u));
    var var_1 = abs(~u_input.a);
    var_1 = u_input.a;
    var var_2 = _wgslsmith_mult_vec3_u32(min(vec3<u32>(10588u, _wgslsmith_sub_u32(firstLeadingBit(var_0.a.x), _wgslsmith_clamp_u32(global2.x, global2.x, global2.x)), 4032u), ~(~max(vec3<u32>(34920u, global2.x, var_0.a.x), vec3<u32>(13702u, var_0.c, global2.x)))), ~countOneBits(~vec3<u32>(var_0.d.x, global2.x, 4294967295u) & (vec3<u32>(global2.x, 81071u, var_0.c) & vec3<u32>(75627u, global2.x, 55654u))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(1u)), global1[_wgslsmith_index_u32(1u, 29u)], abs(vec2<i32>(25614i, -27737i) << (vec2<u32>(var_2.x, global2.x) % vec2<u32>(32u))) << (~vec2<u32>(~var_2.x, var_0.d.x) % vec2<u32>(32u)));
}

