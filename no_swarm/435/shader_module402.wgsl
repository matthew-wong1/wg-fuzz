struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    var var_0 = 104771u;
    var var_1 = true;
    let var_2 = ~26035u;
    var var_3 = arg_0;
    let var_4 = 2147483647i;
    return 53214u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_1(arg_0.a);
    let var_1 = vec2<u32>(func_3(arg_1, vec3<u32>(_wgslsmith_div_u32(30905u, 4294967295u), 1u, reverseBits(19338u)), u_input.a << (1u % 32u)) << (min(func_3(Struct_1(arg_1.a), reverseBits(vec3<u32>(4294967295u, 0u, 593u)), _wgslsmith_mult_i32(-44377i, u_input.a)), reverseBits(1u)) % 32u), select(~firstLeadingBit(9680u), _wgslsmith_mult_u32(countOneBits(~4294967295u), func_3(Struct_1(arg_3.a), vec3<u32>(87432u, 1u, 0u), u_input.a) << (firstLeadingBit(0u) % 32u)), true != (679f == _wgslsmith_f_op_f32(arg_0.a.x * var_0.a.x))));
    let var_2 = arg_3;
    var var_3 = arg_0;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-859f))), 127f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a.x - arg_1.a.x), 244f, any(vec2<bool>(true, true)))));
    return u_input.a;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(-func_2(Struct_1(vec4<f32>(595f, 639f, -382f, 389f)), Struct_1(vec4<f32>(327f, -1290f, 994f, -1463f)), Struct_1(vec4<f32>(285f, -1376f, -452f, -342f)), Struct_1(vec4<f32>(-280f, -371f, 1208f, -775f))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 43438i, -31721i, u_input.a) << (vec4<u32>(4294967295u, 1u, 1u, 4294967295u) % vec4<u32>(32u)), vec4<i32>(u_input.a, -15161i, -1i, u_input.a)), i32(-1i) * -u_input.a, u_input.a), ~_wgslsmith_add_vec4_i32(~reverseBits(vec4<i32>(u_input.a, 16249i, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, -725i, 28202i, 25158i)));
    let var_1 = var_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1044f, 1000f, -345f, -1635f)) + _wgslsmith_div_vec4_f32(vec4<f32>(1438f, -1018f, 858f, -895f), vec4<f32>(542f, 1924f, 2034f, 1212f))))));
    var var_3 = 112601u;
    var var_4 = var_2.a.x;
    return 14802u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(26124u, 0u, 4294967295u, 4294967295u)), vec4<u32>(~0u, ~_wgslsmith_sub_u32(4294967295u, 0u), ~(~1u), 1u | func_1())), ~(~_wgslsmith_mod_u32(~4294967295u, 30123u)));
    var var_1 = ~(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, 2147483647i, u_input.a, -2147483647i)), max(vec4<i32>(-52236i, u_input.a, -1329i, 2147483647i), vec4<i32>(1i, -1i, -32124i, u_input.a))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(39338u, var_0, 0u, var_0), vec4<u32>(46794u, var_0, 0u, 8113u)) % vec4<u32>(32u))) << (abs(~vec4<u32>(var_0, 57834u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(var_0, 61029u)), var_0)) % vec4<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-683f, 796f)), _wgslsmith_f_op_f32(ceil(554f)))), -286f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2096f)) - _wgslsmith_f_op_f32(-1364f + 1333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1058f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(43740u, var_0, 1u, ~var_0)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x)) - -2550f) + var_2.a.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(910f, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(-var_2.a.x)), _wgslsmith_f_op_f32(trunc(805f))), vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1929f)) - _wgslsmith_f_op_f32(sign(var_2.a.x))), var_2.a.x))), vec3<u32>(~var_0, var_0, ~var_0));
}

