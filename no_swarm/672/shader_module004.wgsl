struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-34061i, -1i), i32(-2147483648));

var<private> global1: array<Struct_1, 30>;

var<private> global2: f32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(countOneBits(-(~vec2<i32>(u_input.a, global0.b))), reverseBits(_wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(-30717i, -35165i, -2147483647i, 43031i), vec4<i32>(u_input.a, 2147483647i, global0.b, global0.a.x)), vec4<i32>(arg_0.b, -2147483647i, 27326i, 28342i) ^ vec4<i32>(52839i, 0i, u_input.a, -1i), vec4<bool>(false, true, true, false)), firstLeadingBit(vec4<i32>(arg_0.b, -95186i, 12914i, 1i)))));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1498f))))));
    var var_2 = arg_0;
    global0 = var_0;
    var_2 = Struct_1(_wgslsmith_mod_vec2_i32(global0.a, -(~vec2<i32>(1i, 1i))), -62190i & _wgslsmith_dot_vec2_i32(var_0.a, global0.a));
    return 603f;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: vec3<f32>) -> u32 {
    global1 = array<Struct_1, 30>();
    let var_0 = 1143f;
    global1 = array<Struct_1, 30>();
    global2 = -140f;
    var var_1 = false;
    return 32446u;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = select(vec3<bool>(arg_0.c >= ~(~u_input.b.x), true, true), vec3<bool>(all(select(vec4<bool>(arg_1.x, false, arg_1.x, false), arg_1, arg_1)) & (_wgslsmith_f_op_f32(func_3(arg_0.a)) < arg_0.b.x), any(!vec4<bool>(false, arg_1.x, true, arg_1.x)), arg_1.x), !(select(global0.b, ~0i, true) < ~max(-48842i, arg_0.a.a.x)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x));
    return abs(vec2<i32>(-1i, arg_3.a.x | 0i));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.b.xz);
    let var_1 = Struct_1(func_5(Struct_2(Struct_1(arg_1.a.a, global0.b), arg_1.b, func_4(arg_1.b.x, arg_1.b.x, _wgslsmith_f_op_f32(func_3(arg_1.a)), vec3<f32>(849f, var_0.x, arg_1.b.x))), vec4<bool>(!(!arg_0), true, all(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, arg_0, true), arg_0)), true), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.wyy, ~u_input.b.zyy), 30u)], Struct_1(reverseBits(_wgslsmith_sub_vec2_i32(global0.a, global0.a)), 24337i)), _wgslsmith_mult_i32(min(~func_5(Struct_2(Struct_1(global0.a, arg_1.a.a.x), arg_1.b, 1u), vec4<bool>(false, arg_0, arg_0, true), arg_1.a, global1[_wgslsmith_index_u32(u_input.b.x, 30u)]).x, 0i), global0.b));
    let var_2 = _wgslsmith_add_u32(0u, ~(~44066u));
    global2 = -1243f;
    var var_3 = var_0.x;
    return vec4<bool>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), _wgslsmith_clamp_u32(80019u, u_input.b.x, 5742u), var_2, ~1u)) <= ~abs(_wgslsmith_mult_u32(arg_1.c, 4294967295u)), arg_0, !all(vec2<bool>(true, true)), true);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))) | select(true, true, arg_1 <= _wgslsmith_f_op_f32(-arg_1)), any(select(func_2(false, Struct_2(Struct_1(global0.a, -1i), vec3<f32>(-1298f, arg_1, -1088f), u_input.b.x)), vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), select(false, true, true), -2147483647i != arg_0.a.x), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false))), true, all(select(vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, true))), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false)))));
    return Struct_1(firstLeadingBit(_wgslsmith_mod_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-8926i, global0.b), arg_0.a, global0.a)), arg_0.a)), _wgslsmith_mult_i32(-8089i, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.a, global0.b, -26615i), reverseBits(vec4<i32>(-3890i, global0.b, -1i, 0i))) >> (u_input.b.x % 32u)));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(arg_3.a, ~vec2<i32>(0i, -2147483647i)), arg_3.a), global0.a.x);
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(u_input.b.x), 30u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-267f, -167f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-208f, 1190f)))));
    return abs(firstLeadingBit(4294967295u));
}

fn func_7(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global1 = array<Struct_1, 30>();
    global0 = arg_2.a;
    var var_0 = arg_1;
    var_0 = arg_2;
    var var_1 = arg_1.c | abs(~u_input.b.x);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(u_input.a, Struct_2(global1[_wgslsmith_index_u32(func_6(Struct_1(vec2<i32>(u_input.a, -6652i), 0i), u_input.b.wz ^ vec2<u32>(1u, u_input.b.x), select(u_input.b.xw, u_input.b.yx, vec2<bool>(true, false)), func_1(global1[_wgslsmith_index_u32(u_input.b.x, 30u)], 314f)) ^ _wgslsmith_sub_u32(~19892u, 59952u), 30u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-886f, -846f, -473f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1885f, -1572f, -1290f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1640f, 719f, -1000f), vec3<f32>(188f, 548f, 213f)))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), abs(u_input.b)) | ~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 62322u, u_input.b.x, 59603u))), Struct_2(Struct_1(~global0.a, 0i), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1075f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(356f * -2226f))), -1764f), ~(1u & _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 2875u), vec2<u32>(u_input.b.x, u_input.b.x)))));
    global2 = -833f;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-269f, -725f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-380f, -391f))))) * _wgslsmith_f_op_f32(func_3(func_1(Struct_1(firstTrailingBit(vec2<i32>(71203i, u_input.a)), firstTrailingBit(1i)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(select(558f, 920f, false)))))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1, var_1)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) * -365f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 * var_1))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(var_1 - 839f)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1))), var_1))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-679f, var_1, -1478f), vec3<f32>(var_1, 820f, 779f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_1), -1953f, -1988f)))));
    let var_3 = u_input.b.x;
    let var_4 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(abs(var_3), max(0u, var_3)), u_input.b.zw));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(func_7(func_1(func_1(global1[_wgslsmith_index_u32(var_4, 30u)], var_2.x), var_1).b, Struct_2(func_7(global0.a.x, Struct_2(var_0, var_2, u_input.b.x), Struct_2(var_0, var_2, 64512u)), _wgslsmith_f_op_vec3_f32(var_2 + var_2), var_3), Struct_2(Struct_1(vec2<i32>(u_input.a, 40215i), -1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1176f, -653f, var_1)), 19779u)))));
    let var_5 = vec3<bool>(false, true, ~(~_wgslsmith_mult_u32(26266u, 0u)) != var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

