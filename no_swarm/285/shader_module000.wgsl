struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    let var_0 = Struct_1(0u, _wgslsmith_add_i32(0i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.e.xx, -u_input.e.xx), abs(_wgslsmith_sub_i32(u_input.e.x, arg_0.b)))), select(!vec4<bool>(arg_0.c.x, true, true, true), !vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x), !select(select(arg_0.c, arg_0.c, false), arg_0.c, arg_0.c)), 23106u, arg_0.e);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-1054f, 207f)))) * -869f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-355f, 1371f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1365f + -1493f), _wgslsmith_f_op_f32(f32(-1f) * -312f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(910f)), _wgslsmith_f_op_f32(abs(1352f)))) - -1440f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1162f * 478f), -791f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1292f))));
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mult_u32(55968u, reverseBits(max(var_0.d, 4294967295u))) << ((~firstTrailingBit(u_input.c.x) >> (96027u % 32u)) % 32u), var_0.a);
    var var_3 = var_1.yx;
    let var_4 = min(u_input.d, _wgslsmith_mult_u32(~u_input.d, countOneBits(u_input.d)) & ~_wgslsmith_add_u32(var_2, 12438u));
    return arg_0.e;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, 1u), u_input.c.x), u_input.e.x, vec4<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(u_input.a >= u_input.c.x, true)), all(vec3<bool>(false, true, true))), u_input.c.x, func_3(Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.a), u_input.c.yx), 4294967295u & u_input.c.x), -2147483647i, vec4<bool>(true, true, true, true), ~(u_input.d ^ 4294967295u), vec4<u32>(u_input.a ^ 0u, u_input.c.x, ~4294967295u, u_input.d ^ u_input.d))));
    var var_1 = -146f;
    let var_2 = u_input.a >> (firstTrailingBit(var_0.a) % 32u);
    let var_3 = var_0;
    let var_4 = var_3;
    return var_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = vec4<f32>(1f, 1f, 1f, 1f);
    let var_1 = func_2(u_input.e);
    var var_2 = ~(-28543i);
    var_2 = ~(-1i);
    var var_3 = var_0.wx;
    return arg_1.c;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-459f, 257f)))) - -389f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-247f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))));
    let var_1 = vec4<u32>(~(~_wgslsmith_clamp_u32(arg_2, 10941u, u_input.c.x)), arg_2, firstLeadingBit(select(min(10983u, u_input.d), max(u_input.d, 4294967295u), func_2(vec3<i32>(u_input.e.x, arg_3, 37804i)).c.x)), _wgslsmith_dot_vec3_u32(u_input.c.www, countOneBits(vec3<u32>(4294967295u, arg_2, 4294967295u)))) & (vec4<u32>(~4294967295u, 9357u, ~func_3(Struct_1(u_input.c.x, -2147483647i, arg_1.c, 34627u, u_input.c)).x, 56372u) | select(~vec4<u32>(u_input.a, u_input.a, 60119u, 9987u), ~(u_input.c | u_input.c), arg_1.c.x));
    var var_2 = Struct_1(~45261u, ~(-(i32(-1i) * -54258i)), !select(arg_1.d, select(arg_1.d, !vec4<bool>(false, arg_1.d.x, arg_0, arg_0), select(arg_1.d, vec4<bool>(arg_0, arg_0, arg_0, false), arg_0)), vec4<bool>(arg_1.d.x, true, true, arg_0)), abs(~4294967295u), u_input.c);
    var_2 = Struct_1(var_1.x, u_input.b ^ arg_3, arg_1.c, (~(~u_input.d) >> (u_input.d % 32u)) | ~(25392u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, arg_2), u_input.c.yw) % 32u)), vec4<u32>(var_2.a, ~(~u_input.d), 30400u, arg_2));
    let var_3 = Struct_1(_wgslsmith_mult_u32(~4294967295u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 4294967295u), _wgslsmith_div_vec2_u32(var_1.zw, u_input.c.xz))), ~(reverseBits(1i) & func_2(_wgslsmith_mod_vec3_i32(u_input.e, u_input.e)).b), var_2.c, _wgslsmith_dot_vec3_u32(u_input.c.wwz, vec3<u32>(max(_wgslsmith_add_u32(4294967295u, 0u), firstLeadingBit(var_2.a)), abs(var_1.x), ~reverseBits(0u))), ~(~abs(select(vec4<u32>(var_2.a, 8115u, 49093u, var_1.x), u_input.c, true))));
    return Struct_2(~_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, -8203i), var_2.b), -2147483647i, vec4<bool>(var_3.c.x, false, true || !all(arg_1.c.zw), func_1(_wgslsmith_div_u32(var_3.d, 4294967295u), func_2(u_input.e)).x != true), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, Struct_2(i32(-1i) * -(i32(-1i) * -14160i), -2147483647i, !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), true)), select(func_1(abs(1u), Struct_1(38194u, u_input.b, vec4<bool>(false, false, true, false), 0u, vec4<u32>(4294967295u, u_input.d, 0u, 1u))), vec4<bool>(true, true, true, true), true)), 4294967295u, u_input.b);
    var var_1 = vec4<bool>(!func_4(var_0.d.x, Struct_2(firstTrailingBit(1i), _wgslsmith_mod_i32(39497i, -2147483647i), vec4<bool>(true, var_0.d.x, false, false), var_0.d), 3483u, u_input.b).d.x, all(func_4(all(select(vec3<bool>(var_0.c.x, true, var_0.d.x), var_0.d.zyw, vec3<bool>(var_0.d.x, false, var_0.c.x))), var_0, u_input.a, reverseBits(2147483647i)).c), abs(_wgslsmith_dot_vec4_u32(u_input.c >> (u_input.c % vec4<u32>(32u)), ~vec4<u32>(89844u, u_input.a, u_input.c.x, 24680u))) != (~(u_input.d << (u_input.d % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 0u), countOneBits(vec3<u32>(u_input.a, u_input.d, u_input.c.x))) % 32u)), !(!var_0.d.x));
    let var_2 = true;
    var var_3 = var_0.d.yz;
    var_3 = vec2<bool>(!(false | all(var_0.d)) | true, !any(var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(294f)))), u_input.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1636f, 360f), vec3<f32>(212f, -1000f, -577f), vec3<bool>(true, var_3.x, var_3.x)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1150f, -212f, 808f) - vec3<f32>(1093f, -1000f, -1159f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(258f, -2056f, -1883f))))))), max(firstLeadingBit(firstLeadingBit(u_input.c.x)), u_input.d));
}

