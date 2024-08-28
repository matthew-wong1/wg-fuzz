struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = false;
    let var_1 = -38660i;
    let var_2 = Struct_1(~vec4<u32>(_wgslsmith_div_u32(~20056u, 4294967295u), 29787u, firstTrailingBit(u_input.d.x) | 30119u, ~_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(0u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-162f, -499f, 1502f, arg_0.b.x))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.b.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b.x, -446f, arg_0.b.x, -1814f), vec4<f32>(arg_0.b.x, -1534f, 3278f, arg_0.b.x), all(arg_0.c.xy))))), !arg_0.c.wxy, 560i, arg_0.c.xy);
    var var_3 = abs(-(vec4<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(var_1, -6102i), _wgslsmith_clamp_i32(var_1, arg_0.a.x, 1i), 1i) ^ vec4<i32>(_wgslsmith_add_i32(arg_0.a.x, -2147483647i), reverseBits(37392i), 1i, 1i)));
    let var_4 = 0i;
    return ~var_2.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.d.yz;
    var_0 = _wgslsmith_add_vec2_u32(firstTrailingBit(select(countOneBits(abs(u_input.d.yx)), _wgslsmith_mod_vec2_u32(vec2<u32>(58973u, var_0.x), ~vec2<u32>(1u, var_0.x)), vec2<bool>(true, true))), vec2<u32>(38214u, 1u));
    let var_1 = arg_0;
    let var_2 = Struct_1(~(~(vec4<u32>(var_0.x, var_0.x, 31558u, u_input.d.x) << (u_input.d % vec4<u32>(32u))) << (func_3(Struct_2(vec4<i32>(5334i, u_input.a, -1i, u_input.a), vec3<f32>(var_1, var_1, -1517f), vec4<bool>(false, true, true, true))) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-858f, var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-115f, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1, arg_0, 227f, -234f), vec4<f32>(897f, var_1, var_1, var_1)))))), select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true), select(true, true, var_0.x == 1u)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), true), select(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), false, true)), firstTrailingBit(_wgslsmith_clamp_i32(1i, 71867i, u_input.c) & -min(u_input.b, u_input.e)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), !all(vec2<bool>(false, false)))));
    var_0 = min(select(vec2<u32>(reverseBits(38554u), 14273u), ~_wgslsmith_div_vec2_u32(select(vec2<u32>(4294967295u, 1u), u_input.d.xx, var_2.e.x), abs(vec2<u32>(var_0.x, u_input.d.x))), vec2<bool>(true && !var_2.e.x, false)), vec2<u32>(var_2.a.x, 0u));
    return Struct_1(vec4<u32>(var_0.x, var_0.x, select(min(~var_2.a.x, ~0u), 22486u, true), var_2.a.x), vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(abs(var_1)), arg_0, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + var_1)))), var_2.c, reverseBits(1i), !var_2.c.zz);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<bool>, arg_3: vec2<i32>) -> i32 {
    let var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(474f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(242f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.x - 749f))))));
    let var_1 = arg_0;
    return -(i32(-1i) * -firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.x, 34571i, -2147483647i), vec3<i32>(-4198i, u_input.e, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -35686i;
    var_0 = _wgslsmith_sub_i32(~(~(u_input.a << (0u % 32u))), (func_1(Struct_2(vec4<i32>(u_input.b, -1i, u_input.e, u_input.a), vec3<f32>(-1857f, 1000f, 1000f), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec2<i32>(u_input.c, -1i)) | _wgslsmith_mod_i32(0i, u_input.e)) << (_wgslsmith_add_u32(41242u, u_input.d.x) % 32u)) >> (9113u % 32u);
    var var_1 = vec3<f32>(726f, -1929f, 339f);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u << ((1u & ~u_input.d.x) % 32u), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.x)), var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -594f), !(1i != u_input.e)))));
}

