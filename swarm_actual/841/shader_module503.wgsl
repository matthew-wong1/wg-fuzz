struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<u32> {
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, arg_0.a, 36403u, arg_0.a), vec4<u32>(u_input.a, 13699u, 4294967295u, 0u))), abs(vec4<u32>(4902u, arg_0.a, arg_1, arg_0.a))) << (~_wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_0.a, u_input.a, u_input.a, 0u)), vec4<u32>(u_input.a, 1u, arg_1, arg_1)) % vec4<u32>(32u)), abs(select((vec4<u32>(u_input.a, 10576u, arg_0.a, 0u) << (vec4<u32>(arg_0.a, arg_1, 0u, arg_1) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<u32>(arg_0.a, 5084u, arg_0.a, 43391u)), vec4<u32>(~arg_0.a, arg_0.a, 1u, 0u), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))));
    global0 = max(firstTrailingBit(countOneBits(arg_0.a)), min(4294967295u, 36287u));
    global0 = firstLeadingBit(countOneBits(max(min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_0.a, u_input.a), vec4<u32>(arg_0.a, arg_1, 4294967295u, arg_1)), 1u), _wgslsmith_add_u32(arg_1, u_input.a))));
    var var_0 = ~(~(~1u) << (~arg_0.a % 32u));
    let var_1 = Struct_1(u_input.a, _wgslsmith_dot_vec3_i32(u_input.c.xzz, firstTrailingBit(~(u_input.c.wzw << (vec3<u32>(arg_0.a, arg_0.a, 0u) % vec3<u32>(32u))))));
    return vec3<u32>(4294967295u >> (~arg_0.a % 32u), ~max(0u, ~4294967295u), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.a), arg_1));
}

fn func_2() -> Struct_1 {
    var var_0 = 619f;
    let var_1 = -122f;
    global0 = 57515u;
    var var_2 = Struct_1(_wgslsmith_mod_u32(13109u, abs(~0u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, ~u_input.c.x) | 1i, -u_input.b));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1196f, var_1)) - var_1) + _wgslsmith_f_op_f32(-var_1)) * var_1)));
    return Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(abs(~vec3<u32>(var_2.a, 4294967295u, 13548u))), ~func_3(Struct_1(u_input.a, 41096i), _wgslsmith_mult_u32(13646u, u_input.a))), _wgslsmith_mod_i32(14206i, -40338i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<u32> {
    global0 = arg_0.a;
    var var_0 = -1i;
    var var_1 = 0i;
    return vec4<u32>(~_wgslsmith_add_u32(~1u, arg_1.a), firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a, 0u), vec3<u32>(arg_0.a, arg_0.a, arg_1.a)) & 0u, _wgslsmith_add_u32(43237u, u_input.a))), max(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, arg_0.a), vec2<u32>(23584u, arg_1.a))), ~(~vec2<u32>(92569u, 4294967295u))), arg_1.a), u_input.a);
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_1(min(59810u, _wgslsmith_div_u32(~4294967295u, _wgslsmith_mod_u32(u_input.a, ~4294967295u))), u_input.b);
    var var_1 = ~reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a, u_input.a, var_0.a, var_0.a), ~vec4<u32>(487u, 73221u, 20402u, 1u)) ^ func_4(func_2(), var_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-306f, -475f, -598f) + vec3<f32>(-964f, 553f, 736f))));
    let var_2 = true;
    var_1 = ~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, u_input.a, 1u, var_1.x) & ~firstTrailingBit(vec4<u32>(4294967295u, var_0.a, u_input.a, 1u)), ~(~countOneBits(vec4<u32>(10052u, var_0.a, var_1.x, var_1.x))));
    var var_3 = var_1.x;
    return StorageBuffer(vec4<i32>(-select(var_0.b, u_input.b, var_2), abs(var_0.b) >> (0u % 32u), u_input.d.x, _wgslsmith_mod_i32(-2147483647i, u_input.d.x)) ^ ~vec4<i32>(_wgslsmith_sub_i32(var_0.b, u_input.b), -u_input.c.x, select(1i, 22972i, var_2), select(var_0.b, var_0.b, var_2)), ~_wgslsmith_sub_vec2_u32(var_1.zx, var_1.wx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.c.x, 5406i, any(vec4<bool>(true, true, true, true)));
    global0 = u_input.a;
    global0 = 8224u;
    global0 = ~(~(43149u ^ u_input.a));
    let x = u_input.a;
    s_output = func_1();
}

