struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<i32, 8>;

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(-1i, vec4<bool>(true, true, true, false), true);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = global3.c;
    let var_1 = global0[_wgslsmith_index_u32(~u_input.a.x, 8u)];
    global2 = -22716i;
    global2 = 2147483647i;
    return global3.a;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global2 = global3.a;
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], !vec4<bool>(arg_1.b.x, true, arg_0.b.x, !all(vec2<bool>(global3.c, false))), true);
    var var_1 = true;
    global3 = global0[_wgslsmith_index_u32(~0u, 8u)];
    var var_2 = u_input.a.x;
    return 4294967295u;
}

fn func_2() -> bool {
    var var_0 = abs(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, u_input.a.x, u_input.a.x)), ~vec3<u32>(4294967295u, u_input.a.x, 21289u)));
    global2 = global3.a;
    global0 = array<Struct_1, 8>();
    let var_1 = -18037i;
    var var_2 = global0[_wgslsmith_index_u32(~firstTrailingBit(func_3(Struct_1(4899i, vec4<bool>(global3.c, global3.b.x, global3.c, global3.b.x), any(global3.b)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyw, vec3<u32>(1u, var_0.x, 4294967295u) ^ u_input.a.xyy), 8u)])), 8u)];
    return all(select(vec4<bool>(true, !all(global3.b.xx), global3.c, 1409f > _wgslsmith_f_op_f32(trunc(977f))), select(!global3.b, select(vec4<bool>(global3.c, global3.c, var_2.b.x, var_2.c), vec4<bool>(global3.b.x, global3.c, var_2.b.x, false), true), all(!var_2.b.wzz)), all(vec4<bool>(false, !global3.b.x, var_2.b.x, true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = arg_1.b.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-360f, -834f), vec2<f32>(-747f, 1337f), vec2<bool>(arg_1.b.x, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1218f, 827f) * vec2<f32>(673f, -1114f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(741f, 1f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1794f, 1293f) * vec2<f32>(-777f, 243f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-239f, 1603f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-829f, 193f))))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(2058f, -451f)))))))));
    global1 = array<i32, 8>();
    var var_2 = Struct_1(-26482i, !global3.b, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(1013f - _wgslsmith_f_op_f32(var_1.x * 1000f)))) > _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1204f, var_1.x)))));
    let var_3 = Struct_1(arg_1.a, select(select(vec4<bool>(all(vec4<bool>(arg_3.x, var_2.c, true, false)), global3.b.x, arg_2.x, any(var_2.b.ywz)), vec4<bool>(func_2(), true, true, arg_3.x), false), vec4<bool>(~0u <= arg_0.x, select(true & arg_3.x, false || global3.c, true), 40430i != global1[_wgslsmith_index_u32(max(u_input.a.x, 1u), 8u)], any(select(var_2.b.wyy, arg_1.b.zxy, vec3<bool>(true, true, var_2.b.x)))), !(var_1.x > _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))), ~min(global1[_wgslsmith_index_u32(u_input.a.x, 8u)] | 8899i, _wgslsmith_clamp_i32(global3.a, -16321i, -17200i)) <= -countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, 50584i), vec2<i32>(global3.a, -31944i))));
    return vec2<f32>(var_1.x, _wgslsmith_div_f32(1064f, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1191f);
    var var_1 = _wgslsmith_f_op_vec2_f32(func_4(firstLeadingBit(vec2<u32>(1u, u_input.a.x | (22078u & u_input.a.x))), Struct_1(-global3.a, !global3.b, !(!any(vec2<bool>(false, false)))), vec2<bool>(func_2(), !(!any(global3.b.wy))), global3.b.zz));
    global1 = array<i32, 8>();
    global2 = -17816i;
    global0 = array<Struct_1, 8>();
    let var_2 = global0[_wgslsmith_index_u32(~14389u, 8u)];
    let var_3 = Struct_1(-62567i, select(select(global3.b, var_2.b, select(var_2.b, !global3.b, true)), vec4<bool>(false != var_2.b.x, true, all(!var_2.b), !global3.b.x), true), !(var_1.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(-var_1.x), vec2<i32>(~(~2147483647i), ~countOneBits(-17583i)) & max(countOneBits(vec2<i32>(39082i, global3.a)), vec2<i32>(-1i) * -vec2<i32>(var_2.a, 2147483647i)), ~vec4<u32>(u_input.a.x, ~_wgslsmith_clamp_u32(1u, 29024u, u_input.a.x), ~countOneBits(u_input.a.x), u_input.a.x), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, var_2.a) & vec2<i32>(var_3.a, var_3.a), countOneBits(vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], var_3.a))), vec2<i32>(countOneBits(var_2.a), _wgslsmith_mod_i32(global3.a, -1i))), vec2<i32>(var_3.a, _wgslsmith_mult_i32(-2147483647i, -global1[_wgslsmith_index_u32(28100u, 8u)]))));
}

