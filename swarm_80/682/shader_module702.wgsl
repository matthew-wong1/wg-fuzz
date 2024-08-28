struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(-1108f, false), Struct_2(vec4<i32>(-2953i, 5832i, 33556i, 1i), vec3<u32>(1u, 48685u, 1u), vec4<bool>(true, false, true, false)), true, 4294967295u);

var<private> global1: f32 = 476f;

var<private> global2: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true));

var<private> global3: array<vec4<i32>, 11>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-global0.a.a), arg_1.b), Struct_2(select(_wgslsmith_sub_vec4_i32(max(global3[_wgslsmith_index_u32(global0.b.b.x, 11u)], arg_0.b.a), vec4<i32>(arg_0.b.a.x, -12433i, 2147483647i, arg_0.b.a.x)), ~vec4<i32>(-38460i, 24510i, -2147483647i, 0i) | vec4<i32>(-33186i, arg_0.b.a.x, u_input.a, -31892i), select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.b.b.x, arg_0.b.b.x), 30u)], vec4<bool>(arg_0.c, arg_0.b.c.x, global0.c, arg_0.b.c.x), arg_1.b)), ~arg_0.b.b, global2[_wgslsmith_index_u32(~arg_0.d, 30u)]), !(!(!(!arg_1.b))), global0.d);
    var_0 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2056f, arg_1.a, 564f, global0.a.a) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1283f, arg_0.a.a, 1000f, 1100f))))))) - vec4<f32>(global0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1282f - arg_0.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-282f)) * arg_1.a), var_0.a.a));
}

fn func_2() -> Struct_1 {
    global3 = array<vec4<i32>, 11>();
    global3 = array<vec4<i32>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a, global0.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-459f, global0.a.a))))), global0.a.a) * _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(_wgslsmith_f_op_f32(round(-1446f)), global0.b.a.x != 2147483647i), global0.b, all(global2[_wgslsmith_index_u32(global0.b.b.x, 30u)]), global0.b.b.x >> (~1u % 32u)), Struct_1(660f, false))));
    return global0.a;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(global0.a.a, arg_2.x), Struct_2(~vec4<i32>(0i, global0.b.a.x, -2147483647i, 0i), vec3<u32>(4294967295u, ~arg_0, global0.b.b.x), global2[_wgslsmith_index_u32(arg_0, 30u)]), all(select(global0.b.c.yzy, arg_2, arg_2.x != arg_3.b)), global0.b.b.x), arg_3));
    var var_1 = 1u << (~(~(~arg_0)) % 32u);
    global0 = Struct_3(func_2(), Struct_2(global0.b.a, (global0.b.b << (global0.b.b % vec3<u32>(32u))) >> (global0.b.b % vec3<u32>(32u)), !vec4<bool>(2606f > global0.a.a, global0.b.c.x, true, true && arg_3.b)), arg_3.b, 1u);
    var var_2 = _wgslsmith_sub_u32(firstTrailingBit(1u), global0.d);
    global0 = Struct_3(global0.a, Struct_2(firstLeadingBit(select(vec4<i32>(u_input.a, 2147483647i, global0.b.a.x, global0.b.a.x), ~global3[_wgslsmith_index_u32(arg_0, 11u)], false | global0.b.c.x)), _wgslsmith_mod_vec3_u32(select(~global0.b.b, vec3<u32>(global0.d, 0u, 0u), arg_2), ~global0.b.b), !global0.b.c), true, global0.b.b.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1202f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a + var_0.x)))), true);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_3(global0.a, global0.b, global0.c, global0.b.b.x >> (select(_wgslsmith_add_u32(~global0.d, 1u), ~(~global0.b.b.x), true) % 32u));
    let var_1 = any(vec2<bool>(any(!select(global2[_wgslsmith_index_u32(719u, 30u)], global2[_wgslsmith_index_u32(1u, 30u)], arg_1.x)), !(!any(vec2<bool>(true, arg_1.x)))));
    global0 = Struct_3(func_4(~0u, -114f, vec3<bool>(all(global2[_wgslsmith_index_u32(0u, 30u)]), select(global0.c, true, all(vec4<bool>(var_0.c, var_1, var_0.a.b, global0.a.b))), false), func_2()), Struct_2(vec4<i32>(0i, 0i, 0i, abs(global0.b.a.x)), _wgslsmith_mult_vec3_u32(var_0.b.b, var_0.b.b), global0.b.c), any(vec2<bool>((var_0.a.b && false) & !arg_1.x, max(0i, global0.b.a.x) > ~var_0.b.a.x)), var_0.d);
    var var_2 = Struct_4(4294967295u, vec3<i32>(arg_0, global0.b.a.x, arg_0));
    global2 = array<vec4<bool>, 30>();
    return -438f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global0.a.a, global0.a.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(func_1(u_input.a >> (global0.d % 32u), !vec2<bool>(global0.c, global0.c)))))));
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(ceil(401f)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-413f)), var_1.a)) + 235f) - _wgslsmith_f_op_vec4_f32(func_3(Struct_3(func_4(global0.d, global0.a.a, select(global0.b.c.ywx, global0.b.c.zyz, var_1.b), Struct_1(var_1.a, global0.b.c.x)), Struct_2(_wgslsmith_clamp_vec4_i32(global3[_wgslsmith_index_u32(global0.d, 11u)], global0.b.a, vec4<i32>(28329i, u_input.a, global0.b.a.x, u_input.a)), ~vec3<u32>(1u, 29152u, global0.d), global2[_wgslsmith_index_u32(global0.d, 30u)]), true, select(~global0.b.b.x, global0.d, true)), func_2())).x);
    global2 = array<vec4<bool>, 30>();
    var var_3 = max(countOneBits(9823u), abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(global0.b.b.zz, global0.b.b.xz), ~global0.b.b.yz)));
    var var_4 = global0.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(abs(global0.b.b.x), 35841u), 1u, 523f, max(_wgslsmith_mod_u32(global0.d, _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.b.b.x, global0.d), firstTrailingBit(global0.d))), global0.b.b.x));
}

