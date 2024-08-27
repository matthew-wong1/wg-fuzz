struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = 1u;
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    let var_1 = !all(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))));
    var_0 = ~1u;
    return Struct_2(firstTrailingBit(_wgslsmith_mod_u32(~1u, firstLeadingBit(_wgslsmith_sub_u32(arg_0.c, 34027u)))), _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4294967295u, arg_0.c, 45897u), vec4<u32>(u_input.a.x, 3134u, u_input.a.x, u_input.a.x)) & vec4<u32>(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.c, 4u)], 4u)]), global0[_wgslsmith_index_u32(u_input.a.x >> (1u % 32u), 4u)], _wgslsmith_dot_vec3_u32(vec3<u32>(13388u, u_input.a.x, global0[_wgslsmith_index_u32(arg_0.c, 4u)]), vec3<u32>(global0[_wgslsmith_index_u32(0u, 4u)], arg_0.c, 90515u)), 0u), ~reverseBits(~vec4<u32>(14059u, 6594u, u_input.a.x, 4294967295u))), vec2<f32>(arg_0.b.x, arg_0.a), arg_0);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<u32, 4>();
    var var_0 = Struct_3(Struct_2(arg_3.c, arg_0 | arg_2.b, arg_1.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.b.x, arg_2.d.b.x)), arg_3.b, _wgslsmith_add_u32(arg_1.a, 51670u) >> (~1u % 32u))), select(vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), select(true, true, true), _wgslsmith_div_f32(arg_3.b.x, -1641f) < _wgslsmith_f_op_f32(-1000f * arg_3.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_3.c <= arg_2.d.c, 50582u == arg_0.x, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true)), all(vec2<bool>(true, true))), firstTrailingBit(vec3<i32>(1i, min(u_input.b | u_input.b, 51620i), -select(-2147483647i, 0i, false))));
    var var_1 = Struct_3(var_0.a, !vec4<bool>(true, var_0.b.x, var_0.b.x, 23802u <= arg_1.d.c), var_0.c);
    global0 = array<u32, 4>();
    var_1 = Struct_3(arg_1, vec4<bool>(!all(var_1.b.xx), false, !any(vec3<bool>(var_1.b.x, false, true)) & (any(vec3<bool>(var_0.b.x, false, true)) & var_1.b.x), !var_0.b.x), countOneBits(select(var_0.c, vec3<i32>(59164i, abs(2147483647i), var_1.c.x), vec3<bool>(true, !var_1.b.x, any(vec4<bool>(var_0.b.x, var_0.b.x, false, var_0.b.x))))));
    return select(!(!select(!var_1.b.zy, !vec2<bool>(var_1.b.x, false), -2147483647i < var_1.c.x)), select(select(select(select(var_0.b.xx, var_1.b.yw, vec2<bool>(true, false)), var_0.b.yx, vec2<bool>(var_0.b.x, var_1.b.x)), !vec2<bool>(var_0.b.x, true), select(vec2<bool>(var_0.b.x, var_0.b.x), vec2<bool>(var_0.b.x, var_1.b.x), var_1.b.x)), var_1.b.yy, false), var_1.b.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> bool {
    global0 = array<u32, 4>();
    let var_0 = Struct_3(func_2(Struct_1(505f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1945f, 662f, -1085f), vec3<f32>(-271f, -1000f, 358f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1247f, 1604f, -812f))), u_input.a.x)), vec4<bool>(false, arg_0.x, !arg_0.x, all(select(!arg_0, !arg_0, func_3(vec4<u32>(4294967295u, arg_1, u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 4u)]), Struct_2(global0[_wgslsmith_index_u32(112112u, 4u)], vec4<u32>(0u, arg_1, 84001u, 0u), vec2<f32>(-200f, 649f), Struct_1(1958f, vec3<f32>(-972f, -227f, 602f), arg_1)), Struct_2(78126u, vec4<u32>(26780u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 4u)], 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], arg_1), vec2<f32>(1186f, 295f), Struct_1(-1000f, vec3<f32>(1401f, 1395f, 641f), 42612u)), Struct_1(-2878f, vec3<f32>(-1629f, 3700f, 547f), arg_1))))), (vec3<i32>(-1i) * -firstLeadingBit(vec3<i32>(2147483647i, u_input.b, -42342i))) | ~firstLeadingBit(vec3<i32>(u_input.b, -1i, u_input.b)));
    global0 = array<u32, 4>();
    let var_1 = _wgslsmith_div_i32(abs(u_input.b), u_input.b);
    let var_2 = _wgslsmith_f_op_f32(exp2(var_0.a.d.a));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = vec2<bool>(true, arg_0.x & !arg_0.x);
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    global0 = array<u32, 4>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-232f + -1846f), arg_1.c.x), false)), arg_1.d.b, 4294967295u);
    return all(select(select(!select(vec4<bool>(true, var_0.x, false, arg_0.x), vec4<bool>(arg_0.x, true, false, true), vec4<bool>(arg_0.x, true, true, var_0.x)), vec4<bool>(!arg_0.x, arg_0.x, true, true), true & arg_0.x), select(vec4<bool>(true, var_1.c > global0[_wgslsmith_index_u32(23754u, 4u)], select(arg_0.x, var_0.x, var_0.x), var_0.x), vec4<bool>(true, any(vec4<bool>(var_0.x, true, false, var_0.x)), !arg_0.x, true & arg_0.x), vec4<bool>(var_0.x, arg_0.x == true, u_input.b <= u_input.b, var_1.b.x != var_1.a)), vec4<bool>(any(!var_0), any(select(vec3<bool>(true, true, arg_0.x), arg_0, vec3<bool>(var_0.x, arg_0.x, var_0.x))), all(arg_0.xz), arg_0.x)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> StorageBuffer {
    global0 = array<u32, 4>();
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(floor(-1865f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.a)) + _wgslsmith_f_op_f32(1000f + arg_1.a)) - 1098f), arg_2 | (!(!arg_0) || any(vec3<bool>(arg_0, true, true))), arg_2, true);
    var var_1 = vec4<f32>(-1985f, arg_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1258f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(462f, _wgslsmith_f_op_f32(trunc(-448f)))));
    let var_2 = arg_1.b;
    return StorageBuffer(u_input.a.x, u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(~96473u, ~global0[_wgslsmith_index_u32(u_input.a.x, 4u)] << (0u % 32u), ~u_input.a.x | ~7619u, ~_wgslsmith_sub_u32(4294967295u, u_input.a.x)), vec4<u32>(4294967295u, ~30641u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27069u, 4u)], 4u)], 4u)], 13075u), u_input.a.x, arg_1.c), ~104907u)), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -818f), _wgslsmith_f_op_f32(f32(-1f) * -279f)))), _wgslsmith_f_op_f32(trunc(-1482f)), _wgslsmith_f_op_f32(round(-1923f))));
    let x = u_input.a;
    s_output = func_5(func_4(vec3<bool>(func_1(vec2<bool>(true, true), countOneBits(35069u)), _wgslsmith_f_op_f32(763f * 1289f) < _wgslsmith_f_op_f32(-var_1.x), u_input.b < u_input.b), Struct_2(abs(3962u), (vec4<u32>(global0[_wgslsmith_index_u32(5149u, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 4294967295u, 1u) | vec4<u32>(10020u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 1u)) | func_2(Struct_1(-1000f, var_1, 27727u)).b, _wgslsmith_f_op_vec2_f32(-var_1.yy), Struct_1(1197f, var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 95150u), u_input.a))), u_input.a.x), func_2(func_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1237f), _wgslsmith_f_op_vec3_f32(-var_1), ~35912u)).d).d, any(select(vec4<bool>(var_1.x > 1104f, any(vec3<bool>(true, false, true)), false, u_input.b <= -52016i), select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), true), vec4<bool>(true, true, true, false), func_3(vec4<u32>(global0[_wgslsmith_index_u32(11271u, 4u)], 1u, 14868u, u_input.a.x), Struct_2(7713u, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(1u, 4u)]), var_1.yy, Struct_1(-425f, vec3<f32>(var_1.x, var_1.x, -1408f), 1u)), Struct_2(u_input.a.x, vec4<u32>(u_input.a.x, 0u, 1u, global0[_wgslsmith_index_u32(u_input.a.x, 4u)]), var_1.yx, Struct_1(var_1.x, vec3<f32>(1537f, var_1.x, var_1.x), global0[_wgslsmith_index_u32(1u, 4u)])), Struct_1(var_1.x, var_1, 4294967295u)).x), any(vec2<bool>(true, true)))));
}

