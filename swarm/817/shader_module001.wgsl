struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30>;

var<private> global1: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(1083f, -1000f, -655f), vec3<f32>(1488f, -180f, -1670f), vec3<f32>(1000f, -680f, 1111f), vec3<f32>(-794f, 457f, -713f), vec3<f32>(489f, 848f, 1054f));

var<private> global2: array<i32, 26> = array<i32, 26>(0i, 40584i, 0i, 12354i, -1648i, -5910i, 18390i, -13409i, -44422i, -1i, -1i, -16424i, 1i, 0i, -41291i, 37336i, 2147483647i, -47035i, 0i, -1i, -1i, i32(-2147483648), 1i, -27733i, 15355i, 55314i);

var<private> global3: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    return arg_2;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1183f);
    global3 = Struct_1(global3.a, select(vec3<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(arg_0, arg_1.b.x)), arg_0), arg_1.c, arg_1.c.x), arg_1.c);
    let var_1 = ~0i;
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-413f * 1166f)) + _wgslsmith_f_op_f32(floor(-357f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(854f - _wgslsmith_f_op_f32(round(241f))))), -294f));
    global1 = array<vec3<f32>, 5>();
    return 0i;
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: f32, arg_3: bool) -> u32 {
    global1 = array<vec3<f32>, 5>();
    var var_0 = select(reverseBits(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.a.x, 1u), 26u)] | func_3(any(arg_0), Struct_1(u_input.d, vec3<bool>(arg_0.x, arg_0.x, false), global0[_wgslsmith_index_u32(6038u, 30u)]), func_2(Struct_1(global3.a, global0[_wgslsmith_index_u32(72236u, 30u)], global3.b), vec4<f32>(1353f, arg_2, arg_2, 1168f), Struct_1(global3.a, vec3<bool>(arg_0.x, false, false), vec3<bool>(global3.b.x, false, true)), true), vec4<i32>(u_input.e, global2[_wgslsmith_index_u32(global3.a.x, 26u)], 1i, u_input.e))), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(global3.a.x, 26u)] & 0i, u_input.e, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.a.x, 44677u), 26u)] | global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, 35024u), 26u)], 24408i), -(~(-vec4<i32>(-1i, -62188i, u_input.e, 46340i)))), !arg_0.x);
    let var_1 = -116f;
    let var_2 = vec3<i32>(-global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, global3.a.x), 26u)], _wgslsmith_div_i32(-u_input.e, global2[_wgslsmith_index_u32(~71346u, 26u)]) ^ global2[_wgslsmith_index_u32(global3.a.x, 26u)], u_input.e) >> ((~(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global3.a.x, global3.a.x), vec3<u32>(global3.a.x, global3.a.x, global3.a.x))) >> (((vec3<u32>(1u, u_input.b, global3.a.x) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) << (max(abs(vec3<u32>(25061u, 32509u, u_input.d.x)), countOneBits(vec3<u32>(global3.a.x, global3.a.x, global3.a.x))) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = -1000f;
    return ~countOneBits(global3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.e << (func_1(global3.b, _wgslsmith_f_op_f32(sign(-1462f)), _wgslsmith_f_op_f32(ceil(-739f)), true) % 32u);
    global0 = array<vec3<bool>, 30>();
    let var_1 = Struct_2(-49305i & (u_input.e ^ _wgslsmith_clamp_i32(45682i, global2[_wgslsmith_index_u32(4294967295u, 26u)], firstLeadingBit(global2[_wgslsmith_index_u32(4294967295u, 26u)]))), -1250f);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1085f - var_1.b), 1000f)) * var_1.b));
    let var_3 = Struct_1(_wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(u_input.d, reverseBits(vec2<u32>(global3.a.x, 37424u)), vec2<u32>(u_input.d.x, u_input.d.x) | vec2<u32>(53917u, 21636u)), global3.a), !(!select(vec3<bool>(true, global3.c.x, global3.b.x), !global0[_wgslsmith_index_u32(global3.a.x, 30u)], true)), func_2(func_2(func_2(func_2(Struct_1(vec2<u32>(46561u, global3.a.x), vec3<bool>(global3.c.x, true, true), vec3<bool>(false, global3.c.x, global3.b.x)), vec4<f32>(var_1.b, -1626f, var_1.b, var_1.b), Struct_1(global3.a, global0[_wgslsmith_index_u32(global3.a.x, 30u)], vec3<bool>(global3.b.x, global3.b.x, false)), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, var_1.b, 1291f)), Struct_1(global3.a, global0[_wgslsmith_index_u32(4804u, 30u)], vec3<bool>(global3.b.x, global3.c.x, global3.c.x)), true), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, var_1.b, -147f, -273f)))), Struct_1(_wgslsmith_add_vec2_u32(global3.a, vec2<u32>(global3.a.x, 18985u)), global3.b, vec3<bool>(true, true, true)), !global3.b.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2010f), _wgslsmith_f_op_f32(var_1.b + 561f), _wgslsmith_f_op_f32(-var_1.b), -1000f))), func_2(func_2(Struct_1(vec2<u32>(4294967295u, u_input.b), vec3<bool>(global3.c.x, true, false), vec3<bool>(global3.c.x, true, global3.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, 1000f, -1000f, var_1.b)), func_2(Struct_1(u_input.d, vec3<bool>(false, global3.c.x, global3.b.x), global0[_wgslsmith_index_u32(global3.a.x, 30u)]), vec4<f32>(-1233f, var_1.b, var_1.b, 2864f), Struct_1(vec2<u32>(global3.a.x, 3177u), global3.c, vec3<bool>(global3.c.x, true, global3.c.x)), true), !global3.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, -175f, 584f, 270f) * vec4<f32>(-674f, var_1.b, -238f, -1149f))), func_2(Struct_1(u_input.d, vec3<bool>(global3.c.x, false, false), vec3<bool>(true, true, global3.b.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b, 586f, -441f, -1096f) - vec4<f32>(362f, var_1.b, var_1.b, 221f)), Struct_1(vec2<u32>(1u, 0u), global0[_wgslsmith_index_u32(1u, 30u)], vec3<bool>(true, false, false)), any(vec4<bool>(global3.b.x, global3.b.x, false, true))), false), !global3.c.x).b);
    var_2 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(1084f);
}

