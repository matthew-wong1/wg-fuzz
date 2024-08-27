struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> vec3<bool> {
    var var_0 = -(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(-27110i, 1i)) << (~_wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(0u, u_input.b.x)) % 32u));
    let var_1 = vec4<bool>(u_input.a > ((~(-2147483647i) & ~arg_0) ^ min(firstTrailingBit(-90434i), 2147483647i)), true, global0.x, global0.x);
    return vec3<bool>(var_1.x, !(_wgslsmith_dot_vec4_i32(-u_input.c, -vec4<i32>(-19074i, u_input.a, -51799i, 2147483647i)) <= arg_0), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.b, ~u_input.b), vec2<u32>(u_input.b.x, u_input.b.x)) >= reverseBits(u_input.b.x));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> bool {
    let var_0 = arg_0;
    var var_1 = Struct_3(~var_0.b, u_input.a);
    let var_2 = func_3(var_0.b);
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(~var_1.a, -6901i, -1i), vec3<i32>(u_input.c.x, firstLeadingBit(firstTrailingBit(var_1.b)), 32577i)) & -u_input.c.zwx;
    var var_4 = var_2.x;
    return !(!any(!var_2));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: i32) -> u32 {
    var var_0 = vec2<bool>(true, !func_2(Struct_3(max(arg_1, -1i), arg_2), 8736u));
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_2 = Struct_4(arg_1 | 1i, u_input.b);
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0, vec2<f32>(224f, arg_0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1408f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(1000f, arg_0.x), _wgslsmith_f_op_f32(-2252f + -165f), -1103f, _wgslsmith_f_op_f32(round(265f)))))), vec4<i32>(_wgslsmith_div_i32(-1i, ~2147483647i), _wgslsmith_add_i32(arg_2, _wgslsmith_div_i32(~u_input.c.x, _wgslsmith_sub_i32(var_2.a, 2147483647i))), 8226i, ~min(arg_1 >> (u_input.b.x % 32u), var_2.a)), false, var_2.b.x);
    var var_4 = global0.x;
    return _wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2.b.x, 0u, var_2.b.x, countOneBits(var_2.b.x))), ~vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_3.e, u_input.b.x), vec3<u32>(var_2.b.x, 0u, 4294967295u)), 0u, 1u, _wgslsmith_div_u32(44085u ^ var_3.e, 75935u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.b;
    let var_1 = (u_input.c.x & (u_input.a >> (var_0.x % 32u))) ^ -_wgslsmith_mod_i32(u_input.a, u_input.a);
    let var_2 = vec2<bool>(global0.x, !(!(global0.x | all(vec3<bool>(false, true, false)))));
    let var_3 = Struct_4(~(-u_input.c.x), _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(func_1(vec2<f32>(1096f, 807f), 0i, u_input.a), ~996u)), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b), vec2<u32>(var_0.x, 38530u)), ~u_input.b)));
    var var_4 = max(abs(-(_wgslsmith_sub_i32(var_3.a, var_1) & u_input.a)), var_3.a);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-965f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(abs(~_wgslsmith_sub_u32(4294967295u, var_3.b.x)), abs(_wgslsmith_mod_u32(var_0.x, 1u)), var_0.x), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(28617u, var_3.b.x, var_3.b.x), vec3<u32>(firstLeadingBit(4294967295u), ~4294967295u, 1u)), _wgslsmith_clamp_vec3_u32(select(min(vec3<u32>(31014u, var_0.x, 7645u), vec3<u32>(var_0.x, var_0.x, var_3.b.x)), ~vec3<u32>(1u, var_0.x, var_0.x), vec3<bool>(true, true, true)), vec3<u32>(countOneBits(0u), var_3.b.x, ~15789u), ~(~vec3<u32>(u_input.b.x, 1u, var_0.x)))));
}

