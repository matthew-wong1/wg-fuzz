struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(false, false, false), Struct_2(true, true, vec2<f32>(617f, 1000f)));

var<private> global1: array<Struct_2, 32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<bool> {
    global1 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.c + global0.b.c) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(global0.b.c)))));
    var_0 = global0.b.c;
    var_0 = _wgslsmith_div_vec2_f32(global0.b.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.c) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    let var_1 = vec3<u32>(~(~(~u_input.a.x)), u_input.a.x, u_input.a.x);
    return select(!(!vec4<bool>(true, select(global0.a.x, false, global0.a.x), true, 0u == var_1.x)), !(!select(!vec4<bool>(true, true, global0.a.x, false), vec4<bool>(true, true, true, true), true | global0.a.x)), !select(select(!vec4<bool>(global0.a.x, true, global0.b.a, global0.b.b), select(vec4<bool>(false, true, global0.b.b, global0.b.b), vec4<bool>(false, true, true, global0.a.x), true), false && global0.a.x), vec4<bool>(global0.a.x || true, global0.a.x, true, true), select(select(vec4<bool>(false, true, false, global0.b.a), vec4<bool>(global0.a.x, global0.a.x, true, global0.b.a), false), vec4<bool>(global0.a.x, true, global0.b.a, false), global0.b.a)));
}

fn func_2() -> Struct_4 {
    global1 = array<Struct_2, 32>();
    var var_0 = Struct_1(select(select(select(select(vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(global0.b.b, false, global0.a.x, true), true), !vec4<bool>(global0.b.b, global0.a.x, false, true), all(global0.a.yx)), func_3(), !(!global0.a.x)), !vec4<bool>(u_input.a.x == u_input.a.x, true, global0.b.a, false || global0.b.b), vec4<bool>(global0.b.b, _wgslsmith_f_op_f32(floor(1000f)) <= global0.b.c.x, global0.a.x, func_3().x)));
    var var_1 = vec2<bool>(global0.a.x, (firstTrailingBit(_wgslsmith_add_i32(36704i, -37801i)) >= _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-28740i, -6589i))) && global0.a.x);
    let var_2 = !(func_3().x && true);
    var_0 = Struct_1(!select(vec4<bool>(global0.b.c.x <= global0.b.c.x, true, !var_0.a.x, !var_1.x), !select(vec4<bool>(var_0.a.x, true, var_1.x, false), var_0.a, false), func_3()));
    return Struct_4(select(!(!select(vec3<bool>(true, global0.b.b, var_0.a.x), var_0.a.yxw, var_0.a.x)), var_0.a.xwx, false), global1[_wgslsmith_index_u32(u_input.a.x, 32u)]);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> u32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.c.x, global0.b.c.x, global0.b.c.x)) - vec3<f32>(-1144f, _wgslsmith_f_op_f32(-var_0.b.c.x), _wgslsmith_f_op_f32(f32(-1f) * -593f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-224f, 1192f, global0.b.c.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.c.x, 181f, -1697f), vec3<f32>(1141f, var_0.b.c.x, var_0.b.c.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.c.x, 149f, global0.b.c.x)))));
    let var_2 = Struct_3(Struct_1(select(select(select(vec4<bool>(var_0.b.a, false, var_0.b.b, var_0.a.x), vec4<bool>(global0.a.x, true, false, global0.b.a), vec4<bool>(true, true, false, global0.a.x)), !vec4<bool>(var_0.a.x, global0.a.x, var_0.b.a, true), vec4<bool>(var_0.b.a, false, true, var_0.a.x)), select(select(vec4<bool>(var_0.a.x, global0.b.a, global0.a.x, global0.a.x), vec4<bool>(true, false, var_0.b.b, true), var_0.b.b), vec4<bool>(true, global0.b.b, false, global0.a.x), arg_0.x > 12308i), all(!vec4<bool>(var_0.b.a, false, var_0.b.a, true)))));
    let var_3 = Struct_3(var_2.a);
    let var_4 = Struct_1(vec4<bool>(func_3().x, (289f > var_1.x) & any(func_2().a), _wgslsmith_div_f32(465f, -218f) != var_1.x, true));
    return u_input.a.x;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_4 {
    var var_0 = arg_1;
    global0 = Struct_4(global0.a, func_2().b);
    let var_1 = _wgslsmith_f_op_f32(-729f * _wgslsmith_f_op_f32(select(global0.b.c.x, 603f, arg_1.a.x & false)));
    return Struct_4(select(var_0.a.wwz, vec3<bool>(any(!global0.a), false, all(func_3())), arg_1.a.x), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = func_4(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 66634u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 19954u)))), vec4<u32>(38188u, ~(12227u >> (0u % 32u)), func_1(~vec2<i32>(13188i, -14173i), -vec2<i32>(-10845i, -1i)), 1u)), Struct_1(select(select(vec4<bool>(true, var_0, true, false), vec4<bool>(true, global0.b.b, true, var_0), global0.b.c.x == global0.b.c.x), select(vec4<bool>(false, var_0, var_0, false), !vec4<bool>(false, global0.a.x, true, true), vec4<bool>(global0.a.x, true, global0.a.x, var_0)), vec4<bool>(true, true, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b.c.x, -731f))), -219f)), _wgslsmith_div_f32(-408f, global0.b.c.x)));
    let var_1 = Struct_1(!(!vec4<bool>(var_0, func_3().x, global0.b.b, func_3().x)));
    global1 = array<Struct_2, 32>();
    var var_2 = -_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-28605i, min(-3295i, 28892i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-38053i, 33338i, 0i), vec3<i32>(1i, 1i, 1i)), firstTrailingBit(min(-42638i, -1i)), ~(~(-1i))), -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-17176i, 0i, 7347i, 66671i), vec4<i32>(-1i, 32877i, -2147483647i, -1i)), ~vec4<i32>(0i, -1i, 9578i, 2147483647i), -vec4<i32>(3532i, 45702i, 37138i, 0i)));
    global0 = Struct_4(!var_1.a.zzw, global0.b);
    global0 = Struct_4(vec3<bool>(false, func_3().x, !var_0), Struct_2(!var_1.a.x, select(4294967295u == _wgslsmith_div_u32(u_input.a.x, u_input.a.x), global0.b.c.x >= 801f, true), _wgslsmith_f_op_vec2_f32(-global0.b.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(157f, global0.b.c.x, 739f, global0.b.c.x) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-563f, -1224f, 749f, -476f)))) - vec4<f32>(_wgslsmith_div_f32(global0.b.c.x, global0.b.c.x), _wgslsmith_f_op_f32(ceil(735f)), _wgslsmith_f_op_f32(-global0.b.c.x), global0.b.c.x)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c.x, 1206f, 697f, 306f) - vec4<f32>(378f, -2505f, 1000f, 197f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-637f, 910f, global0.b.c.x, -1733f)))));
}

