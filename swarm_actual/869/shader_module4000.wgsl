struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = 1i;
    let var_1 = !((all(vec3<bool>(true, true, true)) & (1u <= u_input.a.x)) && all(vec4<bool>(true, true, false, -536f == arg_0.b)));
    var var_2 = Struct_1(46998u, _wgslsmith_f_op_f32(exp2(arg_1.b)), _wgslsmith_div_i32(countOneBits(1i >> (arg_1.a % 32u)), _wgslsmith_mod_i32(u_input.b, i32(-1i) * -71184i)));
    var var_3 = Struct_1(58757u, arg_2.b, max(var_2.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2147483647i) ^ vec2<i32>(4024i, arg_1.c), u_input.d.xy)));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(floor(330f)), 657f, 562f, _wgslsmith_div_f32(arg_1.b, var_3.b))))));
    return vec4<bool>(var_1, true, var_1, (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(194f)))) == var_4.x) | false);
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<i32>) -> u32 {
    var var_0 = vec4<bool>(true, true, true, true);
    let var_1 = Struct_1(20698u, 183f, -(-7672i << (u_input.a.x % 32u)));
    var_0 = select(select(!vec4<bool>(var_0.x && true, false, !var_0.x, false), vec4<bool>(var_0.x, var_0.x, any(!vec2<bool>(var_0.x, true)), var_0.x), true), func_3(Struct_1(131090u, 1f, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1.c, -1i), _wgslsmith_mult_i32(u_input.c.x, 1i))), Struct_1(2947u, var_1.b, u_input.c.x | -arg_2.x), var_1), func_3(var_1, Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_0.x, u_input.a.x, u_input.e) & vec4<u32>(var_1.a, 53133u, 1u, arg_1), ~vec4<u32>(u_input.a.x, u_input.e, 0u, u_input.e)), var_1.b, -var_1.c), var_1).x);
    var var_2 = var_1;
    var var_3 = vec4<i32>(1i ^ (arg_2.x ^ firstTrailingBit(0i)), ~2147483647i, (arg_2.x << (~min(76778u, 4294967295u) % 32u)) & -3240i, 1i);
    return _wgslsmith_div_u32(countOneBits(19709u), ~((u_input.a.x | 1u) >> (_wgslsmith_sub_u32(abs(25799u), 1u) % 32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 1f))))));
    let var_1 = 23888i;
    var var_2 = ~abs(-(~1i)) | (2859i >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.xz), u_input.e) % 32u));
    var var_3 = Struct_1(select(~func_2(u_input.a, 1u, vec2<i32>(var_1, var_1)), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a & vec3<u32>(u_input.e, 5342u, u_input.e)), true) << (abs(u_input.e) % 32u), 1f, 91063i);
    var var_4 = Struct_1(countOneBits(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, 0u, 4294967295u, var_3.a), ~vec4<u32>(0u, 1u, u_input.a.x, var_3.a)))), _wgslsmith_f_op_f32(trunc(var_0)), 43180i);
    return Struct_1(1u, var_0, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(reverseBits(firstLeadingBit(u_input.a.x)));
    var var_1 = Struct_1(countOneBits(4294967295u), -356f, -_wgslsmith_add_i32(u_input.c.x, abs(-u_input.d.x)));
    var var_2 = vec2<bool>(true, true);
    let var_3 = func_1();
    let var_4 = !vec2<bool>(!(_wgslsmith_f_op_f32(-var_3.b) > _wgslsmith_f_op_f32(var_3.b - 527f)), any(select(!vec4<bool>(false, var_2.x, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x)), all(vec3<bool>(var_2.x, false, false)))));
    let var_5 = -6185i;
    let var_6 = _wgslsmith_mod_vec4_u32(select(~vec4<u32>(1u, 55310u, 1u, 0u), ~min(vec4<u32>(u_input.e, 4294967295u, 0u, var_0), vec4<u32>(65897u, var_3.a, var_1.a, var_1.a)), true) ^ select(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0, var_3.a, 18572u, 4294967295u), vec4<u32>(4812u, var_3.a, 0u, 28551u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0, var_3.a, var_0, 64896u), vec4<u32>(58825u, 46046u, 1u, 12912u))), ~firstTrailingBit(vec4<u32>(59393u, 33969u, 4294967295u, 52066u)), false), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, var_0, 0u, var_1.a)), ~vec4<u32>(32271u, var_0, var_1.a, 36316u)), select(~vec4<u32>(u_input.e, var_0, u_input.e, 1u), ~vec4<u32>(24935u, 4294967295u, 4294967295u, var_1.a), select(vec4<bool>(false, var_4.x, true, var_4.x), vec4<bool>(var_2.x, var_2.x, false, true), vec4<bool>(false, var_2.x, var_4.x, true)))));
    var_2 = vec2<bool>(false, false);
    let var_7 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_1().c, -1i, min(-22545i, _wgslsmith_sub_i32(abs(var_3.c), ~var_5))), vec3<i32>(-2147483647i, -1i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_1.b, -389f)), _wgslsmith_f_op_f32(-var_3.b))), _wgslsmith_f_op_f32(1425f - 1334f), var_6.x, var_7.x);
}

