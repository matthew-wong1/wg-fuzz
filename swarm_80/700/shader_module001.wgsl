struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> i32 {
    let var_0 = arg_1;
    var var_1 = select(0i <= arg_1, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false))), vec4<bool>(var_0 <= -1i, true, any(vec4<bool>(false, false, false, true)), true), vec4<bool>(false, all(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, true)), var_0 < var_0))), any(select(select(vec2<bool>(true, true), vec2<bool>(true, true), arg_1 <= arg_1), vec2<bool>(true, true), (u_input.a << (12506u % 32u)) > select(45668u, u_input.a, true))));
    var_1 = any(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)))));
    var var_2 = vec4<u32>(~(~u_input.a ^ ~2795u) >> (countOneBits(_wgslsmith_clamp_u32(24602u, ~20914u, ~u_input.a)) % 32u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(21180u, u_input.a, u_input.a), vec3<u32>(u_input.a, 44286u, u_input.a), vec3<u32>(0u, 4294967295u, u_input.a)), abs(vec3<u32>(u_input.a, u_input.a, 10419u) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), u_input.a, ~u_input.a >> (381u % 32u));
    var var_3 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(false, false)), true, all(vec2<bool>(false, true)), select(true, false, false)), vec4<bool>(true, true, true, true)), 712f), u_input.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1248f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1473f))), -304f));
    return arg_1;
}

fn func_2() -> u32 {
    var var_0 = -11810i;
    var_0 = 8868i;
    var var_1 = !vec4<bool>(all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false)), all(vec4<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(false, false)), true)), false, true);
    var_1 = !(!select(vec4<bool>(var_1.x, any(vec2<bool>(false, var_1.x)), true, true), select(select(vec4<bool>(false, var_1.x, false, true), vec4<bool>(var_1.x, false, var_1.x, true), var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, true), false), vec4<bool>(false, false, var_1.x, var_1.x)), true));
    var_0 = _wgslsmith_dot_vec4_i32(firstTrailingBit(~(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 21561i, 1i, 2147483647i), vec4<i32>(0i, 0i, 0i, 2147483647i), vec4<i32>(2147483647i, -2147483647i, 16424i, -1i)) & vec4<i32>(0i, -2147483647i, -13599i, 66433i))), select(-vec4<i32>(1i, 33687i, 1i, func_3(vec4<f32>(565f, -1876f, -1000f, 456f), 32457i)), ~(-vec4<i32>(-22663i, 2147483647i, 2147483647i, 43238i)), vec4<bool>(var_1.x, true, var_1.x, !any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)))));
    return _wgslsmith_mod_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 100486u), vec2<u32>(u_input.a, 1u)) & ~u_input.a), 36844u) >> (_wgslsmith_sub_u32(u_input.a, abs(u_input.a)) % 32u);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -402f);
    var var_1 = func_2();
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(~u_input.a, max(arg_0.b, 0u), 17302u), ~1u, ~1u) << (vec3<u32>(max(0u, arg_1.b & 44991u), u_input.a & firstTrailingBit(0u), ~func_2()) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, arg_0.b, _wgslsmith_sub_u32(0u, u_input.a)) & _wgslsmith_sub_vec3_u32(~(vec3<u32>(arg_1.b, 32104u, arg_0.b) | vec3<u32>(12314u, 0u, arg_0.b)), select(_wgslsmith_add_vec3_u32(vec3<u32>(73450u, u_input.a, 1u), vec3<u32>(arg_0.b, u_input.a, arg_1.b)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 78522u, 0u), vec3<u32>(1u, 3346u, 32743u)), arg_3.a.xyx)));
    let var_3 = Struct_2(Struct_1(select(!select(arg_3.a, arg_1.a.a, arg_1.a.a.x), arg_1.a.a, !arg_3.a), 324f), 1u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 299f, arg_0.c.x) + arg_1.c) - arg_0.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c), _wgslsmith_f_op_vec3_f32(-arg_0.c)))));
    var var_4 = Struct_1(vec4<bool>(false, true == any(!var_3.a.a), !(var_3.a.a.x && true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b)));
    return var_3.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_1(Struct_2(Struct_1(vec4<bool>(true, false, false, true), 1499f), 54281u, vec3<f32>(-427f, 1000f, 1000f)), Struct_2(Struct_1(vec4<bool>(false, false, true, true), -851f), u_input.a, vec3<f32>(1309f, 333f, -847f)), vec3<i32>(10260i, 33818i, -117i), Struct_1(vec4<bool>(false, true, false, false), 1647f)), true, true), vec4<bool>(false, true, true, true)), 254f), ~(u_input.a & _wgslsmith_mult_u32(1u ^ u_input.a, 0u)), vec3<f32>(1f, 1f, 1f));
    let var_1 = ~((firstLeadingBit(vec4<u32>(u_input.a, 63019u, 35524u, var_0.b) | vec4<u32>(u_input.a, u_input.a, var_0.b, 1u)) ^ ((vec4<u32>(22220u, u_input.a, var_0.b, 13404u) >> (vec4<u32>(var_0.b, u_input.a, 1u, u_input.a) % vec4<u32>(32u))) & (vec4<u32>(u_input.a, u_input.a, var_0.b, 4294967295u) >> (vec4<u32>(0u, 8357u, var_0.b, u_input.a) % vec4<u32>(32u))))) << (abs(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, var_0.b, var_0.b, 57902u)))) % vec4<u32>(32u)));
    var var_2 = var_0.c.zy;
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_0.a.b))))), var_2.x, -1359f);
    let var_4 = -1i;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_2.x, 221f, var_0.a.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.b, var_3.x, var_2.x, -818f), vec4<f32>(-411f, var_2.x, -1353f, var_2.x), vec4<bool>(true, false, var_0.a.a.x, false))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, var_3.x, var_3.x, var_2.x), vec4<f32>(var_3.x, var_3.x, 974f, var_2.x)))))));
    var_5 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1249f)), _wgslsmith_f_op_f32(-666f + var_2.x))) + var_0.c.x), 1065f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-383f))), _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_f32(trunc(-1285f)))));
    let var_6 = vec3<i32>(var_4, _wgslsmith_mod_i32(var_4 & -select(var_4, var_4, true), _wgslsmith_div_i32(64632i, ~var_4 & ~65945i)), 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(~firstTrailingBit(74342u), 1u), 1u, func_2(), max(var_0.b >> (22043u % 32u), 35455u)), 18943u, select(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 4371u, 6220u), var_1.xyw), _wgslsmith_div_vec3_u32(vec3<u32>(27500u, u_input.a, 1u), var_1.yyx), func_1(var_0, Struct_2(Struct_1(vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, var_0.a.a.x), var_2.x), u_input.a, var_5.wzz), var_6, Struct_1(vec4<bool>(var_0.a.a.x, true, var_0.a.a.x, false), 304f))), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.b, 8945u), reverseBits(var_1.xzx), vec3<u32>(u_input.a, 55181u, u_input.a)) << (vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.a, var_1.x), 38812u) % vec3<u32>(32u)), !var_0.a.a.wwx));
}

