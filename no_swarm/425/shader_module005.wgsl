struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: array<bool, 9>;

var<private> global3: array<Struct_4, 20>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    global3 = array<Struct_4, 20>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1156f + global1.a.b.x) + global1.a.b.x)))), 795f, _wgslsmith_f_op_f32(arg_2.b.x * _wgslsmith_f_op_f32(arg_2.b.x - _wgslsmith_f_op_f32(abs(1358f)))), -3070f);
    var var_1 = !(_wgslsmith_div_u32(~(~global1.c), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_2.c, 4294967295u, 4294967295u), vec4<u32>(1u, u_input.d, u_input.e.x, arg_2.c)))) < global1.c);
    let var_2 = arg_2;
    var var_3 = !(all(vec2<bool>(false, arg_0)) | all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 9u)], true)));
    return _wgslsmith_f_op_f32(round(var_2.a.b.x));
}

fn func_2(arg_0: bool, arg_1: f32) -> vec3<u32> {
    var var_0 = Struct_3(select(!global0.a, select(select(!global0.a, !vec4<bool>(arg_0, arg_0, false, false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(0u, 9u)], false)), !vec4<bool>(false, global2[_wgslsmith_index_u32(global1.c, 9u)], false, arg_0), select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], true, true, true), select(global0.a, global0.a, global0.a), true)), global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + global1.a.b.x) < _wgslsmith_f_op_f32(func_3(true, firstTrailingBit(vec2<i32>(u_input.a.x, 2147483647i)) << (~vec2<u32>(63943u, global1.c) % vec2<u32>(32u)), Struct_2(global1.a, vec4<f32>(global1.a.b.x, 2293f, 187f, arg_1), 1u))), global1.a.c);
    let var_1 = ~(~(~select(vec2<u32>(u_input.d, 12880u), vec2<u32>(global1.c, u_input.e.x), var_0.a.xz)));
    global0 = Struct_3(global0.a, all(vec2<bool>(true, true)), ~(-(~(1i >> (u_input.d % 32u)))));
    global2 = array<bool, 9>();
    global2 = array<bool, 9>();
    return ~(~select(abs(vec3<u32>(var_1.x, var_1.x, 21047u)), firstLeadingBit(vec3<u32>(u_input.d, u_input.e.x, 1u) | vec3<u32>(3377u, var_1.x, var_1.x)), select(!global0.a.zxz, var_0.a.xwx, select(vec3<bool>(true, arg_0, false), var_0.a.xzw, false))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(select(select(select(global0.a, select(global0.a, vec4<bool>(global2[_wgslsmith_index_u32(32410u, 9u)], arg_1.b, true, false), false), false), !(!global0.a), arg_1.a), select(!global0.a, vec4<bool>(global2[_wgslsmith_index_u32(arg_2.c, 9u)], true, true & global2[_wgslsmith_index_u32(arg_0.x, 9u)], global0.a.x), global0.a), select(!global0.a, vec4<bool>(!arg_1.a, all(vec2<bool>(arg_1.b, arg_1.b)), any(global0.a), arg_1.a), all(!global0.a.wzy))), !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(global1.b.x, -222f, false)))) < -1626f), -22547i);
    var var_1 = _wgslsmith_div_f32(574f, -1069f);
    let var_2 = arg_2.a;
    let var_3 = Struct_3(select(var_0.a, select(var_0.a, global0.a, !global0.a.x), global2[_wgslsmith_index_u32(55558u, 9u)]), arg_1.b, var_0.c & arg_1.c);
    let var_4 = countOneBits(firstLeadingBit(-var_2.a.x));
    return Struct_2(arg_2.a, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(107f, 482f, 1410f, 1446f), global1.b))))), u_input.e.x);
}

