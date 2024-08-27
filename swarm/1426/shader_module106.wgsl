struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1194f))))), _wgslsmith_sub_u32(4294967295u, ~reverseBits(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.a.x))), vec2<bool>(u_input.a.x < _wgslsmith_dot_vec2_u32(~u_input.a, u_input.a), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1401f, 623f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2102f, 607f)))) * vec2<f32>(_wgslsmith_div_f32(1662f, -540f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1456f, -988f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1157f, -1259f)), vec2<f32>(-962f, -1334f)))), u_input.a.x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(step(-448f, -618f)), ~u_input.a.x, select(var_0.c, select(var_0.c, select(vec2<bool>(true, true), select(var_0.c, var_0.c, vec2<bool>(true, var_0.c.x)), vec2<bool>(false, var_0.c.x)), select(select(vec2<bool>(false, false), vec2<bool>(false, var_0.c.x), var_0.c), var_0.c, vec2<bool>(false, var_0.c.x))), var_0.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.d.x, -718f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.b, var_0.e, 63521u)), reverseBits(~vec3<u32>(u_input.a.x, 4294967295u, 1u))) | ~0u);
    let var_1 = any(vec3<bool>(false, select(var_0.c.x, true & !var_0.c.x, any(vec3<bool>(var_0.c.x, true, false))), var_0.c.x));
    let var_2 = !(!(!select(!vec4<bool>(true, var_0.c.x, var_1, var_1), select(vec4<bool>(var_1, var_0.c.x, var_1, var_0.c.x), vec4<bool>(false, var_0.c.x, false, false), var_1), true)));
    let var_3 = Struct_2(global0.x, !all(!var_2), _wgslsmith_mult_vec4_i32(abs(countOneBits(countOneBits(vec4<i32>(9096i, -1i, u_input.e, u_input.e)))), ~vec4<i32>(global0.x, abs(u_input.d.x), reverseBits(-1i), u_input.c)));
    return -(~(-5858i));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(1158f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1281f, -174f, true)))))));
    global0 = _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(u_input.d.yy), abs(u_input.d.zz)), func_3())), _wgslsmith_mod_vec2_i32(u_input.d.yx, vec2<i32>(_wgslsmith_mod_i32(-28581i, u_input.b), -u_input.c)));
    global0 = vec2<i32>(global0.x, _wgslsmith_div_i32(global0.x & ~global0.x, -20209i));
    let var_1 = Struct_2(select(1052i, abs(-84993i), _wgslsmith_div_f32(var_0, var_0) >= _wgslsmith_div_f32(var_0, 796f)) << ((~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u), vec4<u32>(0u, u_input.a.x, 0u, 1u)) << (~(u_input.a.x ^ u_input.a.x) % 32u)) % 32u), !((min(1i, u_input.b) & ~u_input.e) <= _wgslsmith_add_i32(~u_input.e, 6240i | u_input.d.x)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 0i, -2147483647i, global0.x) & vec4<i32>(u_input.d.x, -58523i, -1i, 1i), vec4<i32>(29017i, -72564i, 2147483647i, 1i)), vec4<i32>(1i, -44100i, u_input.e, _wgslsmith_mod_i32(u_input.c, global0.x))), ~reverseBits(abs(vec4<i32>(1i, 0i, u_input.e, 0i)))));
    global0 = u_input.d.zx;
    return var_0;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = -(global0.x >> (~firstLeadingBit(1u) % 32u));
    global0 = u_input.d.yx;
    let var_1 = true;
    return _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(global0.x, u_input.c, ~_wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -4163i), u_input.d), u_input.d, true), max(~u_input.d, vec3<i32>(global0.x, global0.x, 53825i))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-594f)) + -1029f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-613f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(1u)), _wgslsmith_f_op_f32(step(1025f, -428f)))))), 1154f, -1488f);
    var var_2 = Struct_2(43451i, true, ~vec4<i32>(~reverseBits(31854i), 40116i << (_wgslsmith_div_u32(u_input.a.x, 4294967295u) % 32u), firstTrailingBit(u_input.d.x), _wgslsmith_mod_i32(-2147483647i >> (u_input.a.x % 32u), select(var_0.x, var_0.x, true))));
    var var_3 = _wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(5980u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(31887u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 10384u, 4294967295u)), 3515u, u_input.a.x) & _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_clamp_u32(54333u, u_input.a.x, 77787u), _wgslsmith_clamp_u32(0u, 1u, 45871u), u_input.a.x ^ u_input.a.x), select(vec4<u32>(u_input.a.x, 1u, 33326u, u_input.a.x) >> (vec4<u32>(5388u, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), min(vec4<u32>(79622u, 32328u, 4294967295u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)), !vec4<bool>(var_2.b, var_2.b, true, var_2.b))), vec4<u32>(~u_input.a.x, max(u_input.a.x, max(~44535u, 1u)), u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, u_input.a.x, u_input.a.x, 10298u) & vec4<u32>(u_input.a.x, 4294967295u, 58918u, u_input.a.x), firstLeadingBit(~vec4<u32>(10550u, u_input.a.x, u_input.a.x, 54002u)))));
    global0 = ~u_input.d.zx;
    var var_4 = vec3<i32>(-(var_2.a ^ u_input.d.x), u_input.e, 35984i);
    var var_5 = var_2.b;
    var_5 = any(vec4<bool>(all(!vec3<bool>(var_2.b, false, false)), var_2.b, true, true)) | all(!(!select(vec3<bool>(var_2.b, false, false), vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(true, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_f_op_vec3_f32(-var_1.zyz), var_1.x);
}

