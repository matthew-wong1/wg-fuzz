struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
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

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, false, false, true, true, true, true, false, false, true, false, false, false, true, false, true, false, true, false, false, false, true, true);

var<private> global1: f32;

var<private> global2: Struct_2 = Struct_2(Struct_1(-718f), Struct_1(1000f), 2147483647i);

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-1114f + _wgslsmith_f_op_f32(1075f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-358f * -442f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2039f))))));
    var var_1 = Struct_1(1416f);
    let var_2 = global2.b;
    var var_3 = ~vec3<u32>(u_input.e.x & 4294967295u, u_input.e.x >> (0u % 32u), 56172u);
    global1 = global2.b.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.a) - -281f);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = max(select(~firstLeadingBit(0i), -10414i, !global0[_wgslsmith_index_u32(1u, 24u)]), i32(-1i) * -1i);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(global2.b.a), global2.a, global2.c | global2.c)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2572f + -365f))))), ~_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c, 1i), 2147483647i));
    let var_2 = Struct_2(var_1.b, var_1.a, 1i);
    var_0 = countOneBits(-1i);
    var_1 = Struct_2(var_2.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) - -781f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.a))))), 0i);
    return -257f;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1199f * 847f)), Struct_1(-712f), i32(-1i) * -1i);
    global3 = !(!vec3<bool>(true, true & global0[_wgslsmith_index_u32(1u, 24u)], arg_1));
    let var_1 = arg_1;
    var var_2 = _wgslsmith_mult_u32(41627u, u_input.b);
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1232f, global2.b.a), _wgslsmith_f_op_f32(f32(-1f) * -623f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(var_0.a.a), arg_2, -1i)))))));
    return Struct_1(arg_2.a);
}

fn func_5(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = global2.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1495f), _wgslsmith_f_op_f32(-arg_0.a.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.b.a, var_0.a), vec2<f32>(-175f, 756f)) + vec2<f32>(-1133f, var_0.a)))));
    var_0 = arg_0.b;
    global3 = vec3<bool>(any(vec3<bool>(global3.x, false, !global3.x)), arg_1, all(select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], arg_1, global3.x, global3.x), vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 24u)], false, arg_0.c != -1i, true), true)));
    var var_2 = arg_0;
    return Struct_1(_wgslsmith_f_op_f32(765f + 722f));
}

fn func_6(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_div_i32(min(~_wgslsmith_sub_i32(-u_input.c, -1i), -_wgslsmith_sub_i32(u_input.a.x, -9831i) >> (_wgslsmith_mod_u32(~u_input.d.x, reverseBits(1u)) % 32u)), ~(-(~1i)));
    var var_1 = firstTrailingBit(4294967295u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, !(!all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 24u)], global0[_wgslsmith_index_u32(126636u, 24u)], false, false))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_3 = func_4(_wgslsmith_f_op_f32(ceil(1f)), global0[_wgslsmith_index_u32(23268u, 24u)], global2.a);
    return StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - var_2) - _wgslsmith_f_op_f32(step(169f, _wgslsmith_f_op_f32(-457f * var_3.a)))))));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - 588f))));
    return func_6(func_5(Struct_2(Struct_1(-2069f), func_4(_wgslsmith_f_op_f32(func_2(u_input.b)), u_input.b > u_input.e.x, Struct_1(arg_0)), ~(~10831i)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a) + global2.b.a)) - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-801f)), -703f)))));
    let var_1 = _wgslsmith_mod_u32(firstTrailingBit(0u), u_input.e.x);
    let var_2 = u_input.c;
    let var_3 = any(vec4<bool>(!global0[_wgslsmith_index_u32(3294u, 24u)], true, false, false));
    global0 = array<bool, 24>();
    let x = u_input.a;
    s_output = func_1(global2.a.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-935f, -1000f) * vec2<f32>(553f, global2.a.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(603f, -421f) - vec2<f32>(419f, -1000f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-302f, 1057f))))), global3.zz)));
}

