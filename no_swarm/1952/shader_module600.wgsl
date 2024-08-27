struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31> = array<bool, 31>(false, true, false, false, true, false, false, true, false, false, false, false, false, true, false, true, true, false, false, false, true, true, false, true, false, true, true, true, false, false, true);

var<private> global1: Struct_1 = Struct_1(-273f);

var<private> global2: array<i32, 1>;

var<private> global3: vec3<u32>;

var<private> global4: Struct_1 = Struct_1(-3760f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> i32 {
    global2 = array<i32, 1>();
    global1 = Struct_1(global1.a);
    global1 = Struct_1(104f);
    global2 = array<i32, 1>();
    return _wgslsmith_div_i32(~(-(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, u_input.a), 1u)] ^ ~u_input.c)), -1795i);
}

fn func_3(arg_0: i32) -> Struct_1 {
    global2 = array<i32, 1>();
    let var_0 = ~(~(~select(vec4<u32>(global3.x, 9189u, 63398u, u_input.a.x), abs(vec4<u32>(u_input.d.x, global3.x, u_input.a.x, global3.x)), true)));
    let var_1 = vec2<u32>(~u_input.d.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(select(var_0.x, var_0.x, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), reverseBits(var_0.x)), 6344u), 1u, ~firstLeadingBit(0u)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.a, -1423f, global0[_wgslsmith_index_u32(~(global3.x | ~var_1.x), 31u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(-global1.a))));
    var var_3 = any(select(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(15644u, 31u)], false, true), vec3<bool>(false, true, global0[_wgslsmith_index_u32(1u, 31u)]), global0[_wgslsmith_index_u32(global3.x, 31u)])), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 31u)], false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))), vec3<bool>(true & global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.zx, vec2<u32>(global3.x, 1u)), 31u)], any(!vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)], false, global0[_wgslsmith_index_u32(var_1.x, 31u)])), !select(false, global0[_wgslsmith_index_u32(var_1.x, 31u)], false))));
    return Struct_1(-504f);
}

fn func_1() -> Struct_1 {
    global4 = Struct_1(global1.a);
    let var_0 = func_3(-func_2(abs(vec4<u32>(u_input.a.x, 12096u, global3.x, 0u)), vec4<u32>(u_input.d.x, firstLeadingBit(16458u), _wgslsmith_mult_u32(u_input.d.x, u_input.a.x), u_input.a.x), select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(97126u, 31u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(47608u, 31u)]))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)) * _wgslsmith_f_op_f32(global1.a + -850f)));
    let var_2 = 34560i;
    global2 = array<i32, 1>();
    return func_3(-u_input.c);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = 33681u ^ u_input.a.x;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-768f * global4.a))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -213f))), arg_0.a) + vec3<f32>(global1.a, _wgslsmith_f_op_f32(-arg_0.a), func_1().a));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(1185f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-113f, _wgslsmith_f_op_f32(-var_0.a), var_2))), global4.a, -227f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, global1.a, 318f, -1189f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, var_0.a, arg_0.a, global4.a)))));
    return func_3(u_input.b << (var_1 % 32u));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    return var_0;
}

fn func_6(arg_0: Struct_1) -> u32 {
    let var_0 = ~(-(~vec3<i32>(_wgslsmith_mult_i32(-1i, 2147483647i), firstLeadingBit(u_input.b), global2[_wgslsmith_index_u32(global3.x, 1u)])));
    var var_1 = arg_0.a;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-1481f * _wgslsmith_f_op_f32(-arg_0.a)));
    return ~u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec3<bool>(global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], true), select(vec3<bool>(false, global0[_wgslsmith_index_u32(global3.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), global0[_wgslsmith_index_u32(global3.x, 31u)]), any(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(81561u, 31u)]))), !vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 31u)], false), all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(global3.x, 31u)], true))), !vec3<bool>(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], false)) && (u_input.c > 6580i), false, global0[_wgslsmith_index_u32(abs(~44034u), 31u)]), !(!vec3<bool>(true, !global0[_wgslsmith_index_u32(34202u, 31u)], true)));
    let var_1 = max(~(~(~_wgslsmith_div_u32(global3.x, u_input.a.x))), func_6(func_5(_wgslsmith_f_op_f32(-global4.a), reverseBits(-vec4<i32>(52299i, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.c, u_input.b)), func_4(func_1()))));
    var var_2 = ~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(select(0u, 1u, true), 1u)] & u_input.b, ~(~(-3415i))) & global2[_wgslsmith_index_u32(1u, 1u)];
    let var_3 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global3.x, ~1u, max(0u, u_input.d.x), 39286u), max(~vec4<u32>(var_1, 0u, 8985u, var_1), select(vec4<u32>(var_1, u_input.a.x, global3.x, u_input.d.x), vec4<u32>(global3.x, var_1, 87897u, global3.x) ^ vec4<u32>(u_input.d.x, 1u, 0u, var_1), global0[_wgslsmith_index_u32(1u, 31u)]))), abs(vec4<u32>(~(~30890u), global3.x, 4294967295u, u_input.d.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-global4.a), _wgslsmith_div_f32(global4.a, global1.a), func_1().a) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a, 328f, 291f, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(global1.a, global1.a, global1.a, global4.a), vec4<f32>(global4.a, -687f, global4.a, -1000f)), false))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, _wgslsmith_f_op_f32(global4.a * global1.a), _wgslsmith_f_op_f32(-421f - global1.a), _wgslsmith_f_op_f32(-global4.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1128f, 732f, global1.a, global4.a))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -1602f, global4.a, global1.a)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a, -1702f, global4.a, -374f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-929f, -1477f, global4.a, -1074f))))));
    global1 = Struct_1(var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4.x, -206f))) + global4.a), _wgslsmith_div_f32(-863f, _wgslsmith_f_op_f32(1919f + _wgslsmith_f_op_f32(-global4.a)))));
}

