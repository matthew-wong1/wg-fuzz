struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(20280i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global1 = (!(_wgslsmith_mod_u32(15183u, u_input.a) <= u_input.a) == (arg_1.a >= _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.a, global0.a), -1i << (u_input.a % 32u), -18365i))) && any(!(!select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, arg_0, false), arg_0)));
    global0 = arg_1;
    global2 = Struct_1(max(2147483647i & _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-15720i, -38212i), ~global2.a, i32(-1i) * -81628i), arg_1.a));
    global0 = Struct_1(countOneBits(~(~arg_1.a)));
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, 27425i, -13493i), vec3<i32>(26955i, global0.a, global0.a)), ~global2.a, ~global0.a), vec3<i32>(-(arg_1.a ^ global2.a), arg_1.a, global2.a)), _wgslsmith_sub_i32(-global0.a, -(~reverseBits(global0.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1f)))) * -514f);
}

fn func_2() -> f32 {
    global1 = true;
    var var_0 = ~vec3<u32>(u_input.a, 1u, 0u);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, Struct_1(global0.a))) * -496f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(355f + 251f))))))));
}

fn func_1() -> Struct_1 {
    global1 = false;
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1681f)), -855f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-709f, _wgslsmith_f_op_f32(func_2()), all(vec3<bool>(true, true, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2405f, -387f) * -1026f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1559f, -535f, -655f) - vec3<f32>(1000f, -637f, -168f))), vec3<f32>(1f, 1f, 1f)))));
    let var_1 = Struct_1(2147483647i);
    global1 = !all(!select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)));
    let var_2 = Struct_1(34090i);
    return Struct_1(global2.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_1();
    var var_1 = vec4<u32>(min(firstTrailingBit(1u) << (38152u % 32u), u_input.a) ^ min(96431u, u_input.a), u_input.a, 1u, u_input.a);
    var var_2 = arg_1;
    let var_3 = arg_1;
    var var_4 = Struct_1(firstTrailingBit(_wgslsmith_mult_i32(0i, var_0.a)));
    return Struct_1(-_wgslsmith_mult_i32(-abs(var_4.a), -78945i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(2147483647i);
    global0 = func_4(!(!(all(vec4<bool>(false, true, true, true)) || true)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec3<u32>(1u, u_input.a ^ u_input.a, 1u)));
}

