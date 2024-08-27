struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<f32>, 12>;

var<private> global2: i32;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = vec4<u32>(16586u, u_input.b, u_input.b, 1u);
    global1 = array<vec4<f32>, 12>();
    let var_1 = Struct_3(var_0.yz);
    global2 = u_input.a;
    var_0 = abs(~(vec4<u32>(u_input.b, ~var_1.a.x, _wgslsmith_mod_u32(u_input.b, 11294u), var_0.x) ^ vec4<u32>(var_1.a.x ^ var_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 57997u), vec2<u32>(1u, 31859u)), var_1.a.x | var_1.a.x, u_input.b >> (1u % 32u))));
    return 6562i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: f32) -> i32 {
    var var_0 = Struct_2(select(vec2<bool>(false, false), select(vec2<bool>(all(vec3<bool>(arg_2.x, false, false)), false), vec2<bool>(true, !arg_2.x), !arg_2), arg_2.x), vec4<f32>(arg_1.x, arg_3, arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), func_3(arg_3));
    var var_1 = !arg_2;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(arg_1.yz))));
    var var_3 = Struct_2(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(436f, _wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(max(-1172f, arg_3))))), var_0.b), _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 1i), select(vec2<i32>(u_input.a, -6690i) >> (arg_0.xy % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(u_input.a, 1i)), true), vec2<bool>(true, true)), _wgslsmith_clamp_vec2_i32(-firstTrailingBit(vec2<i32>(var_0.c, -2060i)), _wgslsmith_add_vec2_i32(vec2<i32>(27036i, -24773i), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2455i), vec2<i32>(var_0.c, 22314i))), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-30625i, u_input.a, u_input.a), vec3<i32>(2147483647i, var_0.c, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c, -15382i, 2147483647i, u_input.a), vec4<i32>(var_0.c, var_0.c, u_input.a, u_input.a))))));
    var_3 = Struct_2(select(vec2<bool>(false, true), arg_2, var_0.a), vec4<f32>(-2036f, var_3.b.x, _wgslsmith_f_op_f32(-var_2.x), var_3.b.x), ~(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, var_3.c), vec2<i32>(u_input.a, -6731i))) & u_input.a));
    return min(_wgslsmith_div_i32(abs(var_0.c) << (1u % 32u), u_input.a), var_3.c);
}

fn func_1() -> vec2<bool> {
    var var_0 = -13203i;
    var var_1 = ~abs(u_input.a) & _wgslsmith_div_i32(-func_2(vec4<u32>(0u, 4294967295u, u_input.b, u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(1096f, 576f, -581f) * vec3<f32>(418f, -194f, 373f)), vec2<bool>(true, true), _wgslsmith_div_f32(1253f, 848f)), u_input.a & _wgslsmith_div_i32(1i, 27672i << (u_input.b % 32u)));
    global1 = array<vec4<f32>, 12>();
    global1 = array<vec4<f32>, 12>();
    return select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(false, false, true)), true), vec2<bool>(true | all(vec4<bool>(false, false, false, false)), true)), !(!vec2<bool>(4294967295u > u_input.b, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 12>();
    var var_0 = func_1();
    var var_1 = _wgslsmith_mult_u32(reverseBits(4294967295u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(u_input.b ^ 54774u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(53414u, u_input.b))))) >= 1u;
    let var_2 = Struct_2(vec2<bool>(false, any(vec3<bool>(select(false, true, false), var_0.x, true))), global1[_wgslsmith_index_u32(u_input.b ^ countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, 0u, 45072u, 1u))), 12u)], u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(func_3(844f)), -_wgslsmith_clamp_i32(var_2.c ^ -1i, _wgslsmith_mult_i32(0i, var_2.c), -7415i), u_input.a));
}

