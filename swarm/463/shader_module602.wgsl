struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<bool>) -> bool {
    let var_0 = max(-u_input.a, u_input.a) > u_input.a;
    var var_1 = Struct_3(Struct_1(reverseBits(select(~vec4<u32>(62449u, 4294967295u, u_input.b.x, 6989u), vec4<u32>(4294967295u, u_input.b.x, 0u, u_input.b.x), true))));
    var var_2 = arg_2.wyy;
    var var_3 = ~(vec4<i32>(-1i) * -select(vec4<i32>(38888i, u_input.a, -1i, 20442i), ~vec4<i32>(1i, u_input.a, -32325i, u_input.a), true));
    return false;
}

fn func_2() -> bool {
    var var_0 = true;
    var_0 = true;
    var_0 = all(vec4<bool>(false, func_3(-328f, 4294967295u < u_input.b.x, vec4<bool>(true, false, true, true)) & all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), true)), func_3(_wgslsmith_f_op_f32(select(-436f, -433f, true)), func_3(-2139f, false, vec4<bool>(false, true, true, true)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false))) || any(vec2<bool>(false, true)), true));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(281f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2319f * -2162f), _wgslsmith_f_op_f32(f32(-1f) * -330f)))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(979f, -146f), vec2<f32>(1000f, 217f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-272f, 359f) + vec2<f32>(1581f, -1624f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1108f, 1000f)))))));
    let var_2 = Struct_2(abs(u_input.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, var_1.x, 1587f, var_1.x)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(959f, 1537f, var_1.x, var_1.x), vec4<f32>(1225f, 504f, 368f, 1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, var_1.x, var_1.x, var_1.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-427f, 445f, -1569f, -451f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -132f, var_1.x, 1894f))))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, false, false, true), all(vec3<bool>(true, true, true))), true))), Struct_1(~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b.x, 66001u, u_input.b.x, u_input.b.x)), vec4<u32>(84455u, 31503u, u_input.b.x, u_input.b.x))), Struct_1(_wgslsmith_sub_vec4_u32(~countOneBits(vec4<u32>(46229u, u_input.b.x, 3539u, u_input.b.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 29987u, u_input.b.x, 1u)))));
    return true;
}

fn func_1(arg_0: f32, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), 30547u), countOneBits(vec3<u32>(12583u, u_input.b.x, 25577u) & vec3<u32>(80654u, 15695u, 31556u)) << (~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))), select(vec3<u32>(u_input.b.x, firstLeadingBit(u_input.b.x), u_input.b.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.b.x, u_input.b.x), ~(~vec3<u32>(0u, u_input.b.x, u_input.b.x))), !(!any(vec2<bool>(arg_1, arg_1)))));
    var var_1 = !select(!vec4<bool>(arg_1, true, func_2(), select(false, false, false)), !select(!vec4<bool>(false, true, false, arg_1), !vec4<bool>(arg_1, true, arg_1, arg_1), arg_1), vec4<bool>(true | all(vec2<bool>(arg_1, arg_1)), all(vec3<bool>(arg_1, false, arg_1)), 478f < _wgslsmith_f_op_f32(select(arg_0, 933f, arg_1)), arg_1 & false));
    var_1 = !vec4<bool>(true == var_1.x, func_2(), true, func_3(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(abs(-224f))), false, select(vec4<bool>(true, arg_1, false, true), !vec4<bool>(false, arg_1, arg_1, arg_1), !vec4<bool>(var_1.x, var_1.x, arg_1, arg_1))));
    var_1 = !select(vec4<bool>(var_1.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, 30201i)) < 44112i, all(select(vec2<bool>(true, arg_1), var_1.zz, var_1.x)), false), vec4<bool>((var_0.x >> (45902u % 32u)) >= select(26045u, u_input.b.x, var_1.x), !arg_1, true, var_1.x), select(select(!vec4<bool>(true, var_1.x, var_1.x, true), !vec4<bool>(true, arg_1, var_1.x, arg_1), func_3(arg_0, true, vec4<bool>(var_1.x, var_1.x, true, true))), select(vec4<bool>(true, false, arg_1, var_1.x), !vec4<bool>(true, arg_1, var_1.x, var_1.x), arg_1), var_1.x));
    let var_2 = Struct_1(countOneBits(countOneBits(~(~vec4<u32>(4294967295u, u_input.b.x, 0u, var_0.x)))));
    return ~0u;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    var var_0 = Struct_3(arg_1);
    var_0 = arg_0;
    let var_1 = _wgslsmith_dot_vec3_u32(arg_1.a.ywy, reverseBits(var_0.a.a.xxz) >> (arg_1.a.ywz % vec3<u32>(32u)));
    var_0 = Struct_3(Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.a.x, 41294u, 0u, 4294967295u), vec4<u32>(var_0.a.a.x, 21418u, u_input.b.x, arg_1.a.x))));
    var_0 = arg_0;
    return StorageBuffer(vec3<u32>(max(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(var_0.a.a.xxz, arg_1.a.ywz)), 4294967295u), _wgslsmith_div_u32(arg_1.a.x >> (arg_1.a.x % 32u), _wgslsmith_add_u32(_wgslsmith_sub_u32(23446u, 16560u), ~u_input.b.x)), ~(~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-916f, -998f, -609f, -1187f) - vec4<f32>(-252f, 620f, -1232f, -1555f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-545f, 860f, -633f, -1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1268f, 139f, -1000f, -732f) - vec4<f32>(-2227f, 169f, 1000f, -530f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-577f, _wgslsmith_f_op_f32(-1644f - -337f), _wgslsmith_f_op_f32(max(-494f, -1788f)), -422f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_3(Struct_1(vec4<u32>(~u_input.b.x, ~10299u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), func_1(-900f, true)))), Struct_1(min(~(~vec4<u32>(52463u, 20763u, 4294967295u, u_input.b.x)), countOneBits(vec4<u32>(8413u, u_input.b.x, u_input.b.x, 1u)))), true);
}

