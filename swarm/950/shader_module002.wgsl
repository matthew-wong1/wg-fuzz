struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: array<f32, 5> = array<f32, 5>(841f, 984f, -1000f, 1000f, 1741f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32) -> vec3<bool> {
    var var_0 = Struct_1((10133u >> (global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(137u, u_input.c.x), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(u_input.c.x, 16u)]), 16u)]), 16u)] % 32u)) << (max(50035u, ~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)])) % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + arg_1))))), 159f, false)), !vec3<bool>(true, !all(vec2<bool>(false, true)), true));
    var var_1 = Struct_1(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 16u)]), 304f, var_0.c);
    let var_2 = vec2<u32>(abs(~4294967295u), global0[_wgslsmith_index_u32(reverseBits(1u | u_input.b) & ~_wgslsmith_add_u32(~66861u, 0u), 16u)]);
    global0 = array<u32, 16>();
    var var_3 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 5u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-846f, 2390f))), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-arg_0))));
    return !var_0.c;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(arg_1.a, arg_1.b, select(select(!arg_0, vec3<bool>(select(true, true, false), true, true), any(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x))), vec3<bool>(!(42128u == arg_1.a), any(select(vec3<bool>(true, arg_1.c.x, arg_0.x), vec3<bool>(arg_1.c.x, arg_0.x, false), arg_1.c.x)), !(!arg_1.c.x)), true));
    var var_1 = arg_1;
    var_0 = arg_1;
    var var_2 = vec3<f32>(218f, _wgslsmith_f_op_f32(min(1003f, _wgslsmith_f_op_f32(1637f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, 512f))))), _wgslsmith_f_op_f32(f32(-1f) * -190f));
    let var_3 = Struct_1(~var_1.a, -104f, vec3<bool>(true, false, false));
    return ~var_3.a;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 16>();
    var var_0 = -_wgslsmith_sub_i32(firstLeadingBit(reverseBits(1i)), -_wgslsmith_mod_i32(_wgslsmith_add_i32(-8384i, 46116i), -18862i));
    var_0 = -46329i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a << (func_4(func_3(global1[_wgslsmith_index_u32(arg_0.a, 5u)], -475f), arg_0) % 32u), 5u)])) + 1894f);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))))));
    return arg_0;
}

fn func_1() -> bool {
    global1 = array<f32, 5>();
    let var_0 = func_2(Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 16u)] | 46390u, 5u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 5u)] - 2494f)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), true)));
    global1 = array<f32, 5>();
    let var_1 = false;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 5>();
    let var_0 = !func_1();
    var var_1 = Struct_1(5660u, global1[_wgslsmith_index_u32(1u, 5u)], !(!(!(!vec3<bool>(var_0, true, false)))));
    let var_2 = select(!var_1.c, vec3<bool>(true, var_1.c.x, var_0), !all(vec4<bool>(true, true, func_3(-1080f, 535f).x, !var_0)));
    var var_3 = func_4(var_2, func_2(func_2(Struct_1(~global0[_wgslsmith_index_u32(60544u, 16u)], _wgslsmith_f_op_f32(var_1.b * 823f), !vec3<bool>(var_2.x, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~abs(i32(-1i) * -62588i)), max(~1u, global0[_wgslsmith_index_u32(func_4(select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, true, var_0), var_0), Struct_1(u_input.d.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(57203u, 1u), 5u)], var_1.c)), 16u)]), ~_wgslsmith_mult_vec2_u32(u_input.c.zw, _wgslsmith_mult_vec2_u32(u_input.c.zx, u_input.c.xy) >> (~vec2<u32>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 16u)], 16u)], 16u)], 16u)]) % vec2<u32>(32u))));
}

