struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global2: array<f32, 20> = array<f32, 20>(-118f, -598f, -1273f, -1693f, -906f, -1000f, -875f, 219f, -1000f, -442f, 904f, -953f, -333f, -1926f, -958f, -2504f, 3220f, 1803f, 106f, 896f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_5 {
    return Struct_5(Struct_1(global2[_wgslsmith_index_u32(~u_input.d.x, 20u)], vec2<bool>(global1.x, global1.x)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(~23125u, u_input.b.x), u_input.b), u_input.b.x & min(57435u, 0u)), 20u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(1854f, _wgslsmith_f_op_f32(round(global0.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1037f, global0.x) * global0.wy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(0u, 20u)], 408f)) - _wgslsmith_f_op_vec2_f32(select(global0.zw, global0.yz, global1.wy))), vec2<f32>(_wgslsmith_f_op_f32(step(-234f, -992f)), _wgslsmith_f_op_f32(918f + global2[_wgslsmith_index_u32(3782u, 20u)])), global1.ww))));
}

fn func_3(arg_0: bool, arg_1: Struct_5) -> u32 {
    global2 = array<f32, 20>();
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2[_wgslsmith_index_u32(firstTrailingBit(33523u), 20u)], _wgslsmith_f_op_f32(max(-729f, -827f)), global2[_wgslsmith_index_u32(~u_input.b.x, 20u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_f_op_f32(min(1993f, -2005f)), 1000f, _wgslsmith_f_op_f32(abs(arg_1.c.x)))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(-343f + -897f), arg_1.d.x, _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.d.x, -180f, arg_1.c.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, global2[_wgslsmith_index_u32(1u, 20u)], global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), !vec4<bool>(global1.x, arg_1.a.b.x, false, arg_0)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -572f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~u_input.d.x, 20u)] * _wgslsmith_f_op_f32(-global0.x)), global0.x))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(floor(-1565f)), _wgslsmith_f_op_f32(func_2().c.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + global2[_wgslsmith_index_u32(1u, 20u)]), 539f))), -445f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 20u)] * global0.x) - _wgslsmith_f_op_f32(select(arg_1.b, -1027f, global1.x)))) * 1392f));
    let var_0 = abs(~(~vec4<u32>(abs(0u), ~4294967295u, u_input.d.x, 1u)));
    let var_1 = arg_1.a.b.x;
    return 4294967295u;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1524f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(func_3(global1.x, func_2()), 20u)]), arg_0));
    global2 = array<f32, 20>();
    var var_0 = 2147483647i;
    var var_1 = 1u;
    global2 = array<f32, 20>();
    return Struct_4(1i, -1851f);
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-937f, 282f, -132f, arg_0.b) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global0.x, arg_0.b, -579f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(931f, -622f, arg_0.b, 1559f) - vec4<f32>(227f, arg_0.b, global0.x, 681f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, arg_0.b, arg_0.b, -2010f) * vec4<f32>(arg_0.b, global2[_wgslsmith_index_u32(1u, 20u)], 818f, -570f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1473f, -693f, global0.x, global0.x), vec4<f32>(637f, arg_0.b, global0.x, -356f), vec4<bool>(true, false, global1.x, arg_1))) * vec4<f32>(global2[_wgslsmith_index_u32(35745u, 20u)], 861f, 1000f, -500f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], -1133f, global2[_wgslsmith_index_u32(u_input.b.x, 20u)]))))), !((134f >= arg_0.b) && (_wgslsmith_sub_i32(u_input.c.x, arg_0.a) != 32968i)), u_input.e);
    var var_1 = !vec3<bool>(any(select(global1.ww, !vec2<bool>(arg_1, arg_1), vec2<bool>(true, true))), select(true, global1.x, true), !(!(!global1.x)));
    let var_2 = ~4294967295u == _wgslsmith_sub_u32(~0u, u_input.b.x);
    var var_3 = Struct_1(784f, vec2<bool>(false, var_1.x));
    global0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-func_2().c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-626f, 793f, var_0.b)), global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1548f), _wgslsmith_f_op_f32(ceil(1951f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-157f)) * -420f))));
    return u_input.b.x << (57716u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (firstTrailingBit(~abs(vec4<u32>(u_input.b.x, 32296u, u_input.b.x, u_input.b.x))) >> (vec4<u32>(~(~u_input.d.x), 31948u, abs(u_input.d.x), _wgslsmith_mod_u32(~u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(80721u, 2582u, 3242u), vec3<u32>(u_input.d.x, 96500u, u_input.d.x)))) % vec4<u32>(32u))) << (vec4<u32>(~reverseBits(1u), func_4(func_1(_wgslsmith_f_op_f32(max(-1000f, global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1027f, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global0.x) * vec4<f32>(global0.x, 1000f, -358f, global2[_wgslsmith_index_u32(64098u, 20u)]))), false), abs(u_input.b.x), firstLeadingBit(u_input.b.x)) % vec4<u32>(32u));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(48709u, 20u)], global0.x, -942f, global0.x) - vec4<f32>(-790f, -932f, -619f, -294f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2[_wgslsmith_index_u32(26409u, 20u)], -533f, global2[_wgslsmith_index_u32(53264u, 20u)], global2[_wgslsmith_index_u32(u_input.d.x, 20u)]), vec4<f32>(1144f, global0.x, global0.x, global0.x))))))), false, countOneBits(-(u_input.e | (vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x) & vec3<i32>(u_input.c.x, 0i, u_input.c.x)))));
    var var_2 = func_2();
    var_2 = func_2();
    var_2 = Struct_5(func_2().a, _wgslsmith_f_op_f32(var_2.b * -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c.x)))), var_2.c), _wgslsmith_f_op_vec2_f32(-global0.xz));
    let var_3 = -_wgslsmith_clamp_vec2_i32(select(select(vec2<i32>(-16032i, var_1.c.x), u_input.e.yz, !var_1.b), ~vec2<i32>(var_1.c.x, -26279i), u_input.d.x == reverseBits(var_0.x)), var_1.c.zx, vec2<i32>(_wgslsmith_div_i32(-1i, min(var_1.c.x, u_input.a)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.a, 0i, var_1.c.x), abs(vec4<i32>(-2147483647i, 0i, 0i, var_1.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(~vec4<i32>(var_3.x, var_3.x, var_1.c.x, -15472i) | (vec4<i32>(var_1.c.x, var_1.c.x, var_1.c.x, 1i) & vec4<i32>(-2147483647i, -8411i, u_input.e.x, 0i)), reverseBits(vec4<i32>(u_input.e.x, var_1.c.x, -8468i, var_3.x))), i32(-1i) * -1i, _wgslsmith_f_op_f32(-var_2.b));
}

