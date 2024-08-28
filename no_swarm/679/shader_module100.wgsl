struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(true, false), -1468f, vec2<bool>(true, true), 7484u, 289f), Struct_1(vec2<bool>(true, true), -489f, vec2<bool>(true, false), 63009u, -597f));

var<private> global2: array<Struct_1, 9>;

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec2<bool> {
    global3 = !(!select(vec4<bool>(true, true, true || global3.x, any(vec4<bool>(false, global3.x, false, global3.x))), !(!vec4<bool>(global3.x, global3.x, false, false)), vec4<bool>(global3.x, global3.x & global3.x, global3.x, any(global3.wy))));
    global1 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_mod_vec2_i32(-firstTrailingBit(-vec2<i32>(-11165i, u_input.b)), ~(~(~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 5653i), vec2<i32>(u_input.a, u_input.b)))));
    var var_1 = global2[_wgslsmith_index_u32(min(~(~max(_wgslsmith_clamp_u32(4294967295u, 0u, 23738u), 44071u)), _wgslsmith_sub_u32(select(_wgslsmith_mult_u32(1u, ~0u), ~9546u, !all(vec3<bool>(global3.x, true, global3.x))), _wgslsmith_mult_u32(1u, ~(~1u)))), 9u)];
    var var_2 = global3.x;
    return var_1.c;
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(!arg_1.a.a, 1001f, vec2<bool>(global3.x, arg_1.a.a.x), ~42286u, -1000f);
    var var_1 = false;
    var var_2 = firstTrailingBit(abs(~_wgslsmith_add_i32(-2936i | u_input.b, _wgslsmith_mult_i32(24791i, arg_1.b.x))));
    var var_3 = any(vec3<bool>((arg_0 >= _wgslsmith_dot_vec4_u32(vec4<u32>(17155u, 49156u, arg_1.a.d, 0u), vec4<u32>(var_0.d, 31853u, 0u, 4294967295u))) || true, true, !var_0.c.x));
    let var_4 = func_1().x;
    return !global3.wwx;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<f32>) -> i32 {
    var var_0 = ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.a.d, 0u, arg_1.a.d, arg_1.a.d), vec4<u32>(~8335u, ~29545u, select(arg_1.a.d, 37923u, arg_1.a.c.x), ~arg_1.a.d)));
    global3 = vec4<bool>(all(arg_1.a.a), !all(!global3.xwy) | !all(func_3(1u, arg_1)), true, true);
    let var_1 = global3.yxy;
    global3 = vec4<bool>(all(!vec3<bool>(arg_1.a.a.x, true, true)), all(!select(!vec4<bool>(var_1.x, global3.x, false, false), !vec4<bool>(false, arg_1.a.a.x, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1.a.c.x, global3.x, var_1.x, var_1.x), arg_1.a.a.x))), func_1().x || all(arg_1.a.a), false);
    let var_2 = vec4<bool>(arg_1.a.c.x, !func_1().x && (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(arg_2.x)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.e) * _wgslsmith_f_op_f32(-arg_2.x))), any(select(vec4<bool>(func_3(var_0.x, arg_1).x, select(true, var_1.x, false), true, func_1().x), vec4<bool>(global3.x, true, !var_1.x, true), !global3.x)), !(abs(i32(-1i) * -16317i) == abs(_wgslsmith_mod_i32(u_input.a, u_input.b))));
    return u_input.b;
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec3<u32> {
    var var_0 = Struct_1(select(vec2<bool>(true, any(select(vec4<bool>(true, true, global3.x, arg_0), vec4<bool>(true, arg_0, true, false), arg_0))), !(!select(vec2<bool>(true, true), vec2<bool>(global3.x, true), global3.x)), !(-114f < _wgslsmith_f_op_f32(round(2188f)))), _wgslsmith_f_op_f32(min(1498f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -612f) + -1630f)))), !(!select(func_1(), global3.xz, true)), 4294967295u, -1033f);
    var var_1 = !func_1().x;
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.yx, vec2<u32>(1u, 1u)), 9u)], vec2<i32>(~1i, _wgslsmith_mod_i32(u_input.b, u_input.b)));
    var var_3 = Struct_2(global2[_wgslsmith_index_u32(arg_2.x, 9u)], select(var_2.b, var_2.b, global3.x));
    let var_4 = Struct_2(var_3.a, arg_1);
    return arg_2.zwy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(-1227f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1727f, _wgslsmith_f_op_f32(min(213f, -330f))))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1037f, -537f)))) + 499f), -362f), _wgslsmith_f_op_f32(883f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -777f), -949f))), all(!(!vec4<bool>(global3.x, false, false, global3.x)))));
    var var_0 = global2[_wgslsmith_index_u32(71296u, 9u)];
    var var_1 = vec4<bool>(any(!select(vec3<bool>(true, var_0.c.x, var_0.c.x), global3.zwx, vec3<bool>(global3.x, global3.x, true))), global3.x, var_0.c.x, var_0.d > _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_sub_u32(var_0.d, var_0.d)));
    var var_2 = Struct_1(select(select(var_1.zy, var_1.xw, any(!vec4<bool>(var_0.c.x, false, var_1.x, true))), func_1(), _wgslsmith_div_f32(var_0.e, 1079f) <= -694f), -1777f, !(!select(!vec2<bool>(global3.x, var_0.a.x), !vec2<bool>(false, global3.x), vec2<bool>(var_0.c.x, true))), ~77788u, var_0.e);
    var var_3 = true;
    global1 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e, func_4(global3.x, _wgslsmith_clamp_vec2_i32(vec2<i32>(~0i, -2147483647i), vec2<i32>(2147483647i, func_2(vec2<f32>(var_0.e, var_0.b), Struct_2(global2[_wgslsmith_index_u32(var_2.d, 9u)], vec2<i32>(u_input.b, u_input.b)), vec2<f32>(var_2.e, 1691f))), vec2<i32>(-1i, 1i)), vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d, 37043u), abs(vec2<u32>(var_0.d, var_0.d))), _wgslsmith_div_u32(_wgslsmith_div_u32(16597u, var_0.d), abs(var_0.d)), var_0.d)));
}

