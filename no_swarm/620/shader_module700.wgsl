struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> bool {
    return false;
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1326f, 565f)), arg_0.x) - 1066f) < _wgslsmith_f_op_f32(-arg_0.x);
    let var_1 = Struct_2(arg_0, abs(~firstLeadingBit(vec4<u32>(1u, 95853u, 1u, 1u))), firstTrailingBit(~(~0u)), ~_wgslsmith_sub_u32(1u, ~max(4294967295u, 0u)), u_input.b.x ^ 1i);
    global0 = array<vec3<f32>, 15>();
    return min(var_1.b.x, _wgslsmith_add_u32(~var_1.c | var_1.b.x, ~64566u & var_1.d));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(18148u, min(1u, 586u), _wgslsmith_dot_vec4_u32(vec4<u32>(51383u, 49521u, 38322u, 1u), vec4<u32>(13847u, 0u, 43484u, 69690u))), vec3<u32>(~49092u, ~63929u, 36772u)), vec3<u32>(1u, 1u, 1u)), 21420u);
    global0 = array<vec3<f32>, 15>();
    let var_1 = vec2<bool>(true, func_2());
    let var_2 = Struct_1(arg_0.a);
    var_0 = 0u;
    return _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.x, ~var_2.a.x >> (func_3(vec3<f32>(575f, arg_1, 373f)) % 32u), _wgslsmith_sub_i32(-var_2.a.x, 1i ^ arg_0.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.x, _wgslsmith_mult_i32(arg_0.a.x, u_input.a.x), _wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x)), countOneBits(vec3<i32>(arg_0.a.x, arg_0.a.x, -2147483647i)))) << (vec3<u32>(min(~(~1u), max(min(1u, 1u), 6208u)), 1u, _wgslsmith_mod_u32(1u, abs(reverseBits(1u)))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = Struct_1(func_1(Struct_1(~u_input.c.yxw), _wgslsmith_f_op_f32(exp2(1f))));
    global0 = array<vec3<f32>, 15>();
    let var_2 = Struct_1(u_input.a);
    var var_3 = select(vec3<i32>(i32(-1i) * -u_input.b.x, ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(7760i, var_1.a.x), vec2<i32>(var_1.a.x, 1i))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.a, u_input.a), -50895i)), ~_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(u_input.b.x, u_input.c.x, 2147483647i)), -var_2.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1579f - _wgslsmith_f_op_f32(round(-1882f))), 1489f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1061f, -127f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-699f * -794f))))), vec2<i32>(47680i, 1i));
}

