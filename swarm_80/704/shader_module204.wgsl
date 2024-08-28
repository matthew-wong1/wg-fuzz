struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> f32 {
    let var_0 = arg_1.a.d;
    global0 = array<f32, 20>();
    let var_1 = Struct_4(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_div_f32(-1000f, arg_1.b)))), -1165f));
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    return _wgslsmith_f_op_f32(189f + global0[_wgslsmith_index_u32(var_1.a.a, 20u)]);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<i32>) -> f32 {
    var var_0 = !(_wgslsmith_f_op_f32(func_3(true, Struct_4(Struct_3(68506u, arg_2.b, -1146f, Struct_1(global0[_wgslsmith_index_u32(3385u, 20u)], arg_2.b, u_input.a.x, arg_2.e.wyx, arg_2.e.x), vec4<f32>(global0[_wgslsmith_index_u32(79u, 20u)], 266f, 1780f, global0[_wgslsmith_index_u32(arg_2.a, 20u)])), arg_2.e.x))) > -1847f);
    var var_1 = Struct_2(arg_2.d);
    let var_2 = arg_2.e.x;
    let var_3 = !arg_1.a.b.x;
    let var_4 = var_1.a.a;
    return var_1.a.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, _wgslsmith_div_i32(i32(-1i) * -20355i, -24423i), arg_2), -u_input.a.yxw);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1972f))))), select(vec3<bool>(true, true, _wgslsmith_f_op_f32(func_2(vec2<i32>(arg_2, arg_2), Struct_2(Struct_1(global0[_wgslsmith_index_u32(46018u, 20u)], vec3<bool>(true, true, true), arg_2, vec3<f32>(-887f, -164f, global0[_wgslsmith_index_u32(10263u, 20u)]), 1759f)), Struct_3(9426u, vec3<bool>(false, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(4294967295u, 20u)], Struct_1(-139f, vec3<bool>(false, true, arg_0.x), -46745i, vec3<f32>(global0[_wgslsmith_index_u32(20672u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)], -2018f), -1163f), vec4<f32>(global0[_wgslsmith_index_u32(arg_3, 20u)], -1192f, global0[_wgslsmith_index_u32(arg_1.x, 20u)], 340f)), vec4<i32>(0i, 1i, u_input.a.x, 3565i))) >= global0[_wgslsmith_index_u32(arg_3, 20u)]), !vec3<bool>(select(true, arg_0.x, false), false, u_input.a.x > 81667i), false), firstTrailingBit(abs(-3363i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(arg_0.x, Struct_4(Struct_3(1u, vec3<bool>(true, false, arg_0.x), 527f, Struct_1(-1963f, vec3<bool>(true, true, arg_0.x), u_input.a.x, vec3<f32>(-1751f, global0[_wgslsmith_index_u32(arg_3, 20u)], global0[_wgslsmith_index_u32(0u, 20u)]), 472f), vec4<f32>(144f, 392f, -387f, 738f)), global0[_wgslsmith_index_u32(arg_3, 20u)]))), global0[_wgslsmith_index_u32(arg_1.x << (arg_1.x % 32u), 20u)], _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(14832u, 20u)])))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1200f, global0[_wgslsmith_index_u32(67139u, 20u)], 390f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-191f, -1315f, 319f))))))), 1144f);
    let var_2 = reverseBits(-u_input.a);
    let var_3 = all(vec4<bool>(var_1.b.x, !(!arg_0.x), true, any(vec4<bool>(true, any(arg_0), true, true))));
    var var_4 = vec4<bool>(false, true && all(!vec4<bool>(var_1.b.x, var_3, false, true)), reverseBits(arg_1.x | 1u) < select(~(~31286u), _wgslsmith_clamp_u32(~0u, _wgslsmith_clamp_u32(arg_3, arg_1.x, arg_1.x), arg_1.x), (var_2.x <= -46831i) | arg_0.x), var_1.b.x);
    return ~(~arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    let var_0 = _wgslsmith_mult_i32(~_wgslsmith_mult_i32(u_input.a.x, ~u_input.a.x), ~u_input.a.x >> (~_wgslsmith_div_u32(~0u, 1u) % 32u));
    let var_1 = global0[_wgslsmith_index_u32(0u, 20u)];
    global0 = array<f32, 20>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(countOneBits(25622u), 20u)])), vec3<bool>(true, true, true), ~(-2147483647i), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(func_1(vec2<bool>(true, true), vec3<u32>(0u, 50150u, 0u), -13330i, 1u), 20u)]), global0[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~0u, 20u)])), 1556f));
    global0 = array<f32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(4294967295u), -1i);
}

