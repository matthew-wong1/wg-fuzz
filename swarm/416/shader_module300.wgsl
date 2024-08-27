struct Struct_1 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: vec2<f32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(33844u, 22u)];
    let var_1 = ~(-firstTrailingBit(vec4<i32>(37631i, -2147483647i, var_0.b, 2147483647i) << (vec4<u32>(4294967295u, 19393u, 71459u, 10124u) % vec4<u32>(32u)))) >> (min(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, _wgslsmith_clamp_u32(4294967295u, 10247u, 47480u), ~1u, ~4294967295u)), _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, 74894u), vec4<u32>(7980u, 62279u, 1u, 8456u))), vec4<u32>(1u, ~29933u, firstLeadingBit(4294967295u), 1u))) % vec4<u32>(32u));
    var var_2 = ~(~_wgslsmith_mult_u32(1u, ~(~52615u)));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(46889u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(1u, 4294967295u, 13405u, 33592u)), ~vec4<u32>(1u, 1u, 1u, 1u)), ~61183u), _wgslsmith_div_vec3_u32(vec3<u32>(~firstLeadingBit(1u), firstLeadingBit(1u), 4294967295u), ~vec3<u32>(18993u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 32100u, 4294967295u), vec4<u32>(0u, 74908u, 1u, 14127u)), ~0u)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1293f, 1170f, var_0.a, 714f), vec4<f32>(1000f, global1.x, var_0.a, var_0.a))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(619f, 376f, global1.x, var_0.a))))))));
    return -var_0.b;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = select(1u, abs(1u), all(vec4<bool>(_wgslsmith_f_op_f32(-global1.x) == _wgslsmith_div_f32(-334f, 101f), true, true, false)));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    var var_1 = Struct_1(-627f, -func_3());
    let var_2 = Struct_1(var_1.a, _wgslsmith_mult_i32(0i, 55494i));
    return vec4<u32>(~(var_0 >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 42215u)) % 32u)), var_0, ~var_0, _wgslsmith_mod_u32(abs(~_wgslsmith_clamp_u32(69590u, 1u, 1u)), _wgslsmith_add_u32(var_0 & var_0, 1u) >> ((_wgslsmith_mod_u32(var_0, var_0) ^ 0u) % 32u)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: bool) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(600f)))), 483f))));
    global0 = array<Struct_1, 22>();
    var var_0 = countOneBits(func_2(firstTrailingBit(i32(-1i) * -14344i), -vec2<i32>(~(-2147483647i), arg_1.x), vec2<bool>(all(vec2<bool>(arg_3, arg_3)), true)));
    var var_1 = arg_0.x;
    var var_2 = true;
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: f32) -> vec2<f32> {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, u_input.b), u_input.a & u_input.b), ~(~_wgslsmith_clamp_i32(u_input.c.x, 1i, -19681i)), u_input.c.x), firstLeadingBit(firstLeadingBit(u_input.c)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(vec4<u32>(~36537u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), ~vec2<u32>(0u, 4294967295u)), _wgslsmith_sub_u32(~36256u, 1u), ~(~1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))) + vec2<f32>(_wgslsmith_f_op_f32(func_1(vec4<u32>(8309u, 32167u, 0u, 53128u), u_input.c, -394f, true)), _wgslsmith_div_f32(global1.x, 116f))), -2256f)));
    global0 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1023f - 2080f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(958f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -640f))))), global1.x, 1000f)));
    global0 = array<Struct_1, 22>();
    var var_1 = global0[_wgslsmith_index_u32(~(~(_wgslsmith_clamp_u32(69322u >> (1u % 32u), ~60836u, ~84901u) >> ((firstTrailingBit(6262u) << (select(9625u, 1u, false) % 32u)) % 32u))), 22u)];
    global1 = var_0.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~(~(~1u)), 1u), _wgslsmith_f_op_vec2_f32(-var_0.yz), _wgslsmith_sub_vec2_u32(~abs(max(vec2<u32>(4294967295u, 24184u), vec2<u32>(30699u, 45110u))), vec2<u32>(54954u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(29977u, 0u, 30543u), vec3<u32>(32234u, 1u, 1u)), vec3<u32>(1u, 1u, 1u)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(f32(-1f) * -598f)), 1127f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1001f + var_0.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -1793f)))));
}

