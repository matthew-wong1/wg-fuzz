struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: vec3<f32> = vec3<f32>(-222f, -1000f, -1664f);

var<private> global2: array<bool, 15>;

var<private> global3: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(419f, 1000f, -1274f), vec3<f32>(566f, -308f, -903f), vec3<f32>(-100f, 1179f, 836f), vec3<f32>(1097f, -1000f, -110f), vec3<f32>(-1000f, -464f, -1071f), vec3<f32>(-2158f, -594f, 388f), vec3<f32>(-1349f, -428f, -790f), vec3<f32>(157f, -1023f, 1440f), vec3<f32>(-101f, -864f, -646f), vec3<f32>(-780f, 445f, 509f), vec3<f32>(-732f, -1141f, 927f), vec3<f32>(658f, -2139f, -480f), vec3<f32>(-862f, 841f, 425f), vec3<f32>(-171f, -2689f, -442f), vec3<f32>(-114f, 193f, -727f), vec3<f32>(-544f, -990f, 1000f), vec3<f32>(285f, -1000f, 588f), vec3<f32>(-1000f, 646f, -1597f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<i32>(~abs(u_input.b.x), u_input.b.x, u_input.b.x, ~(_wgslsmith_mult_i32(abs(29659i), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)) ^ 14200i));
    let var_1 = false;
    var var_2 = u_input.d.x;
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -848f, -1642f))))) - _wgslsmith_f_op_vec3_f32(exp2(global3[_wgslsmith_index_u32(~(~72847u), 18u)]))), global3[_wgslsmith_index_u32(16852u, 18u)]);
    let var_4 = true;
    return Struct_2(_wgslsmith_div_vec2_u32(u_input.a.xz, u_input.c.wx) >> (vec2<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.a.yy, ~vec2<u32>(0u, 1u))) % vec2<u32>(32u)), u_input.d.x);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -523f) == _wgslsmith_f_op_f32(-global1.x);
    global0 = array<u32, 29>();
    let var_1 = var_0;
    return 65957u;
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = func_3(func_2());
    global2 = array<bool, 15>();
    var var_1 = ~5141i;
    let var_2 = Struct_2(~(~func_2().a) << (~arg_3.zy % vec2<u32>(32u)), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)]);
    var var_3 = ~(abs(19128u) & u_input.e.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(253f, arg_1.a), vec2<f32>(arg_1.a, global1.x))) * _wgslsmith_f_op_vec2_f32(arg_2 + vec2<f32>(194f, arg_2.x))))), any(vec2<bool>(true, _wgslsmith_mod_u32(4741u, global0[_wgslsmith_index_u32(4294967295u, 29u)]) > 1u)), arg_1.a);
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    global2 = array<bool, 15>();
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(464f + _wgslsmith_f_op_f32(1074f + -678f)))), _wgslsmith_f_op_f32(-arg_0.d), global1.x);
    var_0 = Struct_4(-2147483647i, var_0.c, select(var_0.b, arg_0.b, select(vec4<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1, u_input.e.x), 15u)], all(arg_0.c.yz), true), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], false, var_0.c.x, arg_0.c.x), select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 15u)], var_0.b.x, true), vec4<bool>(arg_0.b.x, var_0.c.x, true, arg_2.b), var_0.b.x), !vec4<bool>(arg_0.c.x, false, arg_2.b, false)), vec4<bool>(arg_0.c.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 31551u, arg_1), 15u)], 2147483647i == var_0.a, any(vec4<bool>(var_0.b.x, var_0.c.x, global2[_wgslsmith_index_u32(80904u, 15u)], false))))), _wgslsmith_f_op_f32(ceil(-1092f)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(abs(1371f)));
    return func_1(select(103f == arg_2.c, all(arg_0.b.yw) & global2[_wgslsmith_index_u32(59142u ^ arg_1, 15u)], var_0.c.x), Struct_3(_wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, var_0.d)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, -710f)))), arg_2.c), select(u_input.c.xwy, ~u_input.a, global2[_wgslsmith_index_u32(~70066u, 15u)]));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    global3 = array<vec3<f32>, 18>();
    global2 = array<bool, 15>();
    global1 = vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(1u, 15u)], arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, 894f)), u_input.c.zyz).c - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a))))), _wgslsmith_f_op_f32(func_4(Struct_4(1i, select(vec4<bool>(arg_0.b, arg_0.b, arg_2.b, true), vec4<bool>(arg_2.b, false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44760u, 29u)], 15u)], false, arg_2.b, true)), select(vec4<bool>(false, arg_0.b, false, global2[_wgslsmith_index_u32(u_input.d.x, 15u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 15u)], arg_2.b, arg_0.b, true), false), _wgslsmith_f_op_f32(exp2(global1.x))), u_input.d.x >> ((10207u >> (u_input.e.x % 32u)) % 32u), func_4(Struct_4(u_input.b.x, vec4<bool>(arg_0.b, global2[_wgslsmith_index_u32(4294967295u, 15u)], false, arg_0.b), vec4<bool>(arg_2.b, arg_0.b, true, arg_2.b), -610f), ~u_input.e.x, arg_2)).a.x + _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -808f)))), global1.x);
    let var_0 = Struct_2(u_input.d.zx, ~(~_wgslsmith_mod_u32(1u, u_input.e.x | 4294967295u)));
    global0 = array<u32, 29>();
    return Struct_2(_wgslsmith_add_vec2_u32(u_input.c.xw & (~vec2<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]) | (vec2<u32>(2234u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 29u)], 29u)]) >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 29u)], var_0.b) % vec2<u32>(32u)))), vec2<u32>(var_0.a.x, 36778u)), ~91915u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-145f + _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-924f * -568f) * _wgslsmith_f_op_f32(global1.x - global1.x)))));
    let var_1 = 125f;
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    let var_2 = _wgslsmith_sub_i32(max(u_input.b.x, u_input.b.x), abs(50484i));
    global0 = array<u32, 29>();
    let var_3 = func_5(func_4(Struct_4(2147483647i, !vec4<bool>(global2[_wgslsmith_index_u32(31753u, 15u)], false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.e.x, 29u)], 15u)], global2[_wgslsmith_index_u32(1u, 15u)]), !select(vec4<bool>(global2[_wgslsmith_index_u32(1129u, 15u)], true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 15u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(u_input.e.x, 15u)], false, false), global2[_wgslsmith_index_u32(18792u, 15u)]), _wgslsmith_f_op_f32(-297f - _wgslsmith_div_f32(global1.x, -518f))), _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.c.x ^ global0[_wgslsmith_index_u32(u_input.e.x, 29u)], 11925u), (global0[_wgslsmith_index_u32(u_input.d.x, 29u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17041u, 29u)], 29u)]) << (_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 4294967295u) % 32u)), func_1(all(vec4<bool>(true, true, true, true)), var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))), vec3<u32>(_wgslsmith_div_u32(1u, u_input.c.x), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 17949u))), var_0, func_4(Struct_4(33469i, vec4<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], global2[_wgslsmith_index_u32(21915u, 15u)])), true, true, global2[_wgslsmith_index_u32(~0u, 15u)]), vec4<bool>(select(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(97858u, 29u)], 15u)], false), false, global2[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(u_input.e.x, 29u)], u_input.e.x, false), 15u)], false), global1.x), _wgslsmith_sub_u32(~_wgslsmith_add_u32(u_input.a.x, 9118u), ~(~global0[_wgslsmith_index_u32(33207u, 29u)])), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_1 + -1014f), _wgslsmith_f_op_f32(min(var_1, var_0.a))), !any(vec2<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 15u)])), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, vec4<u32>(~0u, _wgslsmith_add_u32(u_input.e.x, 44874u), func_3(func_5(Struct_1(global1.yz, global2[_wgslsmith_index_u32(67437u, 15u)], global1.x), var_0, Struct_1(global1.xy, true, global1.x))) >> (~(~u_input.c.x) % 32u), 4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x)))))));
}

