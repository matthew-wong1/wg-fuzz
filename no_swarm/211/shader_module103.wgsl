struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>) -> bool {
    var var_0 = select(false, !arg_0.a.x, true);
    let var_1 = Struct_2(_wgslsmith_div_f32(-508f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-530f)), _wgslsmith_f_op_f32(select(304f, 1176f, false))), 281f)), -arg_1, arg_0, vec3<f32>(-180f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(447f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-758f, 255f))))), -129f));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a)))), var_1.a)), vec4<i32>(_wgslsmith_mult_i32(abs(arg_2.x), 2147483647i), _wgslsmith_mod_i32(~arg_1.x, var_1.b.x), _wgslsmith_sub_i32(min(_wgslsmith_mod_i32(u_input.a, var_1.b.x), -21689i), firstTrailingBit(reverseBits(u_input.a))), arg_1.x), var_1.c, var_1.d);
    return false;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: f32) -> vec4<bool> {
    global0 = 1u;
    var var_0 = vec3<f32>(-231f, _wgslsmith_div_f32(arg_3, arg_3), _wgslsmith_f_op_f32(select(arg_3, arg_3, func_3(Struct_1(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false), ~0u), min(~arg_2, firstTrailingBit(arg_2)), reverseBits(_wgslsmith_mod_vec3_i32(arg_2.zxy, arg_2.ywz))))));
    global0 = countOneBits(abs(4294967295u));
    var var_1 = !vec3<bool>(true, true, !(0i == _wgslsmith_add_i32(arg_2.x, arg_2.x)));
    let var_2 = _wgslsmith_f_op_f32(602f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(857f - 1642f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3))), -1137f))));
    return vec4<bool>(false, all(vec2<bool>(true, !(!var_1.x))), select(false, !var_1.x, func_3(Struct_1(vec4<bool>(var_1.x, var_1.x, true, true), reverseBits(26610u)), vec4<i32>(~1i, 0i, select(-70707i, 7692i, true), 26071i), arg_2.xyz)), true);
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    global0 = ~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(8152u, 4294967295u, 29818u, 91242u), ~vec4<u32>(0u, 0u, 75157u, 1u)), ~4294967295u, 0u));
    return Struct_2(_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2078f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)))))), vec4<i32>(u_input.a, u_input.a, ~abs(u_input.a) & 2147483647i, reverseBits(-1264i >> (1u % 32u))), Struct_1(select(vec4<bool>(all(vec3<bool>(false, true, false)), any(vec3<bool>(true, false, true)), false, any(vec4<bool>(false, false, false, false))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)), select(func_2(1i, arg_0.x, vec4<i32>(2664i, 17762i, u_input.a, 0i), arg_0.x), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true), func_2(14035i, -279f, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), 324f))), ~(~(~4294967295u))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) - _wgslsmith_f_op_f32(f32(-1f) * -624f)), _wgslsmith_f_op_f32(ceil(-189f)), arg_0.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(arg_0.zzx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1050f, arg_0.x, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, 1542f)), any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(arg_0.zwx)))))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> u32 {
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(0u, arg_0.c.b, arg_0.c.b, 41617u))), abs(vec4<u32>(arg_0.c.b, arg_0.c.b, 25689u, arg_0.c.b) | ~vec4<u32>(0u, 38246u, 21262u, arg_0.c.b))), _wgslsmith_mod_vec4_u32(countOneBits(countOneBits(vec4<u32>(35639u, arg_0.c.b, arg_0.c.b, arg_0.c.b))) ^ (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 26082u, 8247u, arg_0.c.b), vec4<u32>(97041u, 72069u, 9245u, arg_0.c.b)) ^ vec4<u32>(47107u, 4294967295u, arg_0.c.b, 17614u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, arg_0.c.b, arg_0.c.b, 4294967295u) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.b, arg_0.c.b, 1u, 2738u), vec4<u32>(35702u, 0u, arg_0.c.b, arg_0.c.b)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(arg_0.c.b, arg_0.c.b), arg_0.c.b & arg_0.c.b, arg_0.c.b, 1u))));
    global0 = 1u;
    let var_0 = arg_0.c.a.x;
    global0 = _wgslsmith_add_u32(0u, ~abs(arg_0.c.b) ^ ~49328u);
    let var_1 = max(23705u, ~(~(min(1u, arg_0.c.b) & abs(arg_0.c.b))));
    return ~(abs(var_1) | 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~func_4(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, -1698f, -746f, 1169f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(488f, -175f, 866f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1154f, -479f, 1043f) + vec3<f32>(-1095f, -710f, -1299f)))), vec3<f32>(_wgslsmith_f_op_f32(-1447f + -881f), _wgslsmith_f_op_f32(min(892f, 294f)), _wgslsmith_f_op_f32(1356f - 1024f))));
    var var_0 = _wgslsmith_f_op_f32(step(-435f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1216f, 888f)) - -1157f), 1000f))))));
    let var_1 = Struct_1(func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -204f), -496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1265f + -851f), -1303f, true)))).c.a, 1u);
    var_0 = _wgslsmith_f_op_f32(abs(1f));
    let var_2 = var_1.b;
    var var_3 = ~select(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(-45566i, 9994i, u_input.a, -33997i) | vec4<i32>(-2147483647i, 44568i, 0i, u_input.a), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), abs(vec4<i32>(29921i, u_input.a, u_input.a, 22259i)) | -vec4<i32>(2147483647i, -11113i, u_input.a, -1i), _wgslsmith_mult_vec4_i32(min(vec4<i32>(u_input.a, u_input.a, u_input.a, 17227i), vec4<i32>(656i, u_input.a, u_input.a, 36737i)), vec4<i32>(u_input.a, u_input.a, u_input.a, -2431i))), vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, -1i, 4514i, 1657i)), !var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(31887u, var_1.b, 5982u, 0u), vec4<u32>(var_2, 4294967295u, var_1.b, 6241u) ^ vec4<u32>(11250u, var_1.b, 0u, 0u))), u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(1i, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1809f, 844f, -134f) * vec4<f32>(-1634f, 1110f, -886f, -1910f))).b.x, ~(~var_3.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(~15051i, abs(var_3.x), 9445i), countOneBits(vec3<i32>(-34342i, var_3.x, u_input.a)))));
}

