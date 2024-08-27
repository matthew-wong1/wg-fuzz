struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = arg_0;
    let var_0 = arg_0.a;
    var var_1 = Struct_1(min(firstLeadingBit(~(47566u | var_0)), 330u));
    global0 = arg_0;
    let var_2 = arg_0;
    return _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a.x, u_input.b)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.b), abs(vec2<i32>(u_input.a.x, 44515i)))));
}

fn func_2() -> i32 {
    let var_0 = vec2<bool>(false, true);
    var var_1 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, vec3<i32>(u_input.b, -21992i, 7529i)) >> ((vec3<u32>(7497u, global0.a, global0.a) ^ vec3<u32>(58798u, 0u, global0.a)) % vec3<u32>(32u)), vec3<i32>(2147483647i, -49078i, abs(-9793i))), -(~u_input.a) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.b), u_input.a.zz), _wgslsmith_div_i32(u_input.b, 0i), _wgslsmith_mod_i32(u_input.b, u_input.b)));
    var var_2 = _wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(func_3(Struct_1(firstLeadingBit(global0.a))), -30305i ^ u_input.a.x, _wgslsmith_dot_vec4_i32(-(vec4<i32>(0i, -39340i, -1i, u_input.a.x) << (vec4<u32>(4294967295u, 0u, global0.a, global0.a) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-36401i, u_input.b, 21336i, -1i), vec4<i32>(0i, u_input.b, 0i, 0i)))));
    global0 = Struct_1(~4389u);
    var_1 = _wgslsmith_dot_vec3_i32((vec3<i32>(firstLeadingBit(var_2.x), 0i, _wgslsmith_div_i32(var_2.x, u_input.a.x)) ^ u_input.a) & -(~select(u_input.a, vec3<i32>(var_2.x, var_2.x, var_2.x), var_0.x)), -(~firstLeadingBit(u_input.a)));
    return firstLeadingBit(u_input.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1;
    global0 = Struct_1(~min(global0.a, 1u));
    var var_0 = max(vec3<u32>(0u, arg_1.a, 12616u) & ~(~(~vec3<u32>(global0.a, 1u, global0.a))), vec3<u32>(16497u, firstLeadingBit(4294967295u), abs(0u)) << (_wgslsmith_sub_vec3_u32(countOneBits(min(vec3<u32>(arg_1.a, arg_1.a, arg_1.a), vec3<u32>(global0.a, 15793u, 0u))), vec3<u32>(4294967295u, arg_1.a, 58935u) << (vec3<u32>(global0.a, 10973u, global0.a) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var_0 = reverseBits(firstLeadingBit(select(vec3<u32>(global0.a, arg_1.a, 85992u), vec3<u32>(4294967295u, 83742u, 60781u), false) >> (max(vec3<u32>(global0.a, global0.a, global0.a), vec3<u32>(1u, 0u, global0.a)) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(33285u, 4294967295u, var_0.x), reverseBits(vec3<u32>(1u, arg_1.a, 4294967295u))), vec3<u32>(var_0.x, var_0.x, ~var_0.x)));
    global0 = arg_1;
    return Struct_1(_wgslsmith_mult_u32(~var_0.x, arg_1.a));
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> f32 {
    global0 = arg_1;
    return _wgslsmith_f_op_f32(f32(-1f) * -318f);
}

fn func_1() -> StorageBuffer {
    global0 = Struct_1(global0.a);
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a, abs(~(global0.a & 9423u))), ~firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(global0.a, global0.a), vec2<u32>(1u, global0.a))), vec2<u32>(~_wgslsmith_clamp_u32(min(global0.a, 36483u), global0.a & 119711u, 1u), select(1u, 4294967295u, true)));
    let var_1 = -u_input.a;
    var var_2 = _wgslsmith_f_op_f32(func_5(_wgslsmith_sub_u32(firstTrailingBit(global0.a), 70158u), func_4(vec4<i32>(-1i, -u_input.a.x, var_1.x, 36779i) ^ vec4<i32>(0i, func_2(), var_1.x, func_2()), Struct_1(~global0.a))));
    var_2 = 1195f;
    return StorageBuffer(vec2<f32>(1000f, 867f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -700f) * _wgslsmith_f_op_f32(min(-1990f, -258f)))))), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1138f;
    global0 = Struct_1(104184u);
    global0 = Struct_1(1u);
    let x = u_input.a;
    s_output = func_1();
}

