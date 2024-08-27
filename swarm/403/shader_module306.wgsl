struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(157f, 613f, -542f), vec3<f32>(1705f, -1000f, 1112f), vec3<f32>(-1447f, -195f, 238f), vec3<f32>(352f, 584f, -431f), vec3<f32>(-1007f, -1000f, -334f), vec3<f32>(-401f, -1207f, -1614f), vec3<f32>(-866f, 639f, 1000f), vec3<f32>(-1176f, -1342f, 1000f), vec3<f32>(2156f, 940f, 582f));

var<private> global1: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(759f, 239f), vec2<f32>(312f, -1201f), vec2<f32>(744f, 686f), vec2<f32>(461f, -655f), vec2<f32>(-535f, 724f), vec2<f32>(1000f, -1038f), vec2<f32>(-260f, 673f), vec2<f32>(326f, 482f), vec2<f32>(1598f, 411f), vec2<f32>(-498f, -1400f), vec2<f32>(1000f, 100f), vec2<f32>(148f, 1026f), vec2<f32>(1859f, -1045f), vec2<f32>(556f, -434f), vec2<f32>(530f, 494f), vec2<f32>(391f, 1716f), vec2<f32>(270f, 820f), vec2<f32>(1722f, -260f));

var<private> global2: array<Struct_1, 17>;

var<private> global3: Struct_3 = Struct_3(Struct_2(true), vec3<f32>(487f, 146f, 1159f), vec4<i32>(40416i, 67796i, i32(-2147483648), 1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = u_input.b;
    let var_1 = Struct_3(Struct_2(any(arg_3)), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(min(var_0.x | 27828u, 18521u) >> (var_0.x % 32u), 9u)] - vec3<f32>(_wgslsmith_f_op_f32(117f - 968f), global3.b.x, -1000f)), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.c.x, abs(u_input.c) >> (_wgslsmith_mod_u32(1u, u_input.b.x) % 32u), _wgslsmith_dot_vec4_i32(select(global3.c, global3.c, vec4<bool>(true, false, false, false)), vec4<i32>(47292i, u_input.c, arg_1.x, -1i) | global3.c), 0i), min(vec4<i32>(-2147483647i, arg_1.x, u_input.c, u_input.c) << (u_input.b % vec4<u32>(32u)), vec4<i32>(global3.c.x, global3.c.x, -33289i, ~global3.c.x))));
    let var_2 = Struct_3(Struct_2(arg_0.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b) - _wgslsmith_div_vec3_f32(global3.b, vec3<f32>(1489f, 1358f, global3.b.x))))), _wgslsmith_mod_vec4_i32(arg_1, arg_1));
    global3 = Struct_3(Struct_2(!any(arg_3)), global0[_wgslsmith_index_u32(~(~1558u), 9u)], ~arg_1);
    var var_3 = !select(select(select(arg_3, select(arg_3, arg_3, vec3<bool>(false, false, global3.a.a)), arg_0.a | var_2.a.a), vec3<bool>(var_1.a.a, all(vec4<bool>(false, var_1.a.a, var_2.a.a, false)), arg_2), !var_2.a.a), arg_3, all(!select(vec4<bool>(false, global3.a.a, true, true), vec4<bool>(false, false, true, arg_3.x), vec4<bool>(var_2.a.a, arg_3.x, true, var_2.a.a))));
    return !arg_3;
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-294f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.b.x, 956f) + global3.b.x))), global3.b.x)), _wgslsmith_f_op_f32(round(1939f)));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-61496i, _wgslsmith_div_i32(global3.c.x, global3.c.x)), -_wgslsmith_mod_vec2_i32(firstTrailingBit(global3.c.xx), vec2<i32>(-2147483647i, -22533i))), any(select(select(vec3<bool>(global3.a.a, global3.a.a, true), !vec3<bool>(true, false, global3.a.a), func_3(global3.a, global3.c, true, vec3<bool>(global3.a.a, global3.a.a, global3.a.a))), !vec3<bool>(true, false, global3.a.a), true != !global3.a.a)));
    global2 = array<Struct_1, 17>();
    var var_2 = vec2<bool>(var_1.b, false);
    global0 = array<vec3<f32>, 9>();
    return !func_3(Struct_2(_wgslsmith_f_op_f32(-global3.b.x) < 1230f), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(11792i, var_1.a.x, var_1.a.x, -1i), global3.c) ^ abs(global3.c), countOneBits(vec4<i32>(18895i, 17315i, 0i, 54549i)), global3.c), any(select(select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, true, true)), !vec3<bool>(false, false, var_1.b), !vec3<bool>(var_2.x, true, false))), !select(vec3<bool>(global3.a.a, var_2.x, var_1.b), select(vec3<bool>(global3.a.a, false, var_2.x), vec3<bool>(false, global3.a.a, true), vec3<bool>(var_2.x, var_2.x, global3.a.a)), !vec3<bool>(global3.a.a, false, true))).yx;
}

fn func_1() -> f32 {
    global0 = array<vec3<f32>, 9>();
    var var_0 = Struct_2(global3.a.a);
    var var_1 = select(func_2(), func_2(), !select(func_2(), vec2<bool>(false, var_0.a & var_0.a), !vec2<bool>(global3.a.a, global3.a.a)));
    global2 = array<Struct_1, 17>();
    var var_2 = !vec3<bool>(false, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(16020u, 0u, 67797u, u_input.b.x)) >= 1u, global3.a.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.b.x, global3.b.x, true))) + global3.b.x)) * global3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 17>();
    let var_0 = vec2<bool>(u_input.a.x < ~24771u, all(vec2<bool>(all(!vec4<bool>(true, global3.a.a, false, global3.a.a)), true)));
    global2 = array<Struct_1, 17>();
    global2 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, 346f, global3.b.x, _wgslsmith_f_op_f32(func_1())) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, 824f, -854f, -1008f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1197f, global3.b.x, global3.b.x, global3.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-1456f * global3.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1264f - -571f))), global3.b.x, -1102f))));
    var var_2 = global3.a;
    var var_3 = 1f;
    var var_4 = vec2<bool>(global3.a.a, all(var_0));
    let var_5 = Struct_3(global3.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-444f, 252f, true)) - var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)), _wgslsmith_f_op_f32(f32(-1f) * -361f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3.b, global3.b, select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, var_2.a, false), vec3<bool>(var_0.x, var_2.a, true)))))), min(_wgslsmith_sub_vec4_i32(global3.c, global3.c), vec4<i32>(u_input.c, ~(-16499i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-9626i, u_input.c, global3.c.x, 1i), ~vec4<i32>(0i, u_input.c, -2147483647i, -1i)), min(abs(global3.c.x), -u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, 78697u, -select(-_wgslsmith_div_vec3_i32(vec3<i32>(global3.c.x, global3.c.x, u_input.c), vec3<i32>(var_5.c.x, 18162i, var_5.c.x)), select(var_5.c.yxz, ~vec3<i32>(var_5.c.x, u_input.c, global3.c.x), func_3(Struct_2(true), vec4<i32>(2147483647i, global3.c.x, 18006i, 55315i), var_5.a.a, vec3<bool>(var_5.a.a, false, var_5.a.a))), _wgslsmith_mod_i32(0i, global3.c.x) != (0i | u_input.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1127f))), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 724f, 745f, var_5.b.x)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(var_1, var_1)), _wgslsmith_f_op_vec4_f32(-var_1), var_0.x)))), min(u_input.d, abs(12482u)));
}

