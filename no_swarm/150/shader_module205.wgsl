struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(3393u, 0u, 4294967295u, 5638u), vec4<u32>(73600u, 4294967295u, 0u, 1u));

var<private> global4: Struct_2;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-677f, 107f, global4.e.b)) - _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1181f, arg_1), vec3<f32>(652f, arg_1, 307f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2790f, -1469f, -110f)))))))));
    var var_1 = _wgslsmith_div_vec3_i32(~(vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(global4.d.x, arg_0.c, global4.e.c), vec3<i32>(arg_0.c, global4.a.c, 1i))), select(vec3<i32>(0i, _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.c, 0i), vec2<i32>(0i, -2147483647i)), -7933i), firstTrailingBit(vec3<i32>(-global4.a.c, min(-45915i, 0i), arg_2)), false));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(259f, var_0.x, _wgslsmith_f_op_f32(-1441f * global4.a.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, 1943f, arg_0.b))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(abs(global4.a.b)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_3, 30u)]), _wgslsmith_f_op_f32(trunc(var_0.x))))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 992f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global4.b.x, 30u)] * -1715f))))));
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4.b.xyz, vec3<u32>(firstLeadingBit(arg_3 << (_wgslsmith_sub_u32(53983u, u_input.a.x) % 32u)), (~arg_3 & 4294967295u) >> (_wgslsmith_mult_u32(global4.b.x & arg_3, _wgslsmith_clamp_u32(4636u, arg_3, 1u)) % 32u), global4.b.x)), 28u)];
    var var_2 = -44219i;
    return _wgslsmith_f_op_f32(abs(arg_0.b));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec2<bool> {
    let var_0 = arg_0.b.xyy | _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_2, global3[_wgslsmith_index_u32(u_input.a.x, 2u)]) << (_wgslsmith_dot_vec4_u32(global4.b, arg_0.b) % 32u), 4294967295u, arg_2.x), arg_0.b.wyy);
    var var_1 = Struct_3(Struct_2(global4.a, _wgslsmith_div_vec4_u32(vec4<u32>(109272u, arg_2.x, 4294967295u, _wgslsmith_sub_u32(39513u, 1u)), ~select(arg_0.b, vec4<u32>(arg_2.x, var_0.x, arg_0.b.x, 1u), vec4<bool>(arg_0.c.x, false, global4.a.a.x, arg_0.e.e))), !vec2<bool>(select(arg_0.e.d, global4.a.e, false), arg_0.e.e), vec2<i32>(~(-global4.e.c), -26649i), Struct_1(vec2<bool>(!global4.a.a.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.a.x, 30u)])) * _wgslsmith_f_op_f32(-arg_3.x)), -1i, !all(vec4<bool>(true, arg_0.a.a.x, global4.e.a.x, true)), any(vec3<bool>(true, global4.e.a.x, arg_0.c.x)))), var_0.xz, Struct_1(!(!(!vec2<bool>(global4.a.d, global4.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global4.a, 903f, firstTrailingBit(global4.e.c), _wgslsmith_clamp_u32(89025u, u_input.a.x, 24118u)))), arg_0.a.c, true, !all(vec2<bool>(true, true))));
    global0 = array<f32, 30>();
    global3 = array<vec4<u32>, 2>();
    global1 = _wgslsmith_add_u32(u_input.a.x, ~21159u);
    return vec2<bool>(!var_1.c.d, false);
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = Struct_1(vec2<bool>(true, all(!func_2(global2[_wgslsmith_index_u32(u_input.a.x, 28u)], vec4<i32>(arg_0.c.c, 2147483647i, -2147483647i, 1i), global3[_wgslsmith_index_u32(0u, 2u)], vec4<f32>(-1327f, 1000f, arg_0.c.b, global4.e.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, 518f)) - -630f), _wgslsmith_div_i32(global4.d.x, reverseBits(1i)), true, !any(!select(vec4<bool>(false, true, true, global4.a.e), vec4<bool>(false, arg_0.a.c.x, false, false), false)));
    let var_1 = select(global4.a.a, !select(vec2<bool>(arg_0.c.e | var_0.e, false && var_0.d), !(!global4.e.a), all(vec4<bool>(false, false, true, arg_0.a.e.d))), !(arg_0.c.c >= (_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, -2147483647i), arg_0.a.d) << (_wgslsmith_sub_u32(68652u, global4.b.x) % 32u))));
    let var_2 = u_input.a.xx;
    let var_3 = vec2<f32>(global4.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u | global4.b.x, 30u)]) + _wgslsmith_f_op_f32(-1280f - _wgslsmith_f_op_f32(floor(-980f)))));
    var var_4 = ~(~(~vec3<i32>(arg_0.c.c, arg_0.a.d.x >> (global4.b.x % 32u), ~arg_0.c.c)));
    return u_input.a.x;
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(!vec3<bool>(global4.e.d, false, true), select(vec3<bool>(true, true, false), vec3<bool>(arg_0.e.d, global4.a.e, true), vec3<bool>(true, global4.c.x, global4.e.e)), vec3<bool>(true, false, false))), !select(!vec3<bool>(arg_0.c.x, global4.a.e, arg_0.a.a.x), vec3<bool>(arg_0.e.b <= global0[_wgslsmith_index_u32(global4.b.x, 30u)], all(vec3<bool>(true, global4.a.d, false)), any(vec4<bool>(false, global4.c.x, true, true))), global4.e.a.x), !vec3<bool>(all(!vec3<bool>(false, arg_0.e.e, true)), any(select(vec3<bool>(arg_0.e.a.x, true, false), vec3<bool>(false, false, global4.e.d), vec3<bool>(arg_0.a.e, true, global4.c.x))), !(false && arg_0.e.e)));
    var var_1 = true;
    global1 = ~max(_wgslsmith_mod_u32(min(0u, 1u), arg_0.b.x) << (_wgslsmith_mod_u32(20991u, global4.b.x ^ 1u) % 32u), ~(~max(65284u, arg_0.b.x)));
    var var_2 = 1936u;
    var var_3 = -(~arg_0.d);
    return StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -1143f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 30u)] * 1788f))), -1360f)), u_input.a.xz, -(i32(-1i) * -2147483647i), -max((vec3<i32>(var_3.x, -2147483647i, 0i) >> (arg_0.b.xzx % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.e.c, global4.a.c, var_3.x), vec3<i32>(1i, 53117i, arg_0.d.x)), select(vec3<i32>(global4.d.x, var_3.x, global4.e.c), -vec3<i32>(-1i, 1i, 24466i), arg_0.e.e & false)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 28>();
    global3 = array<vec4<u32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.b + 125f) + global4.a.b);
    var_0 = _wgslsmith_f_op_f32(global4.a.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(103f, _wgslsmith_f_op_f32(-global4.a.b)))));
    var var_1 = global2[_wgslsmith_index_u32(98823u, 28u)];
    var var_2 = _wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_mod_u32(~_wgslsmith_div_u32(25125u, 13953u), var_1.b.x));
    let x = u_input.a;
    s_output = func_4(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(~14513u), abs(firstTrailingBit(func_1(Struct_3(Struct_2(global4.e, vec4<u32>(var_1.b.x, 4294967295u, 1436u, var_1.b.x), vec2<bool>(true, global4.a.d), vec2<i32>(-1i, 25386i), var_1.e), var_1.b.zw, Struct_1(vec2<bool>(true, false), -728f, var_1.a.c, true, false)))))), 28u)]);
}

