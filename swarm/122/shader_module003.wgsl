struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
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

var<private> global0: array<vec2<bool>, 13> = array<vec2<bool>, 13>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> f32 {
    global0 = array<vec2<bool>, 13>();
    global0 = array<vec2<bool>, 13>();
    let var_0 = Struct_1(any(!(!vec3<bool>(arg_2.a, false, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.b - arg_2.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2420f, arg_2.b.x, -227f, 529f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1602f))), _wgslsmith_f_op_f32(max(866f, arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x * 741f)))), ~(arg_0 << (arg_0 % 32u)));
    global0 = array<vec2<bool>, 13>();
    let var_1 = var_0.b;
    return _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-arg_2.b.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = array<vec2<bool>, 13>();
    var var_0 = arg_1;
    let var_1 = vec2<bool>(var_0.a, all(!vec3<bool>(arg_0.a, arg_1.a, arg_1.a)) && !var_0.a);
    var var_2 = false;
    var_0 = arg_1;
    return select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1070f)))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.c.x)))), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_div_f32(arg_0.c.x, -151f))), !(!any(vec3<bool>(false, var_1.x, true))), 0u <= _wgslsmith_dot_vec2_u32(u_input.b << (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.d) % vec2<u32>(32u)), u_input.d));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    global0 = array<vec2<bool>, 13>();
    global0 = array<vec2<bool>, 13>();
    var var_0 = ~_wgslsmith_mult_i32(2147483647i, 1i);
    var var_1 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1150f, -1000f)) >= _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(func_3(u_input.c, true, Struct_1(true, vec4<f32>(-785f, 227f, 757f, -1083f), vec3<f32>(1532f, 566f, -366f), u_input.e)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, -872f, -2139f, 171f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(1649f, -1626f, 249f, 1460f) + vec4<f32>(1098f, -986f, -1033f, 2312f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-518f, -167f, 1533f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-483f, -486f, -1347f) * vec3<f32>(-1137f, -720f, 487f)), vec3<bool>(false, false, arg_0.x)))), 0u), Struct_1(arg_0.x != !(arg_0.x & true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-606f, 497f, -533f, 599f), vec4<f32>(-365f, 1000f, 1519f, 719f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -697f, 1261f, -478f))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 2037f, 1000f, 910f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1579f - -2273f) - _wgslsmith_f_op_f32(-1280f * -579f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1386f * -237f), _wgslsmith_f_op_f32(f32(-1f) * -450f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2753f, 664f) - _wgslsmith_f_op_f32(453f * 839f))), u_input.c ^ u_input.b.x));
    let var_2 = select(!(!(!vec2<bool>(false, arg_0.x))), !vec2<bool>(true, arg_0.x), arg_0.x);
    return u_input.b.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<vec2<bool>, 13>();
    var var_1 = -175f;
    global0 = array<vec2<bool>, 13>();
    var var_2 = vec3<i32>(~(-1i), reverseBits(0i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(-47600i, u_input.a.x, u_input.a.x), min(vec3<i32>(u_input.a.x, u_input.a.x, -25103i), vec3<i32>(-1i, u_input.a.x, u_input.a.x))), -120067i) | (-57488i << ((37197u & (var_0.d & 1u)) % 32u)));
    return Struct_1(countOneBits(_wgslsmith_add_u32(func_2(vec4<bool>(false, false, true, false)), ~arg_1.d)) != ~76806u, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-592f))), _wgslsmith_f_op_f32(floor(-345f)), select(any(vec3<bool>(false, false, true)), true, false))), _wgslsmith_f_op_f32(-424f + _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.x, var_0.b.x)) * arg_1.b.x))), arg_1.b.xyz, arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 13>();
    let var_0 = false;
    let var_1 = func_1(!vec2<bool>(var_0, var_0), Struct_1(all(!vec3<bool>(var_0, false, var_0)), vec4<f32>(-575f, 1f, -1871f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1826f + -1042f), _wgslsmith_f_op_f32(1000f - 245f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-832f, 192f, 376f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1830f, -391f, -186f))))), _wgslsmith_add_u32(u_input.c, 0u)));
    global0 = array<vec2<bool>, 13>();
    global0 = array<vec2<bool>, 13>();
    global0 = array<vec2<bool>, 13>();
    var var_2 = 35038u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_1.b * var_1.b));
}

