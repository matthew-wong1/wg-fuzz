struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1667f, -739f);

var<private> global1: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(52636i, 2147483647i, -11541i), vec3<i32>(31183i, 12744i, 1i), vec3<i32>(0i, -8050i, 7036i), vec3<i32>(-15310i, -6495i, -37239i), vec3<i32>(-1i, 1i, 8626i), vec3<i32>(-1i, 28628i, 2147483647i), vec3<i32>(-3612i, -15960i, 1i), vec3<i32>(47741i, 21030i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec3<i32>(1i, 1i, -53242i), vec3<i32>(-26104i, -8046i, 1i), vec3<i32>(0i, -20016i, -29664i), vec3<i32>(i32(-2147483648), 20833i, -273i), vec3<i32>(46438i, 17350i, 1i), vec3<i32>(2147483647i, 0i, 1i), vec3<i32>(23513i, 30515i, -63577i), vec3<i32>(-1i, 2147483647i, -31425i), vec3<i32>(-21538i, -1i, -2186i), vec3<i32>(0i, i32(-2147483648), -21168i), vec3<i32>(1i, -16632i, -1i), vec3<i32>(-49476i, 0i, -6558i), vec3<i32>(2147483647i, 22913i, i32(-2147483648)), vec3<i32>(1i, 3351i, -1i), vec3<i32>(-55187i, -12287i, -13788i), vec3<i32>(24860i, 2147483647i, -28079i), vec3<i32>(-1i, -21103i, i32(-2147483648)), vec3<i32>(-15113i, -1i, i32(-2147483648)));

var<private> global2: array<vec2<bool>, 9>;

var<private> global3: array<Struct_2, 26>;

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> i32 {
    var var_0 = vec2<u32>(1u, select(reverseBits(1u), abs(0u), true));
    var var_1 = select(vec4<bool>(global4.b.e, true, arg_1.a.b.b.x, all(select(vec4<bool>(arg_0.c, arg_1.b, global4.b.d.x, false), select(vec4<bool>(true, true, arg_1.b, arg_0.b), vec4<bool>(true, true, false, true), arg_1.b), any(vec4<bool>(arg_0.a.b.d.x, true, arg_1.b, true))))), vec4<bool>(true, true, arg_0.a.b.e, true), global4.b.e);
    var var_2 = arg_0.a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(global0.x + -853f), 1349f);
    let var_4 = -359f;
    return firstLeadingBit(var_2.b.a.x) << ((59926u << (var_0.x % 32u)) % 32u);
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(all(vec3<bool>(true, true, true)), global4.b);
    var var_1 = global3[_wgslsmith_index_u32(25686u, 26u)];
    let var_2 = 3470i;
    let var_3 = !(!select(vec2<bool>(var_1.a || global4.a, arg_2.e), global2[_wgslsmith_index_u32(countOneBits(14811u), 9u)], global2[_wgslsmith_index_u32(countOneBits(1u), 9u)]));
    let var_4 = Struct_3(var_0, var_0.b.d.x, any(!vec2<bool>(all(arg_2.b.yz), !global4.b.b.x)));
    return 309f;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: Struct_3) -> f32 {
    var var_0 = arg_2.a.b;
    global3 = array<Struct_2, 26>();
    let var_1 = arg_2.b;
    let var_2 = 670f;
    let var_3 = 2147483647i;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_3(Struct_3(Struct_2(false, arg_2.a.b), true, false), arg_2), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-162f, -1335f, 646f) - vec3<f32>(-138f, var_2, -192f))), Struct_1(-var_0.a, global4.b.b, -var_0.c, select(arg_2.a.b.b.xy, global2[_wgslsmith_index_u32(4294967295u, 9u)], vec2<bool>(false, true)), all(vec4<bool>(global4.a, var_1, arg_2.a.a, false))))) + 913f)));
}

fn func_5(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(~4294967295u, 26u)], !(global4.a | any(vec3<bool>(true, false, true))), !(!(!(!global4.a))));
    global3 = array<Struct_2, 26>();
    var var_1 = var_0;
    let var_2 = var_1.a.b;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(185f * global0.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, 601f), vec2<f32>(global0.x, -428f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(491f, arg_0))), vec2<f32>(_wgslsmith_f_op_f32(-2167f - 263f), 1858f), vec2<bool>(all(vec4<bool>(var_1.a.a, var_2.d.x, var_0.b, var_0.b)), true))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, -875f), vec2<f32>(-1337f, -380f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1820f, -1359f) * vec2<f32>(arg_0, arg_0))))));
    return Struct_1(~abs(max(vec3<i32>(global4.b.a.x, var_2.c.x, var_2.c.x), global4.b.a)), select(select(var_1.a.b.b, select(select(var_0.a.b.b, vec3<bool>(var_0.c, true, false), true), select(var_2.b, vec3<bool>(true, var_1.b, true), vec3<bool>(var_2.b.x, var_2.d.x, var_1.a.b.e)), true), var_1.c), vec3<bool>(global4.b.e, false, false), false), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.b.c.x, -2147483647i, -2147483647i, var_0.a.b.c.x), vec4<i32>(u_input.a, -1i, 9908i, global4.b.c.x)) & -2147483647i, u_input.a), var_1.a.b.d, !global4.b.d.x);
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_2(true, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(global1[_wgslsmith_index_u32(4294967295u, 27u)], vec4<f32>(636f, global0.x, 529f, -1587f), Struct_3(global3[_wgslsmith_index_u32(2888u, 26u)], arg_0.x, false))))))));
    var var_1 = Struct_3(var_0, arg_0.x, arg_0.x == true);
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(min(global4.b.a.xz, -vec2<i32>(2147483647i, global4.b.a.x)), global4.b.c ^ -global4.b.a.yy) >> (0u % 32u), func_1(!(!(!global4.b.d))), func_5(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -1015f))).c.x);
    global1 = array<vec3<i32>, 27>();
    var_0 = ~(~select(~vec4<i32>(0i, u_input.a, 0i, u_input.a), _wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, -2147483647i, 2147483647i, -55982i), -vec4<i32>(2147483647i, -28298i, 2041i, -2147483647i)), select(!vec4<bool>(false, global4.a, true, false), vec4<bool>(false, false, global4.a, global4.a), select(false, false, global4.a))));
    let var_1 = func_5(-225f);
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(45319u, _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(~31183u), 64881u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)))), 26u)];
    let var_2 = global0.x;
    global2 = array<vec2<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.x), ~min(firstTrailingBit(41567u) & _wgslsmith_add_u32(1u, 1u), ~0u));
}

