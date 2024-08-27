struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32) -> bool {
    var var_0 = -select(25068i, 22962i, false);
    var var_1 = Struct_3(Struct_1(2147483647i, select(vec3<bool>(true, true, all(vec3<bool>(false, false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), true), vec3<bool>(true, select(true, false, true), false)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2075f, 991f) - _wgslsmith_f_op_f32(106f + -766f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(326f))))), ~41308u, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, arg_1, min(arg_1, arg_1)), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.d, arg_1, -3374i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-38792i, 1i, -1i), vec3<i32>(u_input.d, -16029i, arg_1), vec3<i32>(25767i, arg_1, -20458i))))));
    var var_2 = Struct_4(~4294967295u);
    let var_3 = vec4<i32>(-55466i, firstLeadingBit(-arg_1), select(_wgslsmith_mod_i32(u_input.d, u_input.b), ~(-12732i), (arg_1 << (76743u % 32u)) == ~8594i) << (_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 72193u), ~countOneBits(var_2.a)) % 32u), 18727i);
    var var_4 = u_input.c.wz;
    return true;
}

fn func_2(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = -1000f;
    let var_1 = _wgslsmith_f_op_f32(var_0 + var_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_1))), vec2<f32>(var_1, -1540f), func_3(u_input.a, arg_0.x)))))) * vec2<f32>(_wgslsmith_f_op_f32(var_1 * var_0), _wgslsmith_f_op_f32(sign(var_0))));
    let var_3 = _wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.a.x, 0u, firstTrailingBit(u_input.c.x)), abs(u_input.a), true), ~(~vec3<u32>(u_input.a.x, 1u, 1u)), vec3<u32>(~u_input.c.x, _wgslsmith_mult_u32(39997u, abs(u_input.a.x)), u_input.c.x)) ^ vec3<u32>(4294967295u | max(4294967295u, firstTrailingBit(u_input.a.x)), ~(~39450u), ~_wgslsmith_div_u32(~0u, u_input.c.x));
    var var_4 = min(vec3<i32>(arg_0.x, -_wgslsmith_mod_i32(-2147483647i, arg_0.x), abs(u_input.b)), -select(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.x, 2147483647i, u_input.b), vec3<i32>(1i, u_input.d, 35873i)), vec3<i32>(arg_0.x, reverseBits(0i), 1i), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))));
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, var_0, var_0, 649f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2111f, -526f, -565f, 468f))))), vec4<f32>(var_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1353f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - 304f) - 875f))), _wgslsmith_f_op_f32(round(-1216f)), _wgslsmith_f_op_f32(1f * -1529f))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(~max(vec2<i32>(-1i, 1354i), vec2<i32>(10557i, -1i))))))));
    let var_1 = vec3<i32>(u_input.b, 2073i, u_input.d);
    let var_2 = Struct_3(Struct_1(-27738i, !arg_2.xxx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-113f, 159f, 1170f) + arg_1)))), u_input.c.x, vec3<i32>(abs(_wgslsmith_add_i32(arg_0, 1i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, 336i), -var_1.x), ~(-28110i >> (0u % 32u)))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_2(select(var_1.zx, var_2.a.e.zx, arg_2.zx)));
    var_0 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -711f)))), _wgslsmith_div_f32(1940f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), -2329f, 1208f);
    return StorageBuffer(var_2.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-(i32(-1i) * -u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, 459f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-816f, -1032f, 1000f) - vec3<f32>(-1485f, -355f, 1810f)), vec3<bool>(true, true, true))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(173f, _wgslsmith_f_op_f32(f32(-1f) * -449f), 527f))), select(vec4<bool>(!any(vec4<bool>(true, false, false, true)), any(vec3<bool>(true, false, false)), false, true), vec4<bool>(true, true, true, true), true));
}

