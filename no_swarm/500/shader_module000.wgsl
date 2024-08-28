struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> Struct_2 {
    var var_0 = 1460f;
    let var_1 = Struct_1(_wgslsmith_mult_u32(min(_wgslsmith_mult_u32(~1u, _wgslsmith_div_u32(55428u, u_input.d.x)), u_input.d.x), max(_wgslsmith_clamp_u32(u_input.b, 36u, u_input.e), ~u_input.e) ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.b), vec3<u32>(u_input.e, u_input.b, u_input.d.x)) >> (_wgslsmith_div_u32(4294967295u, 7864u) % 32u))));
    return Struct_2(var_1);
}

fn func_1() -> u32 {
    let var_0 = func_2();
    let var_1 = func_2();
    let var_2 = ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(66062u, var_0.a.a, 1u, var_1.a.a), vec4<u32>(var_0.a.a, u_input.d.x, 40803u, 16414u)), select(vec4<u32>(var_0.a.a, var_0.a.a, 6148u, var_0.a.a), vec4<u32>(40195u, 1u, var_0.a.a, u_input.b), false)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(u_input.b, 2243u, 70118u, u_input.d.x), false), vec4<u32>(var_0.a.a, 1u, 4294967295u, u_input.b))));
    let var_3 = 67612u;
    global0 = array<Struct_2, 26>();
    return (var_3 | (4294967295u >> (~4294967295u % 32u))) >> (_wgslsmith_div_u32(u_input.e, ~func_2().a.a) % 32u);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: u32, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_2(func_2().a);
    var var_1 = Struct_1(31382u);
    var_1 = var_0.a;
    global0 = array<Struct_2, 26>();
    let var_2 = firstLeadingBit(_wgslsmith_div_vec2_u32(arg_3.zx, ~(u_input.d << (~u_input.d % vec2<u32>(32u)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(func_1()));
    let var_1 = ~func_3(vec4<f32>(305f, -1985f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1018f + 1000f) + _wgslsmith_f_op_f32(-974f * -1918f)), _wgslsmith_div_f32(467f, 940f)), -1901f, u_input.d.x, countOneBits(vec3<u32>(~var_0.a.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.a.a), u_input.d), u_input.d.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -128f, -1505f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1096f, 2322f, 1000f) + vec3<f32>(-506f, -313f, 164f))), vec3<f32>(1943f, _wgslsmith_f_op_f32(max(376f, 1007f)), -2221f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-949f, 440f, 952f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1208f, 682f, 1467f) + vec3<f32>(-1501f, -292f, -408f)))))))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(-455f, -1000f), -1008f)));
    let var_3 = u_input.b;
    let var_4 = _wgslsmith_sub_vec2_i32(abs(-vec2<i32>(71497i, _wgslsmith_add_i32(-11261i, -1i))), vec2<i32>(max(u_input.c, _wgslsmith_mult_i32(25265i, ~u_input.a)), _wgslsmith_sub_i32(~countOneBits(u_input.c), u_input.a)));
    global0 = array<Struct_2, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2, var_2);
}

