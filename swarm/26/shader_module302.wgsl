struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(1u, 60687u, 36342u, 70317u), vec4<u32>(4294967295u, 6844u, 19785u, 0u), vec4<u32>(38589u, 0u, 0u, 1u), vec4<u32>(89466u, 0u, 57923u, 0u), vec4<u32>(3851u, 34255u, 0u, 0u));

var<private> global1: array<vec2<f32>, 23>;

var<private> global2: Struct_4;

var<private> global3: Struct_5;

var<private> global4: i32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32) -> vec2<f32> {
    var var_0 = global2.c.d;
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(853f, _wgslsmith_f_op_f32(step(global2.c.c, 1474f))) - global2.b.d.a) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(286f, 142f) * vec2<f32>(var_0.a.x, -370f)), _wgslsmith_f_op_vec2_f32(-global3.a.yz), all(vec2<bool>(false, true)))) + arg_1.b)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(max(var_0.c, arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -873f) * global3.a.x)), global2.a.wy)), -791f, vec2<bool>(var_0.d.x, any(vec3<bool>(any(vec4<bool>(false, arg_1.d.x, var_0.d.x, var_0.d.x)), var_0.d.x, !global2.b.b))), arg_1.e);
    let var_1 = _wgslsmith_f_op_vec3_f32(-global2.b.a);
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(var_1 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.a)))), var_0.e);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * -585f)))))), _wgslsmith_f_op_f32(f32(-1f) * -575f)));
    return vec2<f32>(507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1402f)) * _wgslsmith_f_op_f32(f32(-1f) * -606f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_4 {
    global3 = Struct_5(global3.a, 7364i);
    return Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1266f + _wgslsmith_f_op_f32(-1000f * global2.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.a.x)), -800f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-719f - global3.a.x) + _wgslsmith_f_op_f32(round(-788f))), _wgslsmith_f_op_f32(sign(-1076f))), global2.b, Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a) + _wgslsmith_f_op_vec3_f32(global2.c.a + global2.c.a))), arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(447f - -1075f))) * global3.a.x), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(arg_1.x, 0i), global2.c.d, 785f)))), global2.b.a.yz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1186f)) * _wgslsmith_f_op_f32(global3.a.x * global3.a.x)), !arg_2, -5341i)));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> vec3<i32> {
    let var_0 = ~52219u;
    let var_1 = u_input.b.yw;
    global1 = array<vec2<f32>, 23>();
    global1 = array<vec2<f32>, 23>();
    global4 = -39436i;
    return u_input.a.wxz;
}

