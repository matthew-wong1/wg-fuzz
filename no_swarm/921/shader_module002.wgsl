struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<i32, 8>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(arg_0.c << (~arg_0.c % 32u), 8u)], 4188i) >> (~reverseBits(_wgslsmith_mod_u32(arg_0.c, _wgslsmith_sub_u32(arg_0.c, arg_3.x))) % 32u);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(min(-477f, -232f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1150f), _wgslsmith_f_op_f32(arg_1 * -1136f)))))), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(arg_1 - -1000f))))));
    var var_1 = arg_0;
    global0 = arg_2.yxy;
    let var_2 = global1[_wgslsmith_index_u32(88754u, 25u)];
    return var_2.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32) -> vec4<bool> {
    global2 = array<i32, 8>();
    let var_0 = vec2<u32>(3394u, 4294967295u);
    var var_1 = !(!vec4<bool>(any(vec3<bool>(true, true, true)), true, _wgslsmith_f_op_f32(-global0.x) < _wgslsmith_div_f32(arg_1.a, global0.x), true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(arg_1, _wgslsmith_f_op_f32(229f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a - global0.x)))), _wgslsmith_div_vec4_f32(arg_0, arg_0), abs(u_input.a.yzw))), reverseBits(global2[_wgslsmith_index_u32(select(1u, countOneBits(~var_0.x), !(!var_1.x)), 8u)]), arg_2);
    let var_3 = ~32536u;
    return !(!vec4<bool>(any(vec2<bool>(var_1.x, true)), any(select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x)), true, firstTrailingBit(0u) == 33070u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    return arg_0.b;
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = u_input.a.x;
    var var_1 = -55172i;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - 666f)))), arg_0, global0.x);
    let var_3 = vec3<i32>(select(~0i, ~0i, true), 57692i, func_4(Struct_1(1f, global2[_wgslsmith_index_u32(1u, 8u)], var_0), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, global0.x, arg_0, arg_0) - vec4<f32>(global0.x, arg_0, var_2.x, var_2.x))), global1[_wgslsmith_index_u32(countOneBits(4294967295u << (var_0 % 32u)), 25u)], u_input.a.x), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44021u, 31246u, var_0, 61159u), vec4<u32>(u_input.a.x, var_0, 4294967295u, var_0)), _wgslsmith_mult_u32(95491u, 1u), abs(33534u)) | 0u, 25u)]));
    var_1 = 0i | global2[_wgslsmith_index_u32(1u, 8u)];
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-25671i, -1i, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, func_1(-1476f)), 8u)], -2147483647i), global2[_wgslsmith_index_u32(75823u, 8u)], _wgslsmith_div_vec2_u32(u_input.a.wy, u_input.a.yy), vec2<i32>(~0i >> (0u % 32u), _wgslsmith_add_i32(firstTrailingBit(-1i), _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], -16389i))) & vec2<i32>(global2[_wgslsmith_index_u32(~4294967295u, 8u)] ^ 2147483647i, max(~(-22926i), _wgslsmith_mod_i32(4714i, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]))), global2[_wgslsmith_index_u32(~1u, 8u)]);
}

