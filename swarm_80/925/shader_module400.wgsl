struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<f32, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_2 {
    global2 = array<f32, 13>();
    global0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(abs(0i), -26626i), select(vec2<i32>(_wgslsmith_mult_i32(0i, 1i), 2147483647i), u_input.c, false));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-168f, -141f)), -406f))) * global2[_wgslsmith_index_u32(firstTrailingBit(~u_input.a) | (u_input.a >> (_wgslsmith_mult_u32(u_input.a, 4294967295u) % 32u)), 13u)]);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(u_input.a, u_input.a)), 13u)] - global2[_wgslsmith_index_u32(4294967295u, 13u)]), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(31007u, ~_wgslsmith_mod_u32(0u, u_input.a)), 13u)])));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1099f + -2499f), -331f, global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 13u)], _wgslsmith_f_op_f32(440f + var_1)))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(var_2.a)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> f32 {
    let var_0 = true;
    var var_1 = Struct_3(~arg_0.a);
    var var_2 = arg_3;
    var_1 = arg_0;
    let var_3 = vec2<bool>(var_2.a.x > _wgslsmith_f_op_f32(f32(-1f) * -664f), true);
    return -579f;
}

fn func_1() -> u32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(func_3(Struct_3(-2147483647i), vec2<bool>(global1.x, global1.x), vec3<i32>(u_input.b, u_input.b, 46538i), var_0)), _wgslsmith_div_f32(-262f, global2[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_f_op_f32(max(1360f, var_0.a.x))))))));
    global2 = array<f32, 13>();
    var var_2 = min(abs(~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 1i, 2147483647i, 2147483647i), vec4<i32>(-2147483647i, 35200i, u_input.b, u_input.b)), -vec4<i32>(-43287i, 2147483647i, u_input.b, 27849i), firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, 1i, -36795i)))), select(-vec4<i32>(2147483647i, _wgslsmith_div_i32(1i, u_input.c.x), _wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -56307i), vec3<i32>(43913i, -2147483647i, u_input.c.x))), ~_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, -17500i, u_input.c.x, 23628i), vec4<i32>(-11465i, -9930i, 14345i, u_input.b)), global1.x));
    let var_3 = ~(~(~(u_input.a << (~u_input.a % 32u))));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(u_input.a, var_3)), min(_wgslsmith_div_vec2_u32(vec2<u32>(20073u, 15868u) ^ vec2<u32>(u_input.a, var_3), vec2<u32>(var_3, u_input.a) >> (vec2<u32>(u_input.a, 48200u) % vec2<u32>(32u))), vec2<u32>(43455u, 89503u))), abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3, 0u), select(vec2<u32>(28613u, 4294967295u), vec2<u32>(649u, 0u), false), ~vec2<u32>(var_3, var_3))) ^ vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 43163u, 109225u, u_input.a) | vec4<u32>(1u, 35506u, var_3, u_input.a), ~vec4<u32>(u_input.a, var_3, 1u, u_input.a)), firstTrailingBit(~var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u, 4294967295u, (_wgslsmith_div_u32(u_input.a, u_input.a) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a)) % 32u)) | u_input.a, _wgslsmith_sub_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a))) | _wgslsmith_mult_vec4_u32(vec4<u32>(35475u, min(u_input.a | 61410u, u_input.a), func_1() >> (1u % 32u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 1u), select(u_input.a, u_input.a, false))), vec4<u32>(u_input.a, 1u, u_input.a | _wgslsmith_clamp_u32(1u, u_input.a, 68887u), 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_0.zxx) ^ (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, var_0.x, u_input.a)) & vec3<u32>(_wgslsmith_add_u32(var_0.x, u_input.a), 1u, ~4294967295u)), abs(15990u), max(vec3<i32>(u_input.b, _wgslsmith_sub_i32(u_input.c.x, u_input.b), i32(-1i) * -2147483647i), vec3<i32>(-13735i & u_input.c.x, u_input.b, u_input.c.x)) >> (vec3<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), ~u_input.a, 1u) % vec3<u32>(32u)), func_1(), firstLeadingBit(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(var_0, vec4<u32>(63865u, 4294967295u, u_input.a, 4294967295u)), var_0, ~var_0))));
}

