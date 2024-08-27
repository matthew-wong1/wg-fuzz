struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-492f, -138f));

var<private> global1: Struct_2 = Struct_2(vec2<f32>(2390f, 631f));

var<private> global2: bool;

var<private> global3: array<f32, 24> = array<f32, 24>(1299f, 212f, 2047f, 325f, 808f, 1098f, 229f, -1792f, -1343f, -293f, 1084f, 1000f, -185f, -2183f, -905f, -908f, 476f, 1000f, -1308f, 312f, -302f, -2032f, 2028f, 702f);

var<private> global4: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_2) -> vec3<bool> {
    global4 = ~(~u_input.c.x);
    let var_0 = select(vec3<bool>(false, all(vec2<bool>(true, false)), true), vec3<bool>(select(true, true, false), true, !all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)))), vec3<bool>(!(!(u_input.a.x <= arg_1)), !(~(-43911i) <= ~u_input.d), true == !all(vec3<bool>(false, true, false))));
    global2 = var_0.x;
    let var_1 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(240f, 1245f, 1413f) + vec3<f32>(global0.a.x, -270f, global3[_wgslsmith_index_u32(1u, 24u)])))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, -131f, arg_2.a.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-168f, -1307f, 146f))))), vec4<i32>(-1i) * -(vec4<i32>(arg_1, -2147483647i, 2147483647i, u_input.d) & vec4<i32>(u_input.a.x, 0i, u_input.d, 74614i)), _wgslsmith_div_u32(~(~arg_0), arg_0), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 247f) * _wgslsmith_f_op_vec2_f32(exp2(global0.a))))), ~select(u_input.c.x, _wgslsmith_add_u32(~arg_0, u_input.c.x), true), var_0.yx, !(arg_0 < arg_0));
    global1 = var_1.a.d;
    return !var_0;
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(arg_2.wwz)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(arg_2.wwx, vec3<f32>(global3[_wgslsmith_index_u32(arg_1, 24u)], 1788f, -1790f))))))) * _wgslsmith_f_op_vec3_f32(-arg_0.a.a)));
    let var_2 = Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 26542u, _wgslsmith_mult_u32(~arg_0.b, 20762u), arg_0.b), max(~vec4<u32>(arg_0.a.c, u_input.c.x, 1u, arg_1), vec4<u32>(~32531u, ~1u, 8492u, u_input.c.x))), vec4<bool>(true, false, true, true));
    let var_3 = arg_0.a.d;
    global1 = arg_0.a.d;
    return select(!vec2<bool>(any(!vec4<bool>(true, true, false, arg_0.d)), false), !vec2<bool>(!(!arg_0.d), var_2.b.x), true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: bool) -> Struct_2 {
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(-arg_1.a), -(~vec4<i32>(8644i, u_input.b, -2147483647i, 2147483647i)), _wgslsmith_div_u32(1u, u_input.c.x), arg_1.d), arg_1.c, select(func_1(arg_1.c, ~(-49813i), Struct_2(_wgslsmith_f_op_vec2_f32(-arg_2.xx))).zy, func_3(Struct_4(Struct_3(vec3<f32>(-551f, -1280f, -689f), arg_1.b, u_input.c.x, arg_0), ~4294967295u, !vec2<bool>(arg_3, false), true), ~u_input.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(262f, arg_2.x, -136f, -247f) - vec4<f32>(1000f, 101f, -1000f, global3[_wgslsmith_index_u32(arg_1.c, 24u)])) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, -242f, global3[_wgslsmith_index_u32(1u, 24u)], arg_1.a.x) * vec4<f32>(arg_2.x, arg_2.x, -1510f, 738f)))), false), arg_3);
    let var_1 = ~60046u;
    var var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(~_wgslsmith_add_i32(firstTrailingBit(-68303i), arg_1.b.x), countOneBits(firstTrailingBit(select(u_input.b, var_0.a.b.x, false))), var_0.a.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, firstTrailingBit(var_0.a.b.x), _wgslsmith_sub_i32(-1i, arg_1.b.x), -1i), vec4<i32>(-1i, 43211i, min(var_0.a.b.x, arg_1.b.x), min(-2147483647i, arg_1.b.x)))), vec4<i32>(arg_1.b.x, var_0.a.b.x, firstLeadingBit(u_input.d) >> (min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.c, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, var_1, 1u, 0u)), ~13983u) % 32u), -33216i));
    var var_3 = Struct_1(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(51387u, u_input.c.x, 49832u, var_1), select(vec4<u32>(19085u, u_input.c.x, 1u, arg_1.c), vec4<u32>(arg_1.c, var_1, var_1, var_1), arg_3))), vec4<bool>(var_0.d, all(select(select(vec3<bool>(false, false, var_0.d), vec3<bool>(true, arg_3, var_0.c.x), vec3<bool>(false, arg_3, true)), vec3<bool>(false, false, var_0.c.x), func_1(31358u, 16873i, Struct_2(vec2<f32>(-501f, 1540f))))), arg_3, ~var_1 != 2473u));
    let var_4 = true;
    return Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.d.a, arg_2.xy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(289f, 221f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.a.x, arg_2.x), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(var_0.b, 24u)], arg_2.x))) - _wgslsmith_f_op_vec2_f32(exp2(var_0.a.a.xy))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(global0.a);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.c.x, 24u)] + global1.a.x), _wgslsmith_f_op_f32(sign(-508f)), all(vec4<bool>(true, true, true, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), -144f, 325f);
    var var_1 = !select(select(func_1(u_input.c.x, _wgslsmith_add_i32(-26066i, 1i), Struct_2(vec2<f32>(var_0.x, global0.a.x))), func_1(_wgslsmith_clamp_u32(u_input.c.x, 10418u, u_input.c.x), -2147483647i << (u_input.c.x % 32u), func_2(Struct_2(global0.a), Struct_3(var_0.yzz, u_input.a, u_input.c.x, Struct_2(vec2<f32>(-2012f, global1.a.x))), var_0.ywy, false)), vec3<bool>(false, true, false)), !vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))), false);
    global3 = array<f32, 24>();
    var var_2 = !(!func_1(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 2147483647i, 2147483647i, -38279i), firstLeadingBit(u_input.a)), Struct_2(var_0.wx)).zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(72964u, 24u)] + _wgslsmith_f_op_f32(floor(-235f)))), u_input.c.x, u_input.a.xxx);
}

