struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1() -> vec4<u32> {
    global1 = array<vec3<bool>, 23>();
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(4294967295u, 30631u)), vec2<u32>(33861u, 0u) >> ((vec2<u32>(u_input.b, 36298u) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))), 4294967295u, select(~38041u << (~4294967295u % 32u), _wgslsmith_mult_u32(43353u, u_input.b), true)), ~reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(u_input.b, u_input.b, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(27236u, u_input.b, u_input.b), vec3<u32>(85u, 4294967295u, u_input.b)))));
    let var_1 = u_input.c.x;
    global1 = array<vec3<bool>, 23>();
    let var_2 = u_input.c.x;
    return ~(~vec4<u32>(u_input.b, u_input.b, ~abs(12596u), u_input.b));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec2<i32>(-31380i, -_wgslsmith_dot_vec4_i32(min(~u_input.c, vec4<i32>(44986i, u_input.c.x, u_input.a, u_input.a) >> (vec4<u32>(u_input.b, arg_1.b, 1u, 6374u) % vec4<u32>(32u))), firstTrailingBit(abs(u_input.c))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-619f - -1381f), _wgslsmith_f_op_f32(round(1f)));
    let var_2 = true;
    var var_3 = vec2<i32>(29779i, i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(37059i, u_input.c.x, u_input.a), vec3<i32>(20733i, u_input.c.x, var_0.x)), _wgslsmith_mult_i32(1i, -69052i)));
    global1 = array<vec3<bool>, 23>();
    return !any(!(!vec2<bool>(false, arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b > ~(~104359u);
    global0 = _wgslsmith_f_op_f32(448f + -581f);
    var_0 = false;
    var var_1 = func_2(false, Struct_1(vec4<u32>(46700u, ~countOneBits(0u), u_input.b, 0u & u_input.b), u_input.b), Struct_1(~func_1(), ~u_input.b >> (_wgslsmith_add_u32(27486u, 79614u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-219f)) * -407f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-384f, 1000f))), -583f))), _wgslsmith_mult_vec2_u32((~vec2<u32>(u_input.b, 4294967295u) >> (reverseBits(vec2<u32>(u_input.b, 37340u)) % vec2<u32>(32u))) ^ vec2<u32>(min(u_input.b, 4294967295u), firstLeadingBit(u_input.b)), func_1().zz));
}

