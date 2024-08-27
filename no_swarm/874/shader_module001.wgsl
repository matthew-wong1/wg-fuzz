struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(~u_input.b, 100f, min(~(u_input.d | ~72692u), _wgslsmith_sub_u32(~_wgslsmith_add_u32(1u, u_input.d), firstTrailingBit(u_input.a))), ~(~firstTrailingBit(vec4<u32>(u_input.c.x, 3730u, u_input.c.x, 22631u))));
    let var_1 = true;
    var var_2 = abs(-vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(64701i, var_0.a, u_input.b, -52391i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 39742i, 1i, u_input.b), vec4<i32>(u_input.b, 27563i, u_input.b, -3400i))), countOneBits(u_input.b | 25777i), var_0.a, -2147483647i));
    let var_3 = var_0;
    var var_4 = Struct_2(~reverseBits(vec2<i32>(-1i, min(var_0.a, var_3.a))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_0.a, 1i, 8547i, -8377i)), ~(~vec4<i32>(var_0.a, -2147483647i, -11148i, -13284i)) | vec4<i32>(-2147483647i, ~var_3.a, 61844i, var_2.x)), var_3, ~abs(_wgslsmith_mult_vec3_i32(var_2.wwy, ~vec3<i32>(-32969i, -1i, 2147483647i))));
    return vec3<bool>(var_1, false, !select(any(select(vec2<bool>(true, var_1), vec2<bool>(false, var_1), var_1)), true, any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, var_1, var_1, false), var_1))));
}

fn func_2() -> u32 {
    var var_0 = vec2<bool>(false, any(vec2<bool>(false, true & select(true, true, true))));
    var_0 = vec2<bool>(false, !var_0.x);
    var_0 = select(select(vec2<bool>(true, true), vec2<bool>(true, var_0.x && true), true), !(!vec2<bool>(!var_0.x, !var_0.x)), vec2<bool>(true, true | var_0.x));
    var_0 = vec2<bool>(!var_0.x, false);
    var var_1 = !select(!func_3(), vec3<bool>(true, true, var_0.x), !all(select(vec3<bool>(true, var_0.x, false), vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, true))));
    return ~countOneBits(~4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = ~9376i;
    var var_1 = _wgslsmith_mult_u32(u_input.d, 621u);
    let var_2 = arg_2.b;
    var var_3 = Struct_1(-(abs(u_input.b) & ((u_input.b | arg_2.d.x) ^ -29305i)), _wgslsmith_f_op_f32(1092f - _wgslsmith_div_f32(arg_1, 1876f)), _wgslsmith_div_u32(5954u, ~0u), arg_2.c.d);
    var var_4 = vec3<u32>(4292u, arg_0.d.x, 50306u);
    return !(!(!func_3().x));
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -424f, 504f, 767f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1814f, -881f, 761f, 1000f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1053f, -314f, 1578f, -2367f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-754f, 909f, 120f, -173f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 1167f, -1032f, -667f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1159f, -1000f, 411f, 1000f))))));
    let var_1 = !(!func_4(Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 7576i, u_input.b, -1i), vec4<i32>(56163i, u_input.b, 42075i, u_input.b)), _wgslsmith_f_op_f32(var_0.x + var_0.x), func_2(), vec4<u32>(0u, 0u, 8131u, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1328f)) - -798f), Struct_2(firstLeadingBit(vec2<i32>(-2147483647i, u_input.b)), u_input.b, Struct_1(33677i, -245f, u_input.a, vec4<u32>(u_input.a, u_input.a, 85037u, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - var_0.x);
}

fn func_5(arg_0: vec3<f32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-arg_0.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -23179i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1252f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_5(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -149f), -748f)), -242f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1753f, 843f) + vec2<f32>(-1000f, -494f)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1043f, -240f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, -164f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1800f, 1491f))), _wgslsmith_div_vec2_f32(vec2<f32>(-999f, -180f), vec2<f32>(810f, -204f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2282f, 447f)))), vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -165f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, _wgslsmith_f_op_f32(767f * _wgslsmith_f_op_f32(f32(-1f) * -1279f)))));
}

