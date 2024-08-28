struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: i32;

var<private> global2: Struct_1;

var<private> global3: array<u32, 4>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    var var_0 = true;
    global0 = array<vec3<f32>, 11>();
    global0 = array<vec3<f32>, 11>();
    global1 = 19614i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, -575f, global2.a.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, -1000f, -135f, -308f)))));
    return 4294967295u;
}

fn func_1(arg_0: u32) -> u32 {
    global1 = abs(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global2.b, max(i32(-1i) * -1i, i32(-1i) * -2147483647i)), _wgslsmith_mod_i32(abs(min(-2147483647i, 5034i)), u_input.b.x)));
    let var_0 = _wgslsmith_add_i32(min(u_input.c.x, ~u_input.a), -2147483647i);
    var var_1 = global2.b >= var_0;
    let var_2 = ~vec3<u32>(_wgslsmith_clamp_u32(7540u, ~(~4294967295u), func_2(vec4<bool>(true, true, false, true), -937f) >> (2344u % 32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~4294967295u, 0u), reverseBits(~arg_0)), 15769u);
    global1 = var_0 << (1u % 32u);
    return _wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(118383u, ~(~arg_0))), 4294967295u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(353f, global2.c)))))))), countOneBits(_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.b), u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c - global2.c) - _wgslsmith_f_op_f32(-1331f + 286f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f + global2.a.x))))), func_2(vec4<bool>(true | any(vec2<bool>(false, arg_0)), true, all(vec3<bool>(arg_0, false, false)), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -2185f)));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1314f, arg_2.c) - global2.a)))))), ~global2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1156f)) + _wgslsmith_f_op_f32(sign(arg_2.c))), global2.d);
    global1 = 1i << (global2.d % 32u);
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(global2.a.x + -404f), -970f), global2.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2.c)), 585f)) * _wgslsmith_div_vec2_f32(global2.a, global2.a))));
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c), _wgslsmith_f_op_f32(var_0.x * -365f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(685f)))), -19319i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global2.a + vec2<f32>(-742f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1568f))))), ~(~(global2.b & _wgslsmith_div_i32(11334i, global2.b))), global2.a.x, global2.d);
    var var_1 = false;
    var var_2 = func_3(true, vec4<u32>(~(~global3[_wgslsmith_index_u32(4447u, 4u)] << (abs(106552u) % 32u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 72880u, 4294967295u, 1880u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global2.d, 4u)], 0u, 83465u, 2212u), vec4<u32>(4294967295u, 0u, var_0.d, 29796u), vec4<u32>(var_0.d, 4294967295u, 62652u, global3[_wgslsmith_index_u32(var_0.d, 4u)]))), firstTrailingBit(86112u), func_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.d), vec2<u32>(var_0.d, 6487u)))), Struct_3(_wgslsmith_mod_i32(~1i, -68024i), true, _wgslsmith_f_op_f32(round(964f)), ~min(_wgslsmith_div_i32(32135i, 1i), var_0.b)));
    var_1 = !(any(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))) & true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.a.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-769f + -243f))) * _wgslsmith_f_op_f32(-115f - -215f))));
}

