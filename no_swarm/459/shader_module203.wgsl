struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(9668i, -23439i, 2147483647i, -1i, i32(-2147483648), -15271i, 1i, -33153i, 2147483647i, -15099i, -1i, i32(-2147483648), -11040i, -1i, i32(-2147483648), -1i, -1i, -29932i, 2147483647i, 35460i, 17628i, 37339i, i32(-2147483648), 2147483647i, 1i, 2147483647i, 1i, 2147483647i);

var<private> global1: array<vec2<f32>, 9>;

var<private> global2: array<vec2<bool>, 28>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(countOneBits(~22317u), 0u, !select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), any(select(global2[_wgslsmith_index_u32(4294967295u, 28u)], vec2<bool>(false, true), vec2<bool>(true, true)))));
    var var_1 = Struct_1(var_0.b, var_0.b, vec4<bool>(false, var_0.c.x, !(any(var_0.c.zy) || (0u >= var_0.a)), false));
    var var_2 = var_0;
    var var_3 = !any(vec4<bool>(true, any(vec3<bool>(true, var_0.c.x, false)), var_2.c.x & false, var_0.c.x));
    let var_4 = var_0;
    return _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~min(9378u, 0u), var_1.a), _wgslsmith_sub_vec2_u32(~(vec2<u32>(var_4.a, var_4.a) >> (vec2<u32>(var_2.a, 16686u) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(52739u, var_2.b)))), ~_wgslsmith_sub_vec2_u32(max(vec2<u32>(var_4.a, var_1.b), ~vec2<u32>(39896u, 52769u)), vec2<u32>(~var_0.b, ~var_4.a)));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    global0 = array<i32, 28>();
    global2 = array<vec2<bool>, 28>();
    let var_0 = Struct_1(~_wgslsmith_div_u32(17216u, _wgslsmith_dot_vec4_u32(vec4<u32>(79887u, arg_0, arg_0, arg_0), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, arg_0), vec4<u32>(3992u, arg_0, arg_0, 2540u)))), 29226u, vec4<bool>(_wgslsmith_sub_u32(min(4294967295u, arg_0), func_3()) >= _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(arg_0, 1u, arg_0, 1u)), 904f < _wgslsmith_f_op_f32(step(-1612f, -1046f)), false, !any(vec3<bool>(true, false, false))));
    var var_1 = Struct_1(_wgslsmith_add_u32(~15841u, arg_0), 60432u, select(!var_0.c, select(var_0.c, !vec4<bool>(true, var_0.c.x, var_0.c.x, true), var_0.c), !vec4<bool>(any(vec4<bool>(false, var_0.c.x, true, true)), arg_0 >= 0u, true, false)));
    var var_2 = var_0;
    return ~(~min(select(vec2<u32>(1u, var_1.b), vec2<u32>(arg_0, var_2.a), var_2.c.xz), abs(vec2<u32>(49018u, 11491u))) | _wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.a, firstLeadingBit(4294967295u)), ~(~vec2<u32>(1u, var_1.b)), ~(~vec2<u32>(var_0.b, var_2.b))));
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = select(func_2(81015u), firstTrailingBit(~(vec2<u32>(3660u, 1u) & reverseBits(vec2<u32>(54609u, arg_0)))), false);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(360f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1251f - 1291f), _wgslsmith_f_op_f32(sign(-900f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(249f)) - -195f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1699f), _wgslsmith_f_op_f32(f32(-1f) * -1636f))), -623f));
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0, arg_0), _wgslsmith_mod_vec2_u32(~vec2<u32>(1u, 0u), var_0)) >> (~select(4294967295u, var_0.x, false) % 32u), (arg_0 ^ countOneBits(arg_0)) ^ 40243u, select(select(select(vec4<bool>(false, true, true, arg_2), vec4<bool>(true, arg_2, false, arg_2), select(vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(true, arg_2, arg_2, true), arg_2)), select(!vec4<bool>(false, true, true, arg_2), vec4<bool>(false, arg_2, true, false), arg_2), all(select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(var_0.x, 28u)], global2[_wgslsmith_index_u32(var_0.x, 28u)]))), select(vec4<bool>(true, all(vec3<bool>(false, true, arg_2)), !arg_2, true), vec4<bool>(arg_2, false, any(vec3<bool>(true, true, arg_2)), !arg_2), arg_2), select(select(!vec4<bool>(arg_2, false, arg_2, false), vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(arg_2, arg_2, false, true)), select(select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2), vec4<bool>(arg_2, false, true, true)), !vec4<bool>(false, arg_2, arg_2, arg_2), 81074u >= var_0.x), true)));
    let var_3 = -u_input.c;
    var var_4 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(firstLeadingBit(~vec3<u32>(var_2.a, 0u, var_2.b)), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, arg_0, var_2.b), vec3<u32>(4294967295u, 91546u, 39866u)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b, var_2.a, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 36307u, var_0.x), vec3<u32>(0u, 4294967295u, arg_0))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x)))), var_1.x)), -1726f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_0 = Struct_1(1u, ~2938u, select(!vec4<bool>(true, u_input.d.x != u_input.d.x, true, any(global2[_wgslsmith_index_u32(1u, 28u)])), vec4<bool>(all(select(global2[_wgslsmith_index_u32(7422u, 28u)], vec2<bool>(false, false), true)), true, true, true), vec4<bool>(-359f < _wgslsmith_f_op_f32(func_1(4294967295u, vec2<i32>(global0[_wgslsmith_index_u32(22678u, 28u)], u_input.a), false, global0[_wgslsmith_index_u32(0u, 28u)])), true, true, true)));
    var var_1 = ~(19017u ^ var_0.b);
    var var_2 = Struct_1(_wgslsmith_mod_u32(var_0.b, ~var_0.b), 0u >> (func_3() % 32u), !select(!(!vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), vec4<bool>(!var_0.c.x, false, true, true), vec4<bool>(false, all(vec2<bool>(var_0.c.x, true)), var_0.c.x, all(vec4<bool>(true, var_0.c.x, true, false)))));
    global2 = array<vec2<bool>, 28>();
    global0 = array<i32, 28>();
    var var_3 = select(u_input.d, u_input.d, var_0.c.x);
    var_3 = vec2<i32>(min(_wgslsmith_dot_vec2_i32(vec2<i32>(17790i, var_3.x) & abs(u_input.d), -_wgslsmith_div_vec2_i32(u_input.d, u_input.d)), 2147483647i), u_input.c >> (var_0.b % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_2.b, 28u)], global0[_wgslsmith_index_u32(var_2.a, 28u)], -1i, u_input.b) | vec4<i32>(global0[_wgslsmith_index_u32(var_2.a, 28u)], var_3.x, 34099i, u_input.c), vec4<i32>(5960i, -1i, 0i, -49219i))), vec4<i32>(firstLeadingBit(select(-12415i, -72121i, var_2.c.x)), 1i ^ global0[_wgslsmith_index_u32(~54775u, 28u)], _wgslsmith_sub_i32(~(-52396i), _wgslsmith_sub_i32(0i, global0[_wgslsmith_index_u32(var_0.a, 28u)])), reverseBits(0i))));
}

