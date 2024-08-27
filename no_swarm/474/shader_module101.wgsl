struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<bool, 31> = array<bool, 31>(true, false, false, true, true, true, true, false, true, false, true, false, false, true, false, false, false, false, false, false, false, false, true, false, true, false, false, true, true, false, true);

var<private> global1: vec3<f32> = vec3<f32>(1320f, 1715f, 269f);

var<private> global2: f32;

var<private> global3: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(u_input.a, vec4<bool>(any(vec4<bool>(all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)], true)), !global0[_wgslsmith_index_u32(16589u, 31u)], select(true, true, true), true)), true, global0[_wgslsmith_index_u32(1u, 31u)], true), true, _wgslsmith_f_op_f32(-global1.x), select(~countOneBits(vec2<u32>(0u, 13468u)), countOneBits(~vec2<u32>(1u, 31804u)), true) << (~(~abs(vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    let var_1 = vec3<bool>(global0[_wgslsmith_index_u32(~var_0.e.x, 31u)] & any(select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(var_0.e.x, 31u)], false), vec2<bool>(var_0.b.x, true))), !var_0.b.x, global0[_wgslsmith_index_u32(15497u, 31u)]);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -948f);
    global2 = _wgslsmith_f_op_f32(-var_0.d);
    global0 = array<bool, 31>();
    return ~vec2<u32>(1u, 1u);
}

fn func_2() -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(select(func_3(), ~(~vec2<u32>(54626u, 4294967295u)), any(vec2<bool>(true, false))), ~vec2<u32>(func_3().x, ~1u)), vec2<u32>(0u, min(0u, 1u))), 31u)];
    var var_1 = ~(~1u) & (_wgslsmith_div_u32(func_3().x, ~(~56423u)) << (_wgslsmith_clamp_u32(firstLeadingBit(1u), reverseBits(select(0u, 50696u, true)), _wgslsmith_mult_u32(1u, ~4294967295u)) % 32u));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1326f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - -162f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -377f, 124f) * vec3<f32>(394f, -843f, 1627f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, 272f, global1.x)))))), select(!global0[_wgslsmith_index_u32(7040u, 31u)], all(vec3<bool>(true, true, true)), all(!vec3<bool>(global0[_wgslsmith_index_u32(32580u, 31u)], false, false))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(199f, 295f, global1.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 652f)))))));
    var var_2 = vec3<u32>(61730u, 1u, 24652u);
    global0 = array<bool, 31>();
    return Struct_2(vec2<u32>(_wgslsmith_div_u32((60751u ^ var_2.x) >> (countOneBits(51101u) % 32u), 1u), 0u & _wgslsmith_mod_u32(0u, var_2.x)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1164f)), 1000f, _wgslsmith_f_op_f32(max(-315f, -359f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -2211f, global1.x) - vec3<f32>(-1000f, global1.x, global1.x)), vec3<f32>(global1.x, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, global1.x, global1.x), vec3<f32>(global1.x, -459f, 601f), vec3<bool>(true, arg_1.x, global0[_wgslsmith_index_u32(arg_0.x, 31u)])))), !(!global0[_wgslsmith_index_u32(arg_0.x, 31u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-353f, _wgslsmith_f_op_f32(global1.x + 588f), _wgslsmith_f_op_f32(-512f - global1.x)))));
    var var_0 = func_2();
    global3 = 1i;
    let var_1 = Struct_4(Struct_1(81281i, select(vec4<bool>(true, !arg_1.x, false, any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(50499u, 31u)], global0[_wgslsmith_index_u32(arg_0.x, 31u)]))), vec4<bool>(!arg_1.x, select(false, arg_1.x, arg_1.x), true, all(vec4<bool>(false, false, true, false))), 1000f < _wgslsmith_div_f32(global1.x, -1804f)), true, -626f, vec2<u32>(~35409u, min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, 12629u), arg_0.yww)))));
    global2 = _wgslsmith_f_op_f32(-global1.x);
    return Struct_1(-1i, select(var_1.a.b, var_1.a.b, !all(!vec4<bool>(arg_1.x, global0[_wgslsmith_index_u32(4294967295u, 31u)], true, true))), !(!all(var_1.a.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(682f, -995f, false)))))), var_0.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-492f, -495f)));
    var var_1 = func_2();
    var var_2 = Struct_4(arg_0);
    let var_3 = func_2();
    global3 = -_wgslsmith_sub_i32(-33262i, var_2.a.a & _wgslsmith_mod_i32(-2147483647i, -2147483647i));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-170f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -497f, true)) + _wgslsmith_f_op_f32(ceil(-552f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(global1.zz));
    var var_1 = ~4294967295u;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, 1989f, _wgslsmith_f_op_f32(func_4(func_1(~vec4<u32>(1u, 17600u, 27599u, 26442u), vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)])), vec2<bool>(select(false, false, true), select(global0[_wgslsmith_index_u32(1u, 31u)], true, global0[_wgslsmith_index_u32(1u, 31u)]))))), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -886f)) + global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1(vec4<u32>(4294967295u, 22342u, 48537u, 82860u), vec2<bool>(global0[_wgslsmith_index_u32(1762u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)])), vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false)))))));
    global1 = vec3<f32>(218f, 1074f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1800f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(799f, 2486f))) + var_0.x));
    let var_3 = all(!vec4<bool>(false, true, func_1(select(vec4<u32>(1u, 16348u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 1u, 1u), global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(global0[_wgslsmith_index_u32(9450u, 31u)], global0[_wgslsmith_index_u32(58947u, 31u)])).c, !global0[_wgslsmith_index_u32(~1u, 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(347f, _wgslsmith_mult_u32(~(~4294967295u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(40036u, 1u, 4294967295u, 0u), vec4<u32>(0u, 7195u, 29626u, 0u), vec4<u32>(68711u, 14654u, 96007u, 30850u)), vec4<u32>(1u, 1u, 1u, 1u)), abs(17951u)));
}

