struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_add_u32(arg_1.b.b.x, 3868u);
    var var_1 = Struct_2(Struct_1(-vec3<i32>(-47363i, -arg_0, arg_0), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(94376u, 14u)], 15628u), ~vec2<u32>(35698u, arg_1.b.c.x)), vec2<u32>(34132u, global0[_wgslsmith_index_u32(u_input.a.x << (5999u % 32u), 14u)])), u_input.a, reverseBits(-_wgslsmith_mult_i32(arg_0, 1i))), !((_wgslsmith_sub_u32(9694u, u_input.a.x) >= 16906u) || all(vec2<bool>(true, true))));
    let var_2 = (any(vec2<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(false, true, var_1.b, var_1.b)))) || !(any(vec2<bool>(var_1.b, false)) & any(vec4<bool>(var_1.b, true, true, var_1.b)))) | any(!select(select(vec4<bool>(true, var_1.b, true, true), vec4<bool>(false, true, var_1.b, var_1.b), vec4<bool>(false, var_1.b, var_1.b, var_1.b)), vec4<bool>(var_1.b, true, var_1.b, false), vec4<bool>(var_1.b, true, false, var_1.b)));
    var var_3 = firstTrailingBit(max(select(~3383u, _wgslsmith_div_u32(arg_1.b.c.x, 78516u), true), _wgslsmith_sub_u32(1u, 0u & var_1.a.c.x))) & max(global0[_wgslsmith_index_u32(reverseBits(0u), 14u)], 6653u);
    let var_4 = vec2<bool>(var_1.b, !(!var_2));
    return 1431f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(select(-abs(vec3<i32>(2147483647i, 5973i, -2147483647i)), vec3<i32>(_wgslsmith_div_i32(4376i, 2147483647i), -30111i, ~2147483647i), true) << (vec3<u32>(select(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(33385u, 14u)], 87951u), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)]), true), 1u, 4294967295u) % vec3<u32>(32u)), countOneBits(~u_input.a.zy), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 28628u, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, u_input.a.x), u_input.a.x | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)], 14u)]), _wgslsmith_dot_vec2_u32(select(u_input.a.xy, u_input.a.xx, false), vec2<u32>(u_input.a.x, 5704u)))), 1i);
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let var_1 = select(any(vec4<bool>(select(true, true, all(vec2<bool>(true, false))), !any(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, false)), true)), _wgslsmith_mult_i32(select(0i, i32(-1i) * -2147483647i, all(vec3<bool>(false, true, true))), -firstTrailingBit(var_0.a.x)) == reverseBits(var_0.d), true);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-359f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(var_0.a.x, Struct_4(-856f, var_0)))))))), 1f);
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_5 {
    var var_0 = -249f < arg_1.d;
    var_0 = true;
    var_0 = !(!any(vec3<bool>(any(vec4<bool>(false, false, false, true)), true, arg_1.c == arg_0.a.a.x)));
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    return Struct_5(~vec4<u32>(arg_1.a.c.x, ~(~0u), 70747u, arg_0.a.c.x & (arg_1.a.c.x & 0u)));
}

fn func_5(arg_0: Struct_5, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_4) -> vec2<u32> {
    global0 = array<u32, 14>();
    var var_0 = func_4(Struct_3(func_2(), -firstTrailingBit(vec3<i32>(arg_1, 0i, 1i)), arg_1, _wgslsmith_f_op_f32(abs(arg_2.x))), Struct_3(arg_3.b, ~(-(~vec3<i32>(-2517i, arg_3.b.a.x, arg_3.b.d))), -20942i, 1f)).a.xyx;
    var var_1 = _wgslsmith_f_op_f32(-1675f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1398f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(arg_3.a, 391f)))))));
    var_0 = vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, arg_0.a.x, _wgslsmith_add_u32(0u, 64546u), _wgslsmith_mult_u32(0u, var_0.x)), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 4294967295u, 36173u) >> (arg_0.a % vec4<u32>(32u))), 92542u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_3.b.c.yx, ~vec2<u32>(36594u, 4963u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.xx, firstLeadingBit(u_input.a.xz)), vec2<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 14u)], u_input.a.x, u_input.a.x), vec3<u32>(15553u, 1u, arg_0.a.x))))));
    var var_2 = arg_1;
    return select(vec2<u32>(1u, ~arg_3.b.c.x), vec2<u32>(u_input.a.x, 40743u), !(!all(vec3<bool>(true, false, true)) & any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec2<u32>) -> u32 {
    var var_0 = firstTrailingBit(arg_0.b.b.x);
    global0 = array<u32, 14>();
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(arg_0.b.d, ~abs(arg_0.b.a.x)), arg_0.b.a.x, -1i), func_5(func_4(Struct_3(func_2(), -arg_0.b.a, 2147483647i, -341f), Struct_3(arg_0.b, arg_0.b.a, arg_0.b.d & -57065i, _wgslsmith_f_op_f32(arg_0.a * arg_0.a))), (arg_0.b.d ^ arg_0.b.a.x) & arg_0.b.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, -1000f), vec4<f32>(943f, arg_0.a, arg_0.a, 1000f))), vec4<f32>(arg_0.a, -2257f, -987f, arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, arg_0.a, arg_0.a, arg_0.a)))), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -622f)), arg_0.b)), ~(~vec3<u32>(37815u, _wgslsmith_div_u32(arg_1.x, arg_2.x), ~arg_1.x)), arg_0.b.a.x >> (1u % 32u));
    let var_2 = arg_0.b.a.x;
    var_0 = 11842u & ~global0[_wgslsmith_index_u32(79750u, 14u)];
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    var var_0 = Struct_5(abs(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(func_1(Struct_4(-779f, Struct_1(vec3<i32>(-1i, 0i, 10931i), u_input.a.yz, vec3<u32>(global0[_wgslsmith_index_u32(39465u, 14u)], 0u, 51665u), 0i)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, global0[_wgslsmith_index_u32(9918u, 14u)], 25140u), vec4<u32>(1u, 51320u, 4294967295u, global0[_wgslsmith_index_u32(20005u, 14u)])), u_input.a.xx), 14u)], u_input.a.x, countOneBits(global0[_wgslsmith_index_u32(28941u, 14u)] ^ 50390u))));
    let var_1 = Struct_5(~countOneBits(func_4(Struct_3(Struct_1(vec3<i32>(-1i, 1i, -2147483647i), var_0.a.xy, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], u_input.a.x, var_0.a.x), -1i), vec3<i32>(21695i, -2147483647i, 3884i), -794i, 807f), Struct_3(Struct_1(vec3<i32>(-2147483647i, 0i, 1i), vec2<u32>(global0[_wgslsmith_index_u32(55612u, 14u)], u_input.a.x), vec3<u32>(1u, global0[_wgslsmith_index_u32(33849u, 14u)], u_input.a.x), 1i), vec3<i32>(-10004i, 1i, 0i), -1i, -276f)).a));
    var var_2 = countOneBits(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_0.a.x), _wgslsmith_add_u32(79995u, global0[_wgslsmith_index_u32(var_1.a.x, 14u)])), func_2().b)));
    let var_3 = false;
    let var_4 = Struct_5(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, 0i << (var_4.a.x % 32u), 10979i, -(~(~(-1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1131f, 486f, 796f, -822f)))))));
}

