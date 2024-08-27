struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 32>;

var<private> global3: array<vec2<i32>, 11>;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(44543i, 0i), vec4<bool>(false, true, true, false), vec2<bool>(true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    global1 = abs(u_input.e.x & ~_wgslsmith_dot_vec2_u32(max(u_input.e.zy, vec2<u32>(u_input.a, 6996u)), u_input.e.zz << (u_input.e.zz % vec2<u32>(32u))));
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(select(select(global4.a, _wgslsmith_add_vec2_i32(vec2<i32>(-35434i, arg_2.a.x), vec2<i32>(u_input.d, -2147483647i)), true), abs(global3[_wgslsmith_index_u32(0u, 11u)]), true), select(vec2<i32>(~arg_2.a.x, _wgslsmith_mult_i32(arg_2.a.x, arg_2.a.x)), ~(-vec2<i32>(arg_3, 2147483647i)), !global4.c.x)), -u_input.d);
    global4 = arg_2;
    global1 = firstLeadingBit(10188u);
    return !any(select(select(select(global4.c, vec2<bool>(false, true), true), arg_1.b.xw, select(vec2<bool>(arg_1.b.x, arg_1.b.x), vec2<bool>(false, false), vec2<bool>(false, true))), select(!global4.b.xx, vec2<bool>(true, true), all(vec4<bool>(global4.c.x, global4.c.x, arg_2.b.x, arg_2.b.x))), select(true, arg_1.b.x, false)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(u_input.e.x, 11u)], global4.b, select(!vec2<bool>(any(vec3<bool>(false, global4.b.x, true)), global4.b.x), vec2<bool>(func_3(_wgslsmith_f_op_f32(1000f + 812f), Struct_1(vec2<i32>(u_input.d, global4.a.x), global4.b, vec2<bool>(false, false)), Struct_1(vec2<i32>(global4.a.x, u_input.d), vec4<bool>(true, global4.b.x, global4.b.x, true), global4.c), i32(-1i) * -25875i), !global4.c.x), select(vec2<bool>(true, true), global4.c, global4.c)));
    global4 = Struct_1(global4.a, select(!vec4<bool>(true, any(vec4<bool>(true, true, var_0.c.x, var_0.c.x)), true, var_0.b.x), !vec4<bool>(var_0.c.x, true, any(var_0.b.ywx), !var_0.c.x), !global4.c.x), !var_0.c);
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 2147483647i), -global4.a), !vec4<bool>(!any(var_0.b.wyx), var_0.b.x, func_3(_wgslsmith_f_op_f32(min(879f, 1068f)), Struct_1(var_0.a, vec4<bool>(global4.c.x, true, var_0.b.x, global4.c.x), global4.c), Struct_1(var_0.a, var_0.b, vec2<bool>(true, global4.c.x)), _wgslsmith_mult_i32(var_0.a.x, 0i)), true), select(var_0.c, select(select(vec2<bool>(global4.b.x, false), var_0.b.zx, global4.c.x), vec2<bool>(all(vec2<bool>(global4.b.x, var_0.c.x)), false), vec2<bool>(func_3(1339f, Struct_1(global4.a, vec4<bool>(var_0.b.x, false, var_0.b.x, false), vec2<bool>(true, global4.b.x)), Struct_1(global4.a, vec4<bool>(false, false, var_0.c.x, global4.c.x), var_0.b.wy), u_input.d), all(var_0.b.wy))), true));
    var_0 = Struct_1(~vec2<i32>(var_0.a.x, var_0.a.x), select(!select(global4.b, select(vec4<bool>(var_1.c.x, true, false, true), vec4<bool>(true, var_1.c.x, false, false), var_1.b), vec4<bool>(true, var_0.c.x, var_0.c.x, global4.c.x)), select(vec4<bool>(var_0.c.x, 2147483647i <= u_input.d, func_3(1170f, Struct_1(vec2<i32>(global4.a.x, u_input.d), vec4<bool>(var_1.c.x, false, false, var_0.b.x), global4.b.wy), var_1, -1i), true), vec4<bool>(true, all(vec4<bool>(false, true, var_0.b.x, true)), all(global4.b), var_1.c.x), var_0.b), select(var_0.b, select(vec4<bool>(false, global4.b.x, var_0.b.x, false), vec4<bool>(var_0.c.x, false, true, false), vec4<bool>(true, global4.c.x, var_1.b.x, var_0.b.x)), var_0.c.x & global4.b.x)), select(var_0.b.ww, select(var_0.b.wz, !global4.c, global4.c), var_0.c.x));
    let var_2 = Struct_1(~global3[_wgslsmith_index_u32(select(_wgslsmith_mult_u32(u_input.a, abs(42973u)), ~min(0u, 1u), true), 11u)], vec4<bool>(any(vec3<bool>(true, select(global4.b.x, var_1.b.x, var_1.c.x), true)), false | global4.b.x, var_1.b.x, global4.b.x), !vec2<bool>(true, var_1.b.x));
    return false;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global2 = array<vec3<u32>, 32>();
    return Struct_1(min(_wgslsmith_sub_vec2_i32(arg_1.a, reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, arg_1.a.x), vec2<i32>(arg_1.a.x, 36748i)))), abs(~(-vec2<i32>(arg_1.a.x, global4.a.x)))), select(!select(select(vec4<bool>(global4.c.x, arg_1.c.x, false, false), vec4<bool>(global4.b.x, global4.c.x, global4.c.x, arg_1.b.x), vec4<bool>(arg_1.c.x, global4.b.x, false, arg_1.c.x)), global4.b, !vec4<bool>(global4.c.x, false, false, arg_1.c.x)), vec4<bool>(_wgslsmith_f_op_f32(-arg_0) <= 227f, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, global4.a.x, 11030i, 7920i), vec4<i32>(2147483647i, 29366i, -1i, arg_1.a.x)) >= 0i, arg_1.c.x, true), firstLeadingBit(u_input.b) > ~_wgslsmith_dot_vec3_u32(u_input.e.yyy, global2[_wgslsmith_index_u32(u_input.b, 32u)])), !vec2<bool>(false, !(u_input.e.x == 38199u)));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    return -1i;
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = func_5(u_input.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(160f, -1099f, -1000f, -1254f), vec4<f32>(1458f, 400f, -148f, 677f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1753f, 2274f, -143f, -1000f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-462f, 1000f, 1103f, -1262f))))), vec3<i32>(firstTrailingBit(u_input.d), arg_0.x, ~(-36608i)), func_4(_wgslsmith_f_op_f32(-832f + _wgslsmith_f_op_f32(2008f + _wgslsmith_f_op_f32(f32(-1f) * -923f))), Struct_1(abs(global3[_wgslsmith_index_u32(u_input.b, 11u)]), vec4<bool>(true, global4.b.x | global4.c.x, global4.c.x || true, func_2()), vec2<bool>(true, true))));
    global0 = 1952i;
    global3 = array<vec2<i32>, 11>();
    global3 = array<vec2<i32>, 11>();
    global4 = Struct_1(_wgslsmith_sub_vec2_i32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e.x, 1u), 11u)], arg_0), select(!select(vec4<bool>(true, global4.b.x, global4.c.x, false), global4.b, vec4<bool>(global4.b.x, false, global4.b.x, false)), select(!vec4<bool>(global4.c.x, global4.c.x, true, global4.b.x), vec4<bool>(true, true, true, true), true | select(true, global4.b.x, global4.c.x)), all(!func_4(-427f, Struct_1(vec2<i32>(global4.a.x, var_0), global4.b, vec2<bool>(global4.b.x, global4.c.x))).b)), global4.c);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(590f, -1704f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(408f, 330f)))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-2118f, 1919f), _wgslsmith_div_f32(-1187f, 1017f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -708f) - _wgslsmith_f_op_f32(floor(-1281f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, false, ~u_input.e.x == u_input.e.x), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2085f), 1f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(-30411i, global4.a.x)))), max(2941u, 1u) > (u_input.a >> (abs(36982u) % 32u)), false), vec3<bool>(!(!global4.b.x), func_2(), global4.b.x));
    global2 = array<vec3<u32>, 32>();
    var var_1 = Struct_1(global4.a, !global4.b, vec2<bool>(true, true));
    let var_2 = Struct_1(vec2<i32>(~26400i, ~(-14799i ^ global4.a.x)), vec4<bool>(func_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1066f, 242f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_4(366f, Struct_1(global4.a, global4.b, var_0.xx)), func_4(_wgslsmith_f_op_f32(step(1138f, -535f)), func_4(-1668f, Struct_1(vec2<i32>(25106i, 8367i), vec4<bool>(false, var_1.c.x, true, true), var_1.b.xw))), u_input.d), false, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1339f), Struct_1(~vec2<i32>(u_input.d, var_1.a.x), vec4<bool>(true, global4.b.x, global4.b.x, false), global4.c), Struct_1(var_1.a, func_4(-499f, Struct_1(vec2<i32>(var_1.a.x, 1i), global4.b, var_0.zx)).b, var_0.xz), ~_wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(u_input.b, 11u)], vec2<i32>(u_input.d, u_input.d))), true), vec2<bool>(global4.c.x, true));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, global4.a.x);
}

