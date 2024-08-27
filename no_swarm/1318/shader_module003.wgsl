struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(4294967295u), Struct_1(915u), Struct_1(79155u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(4632u), Struct_1(0u), Struct_1(21790u), Struct_1(10769u), Struct_1(25609u), Struct_1(45523u), Struct_1(1u), Struct_1(115258u), Struct_1(74305u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(31295u), Struct_1(1u), Struct_1(29875u), Struct_1(22885u), Struct_1(1u), Struct_1(27700u), Struct_1(4294967295u), Struct_1(0u));

var<private> global1: array<bool, 32>;

var<private> global2: i32 = 13297i;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> vec2<bool> {
    global2 = arg_0;
    global1 = array<bool, 32>();
    var var_0 = u_input.a.yxx;
    let var_1 = !(!vec3<bool>(arg_1, true, arg_1));
    let var_2 = vec2<i32>(-1i, ~(-4104i));
    return !(!var_1.zy);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    let var_0 = all(!vec3<bool>(true, false, any(vec3<bool>(true, arg_1.x, arg_1.x))));
    let var_1 = !(!arg_1);
    let var_2 = global0[_wgslsmith_index_u32(arg_2 & (~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.a.x) << (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u)), 25u)];
    let var_3 = u_input.b;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(var_2.a, ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(arg_2, u_input.a.x))), ~(~countOneBits(51064u)) | ~min(var_2.a, ~u_input.a.x)), 25u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))) * _wgslsmith_f_op_f32(327f * -513f)));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, global1[_wgslsmith_index_u32(21365u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true), 15879u))))));
    let var_2 = vec4<u32>(_wgslsmith_add_u32(~(~u_input.a.x), 1u), u_input.a.x, 4294967295u, 0u);
    global1 = array<bool, 32>();
    return vec2<bool>(true, global1[_wgslsmith_index_u32(var_2.x, 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec2<bool>(false, false)), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), func_1(71732i, false, global3[_wgslsmith_index_u32(u_input.a.x, 27u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(13642u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 32u)]), false)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), !select(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1170f, -234f, 252f)), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 32u)])), vec2<bool>(true, select(global1[_wgslsmith_index_u32(48526u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], true)), vec2<bool>(global1[_wgslsmith_index_u32(1u, 32u)], true)), func_1(select(_wgslsmith_add_i32(2147483647i & u_input.b.x, ~u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2906i, u_input.b.x, -1i, 0i) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), min(vec4<i32>(2147483647i, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 34796i, u_input.b.x))), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x | u_input.a.x), 32u)]), true, global3[_wgslsmith_index_u32(~(~select(u_input.a.x, 0u, true)), 27u)]).x);
    var var_1 = ~(~(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) | ~u_input.a)));
    var_1 = _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(23449u, 0u), u_input.a.yx), u_input.a.x, _wgslsmith_add_u32(var_1.x, 101666u), var_1.x) >> (u_input.a % vec4<u32>(32u)), u_input.a);
    let var_2 = ~(~max(min(vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), vec4<i32>(-1i, 2147483647i, 0i, u_input.b.x)), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.b.x) & vec4<i32>(-15505i, u_input.b.x, u_input.b.x, 16204i))) ^ firstLeadingBit(vec4<i32>(~u_input.b.x, i32(-1i) * -29487i, 0i, u_input.b.x) | (reverseBits(vec4<i32>(1i, 0i, 2147483647i, u_input.b.x)) ^ reverseBits(vec4<i32>(6066i, -25584i, 2723i, 1i))));
    var var_3 = Struct_1(max(79816u, countOneBits(0u)));
    let var_4 = _wgslsmith_dot_vec2_i32(var_2.wy, u_input.b);
    let var_5 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(663f + _wgslsmith_f_op_f32(-650f - _wgslsmith_f_op_f32(step(140f, -1139f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-431f, 1000f), _wgslsmith_f_op_f32(411f * 1523f))) * -134f), _wgslsmith_f_op_f32(700f * 1000f), _wgslsmith_f_op_f32(-691f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) - _wgslsmith_f_op_f32(999f * -742f))))));
    var var_6 = _wgslsmith_f_op_f32(func_3(!(!select(!vec4<bool>(true, false, var_0.x, true), select(vec4<bool>(global1[_wgslsmith_index_u32(var_3.a, 32u)], true, false, global1[_wgslsmith_index_u32(0u, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(82833u, 32u)], true, true, true), vec4<bool>(var_0.x, true, true, false)), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<bool>(global1[_wgslsmith_index_u32(62178u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(var_3.a, 32u)], true, var_0.x)))), func_1(-1i, var_5.x >= _wgslsmith_f_op_f32(-976f * _wgslsmith_f_op_f32(sign(757f))), global0[_wgslsmith_index_u32(1u ^ var_3.a, 25u)]), 11916u));
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_4 << (select(1u, 22853u, false) % 32u)), ~firstTrailingBit(vec2<u32>(0u, _wgslsmith_mult_u32(12422u, var_1.x))), vec4<i32>(_wgslsmith_add_i32(u_input.b.x, reverseBits(-53058i)), -2147483647i, 0i, _wgslsmith_add_i32(~var_2.x, -2147483647i) | ~_wgslsmith_div_i32(u_input.b.x, 1i)), ~u_input.b);
}