fn func_1() -> vec4<bool> {
    global1 = func_4(_wgslsmith_mult_vec3_u32(~func_2(global0.a.x != global2[_wgslsmith_index_u32(u_input.d, 9u)], _wgslsmith_f_op_f32(exp2(global1.a.b.x))), _wgslsmith_mod_vec3_u32(~(vec3<u32>(global1.c, global1.c, 9120u) >> (vec3<u32>(30742u, u_input.d, 28381u) % vec3<u32>(32u))), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(global1.c, 4294967295u, 14197u), vec3<u32>(u_input.b, 4294967295u, u_input.d))))), Struct_4(true, true, global0.c), Struct_2(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-763f)), _wgslsmith_f_op_f32(select(global1.a.b.x, 809f, global2[_wgslsmith_index_u32(101037u, 9u)])), _wgslsmith_f_op_f32(f32(-1f) * -857f), global1.b.x)), min(global1.c, ~1u)));
    var var_0 = Struct_4(all(vec2<bool>(!(!global2[_wgslsmith_index_u32(global1.c, 9u)]), false)), any(!(!vec3<bool>(false, global0.a.x, false))), global0.c);
    var var_1 = true;
    global2 = array<bool, 9>();
    let var_2 = Struct_2(func_4(firstTrailingBit(vec3<u32>(4294967295u, 72080u, global1.c)), global3[_wgslsmith_index_u32(func_4(vec3<u32>(~global1.c, _wgslsmith_div_u32(82093u, 1u), 881u), global3[_wgslsmith_index_u32(392u, 20u)], func_4(min(vec3<u32>(global1.c, u_input.d, 6825u), vec3<u32>(1u, 0u, 4294967295u)), global3[_wgslsmith_index_u32(~1u, 20u)], Struct_2(Struct_1(vec4<i32>(1i, 4647i, 23436i, -1i), global1.b.wzy, -1i, u_input.a.x), vec4<f32>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), 41409u))).c, 20u)], func_4(~min(vec3<u32>(global1.c, u_input.e.x, global1.c), vec3<u32>(u_input.e.x, global1.c, 4294967295u)), global3[_wgslsmith_index_u32(1u, 20u)], Struct_2(Struct_1(u_input.a, global1.a.b, -64776i, var_0.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(-544f, global1.b.x, -596f, global1.b.x) - vec4<f32>(1000f, global1.b.x, global1.a.b.x, global1.b.x)), ~4294967295u))).a, global1.b, _wgslsmith_mult_u32(_wgslsmith_add_u32(abs(38735u), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 1u), u_input.e.x)), func_2(false, 1635f).x));
    return vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(min(u_input.d, ~var_2.c), 9u)], true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-335f)) * -521f) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_4(vec3<u32>(var_2.c, u_input.b, 1u), Struct_4(global0.b, var_0.a, -18397i), var_2).b.x))), any(!(!(!global0.a.yxz))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(firstTrailingBit(~global0.c) | ~(i32(-1i) * -14553i)));
    global0 = Struct_3(select(func_1(), select(global0.a, vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(34781u, u_input.b), 9u)], any(global0.a), !global2[_wgslsmith_index_u32(4294967295u, 9u)], all(vec4<bool>(global0.b, false, true, true))), global2[_wgslsmith_index_u32(max(1u, 1u), 9u)]), true), true, global1.a.a.x);
    let var_1 = !all(select(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(2934u, 9u)], global2[_wgslsmith_index_u32(23406u, 9u)]), global0.a, all(!global0.a.xww)));
    global2 = array<bool, 9>();
    var var_2 = Struct_4(true, all(vec4<bool>(50930i < _wgslsmith_mult_i32(-2147483647i, global1.a.c), true | global2[_wgslsmith_index_u32(global1.c, 9u)], true, true)), -((i32(-1i) * -2147483647i) | -(~global0.c)));
    let var_3 = Struct_4(true, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, func_4(vec3<u32>(0u, 0u, 4294967295u), Struct_4(false, false, global1.a.c), Struct_2(global1.a, vec4<f32>(global1.a.b.x, global1.a.b.x, 708f, global1.a.b.x), global1.c)).c, 1u, ~0u), vec4<u32>(4294967295u, abs(global1.c), ~0u, global1.c)) < u_input.e.x, abs(1i));
    var var_4 = ~u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1165f, global1.b.x) - vec2<f32>(_wgslsmith_f_op_f32(global1.b.x * -1000f), global1.a.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(550f * -108f), _wgslsmith_f_op_f32(func_3(false, vec2<i32>(-2147483647i, 2147483647i), Struct_2(Struct_1(u_input.a, global1.b.wyz, -20332i, 0i), vec4<f32>(-733f, global1.a.b.x, 619f, 1690f), global1.c)))))), ~(~(~global1.c)), vec3<u32>(1u, ~(~firstTrailingBit(global1.c)), (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 38437u), vec2<u32>(u_input.e.x, 0u)) & 21018u) << (~(~41047u) % 32u)));
}

