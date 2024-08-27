struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 11>;

var<private> global2: Struct_3 = Struct_3(vec4<u32>(25226u, 4622u, 4294967295u, 2276u), vec4<u32>(1u, 4294967295u, 1u, 1u), Struct_2(vec4<f32>(884f, -1021f, -332f, 437f)), 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    global0 = global2.c;
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.c.a)) - _wgslsmith_f_op_vec4_f32(global2.c.a + _wgslsmith_f_op_vec4_f32(-global2.c.a))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -887f)), global2.c.a.x, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - global0.a.x) * arg_1.x))));
    let var_1 = Struct_1(global2.a.x, 1u, global0.a.xwz);
    global1 = array<vec2<u32>, 11>();
    var var_2 = firstLeadingBit(abs(~(~vec3<u32>(global2.d, 13991u, var_1.a))) | _wgslsmith_add_vec3_u32(vec3<u32>(global2.b.x << (0u % 32u), ~var_1.b, ~4294967295u), vec3<u32>(1u, global2.b.x ^ 54109u, 32080u)));
    return 19522u;
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global0.a.x)))))))));
    let var_1 = global2.c;
    var var_2 = global2.a.yx;
    global1 = array<vec2<u32>, 11>();
    var_2 = global2.a.xx;
    return _wgslsmith_dot_vec2_u32(global2.a.yw, ~countOneBits(max(global2.b.yx, vec2<u32>(global2.b.x, 59843u))));
}

fn func_1() -> Struct_3 {
    global2 = Struct_3(global2.a, vec4<u32>(_wgslsmith_mod_u32(func_2(u_input.c, vec2<f32>(global0.a.x, global0.a.x)) << (_wgslsmith_div_u32(global2.d, global2.a.x) % 32u), global2.b.x), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(0u, global2.a.x), 84914u, reverseBits(global2.b.x)), global2.b.x, global2.a.x), global2.c, global2.d);
    var var_0 = vec4<i32>(_wgslsmith_div_i32(~1i, 1i), -2147483647i, u_input.d.x, ~countOneBits(u_input.d.x));
    let var_1 = u_input.b.x >> (30086u % 32u);
    global2 = Struct_3(~global2.a, vec4<u32>(70363u, 4294967295u, _wgslsmith_dot_vec4_u32(global2.a, ~(vec4<u32>(global2.b.x, 55056u, global2.a.x, 15972u) >> (vec4<u32>(global2.a.x, 4294967295u, global2.b.x, global2.d) % vec4<u32>(32u)))), 1u), global2.c, ~(~(~(~global2.a.x))));
    var var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~global2.b.x, global2.d), ~(global2.a.x | global2.d)), abs(global1[_wgslsmith_index_u32(1u, 11u)] | global2.b.wx) | (~vec2<u32>(43121u, global2.b.x) >> (vec2<u32>(global2.b.x, global2.d) % vec2<u32>(32u))));
    return Struct_3(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global2.b.x, 0u), ~func_2(2147483647i, global0.a.yy), global2.b.x, _wgslsmith_sub_u32(global2.b.x, select(99668u, global2.b.x, true))), global2.a, ~select(global2.a, ~vec4<u32>(global2.d, global2.a.x, 0u, 0u), true)), abs(global2.b), global2.c, func_3());
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> f32 {
    global2 = Struct_3(abs(abs(global2.a)), reverseBits(global2.b), func_1().c, global2.b.x);
    let var_0 = select(select(vec2<bool>(all(vec2<bool>(true, true)), true), !select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), any(vec2<bool>(false, true)))), !(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))), false);
    global2 = Struct_3(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~66683u, firstTrailingBit(0u), ~4294967295u, ~arg_1.d), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_1.b.wyx, vec3<u32>(25018u, arg_1.b.x, arg_1.d)), ~44517u, ~4294967295u, ~arg_1.d)), 4294967295u, arg_1.d, 0u), ~(~(abs(vec4<u32>(2894u, arg_1.a.x, 1u, 12281u)) >> (arg_1.b % vec4<u32>(32u)))), func_1().c, global2.a.x);
    let var_1 = vec3<f32>(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1362f * 580f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - global0.a.x) + _wgslsmith_f_op_f32(round(global2.c.a.x))))), -162f);
    global1 = array<vec2<u32>, 11>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.a.x, global2.c.a.x)), 479f, !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(309f - -745f))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(1069f + global0.a.x), 131f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global2.c.a, vec4<f32>(global2.c.a.x, -816f, 311f, -231f)), _wgslsmith_f_op_vec4_f32(global0.a * global2.c.a)))));
    var var_0 = vec2<i32>(-49515i << (~(~global2.a.x) % 32u), 2147483647i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-329f, global0.a.x, global2.c.a.x) - global2.c.a.xzw), func_1())), _wgslsmith_f_op_f32(f32(-1f) * -930f))) * _wgslsmith_f_op_f32(-global2.c.a.x)));
    global1 = array<vec2<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.a.x, reverseBits(~abs(global2.b.x)));
}

