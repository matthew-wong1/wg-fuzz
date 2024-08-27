struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_5, arg_1: f32) -> f32 {
    let var_0 = true | arg_0.a.e.x;
    let var_1 = Struct_4(select(!vec3<bool>(all(arg_0.a.d.a.b), !arg_0.a.e.x, false), !vec3<bool>(arg_0.a.e.x && false, true, !arg_0.a.a.x), ~u_input.a.x > 4284i), arg_0.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.b.xw, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_0.a.c.x) * arg_0.a.d.a.a.zx))) * arg_0.a.c), arg_0.a.d, vec2<bool>(~u_input.a.x < u_input.a.x, var_0));
    let var_2 = _wgslsmith_add_vec2_u32(arg_0.a.d.c.xz, arg_0.a.d.c.zz);
    let var_3 = Struct_5(Struct_4(arg_0.a.d.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a.b - arg_0.a.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -472f), arg_0.a.d.a.a.xx)))), Struct_3(Struct_2(vec3<f32>(-1000f, -1000f, 3003f), !vec3<bool>(true, true, arg_0.a.d.a.b.x), any(vec4<bool>(var_1.e.x, var_0, true, true))), 1i, min(min(arg_0.a.d.c, vec3<u32>(1316u, 45858u, var_2.x)), u_input.c.zzw)), !vec2<bool>(!var_1.a.x, arg_0.a.b.x >= 353f)));
    let var_4 = var_3.a.d.a;
    return var_3.a.b.x;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_4(vec3<bool>(true, true, true), vec4<f32>(1286f, -1446f, 352f, 1000f), vec2<f32>(-1435f, -1238f), Struct_3(Struct_2(vec3<f32>(-1512f, 638f, 333f), vec3<bool>(false, false, true), false), 0i, u_input.c.wzw), vec2<bool>(false, false))), _wgslsmith_f_op_f32(1138f * -1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(~_wgslsmith_add_i32(0i & u_input.a.x, u_input.a.x), firstLeadingBit(u_input.a.x << ((0u & u_input.c.x) % 32u))), ~(-3324i));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3(Struct_5(Struct_4(vec3<bool>(false, false, true), vec4<f32>(-352f, 1037f, var_0.x, 1067f), vec2<f32>(var_0.x, 977f), Struct_3(Struct_2(vec3<f32>(-535f, var_0.x, var_0.x), vec3<bool>(false, true, false), true), -2147483647i, vec3<u32>(arg_0, arg_0, arg_0)), vec2<bool>(false, false))), -719f))))))), !select(vec3<bool>(true, true, true), vec3<bool>(false, any(vec3<bool>(false, false, false)), true), true), all(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))));
    let var_3 = !vec3<bool>(!var_2.b.x, true, 23221i <= _wgslsmith_add_i32(u_input.a.x, reverseBits(u_input.a.x)));
    var_1 = u_input.a.x;
    return -(i32(-1i) * -_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -29971i, 0i, -46856i), vec4<i32>(-1i, 0i, -2147483647i, u_input.a.x))));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(arg_2.a.a.x, _wgslsmith_f_op_f32(round(-464f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.a.x + arg_2.a.a.x), 1f, arg_2.a.a.x, -210f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a.a.x), -321f) + vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x * var_0))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.a.a.x, arg_3)))))));
    return arg_2.a;
}

fn func_1() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(252f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-854f, -1653f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1649f + 711f) * _wgslsmith_f_op_f32(1899f + -1553f))), !(_wgslsmith_div_u32(34847u, u_input.d) > u_input.c.x)))));
    let var_1 = -1267i;
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_f_op_f32(-var_0.x);
    var var_4 = func_4(~1i, countOneBits(4294967295u), Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(var_0.zww + _wgslsmith_f_op_vec3_f32(-var_0.zww)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false), true), firstTrailingBit(func_2(_wgslsmith_sub_u32(u_input.c.x, u_input.b))), firstTrailingBit(~vec3<u32>(17935u, 1u, u_input.b))), -886f);
    return firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.b, 4294967295u, u_input.c.x, u_input.b)) | (vec4<u32>(u_input.d, 0u, u_input.c.x, u_input.d) | vec4<u32>(4294967295u, u_input.c.x, 33078u, 4294967295u)), countOneBits(~u_input.c), abs(firstTrailingBit(u_input.c)))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.wy, u_input.c.zy), ~36253u, u_input.b, 4294967295u), vec4<u32>(0u, u_input.b, 83662u, u_input.c.x), ~(~u_input.c)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.c, abs(~func_1()), !(!(u_input.a.x != 59968i)) | all(vec3<bool>(true, true, true)));
    var_0 = u_input.c;
    var var_1 = Struct_4(vec3<bool>(any(vec2<bool>(true, true)), true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(115f, -587f, 823f, 756f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1133f, 1883f, 692f, 619f)))))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-1481f * _wgslsmith_f_op_f32(f32(-1f) * -830f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-445f, 1341f, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1437f - 726f), 1560f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(259f, -371f) + vec2<f32>(231f, -347f)))))), Struct_3(func_4(u_input.a.x, ~u_input.c.x, Struct_3(func_4(u_input.a.x, 4294967295u, Struct_3(Struct_2(vec3<f32>(-196f, 296f, -670f), vec3<bool>(true, true, false), true), u_input.a.x, u_input.c.xww), 884f), 1i, ~vec3<u32>(4294967295u, u_input.d, 0u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(375f)), -887f))), u_input.a.x, vec3<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.c), vec4<u32>(u_input.d, u_input.c.x, 32492u, 13915u)), ~select(var_0.x, u_input.c.x, true), 7017u)), vec2<bool>(all(vec3<bool>(true, true, true)), false));
    var var_2 = -1000f;
    let var_3 = -591f;
    let x = u_input.a;
    s_output = StorageBuffer(~41656u, var_1.d.b & ((_wgslsmith_clamp_i32(u_input.a.x, 191i, var_1.d.b) ^ (12839i << (u_input.c.x % 32u))) ^ var_1.d.b));
}

