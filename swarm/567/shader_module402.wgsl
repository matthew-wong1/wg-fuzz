struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: u32 = 91680u;

var<private> global2: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> f32 {
    global2 = array<vec3<bool>, 11>();
    global1 = min(5842u, max(~_wgslsmith_clamp_u32(~u_input.b.x, ~u_input.b.x, ~u_input.b.x), 1u));
    let var_0 = _wgslsmith_add_i32(-arg_0, ~0i);
    global2 = array<vec3<bool>, 11>();
    var var_1 = vec2<u32>(u_input.b.x, u_input.b.x);
    return -202f;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(~u_input.b.zx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -396f) + _wgslsmith_f_op_f32(trunc(global0.x))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(337f - -1126f)))), u_input.a.yw);
    var var_1 = Struct_1(~vec2<u32>(9268u, 7462u), _wgslsmith_f_op_f32(-global0.x), u_input.a.zx);
    var var_2 = var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.c.x, vec3<i32>(var_1.c.x, 41611i, u_input.a.x)))), var_0.b), _wgslsmith_f_op_f32(func_3(0i, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -3144i, -22049i), min(vec3<i32>(u_input.a.x, var_0.c.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, var_1.c.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(147f)), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(select(var_1.b, var_1.b, false))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1842f + 455f)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(597f * 936f))), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(f32(-1f) * -162f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-236f - _wgslsmith_f_op_f32(round(-343f))) + _wgslsmith_f_op_f32(-1656f * -109f)), -716f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-188f)), -404f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b + var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    return 755f;
}

fn func_1(arg_0: u32, arg_1: bool) -> f32 {
    var var_0 = u_input.a;
    global2 = array<vec3<bool>, 11>();
    var var_1 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~0u, ~0u), select(_wgslsmith_add_vec2_u32(u_input.b.xy, vec2<u32>(4294967295u, arg_0)), u_input.b.yz, false)) ^ _wgslsmith_mult_vec2_u32(~(~vec2<u32>(68063u, u_input.b.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.zz, vec2<u32>(0u, 51230u)), u_input.b.xx)), _wgslsmith_f_op_f32(func_2()), var_0.yx);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 11>();
    let var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(1u, u_input.a.x != u_input.a.x)), global0.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-722f + global0.x) * global0.x));
    let var_1 = Struct_1(u_input.b.zx, 180f, vec2<i32>(-_wgslsmith_add_i32(-1i, firstTrailingBit(1i)), u_input.a.x));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1781f, var_1.b, _wgslsmith_f_op_f32(abs(558f))) * vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-global0.x), 1000f));
    let var_2 = select(!(!select(select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(true, false, false, false), true), select(vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, true, true)), var_0)), select(vec4<bool>(any(!vec4<bool>(false, false, var_0, var_0)), (global0.x <= var_1.b) != any(global2[_wgslsmith_index_u32(var_1.a.x, 11u)]), any(global2[_wgslsmith_index_u32(~u_input.b.x, 11u)]), true), vec4<bool>(var_0, true, false, any(select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, var_0), true))), select(select(!vec4<bool>(false, var_0, var_0, var_0), !vec4<bool>(var_0, false, var_0, true), true), !(!vec4<bool>(var_0, false, var_0, false)), vec4<bool>(false, true, true, !var_0))), any(!vec3<bool>(var_0, var_0, var_0)) && (_wgslsmith_f_op_f32(func_2()) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1545f * -1407f))));
    let var_3 = select(var_1.c.x > -2147483647i, !any(vec2<bool>(var_0, var_2.x)), !(!all(vec3<bool>(false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_1.b, i32(-1i) * -(~1i));
}

