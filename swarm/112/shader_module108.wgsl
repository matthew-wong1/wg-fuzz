struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = countOneBits(vec4<i32>(0i, 1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, -21363i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 5144i), vec2<i32>(-7568i, -3832i)), 1i), _wgslsmith_mod_i32(abs(-11237i), 8945i))) << (~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(39427u, u_input.a.x, 0u), vec3<u32>(u_input.a.x, 4927u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 61361u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~u_input.a.x, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(114871u, u_input.a.x, u_input.a.x, 82258u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x))), ~u_input.a.x) % vec4<u32>(32u));
    var var_1 = Struct_4(_wgslsmith_div_vec3_i32(vec3<i32>(-4839i << (u_input.a.x % 32u), var_0.x >> (~u_input.a.x % 32u), ~var_0.x), _wgslsmith_clamp_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -2147483647i, -2147483647i), var_0.zxx), var_0.yzx, -var_0.zxy)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true))), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~u_input.a.x, 25297u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(4294967295u, 0u, 0u))), vec3<u32>(u_input.a.x, abs(firstTrailingBit(u_input.a.x)), _wgslsmith_dot_vec2_u32(u_input.a, reverseBits(u_input.a))), vec4<bool>(true, select(false, false, 62990i >= var_0.x), true, true)));
    var var_2 = var_1.b.a.b;
    var_2 = Struct_1(!vec3<bool>(arg_0 > arg_0, !(false & var_2.a.x), all(!vec3<bool>(true, true, var_1.b.a.b.a.x))));
    return _wgslsmith_f_op_f32(select(-262f, -1183f, _wgslsmith_dot_vec4_i32(max(var_0, var_0), var_0) >= reverseBits(var_0.x))) != _wgslsmith_div_f32(576f, -468f);
}

fn func_2(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: u32) -> vec3<bool> {
    let var_0 = !vec4<bool>(~u_input.a.x <= ~(~25258u), func_3(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(trunc(131f)))), !(!arg_1), false);
    var var_1 = arg_0.x;
    var_1 = arg_0.x;
    var var_2 = -123f;
    var_1 = -3823i;
    return !vec3<bool>(false, var_0.x, true);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(!all(vec4<bool>(true, false, false, false)), any(func_2(vec4<i32>(-20623i, -11346i, 0i, 0i), false, vec3<bool>(true, false, true), u_input.a.x)), func_2(reverseBits(vec4<i32>(4068i, 1i, 1i, -12509i)), true, vec3<bool>(true, true, true), 1u).x)), Struct_1(!func_2(vec4<i32>(1i, 1i, 1i, 1i), true, func_2(vec4<i32>(-2147483647i, -10534i, 14622i, -2147483647i), false, vec3<bool>(true, false, true), u_input.a.x), max(1u, 1u))));
    var var_1 = _wgslsmith_sub_i32(countOneBits(1i), 1i ^ -(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2125i, 1i, 2147483647i), vec3<i32>(36804i, -7950i, -30293i))));
    var var_2 = !vec4<bool>(all(vec4<bool>(u_input.a.x <= 22069u, var_0.a.a.x, !var_0.b.a.x, select(false, var_0.b.a.x, var_0.a.a.x))), false, true, var_0.b.a.x);
    var var_3 = Struct_3(Struct_2(var_0.a, var_0.a), 53193u ^ _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x << (4294967295u % 32u), ~u_input.a.x), u_input.a.x, u_input.a.x), abs(vec3<u32>(~111738u, 4294967295u, ~4294967295u) & firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), !select(!vec4<bool>(false, true, var_0.b.a.x, var_0.a.a.x), vec4<bool>(true, any(vec4<bool>(true, false, true, var_0.a.a.x)), var_2.x, true), any(!var_2.zw)));
    var_0 = Struct_2(var_0.a, var_3.a.a);
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_div_u32(~abs(1u), ~1u)), !vec4<bool>(true, true, func_3(-1104f), !all(vec3<bool>(false, true, true))));
    var var_1 = ((max(1u, ~4294967295u) ^ (u_input.a.x >> (firstTrailingBit(u_input.a.x) % 32u))) ^ ~(1u ^ reverseBits(u_input.a.x))) | u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1092f)))), _wgslsmith_f_op_f32(f32(-1f) * -1394f), _wgslsmith_f_op_f32(max(917f, -374f)), _wgslsmith_f_op_f32(f32(-1f) * -720f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1446f, -651f, 2216f, -479f)) - vec4<f32>(-165f, 1339f, -1192f, 805f))))));
    var var_3 = ~82543u;
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1424f))));
    var_3 = reverseBits(_wgslsmith_div_u32(_wgslsmith_div_u32(74061u >> ((u_input.a.x | var_0.b) % 32u), ~firstLeadingBit(41470u)), ~_wgslsmith_dot_vec2_u32(var_0.c.xx, max(vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(69914u, 1000f, _wgslsmith_f_op_vec2_f32(min(var_2.wz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_4.xz * vec2<f32>(var_2.x, -1108f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.yx * var_2.zz) - var_4.zy)))));
}

