struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: array<vec2<bool>, 11>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    global0 = array<vec2<f32>, 10>();
    global0 = array<vec2<f32>, 10>();
    var var_0 = Struct_1(vec4<i32>(arg_2.x, -_wgslsmith_mod_i32(-13364i, u_input.c.x), u_input.c.x, countOneBits(u_input.c.x)), _wgslsmith_f_op_f32(arg_3.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(-arg_3.b))))));
    global0 = array<vec2<f32>, 10>();
    var_0 = arg_3;
    return 20111i;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: vec2<i32>) -> vec4<i32> {
    global0 = array<vec2<f32>, 10>();
    global1 = array<vec2<bool>, 11>();
    var var_0 = arg_3;
    let var_1 = arg_0;
    var var_2 = ~_wgslsmith_dot_vec3_u32(min(abs(~vec3<u32>(arg_2, arg_2, arg_2)), u_input.a.wxz), u_input.a.yyw << ((reverseBits(vec3<u32>(0u, arg_2, u_input.a.x)) ^ vec3<u32>(0u, 4294967295u, 109352u)) % vec3<u32>(32u)));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, var_1.a.x) >> (u_input.a.yyy % vec3<u32>(32u)), vec3<i32>(-1i) * -select(arg_0.a.xxx, vec3<i32>(16057i, 0i, -1i), vec3<bool>(false, false, false))), countOneBits(29476i), -1i & arg_0.a.x, -2147483647i);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> vec4<bool> {
    global1 = array<vec2<bool>, 11>();
    var var_0 = Struct_1(reverseBits(_wgslsmith_add_vec4_i32(~vec4<i32>(arg_3, arg_2, arg_3, arg_3), vec4<i32>(2147483647i, firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3, -11609i), u_input.c.xy), u_input.c.x & u_input.c.x))), arg_1.x);
    var var_1 = arg_2 | -_wgslsmith_div_i32(var_0.a.x << (~1u % 32u), _wgslsmith_add_i32(arg_3, _wgslsmith_clamp_i32(arg_3, -2147483647i, -1i)));
    let var_2 = Struct_1(min(func_3(Struct_1(vec4<i32>(-34903i, -54710i, u_input.c.x, arg_3), var_0.b), _wgslsmith_f_op_vec2_f32(ceil(arg_1)), u_input.b, u_input.c.yy), -var_0.a) ^ vec4<i32>(-11087i, 37757i, min(u_input.c.x, -423i), firstTrailingBit(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))));
    let var_3 = 0i;
    return vec4<bool>(arg_0 | any(global1[_wgslsmith_index_u32(~(~37136u), 11u)]), true, !arg_0, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!vec4<bool>(false, true, true, all(vec4<bool>(false, true, false, false))), !func_2(true, _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)] - global0[_wgslsmith_index_u32(1u, 10u)]), 477i, func_1(-2293f, -1061f, vec3<i32>(u_input.c.x, u_input.c.x, -27551i), Struct_1(vec4<i32>(1i, -2147483647i, -2147483647i, 1i), 626f))), true), vec4<bool>(!any(vec3<bool>(false, true, false)), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), true)), true && !all(global1[_wgslsmith_index_u32(u_input.d, 11u)]), func_3(Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, -11381i, -18958i), -2201f), global0[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 10u)], _wgslsmith_div_u32(u_input.a.x, 4294967295u), vec2<i32>(2147483647i, u_input.c.x)).x == (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.zx) | abs(0i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(419f))))) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1913f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -937f)))));
    global0 = array<vec2<f32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, u_input.d), 24972i, _wgslsmith_f_op_f32(-1000f - -576f));
}

