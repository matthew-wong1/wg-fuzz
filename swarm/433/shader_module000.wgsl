struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec2<u32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, select(u_input.d.x, ~49896u, select(true, false, false))) & ((~vec2<u32>(u_input.b, 1u) | _wgslsmith_add_vec2_u32(arg_1, vec2<u32>(arg_2, u_input.d.x))) & vec2<u32>(arg_1.x ^ arg_1.x, arg_2)), ~_wgslsmith_add_vec2_u32(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(u_input.d.yx, vec2<u32>(arg_1.x, 0u))), vec2<u32>(~4294967295u, reverseBits(9902u))));
    var var_1 = -select(~abs(max(u_input.a.x, 0i)), select(1i, u_input.a.x, any(vec3<bool>(false, false, false))), true);
    var_1 = -10793i;
    var_1 = reverseBits(u_input.a.x);
    let var_2 = Struct_2(vec2<bool>(any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false)), false), _wgslsmith_mod_i32(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(-49691i, -1i, -47150i))), ~u_input.c), Struct_1(abs(~u_input.b & 1u)), ~(~(select(-24066i, u_input.a.x, false) | u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(536f, -1461f, -405f, arg_0))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)) + arg_0));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_0.e.x), u_input.d.yz, ~(~arg_1.a)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.e.x)) * 695f);
    var_0 = arg_0.e.x;
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_div_f32(_wgslsmith_div_f32(-1207f, var_1), _wgslsmith_f_op_f32(f32(-1f) * -2189f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - var_1), -1605f))));
    let var_2 = Struct_2(!vec2<bool>(any(select(vec4<bool>(false, arg_0.a.x, true, arg_0.a.x), vec4<bool>(true, arg_0.a.x, true, false), arg_0.a.x)), true), 2147483647i, Struct_1(31026u), -36708i, vec4<f32>(-1068f, arg_0.e.x, -1508f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, arg_0.e.x)))));
    return !(!var_2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(vec2<bool>(true, arg_2), u_input.a.x, arg_0, u_input.a.x, vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(trunc(arg_1.x)), arg_2)), arg_1.x));
    var var_1 = firstLeadingBit(~(vec4<u32>(u_input.b, 0u, 4294967295u, var_0.c.a) ^ vec4<u32>(51884u, var_0.c.a, 4809u, 4294967295u)) ^ abs(abs(vec4<u32>(0u, var_0.c.a, arg_0.a, 9582u)))) ^ vec4<u32>((abs(0u) << (var_0.c.a % 32u)) | _wgslsmith_sub_u32(u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, var_0.c.a), u_input.e)), _wgslsmith_clamp_u32(firstLeadingBit(var_0.c.a), ~104213u, countOneBits(firstTrailingBit(u_input.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, countOneBits(1u), u_input.d.x << (u_input.e.x % 32u), ~0u), ~vec4<u32>(94720u, 21632u, var_0.c.a, 4294967295u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.a, 39692u, var_0.c.a, u_input.e.x), vec4<u32>(0u, 4294967295u, arg_0.a, var_0.c.a)) % vec4<u32>(32u))), 0u);
    let var_2 = var_0;
    var_1 = vec4<u32>(arg_0.a << (1u % 32u), ~53723u, 1u, min(~(~_wgslsmith_sub_u32(82255u, arg_0.a)), ~(0u | var_1.x) ^ (firstLeadingBit(u_input.b) ^ 28738u)));
    var_1 = vec4<u32>(arg_0.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(max(var_2.c.a, var_1.x), reverseBits(arg_0.a), 0u, var_1.x)), min(reverseBits(vec4<u32>(1u, arg_0.a, u_input.d.x, 14578u)), vec4<u32>(var_2.c.a, 0u, 110954u, 19397u)) & max(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.e.x, var_0.c.a, 1u), vec4<u32>(arg_0.a, 63066u, arg_0.a, var_2.c.a)), countOneBits(vec4<u32>(22705u, 38524u, var_2.c.a, var_1.x)))), 17126u, ~var_2.c.a);
    return var_2.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = Struct_2(!vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true)), all(vec3<bool>(true, true, true))), u_input.a.x, func_4(Struct_1(~u_input.b), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-837f, -189f) + vec2<f32>(-101f, -255f)))))), !(func_2(Struct_2(vec2<bool>(true, true), 18790i, arg_0, u_input.a.x, vec4<f32>(124f, 433f, -243f, 1343f)), arg_0) == true)), 3658i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-188f, _wgslsmith_f_op_f32(349f + -746f), _wgslsmith_f_op_f32(-1014f - -1542f), _wgslsmith_f_op_f32(-375f - -1000f)), vec4<f32>(-732f, -1000f, -799f, _wgslsmith_f_op_f32(round(-1055f))), false))));
    var var_1 = Struct_1(1u);
    var var_2 = !(any(!vec2<bool>(var_0.a.x, true)) & (!(true | var_0.a.x) && var_0.a.x));
    var_2 = !var_0.a.x;
    var var_3 = firstLeadingBit(u_input.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(149f)) - 464f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!vec3<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, false, true)), any(vec3<bool>(false, true, false))));
    var var_1 = 483f;
    var_1 = 573f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(910u), vec4<i32>(u_input.c, -3822i, -11545i, u_input.c) | vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.c))), -665f)) - -991f);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(248f, -828f)))))));
    let var_2 = u_input.d.yy;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -283f);
    var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(105f - 516f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x);
}

