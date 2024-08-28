struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(659f, 883f, -783f, -508f);

var<private> global1: array<vec4<u32>, 23>;

var<private> global2: Struct_4 = Struct_4(0u);

var<private> global3: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(60835i, -1i), vec2<i32>(0i, 75672i), vec2<i32>(i32(-2147483648), 63210i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(1i, 0i), vec2<i32>(-19361i, 5508i), vec2<i32>(1i, 17996i), vec2<i32>(0i, 3593i), vec2<i32>(-1i, 8027i), vec2<i32>(2144i, -28962i), vec2<i32>(15866i, -38828i), vec2<i32>(-8673i, i32(-2147483648)), vec2<i32>(-54251i, 40941i), vec2<i32>(1i, -56251i), vec2<i32>(1i, 1i), vec2<i32>(-1i, 0i), vec2<i32>(-2994i, 2147483647i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-12137i, i32(-2147483648)), vec2<i32>(12475i, 10157i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, -44566i), vec2<i32>(2147483647i, -40004i));

var<private> global4: vec2<i32> = vec2<i32>(20522i, i32(-2147483648));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> vec2<i32> {
    global2 = Struct_4(~u_input.b);
    return ~global3[_wgslsmith_index_u32(reverseBits(1u), 24u)];
}

fn func_3() -> f32 {
    var var_0 = Struct_3(_wgslsmith_sub_u32(27121u, countOneBits(global2.a)), vec3<bool>(~0i > global4.x, false, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-global0.x), 69145u);
    global4 = vec2<i32>(global4.x, -2147483647i);
    let var_1 = Struct_5(true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(global0.zxw, _wgslsmith_f_op_vec3_f32(-global0.xzy)))));
    let var_2 = vec3<u32>(~10139u, _wgslsmith_div_u32(~_wgslsmith_div_u32(4294967295u, var_0.d), ~firstLeadingBit(_wgslsmith_mult_u32(820u, global2.a))), 16180u);
    let var_3 = Struct_5(true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, global0.x, var_0.c), vec3<f32>(1241f, -620f, 1592f), var_0.b.x)) - var_1.b)))));
    return var_0.c;
}

fn func_1(arg_0: u32) -> Struct_5 {
    var var_0 = _wgslsmith_sub_i32(abs(reverseBits(reverseBits(_wgslsmith_add_i32(1i, global4.x)))), global4.x);
    global4 = countOneBits(func_2(true, vec2<bool>((arg_0 < 1u) & any(vec3<bool>(true, true, true)), !any(vec2<bool>(false, true))), true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * 905f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1330f)))))));
    var_1 = -813f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), -139f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.x)))))) - _wgslsmith_f_op_f32(func_3()));
    return Struct_5(true, vec3<f32>(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-774f * _wgslsmith_f_op_f32(exp2(global0.x)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-351f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    var var_1 = true;
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -630f, 680f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(777f, -1000f, global0.x, 1529f))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(round(global0.x)), global0.x), true)))));
    let var_2 = global3[_wgslsmith_index_u32(~global2.a, 24u)];
    var var_3 = func_1(global2.a);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.a, global2.a), vec3<u32>(global2.a, global2.a, 0u)), u_input.b));
}

