struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(921f, 0i, 84186u);

var<private> global1: bool = false;

var<private> global2: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-1359f, 524f), vec2<f32>(-1711f, 426f), vec2<f32>(1954f, -986f), vec2<f32>(-287f, -1433f), vec2<f32>(-1000f, -1734f), vec2<f32>(-1000f, -361f), vec2<f32>(-1260f, -933f), vec2<f32>(-1362f, 590f), vec2<f32>(-275f, 2014f), vec2<f32>(1000f, -818f), vec2<f32>(-993f, -1118f), vec2<f32>(743f, 857f), vec2<f32>(1694f, -818f), vec2<f32>(-2395f, -412f));

var<private> global3: array<i32, 21> = array<i32, 21>(0i, -1i, -42627i, 0i, i32(-2147483648), -1i, 4715i, -12351i, i32(-2147483648), -33478i, 17430i, 60848i, -1i, -1i, i32(-2147483648), -18559i, -28658i, 1i, 2147483647i, -1i, i32(-2147483648));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - global0.a) - global0.a) + _wgslsmith_f_op_f32(f32(-1f) * -1316f));
    var_0 = arg_0.x > -1i;
    global3 = array<i32, 21>();
    global2 = array<vec2<f32>, 14>();
    return vec3<bool>(all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(select(true, true, true), true, all(vec2<bool>(true, false))), vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true))), false, all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<bool>, arg_3: f32) -> Struct_1 {
    let var_0 = arg_3;
    var var_1 = Struct_1(arg_3, -42489i, _wgslsmith_mult_u32(~(~(~4294967295u)), ~arg_0));
    global0 = Struct_1(_wgslsmith_f_op_f32(step(325f, 2195f)), -_wgslsmith_clamp_i32(min(u_input.a, -7550i) | -2147483647i, -18920i, max(~global0.b, -1i ^ var_1.b)), 0u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.a * var_1.a), abs(reverseBits(-43003i)), 29741u);
    global1 = all(!func_3(firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(-22155i, 834i, var_2.b), vec3<i32>(global0.b, global0.b, global0.b)))));
    return Struct_1(-855f, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(~global0.b), 22675i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(-1i, global0.b), vec2<i32>(global0.b, 0i)), vec2<i32>(-2147483647i, -39018i))), ~abs(vec3<i32>(global3[_wgslsmith_index_u32(arg_0, 21u)], global0.b, 1i))), 6474u);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * global0.a) + _wgslsmith_f_op_f32(f32(-1f) * -1477f))) * _wgslsmith_div_f32(1010f, _wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(max(arg_2.a, 820f)))))), u_input.a & -2147483647i, firstTrailingBit(~arg_3));
    let var_1 = vec3<i32>(~global0.b, ~(-(~(var_0.b & arg_2.b))), ~reverseBits(~1i));
    global3 = array<i32, 21>();
    global3 = array<i32, 21>();
    global2 = array<vec2<f32>, 14>();
    return ~vec3<i32>((select(global3[_wgslsmith_index_u32(1u, 21u)], 36788i, false) | firstLeadingBit(1i)) >> ((arg_3 | 55835u) % 32u), 0i, abs(max(func_2(0u, 540f, vec2<bool>(arg_0, arg_1), -705f).b, var_0.b)));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.c, global0.c, 4294967295u), vec4<u32>(68137u, global0.c, global0.c, 4294967295u) >> (vec4<u32>(global0.c, global0.c, global0.c, 13997u) % vec4<u32>(32u)))));
    var var_1 = var_0.x;
    global1 = (true | all(vec2<bool>(arg_0, !arg_0))) & (all(!select(vec3<bool>(false, true, arg_0), vec3<bool>(true, false, false), vec3<bool>(arg_0, false, true))) && false);
    var var_2 = func_2(abs(_wgslsmith_clamp_u32(var_0.x ^ ~0u, 4294967295u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a))))), !vec2<bool>(!all(vec3<bool>(false, true, arg_0)), select(false, arg_0, false) || any(vec4<bool>(arg_0, true, arg_0, arg_0))), global0.a);
    let var_3 = vec2<u32>(reverseBits(_wgslsmith_mod_u32(13133u, min(var_0.x, var_0.x))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 0u, 6296u, var_0.x), ~vec4<u32>(global0.c, 40512u, var_0.x, 21960u)), 0u), _wgslsmith_mult_u32(~3775u, _wgslsmith_dot_vec4_u32(var_0, var_0))));
    return func_2(_wgslsmith_dot_vec3_u32(~(~abs(vec3<u32>(0u, 1u, var_2.c))), vec3<u32>(var_2.c >> ((38075u | var_2.c) % 32u), 0u, 0u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-585f, -1709f)), _wgslsmith_f_op_f32(select(569f, -895f, arg_0)))))), !vec2<bool>(any(vec2<bool>(true, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -1405f) <= _wgslsmith_f_op_f32(-var_2.a)), global0.a);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> u32 {
    global1 = true;
    global2 = array<vec2<f32>, 14>();
    global0 = arg_1;
    let var_0 = func_5(any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)))), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(0u, 21u)], u_input.a)), vec3<i32>(1i, 2147483647i, global3[_wgslsmith_index_u32(arg_1.c, 21u)])), arg_1.b, select(global3[_wgslsmith_index_u32(~global0.c, 21u)], u_input.a, false)), func_4(any(vec3<bool>(true, true, true)), 1u == global0.c, func_2(13141u, -115f, vec2<bool>(true, true), _wgslsmith_f_op_f32(-2022f * global0.a)), 0u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-273f * var_0.a))))), arg_1.b, ~max(18228u, (0u ^ var_0.c) << (reverseBits(28566u) % 32u)));
    return ~(~arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1165f, -global3[_wgslsmith_index_u32(select(max(abs(0u), _wgslsmith_sub_u32(global0.c, global0.c)), ~func_1(861f, Struct_1(global0.a, -1i, 7628u), global0.a), all(vec2<bool>(false, false)) || true), 21u)], _wgslsmith_div_u32(8332u, _wgslsmith_add_u32(global0.c, 1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.a, 1567f, !(var_0.b >= 1i))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-228f, -731f)))))), global3[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(floor(global0.a)) <= _wgslsmith_f_op_f32(-var_0.a), -vec3<i32>(~u_input.a, _wgslsmith_sub_i32(-1i, -2147483647i), 1i)).c, 21u)], var_0.c);
    global3 = array<i32, 21>();
    global1 = true;
    var var_2 = !vec3<bool>(any(vec3<bool>(true, true, true)) & true, false, ~2290i == var_1.b);
    let var_3 = _wgslsmith_add_vec3_i32(abs(vec3<i32>(func_2(1u, global0.a, select(vec2<bool>(false, true), vec2<bool>(true, var_2.x), false), _wgslsmith_f_op_f32(min(var_0.a, global0.a))).b, func_2(_wgslsmith_mult_u32(1u, global0.c), _wgslsmith_f_op_f32(global0.a * global0.a), !vec2<bool>(var_2.x, var_2.x), var_1.a).b, select(firstLeadingBit(-2147483647i), var_0.b, !var_2.x))), countOneBits(func_4(0i == -u_input.a, var_2.x, var_0, 20799u)));
    var var_4 = var_0.b;
    var_2 = select(vec3<bool>(true, func_4(!var_2.x, !var_2.x, Struct_1(global0.a, 1i, 0u), global0.c).x <= (func_5(var_2.x, var_3).b & ~var_3.x), var_2.x), !vec3<bool>(false, var_2.x, true), vec3<bool>(true, true, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_add_vec4_u32(min(abs(vec4<u32>(1u, 4294967295u, var_1.c, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(28441u, 41522u, 43257u, var_0.c), vec4<u32>(var_0.c, var_1.c, var_0.c, 56181u))), _wgslsmith_add_vec4_u32(vec4<u32>(global0.c, var_0.c, var_0.c, 4294967295u), ~vec4<u32>(global0.c, 4294967295u, var_0.c, var_1.c)))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c, var_0.c), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~0u), ~abs(vec2<u32>(global0.c, 4294967295u)))), global0.a);
}

