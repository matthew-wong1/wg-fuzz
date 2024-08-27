struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12>;

var<private> global1: i32 = 0i;

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(89459u, true, 73835i, 2147483647i, true), Struct_2(62017u, true, 0i, 1i, false), Struct_2(3461u, true, -20448i, -69966i, false), Struct_2(4294967295u, true, -4616i, -1i, true), Struct_2(19430u, true, 0i, -24872i, true), Struct_2(22758u, false, 21385i, 19913i, false), Struct_2(22674u, false, i32(-2147483648), 15134i, true), Struct_2(31731u, false, 21895i, 2147483647i, false), Struct_2(1u, true, i32(-2147483648), 1i, false), Struct_2(23776u, false, i32(-2147483648), 1i, false), Struct_2(4294967295u, false, -1i, -42958i, true), Struct_2(35418u, true, 9200i, -34806i, false), Struct_2(15152u, false, -9290i, 36605i, true));

var<private> global3: vec3<bool>;

var<private> global4: u32 = 1u;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(372f, -1624f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(538f, 373f)) - _wgslsmith_div_vec2_f32(vec2<f32>(278f, -1349f), vec2<f32>(-699f, -1000f)))))));
    let var_1 = 881f;
    let var_2 = vec2<i32>(_wgslsmith_clamp_i32(1i, 0i, 1i), ~1i);
    var var_3 = vec2<bool>(false, global3.x);
    global4 = u_input.a;
    return ~(~(abs(-vec4<i32>(-2147483647i, 1i, var_2.x, var_2.x)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), vec4<u32>(2920u, 33126u, u_input.a, 58804u)) % vec4<u32>(32u))));
}

fn func_3() -> vec4<f32> {
    let var_0 = 1f;
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)) >> (~4294967295u % 32u)), 12u)], vec2<i32>(2147483647i, -2147483647i), global0[_wgslsmith_index_u32(u_input.a, 12u)]));
    global3 = vec3<bool>(_wgslsmith_sub_i32(var_1.a.x, 27071i) != _wgslsmith_div_i32(0i, max(i32(-1i) * -2147483647i, var_1.a.x)), global3.x, true);
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(abs(~43866i), 26473i, 2147483647i), 28642i));
    var_1 = Struct_1(-var_1.a);
    return _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), -359f)), -428f), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0)))), var_0, 538f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 412f)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_3) -> f32 {
    let var_0 = ~(~(~vec2<u32>(arg_0.a, 12565u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1109f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_1.x - -834f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1191f, arg_1.x, arg_1.x, 539f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -564f, 210f, -979f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(264f, arg_1.x, 718f, -1449f) - vec4<f32>(512f, arg_1.x, arg_1.x, -2280f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -143f, 1355f, arg_1.x) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, -791f, arg_1.x, arg_1.x), vec4<f32>(960f, arg_1.x, 176f, arg_1.x))))), vec4<bool>(!all(select(vec3<bool>(true, global3.x, true), vec3<bool>(true, false, true), vec3<bool>(arg_3.c.x, arg_2, arg_0.e))), !any(!vec2<bool>(arg_0.b, arg_2)), abs(_wgslsmith_mod_i32(2147483647i, -20404i)) >= min(select(arg_0.c, -18747i, arg_0.b), _wgslsmith_mod_i32(arg_3.a.a.x, arg_3.a.a.x)), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(min(arg_1.x, arg_1.x))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-484f * -304f), arg_1.x, arg_2 && global3.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, arg_1.x, var_1.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1145f, 621f, var_1.x, var_1.x), vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1000f)))))));
    global2 = array<Struct_2, 13>();
    var var_2 = arg_0.c > 2147483647i;
    return _wgslsmith_div_f32(-471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1546f - arg_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(_wgslsmith_dot_vec4_i32(func_1(), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2625i, -2147483647i, -14487i), vec4<i32>(47357i, -2147483647i, -13785i, 2147483647i)), ~16536i, -1i, ~(-4083i)))) >> (u_input.a % 32u);
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(0u, 13u)], vec3<f32>(197f, 1610f, 537f), false, Struct_3(Struct_1(vec2<i32>(2147483647i, 20763i)), u_input.a, global3.zx, global3.x))))), -1090f)) + 290f);
    let var_1 = vec4<bool>(select(global3.x && global3.x, true, !all(select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, true, global3.x), global3.x))), global3.x, global3.x, global3.x == ((_wgslsmith_f_op_f32(max(var_0, var_0)) >= 224f) && true));
    global2 = array<Struct_2, 13>();
    global0 = array<vec2<i32>, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_div_i32(func_1().x, 66369i), ~1i, _wgslsmith_sub_i32(1i, ~1i)), vec3<u32>(1u, ~(~_wgslsmith_sub_u32(u_input.a, 74532u)), u_input.a), ~(~(-89475i)), u_input.a, -2147483647i);
}

