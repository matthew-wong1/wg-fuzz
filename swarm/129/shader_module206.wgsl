struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<f32>, 10>;

var<private> global2: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> vec4<i32> {
    return ~(~vec4<i32>(max(~global0.x, u_input.a.x), -_wgslsmith_add_i32(-1i, -2147483647i), i32(-1i) * -1i, -min(u_input.a.x, global0.x)));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    var var_0 = vec4<u32>(u_input.b, u_input.b, max(countOneBits(0u << (u_input.b % 32u)), 4294967295u) | (u_input.b << (43359u % 32u)), _wgslsmith_mod_u32(countOneBits(u_input.b), u_input.b));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1623f, 724f, global2.a.a)), _wgslsmith_f_op_f32(trunc(-581f)), _wgslsmith_f_op_f32(-192f + 272f), -1286f) * vec4<f32>(1f, 1f, 1f, 1f)))));
    let var_2 = global0.x;
    let var_3 = vec4<i32>(_wgslsmith_div_i32(~global0.x, global0.x), _wgslsmith_dot_vec3_i32(-arg_0, arg_0), -11594i, u_input.a.x) << ((abs(select(~vec4<u32>(u_input.b, u_input.b, var_0.x, 1u), reverseBits(vec4<u32>(1u, var_0.x, var_0.x, u_input.b)), 1u > u_input.b)) ^ countOneBits(~(vec4<u32>(0u, u_input.b, 1u, var_0.x) | vec4<u32>(u_input.b, 2441u, 0u, 12783u)))) % vec4<u32>(32u));
    var_0 = ~vec4<u32>(abs(var_0.x & _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, u_input.b, u_input.b), var_0.wxx)), _wgslsmith_div_u32(0u, countOneBits(var_0.x)), 0u, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, _wgslsmith_mult_u32(0u, 8952u)), 69044u));
    return ~firstTrailingBit(1u);
}

fn func_1() -> u32 {
    global0 = _wgslsmith_mult_vec4_i32(func_2(~(~vec2<u32>(4294967295u, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -465f)), -reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, global0.x, 2147483647i, global0.x), vec4<i32>(u_input.a.x, global0.x, 2147483647i, global0.x))) & vec4<i32>(-2147483647i, u_input.a.x, 11577i, 26716i));
    global0 = vec4<i32>(reverseBits(-_wgslsmith_mod_i32(2147483647i, global0.x)), global0.x, i32(-1i) * -u_input.a.x, -26904i);
    global1 = array<vec3<f32>, 10>();
    var var_0 = ~55157u >> (_wgslsmith_mod_u32(func_3(u_input.a), u_input.b) % 32u);
    let var_1 = 74345u;
    return ~(~(~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(Struct_1(false, select(true, (u_input.a.x <= -47322i) & all(vec2<bool>(global2.a.a, true)), false)), Struct_1(global2.a.a, true));
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.b, 19435u)) ^ ~(~vec2<u32>(4294967295u, u_input.b)), ~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b) & vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b, 7462u))), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b, 41633u) >> (vec2<u32>(u_input.b, 16321u) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 31464u), vec3<u32>(6439u, u_input.b, 39640u)), 4294967295u)));
    let var_2 = ~(~(~(vec4<u32>(0u, 22290u, u_input.b, 70651u) & (vec4<u32>(0u, u_input.b, u_input.b, 97845u) ^ vec4<u32>(u_input.b, u_input.b, 49199u, u_input.b)))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 452f)))), func_1());
    var var_4 = select(var_0, global0.x, any(!(!select(vec2<bool>(global2.b.b, global2.b.b), vec2<bool>(global2.a.b, global2.a.b), vec2<bool>(global2.b.a, false)))));
    var_4 = ~(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mod_u32(_wgslsmith_mult_u32(max(0u, 4318u), 76540u), var_3.b), 43206u));
}

