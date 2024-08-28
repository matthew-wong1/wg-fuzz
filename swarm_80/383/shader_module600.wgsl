struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 24>;

var<private> global3: f32 = 307f;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2() -> f32 {
    let var_0 = abs(u_input.b);
    global2 = array<Struct_1, 24>();
    global0 = array<vec3<f32>, 11>();
    global3 = _wgslsmith_f_op_f32(292f - _wgslsmith_f_op_f32(f32(-1f) * -203f));
    global2 = array<Struct_1, 24>();
    return _wgslsmith_f_op_f32(f32(-1f) * -180f);
}

fn func_3() -> vec4<f32> {
    var var_0 = ~(~u_input.a.x);
    let var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(max(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), u_input.a.wwy), u_input.a.yxx), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a.x) ^ vec3<u32>(57522u, 0u, u_input.a.x), ~u_input.a.zyw))), 24u)];
    let var_2 = Struct_3(firstLeadingBit(vec4<u32>(~(u_input.a.x | u_input.a.x), 1u, 4294967295u, 0u ^ reverseBits(u_input.a.x))), var_1.d);
    var var_3 = Struct_1(~var_1.a, select(select(!(!global1.b), vec2<bool>(true, var_2.b), select(global1.b, !vec2<bool>(global1.e, false), all(vec4<bool>(true, global1.e, true, true)))), select(!global1.b, vec2<bool>(true, global1.e || var_2.b), all(vec3<bool>(false, false, false))), all(vec4<bool>(false == global1.e, true, true, true))), _wgslsmith_div_i32(global1.c, 2147483647i), true, true);
    let var_4 = var_2.a.x;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(113f, 1972f, 940f, -3370f)))))) - vec4<f32>(-292f, _wgslsmith_f_op_f32(662f + 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1606f, -806f) - _wgslsmith_f_op_f32(trunc(-1909f))), 263f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -2077f)))))));
}

fn func_1() -> f32 {
    var var_0 = vec2<i32>(u_input.b.x, u_input.b.x << (~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)) % 32u));
    let var_1 = false;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -1347f), -3227f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(750f, -290f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(375f, 437f, -1030f, -137f), vec4<f32>(1608f, -146f, 2387f, 1765f)))))));
    return _wgslsmith_f_op_f32(-1137f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(abs(var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-140f, 419f) * _wgslsmith_f_op_f32(f32(-1f) * -429f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1453f, _wgslsmith_f_op_f32(abs(-1476f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1672f)))), _wgslsmith_f_op_f32(1f * -1403f))));
    var var_0 = select(false, !all(vec3<bool>(true, false, global1.e)), global1.b.x);
    let var_1 = Struct_1(vec4<i32>(firstTrailingBit(u_input.b.x), ~(global1.c & -32415i) ^ (i32(-1i) * -global1.c), -1i, 61531i), !vec2<bool>(all(select(vec3<bool>(false, global1.e, global1.e), vec3<bool>(false, global1.d, false), global1.b.x)), global1.d), _wgslsmith_add_i32(global1.a.x, global1.a.x), all(select(vec3<bool>(all(vec2<bool>(global1.b.x, global1.d)), all(vec4<bool>(global1.d, global1.e, global1.e, global1.e)), any(vec4<bool>(global1.d, false, false, true))), select(vec3<bool>(false, false, true), !vec3<bool>(global1.e, global1.e, false), !vec3<bool>(global1.d, global1.d, true)), !select(vec3<bool>(false, false, global1.d), vec3<bool>(true, global1.b.x, false), vec3<bool>(global1.b.x, global1.e, global1.d)))), (~u_input.b.x ^ (global1.a.x | u_input.b.x)) > -countOneBits(u_input.b.x));
    var var_2 = u_input.a.x;
    let var_3 = select(countOneBits(max(u_input.a.x >> (u_input.a.x % 32u), max(u_input.a.x, _wgslsmith_div_u32(89202u, 9761u)))), ~(~max(abs(u_input.a.x), select(22009u, u_input.a.x, false))), any(global1.b));
    global0 = array<vec3<f32>, 11>();
    let var_4 = _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(firstLeadingBit(1u), 4847u, _wgslsmith_clamp_u32(u_input.a.x, 1u, u_input.a.x | var_3), ~10322u) & ~vec4<u32>(countOneBits(u_input.a.x), u_input.a.x ^ 10552u, _wgslsmith_dot_vec2_u32(u_input.a.ww, u_input.a.xz), 57860u));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.b.x, firstTrailingBit(var_1.c)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_5, var_5)), _wgslsmith_f_op_f32(f32(-1f) * -350f)))))), global1.a.yw | vec2<i32>(-20276i, var_1.a.x), -1000f);
}

