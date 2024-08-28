struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    let var_0 = u_input.e;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-136f)), -1191f, -1000f))));
    return true;
}

fn func_2(arg_0: Struct_5) -> vec3<bool> {
    let var_0 = Struct_2(!vec4<bool>(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) == u_input.c.x, true, any(vec3<bool>(false, true, true)) && true, func_3()));
    let var_1 = select(var_0.a.zxz, var_0.a.yzz, false);
    var var_2 = Struct_1(max(u_input.d.x, max(42851u, ~0u)), vec4<u32>(4294967295u, _wgslsmith_mult_u32(min(0u, u_input.c.x), firstLeadingBit(u_input.c.x)) & (abs(u_input.c.x) & 22504u), u_input.d.x, firstTrailingBit(~u_input.d.x)), vec4<f32>(_wgslsmith_f_op_f32(abs(-504f)), _wgslsmith_f_op_f32(-1349f + _wgslsmith_f_op_f32(f32(-1f) * -1100f)), -561f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-556f - 1f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2455f * -1000f)))))), arg_0.a, _wgslsmith_sub_i32(-reverseBits(countOneBits(u_input.a)), _wgslsmith_mult_i32(_wgslsmith_div_i32(abs(57133i), ~1i), arg_0.a)));
    var_2 = Struct_1(u_input.c.x, select(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(0u, 0u, 0u, 34516u)), select(var_2.b, var_2.b, var_0.a.x)), ~select(vec4<u32>(u_input.c.x, 97661u, 0u, 2856u), var_2.b, false), !select(var_0.a, var_0.a, var_1.x)) ^ ~(~vec4<u32>(u_input.c.x, u_input.d.x, 45558u, 1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, var_2.c.x) * var_2.c) - var_2.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1122f + -1116f), _wgslsmith_f_op_f32(var_2.c.x * var_2.c.x), _wgslsmith_f_op_f32(floor(var_2.c.x)), _wgslsmith_f_op_f32(var_2.c.x + -1022f)))), _wgslsmith_mult_i32(~arg_0.a, -u_input.b), -select(var_2.d, select(var_2.d, _wgslsmith_dot_vec2_i32(u_input.e.yx, vec2<i32>(arg_0.a, arg_0.a)), var_2.d == arg_0.a), true));
    var var_3 = !var_0.a.x || !var_1.x;
    return !var_1;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = !(!func_2(Struct_5(~u_input.e.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1519f * -1859f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1027f)) - _wgslsmith_f_op_f32(-161f * 1091f))), _wgslsmith_f_op_f32(abs(-1076f)))) * -471f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1315f, 793f, 1106f, -1207f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1205f, -1410f, 198f, 553f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-396f, -1114f, -939f, -383f), vec4<f32>(-135f, 155f, -1004f, 1000f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1141f, _wgslsmith_div_f32(1626f, -128f), _wgslsmith_f_op_f32(func_1(u_input.a)), _wgslsmith_f_op_f32(min(-1124f, 1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1043f, -179f, -1000f, 1206f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(531f, -434f, 574f, 1000f))))), !select(all(vec4<bool>(true, true, true, true)), true, false)));
    let var_1 = vec4<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-229f - 571f)) <= _wgslsmith_f_op_f32(func_1(u_input.a))) != func_2(Struct_5(-u_input.e.x)).x, true, func_2(Struct_5(reverseBits(u_input.e.x))).x, all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, false, false), true)) || any(vec3<bool>(all(vec2<bool>(false, true)), false, func_3())));
    let var_2 = Struct_2(select(var_1, var_1, select(var_1, vec4<bool>(true, true, any(var_1.xxz), true && var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, true, var_1.x, var_1.x), !vec4<bool>(var_1.x, false, var_1.x, true)))));
    let var_3 = reverseBits(52457u);
    var var_4 = var_2;
    var_4 = var_2;
    var_4 = Struct_2(!var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, u_input.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(max(var_0, var_0))) * vec4<f32>(_wgslsmith_f_op_f32(var_0.x + -404f), _wgslsmith_f_op_f32(floor(-136f)), _wgslsmith_f_op_f32(step(-2159f, var_0.x)), -1479f)))), var_3);
}