fn func_1(arg_0: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.zyz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yxy), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(427f, global3.a.x, -1494f)))), vec3<bool>(false, 7077i == global2.c.d.e, global2.c.d.d.x == false)))));
    var var_1 = ~func_4(func_2(select(vec3<bool>(global2.b.b, global2.b.b, global2.b.b), vec3<bool>(global2.b.d.d.x, false, global2.b.d.d.x), global2.c.b), vec3<i32>(global3.b, u_input.b.x, u_input.b.x) >> (vec3<u32>(4294967295u, 16398u, 0u) % vec3<u32>(32u)), vec2<bool>(false, global2.c.d.d.x)), global2.b.d.d.x) ^ abs(-u_input.b.ywx);
    var var_2 = var_1.x;
    let var_3 = ~abs(1u);
    global4 = _wgslsmith_clamp_i32(-global2.c.d.e, -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, var_1.x, 1i), u_input.b.zyz | ~vec3<i32>(u_input.a.x, -2147483647i, -11200i)), global2.c.d.e);
    return func_2(select(select(vec3<bool>(true, all(vec3<bool>(global2.c.d.d.x, global2.c.d.d.x, global2.c.d.d.x)), global2.b.b || false), !select(vec3<bool>(true, true, global2.b.d.d.x), vec3<bool>(true, false, true), vec3<bool>(true, true, global2.b.b)), !vec3<bool>(global2.b.d.d.x, true, false)), !(!vec3<bool>(global2.c.d.d.x, global2.c.d.d.x, global2.c.d.d.x)), select(vec3<bool>(global2.b.d.d.x, all(vec4<bool>(true, global2.b.d.d.x, global2.c.b, false)), true), vec3<bool>(var_3 == var_3, true, true), !(!vec3<bool>(false, global2.c.b, global2.b.d.d.x)))), ~u_input.b.wyx, global2.c.d.d).c.b;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_4) -> Struct_2 {
    var var_0 = -223f;
    return Struct_2(-2147483647i, ~(-_wgslsmith_mult_i32(global2.c.d.e, max(global2.b.d.e, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(global3.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, -1368f, -1159f) - vec3<f32>(global2.c.a.x, -1460f, -599f))))), func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.a.x, global2.b.c, 2021f, global2.c.d.a.x), global2.a, true))))), 1558f, Struct_1(func_2(select(vec3<bool>(global2.c.b, false, global2.c.d.d.x), vec3<bool>(global2.c.b, global2.b.b, global2.b.d.d.x), vec3<bool>(false, global2.b.b, global2.c.d.d.x)), select(u_input.b.yzz, u_input.a.yyx, vec3<bool>(global2.c.b, global2.c.d.d.x, global2.c.d.d.x)), vec2<bool>(true, true)).c.d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(167f, 961f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.a.x + global2.b.a.x))), func_2(!vec3<bool>(true, true, global2.b.b), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -2147483647i, u_input.a.x), vec3<i32>(62003i, -2147483647i, -21118i)), !vec2<bool>(global2.b.b, false)).c.d.d, ~_wgslsmith_add_i32(23355i, 19746i))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-1972f, _wgslsmith_f_op_f32(global3.a.x + global2.a.x))), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -161f), -280f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(280f, global2.c.c, 1938f, global3.a.x) * vec4<f32>(global2.b.c, global3.a.x, global3.a.x, -1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -1552f, 358f, -1456f))) - global2.a), true | ((global2.b.d.d.x & false) || global2.b.d.d.x))), func_2(select(vec3<bool>(global2.c.b, global2.b.d.d.x, global2.c.d.d.x), vec3<bool>(func_2(vec3<bool>(false, global2.c.b, global2.b.b), vec3<i32>(-32351i, global3.b, u_input.a.x), global2.c.d.d).c.d.d.x, global2.b.b != global2.c.b, true), global2.c.d.d.x), -countOneBits(u_input.b.www ^ u_input.b.wzy), !global2.c.d.d));
    var_0 = Struct_2(func_5(global2.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(global2.a)))), Struct_4(_wgslsmith_div_vec4_f32(global2.a, vec4<f32>(global2.c.a.x, -1231f, 212f, global3.a.x)), Struct_3(global2.a.zyw, true, global2.a.x, global2.c.d), func_2(vec3<bool>(false, false, global2.b.b), vec3<i32>(-1732i, global3.b, 1i), vec2<bool>(false, global2.b.b)).c)).a ^ _wgslsmith_clamp_i32(-2147483647i, global3.b, global2.b.d.e), var_0.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1[_wgslsmith_index_u32(~4294967295u, 23u)])))));
    global0 = array<vec4<u32>, 5>();
    let var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(global3.a)))), min(2147483647i, max(select(18180i, _wgslsmith_mult_i32(u_input.b.x, 47972i), !global2.b.d.d.x), global3.b)));
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(floor(global3.a.x)), -122f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - var_2.a.x), _wgslsmith_f_op_f32(global2.b.c + global2.c.d.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -158f)))))), global2.b, func_2(!select(!vec3<bool>(global2.c.b, global2.b.d.d.x, true), !vec3<bool>(global2.b.d.d.x, global2.c.b, false), select(global2.b.d.d.x, global2.b.d.d.x, false)), u_input.a.wwy, global2.b.d.d).b);
    global3 = var_2;
    var var_4 = select(vec4<bool>(var_2.a.x == _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(trunc(186f))), !all(!vec4<bool>(false, var_3.c.b, false, var_3.b.b)), !(!var_3.c.b), all(vec4<bool>(true, true, global2.b.b | true, var_3.b.d.d.x))), vec4<bool>(!func_2(vec3<bool>(true, true, true), u_input.b.xwz, vec2<bool>(false, global2.b.b)).c.b, !var_3.b.b, !any(global2.c.d.d), func_2(vec3<bool>(true, var_2.b >= var_3.b.d.e, true), -(~vec3<i32>(global3.b, var_0.b, -3431i)), select(select(global2.c.d.d, vec2<bool>(true, global2.b.d.d.x), var_3.b.d.d), select(vec2<bool>(var_3.b.b, global2.c.d.d.x), global2.b.d.d, false), !vec2<bool>(var_3.b.b, false))).b.b), vec4<bool>(_wgslsmith_f_op_f32(1157f * 1609f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) + -238f), true && global2.c.b, !select(true, global2.b.d.d.x, !var_3.c.d.d.x), all(vec2<bool>(!global2.b.b, !var_3.c.b))));
    let var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(709u, ~40110u), u_input.a.wz, -1000f);
}

