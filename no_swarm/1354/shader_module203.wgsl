struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 27> = array<i32, 27>(-29445i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -10294i, 0i, 1i, -15176i, i32(-2147483648), 0i, 31214i, -1i, 12161i, -1i, 0i, -1i, 1i, -31463i, 37832i, -34086i, -37014i, -32405i, 1i, 0i, i32(-2147483648), -1i, 0i);

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(25704u, 28806u, 4294967295u), vec3<u32>(676u, 25978u, 0u), vec3<u32>(14575u, 4294967295u, 1u));

var<private> global3: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(7956u, 4294967295u, 1u), vec3<u32>(0u, 1u, 1686u), vec3<u32>(7759u, 42320u, 7705u), vec3<u32>(27083u, 2034u, 0u), vec3<u32>(49891u, 0u, 36011u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 119141u, 4294967295u), vec3<u32>(8175u, 62753u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    let var_0 = false;
    let var_1 = Struct_3(Struct_2(Struct_1(-1000f, u_input.b.yy, arg_1, 53731i, global0.c.x), global0.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) - global0.c), global0.d, u_input.c), true, !vec3<bool>(!(!global0.a.c), global0.a.c, true));
    var var_2 = _wgslsmith_f_op_f32(-1722f - _wgslsmith_f_op_f32(-var_1.a.a.a));
    var var_3 = var_1.a.a;
    global2 = array<vec3<u32>, 3>();
    return -861f;
}

fn func_2() -> f32 {
    let var_0 = Struct_2(global0.a, global0.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(firstTrailingBit(global0.a.b.x), true, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, global0.e, global0.e, 19494u), vec4<u32>(54754u, global0.e, 80978u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(574f - global0.a.e)), global0.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a.a * global0.b)))) - global0.c), global0.a, 9103u);
    var var_1 = Struct_4(global0.a.a != var_0.b, Struct_3(var_0, true, vec3<bool>(true, false, 1078f == var_0.d.e)));
    return var_0.b;
}

fn func_4(arg_0: f32) -> i32 {
    var var_0 = Struct_1(global0.c.x, global0.a.b, global0.a.c, -17676i, _wgslsmith_f_op_f32(abs(global0.b)));
    global2 = array<vec3<u32>, 3>();
    var_0 = global0.a;
    global2 = array<vec3<u32>, 3>();
    global0 = Struct_2(global0.d, _wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(global0.c, _wgslsmith_f_op_vec4_f32(-global0.c), !vec4<bool>(true, true, var_0.c, var_0.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(global0.c.x, 783f, global0.d.a, var_0.a))), vec4<bool>(true, any(vec3<bool>(var_0.c, var_0.c, true)), any(vec4<bool>(true, global0.a.c, global0.a.c, true)), var_0.c))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c) * vec4<f32>(-1779f, -1243f, global0.a.a, var_0.e))))), global0.d, 1u);
    return 1i;
}

fn func_1() -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_f32(func_2()));
    var var_1 = Struct_4(global0.d.c, Struct_3(Struct_2(global0.a, global0.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(471f, 1414f, -698f, -523f) + vec4<f32>(global0.c.x, 746f, 610f, 1769f)) * global0.c), Struct_1(767f, vec2<u32>(u_input.a, 64630u), true, -13854i, _wgslsmith_f_op_f32(sign(global0.d.e))), 0u), true, select(select(!vec3<bool>(true, global0.d.c, true), !vec3<bool>(global0.a.c, false, global0.d.c), any(vec2<bool>(global0.a.c, true))), vec3<bool>(global0.a.d >= 1i, global0.d.c, true), select(!vec3<bool>(true, global0.d.c, global0.d.c), vec3<bool>(global0.a.c, global0.a.c, false), !global0.a.c))));
    let var_2 = !select(vec2<bool>(global0.c.x < _wgslsmith_f_op_f32(-var_1.b.a.c.x), !all(vec3<bool>(false, var_1.a, false))), select(vec2<bool>(var_1.a, global0.d.c), !(!vec2<bool>(global0.d.c, var_1.a)), vec2<bool>(true, !var_1.a)), var_1.b.c.xz);
    var_0 = _wgslsmith_div_i32(15691i, global0.a.d);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -951f), _wgslsmith_f_op_f32(global0.d.a - -1029f), true))), -1000f)), ~abs(~(vec2<u32>(61078u, global0.e) >> (vec2<u32>(17461u, 0u) % vec2<u32>(32u)))), var_1.a, var_1.b.a.d.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(578f + _wgslsmith_f_op_f32(-var_1.b.a.b)), -1757f, true)));
    return Struct_4(any(!select(!vec3<bool>(false, var_2.x, var_1.a), select(var_1.b.c, vec3<bool>(true, true, false), false), vec3<bool>(false, false, true))), var_1.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -994f)));
    let var_1 = global0.c.zz;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.a.a * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-2085f, arg_0.a)), -1498f), all(!(!arg_1.b.c))));
    var var_3 = func_1().b.a;
    var_2 = global0.d.e;
    return abs(~reverseBits(vec2<u32>(14726u, arg_2.d.b.x)) & (arg_2.a.b ^ arg_2.d.b));
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    global2 = array<vec3<u32>, 3>();
    global3 = array<vec3<u32>, 9>();
    let var_0 = ~firstLeadingBit(u_input.b.zy);
    var var_1 = vec4<f32>(arg_1, arg_3.a, 1247f, 216f);
    var var_2 = select(arg_1 >= _wgslsmith_f_op_f32(step(-765f, 333f)), !arg_3.c, global0.d.c);
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 9>();
    let var_0 = global0.b;
    let var_1 = func_6(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(round(-1671f)), 25668u <= global0.d.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.a)) * global0.c.x))), ~func_5(global0.a, func_1(), func_1().b.a), false, global0.d.d, _wgslsmith_f_op_f32(func_3(min(73013u, min(u_input.a, u_input.b.x)), _wgslsmith_f_op_f32(select(333f, global0.c.x, true)) > _wgslsmith_f_op_f32(global0.a.a * global0.d.a), countOneBits(vec4<u32>(4294967295u, 0u, 0u, 28640u)) ^ (vec4<u32>(1u, u_input.c, u_input.c, u_input.a) | vec4<u32>(0u, 0u, u_input.c, 4294967295u))))), _wgslsmith_f_op_f32(max(global0.b, -1012f)), global0.b, global0.d);
    global2 = array<vec3<u32>, 3>();
    var var_2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(~func_6(func_1().b.a.d, _wgslsmith_f_op_f32(global0.c.x + 2192f), -190f, func_1().b.a.d).a.a.b.x, 27u)], global0.c.yy, var_1.a.a.e);
}

