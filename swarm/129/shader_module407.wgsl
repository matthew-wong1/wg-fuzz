struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<u32, 32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global0 = array<u32, 20>();
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34300u, 20u)], 20u)])), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)]), 20u)];
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(971f + 1077f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1069f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1025f, 694f)))))));
    global0 = array<u32, 20>();
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-637f, 378f))))))));
    return true && !any(vec3<bool>(true, false, true));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32, arg_3: i32) -> vec3<bool> {
    let var_0 = 1i;
    var var_1 = vec3<bool>(arg_1.x, false, true);
    global1 = array<u32, 32>();
    var_1 = vec3<bool>(!(!func_3()), !any(vec3<bool>(all(arg_0.d), false, !var_1.x)), true);
    let var_2 = var_1.zz;
    return vec3<bool>(arg_1.x == arg_1.x, any(select(arg_0.d.wwx, select(vec3<bool>(var_1.x, false, arg_1.x), arg_0.a, arg_0.a), func_3())) & var_2.x, true);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2.d.xz;
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    let var_1 = arg_3;
    return -max(~firstLeadingBit(-14602i | var_1.c.x), _wgslsmith_mult_i32(arg_1.x, 2147483647i));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = -18439i;
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    let var_1 = Struct_1(!vec3<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), true), ~global0[_wgslsmith_index_u32(98092u, 20u)], vec3<i32>(func_4(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a, var_0), -vec2<i32>(var_0, u_input.a)), min(~vec2<i32>(-2147483647i, var_0), vec2<i32>(u_input.a, var_0) ^ vec2<i32>(1i, var_0)), Struct_1(func_2(Struct_1(vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(1u, 32u)], vec3<i32>(u_input.a, -65950i, 18991i), vec4<bool>(true, false, true, true)), vec2<bool>(true, true), u_input.a, 60085i), arg_1.x, vec3<i32>(u_input.a, var_0, u_input.a), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(arg_1.x, 32u)], 32u)], vec3<i32>(u_input.a, 2147483647i, var_0), vec4<bool>(true, true, true, true))), -countOneBits(func_4(vec2<i32>(u_input.a, -57814i), vec2<i32>(u_input.a, u_input.a), Struct_1(vec3<bool>(true, true, false), 1u, vec3<i32>(u_input.a, -2147483647i, 2147483647i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, false, false), 1u, vec3<i32>(0i, 1i, var_0), vec4<bool>(true, true, true, false)))), (u_input.a << (~global1[_wgslsmith_index_u32(51888u, 32u)] % 32u)) & (_wgslsmith_add_i32(-4231i, 1i) >> (firstTrailingBit(global0[_wgslsmith_index_u32(arg_1.x, 20u)]) % 32u))), vec4<bool>(true, true, func_2(Struct_1(vec3<bool>(true, false, true), abs(47092u), vec3<i32>(0i, -2147483647i, u_input.a), vec4<bool>(false, false, true, false)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), _wgslsmith_add_i32(~u_input.a, 0i), _wgslsmith_mod_i32(~var_0, -44859i)).x, true));
    var var_2 = ~_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 8560u), arg_1 >> (arg_1 % vec3<u32>(32u))), 20u)], select(var_1.b, global1[_wgslsmith_index_u32(var_1.b, 32u)] >> (global0[_wgslsmith_index_u32(4294967295u, 20u)] % 32u), !var_1.a.x)), abs(min(select(vec2<u32>(24976u, 1u), arg_1.yy, vec2<bool>(true, false)), vec2<u32>(1u, global0[_wgslsmith_index_u32(var_1.b, 20u)]))));
    return var_1;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    return func_1(arg_2, ~(~abs(~vec3<u32>(global0[_wgslsmith_index_u32(arg_1.b, 20u)], 0u, arg_1.b))));
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> u32 {
    global1 = array<u32, 32>();
    var var_0 = arg_0.d.x;
    var var_1 = arg_0;
    var var_2 = func_5(!(!vec4<bool>(arg_1, true, all(vec2<bool>(arg_0.a.x, var_1.d.x)), var_1.a.x)), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(626f)) - 265f))), 1000f)), true).d.yzy;
    var_2 = func_1(_wgslsmith_f_op_f32(trunc(1667f)), ~(~select(vec3<u32>(arg_0.b, 43526u, 1u), vec3<u32>(12593u, 1749u, global0[_wgslsmith_index_u32(28687u, 20u)]), vec3<bool>(true, false, false)) ^ _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(82567u, var_1.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.b, 32u)], 32u)])), vec3<u32>(arg_0.b, global0[_wgslsmith_index_u32(0u, 20u)], arg_0.b)))).a;
    return ~min(global1[_wgslsmith_index_u32(4294967295u, 32u)], firstLeadingBit(arg_0.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    var var_0 = ~12028u;
    global0 = array<u32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-691f, -1178f, _wgslsmith_f_op_f32(f32(-1f) * -1748f), _wgslsmith_f_op_f32(f32(-1f) * -473f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(860f, -506f, 206f, -1504f)), any(vec2<bool>(false, false))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))), ~func_6(func_5(vec4<bool>(false, false, true, true), func_1(-791f, vec3<u32>(20924u, global0[_wgslsmith_index_u32(42787u, 20u)], global0[_wgslsmith_index_u32(51048u, 20u)])), _wgslsmith_f_op_f32(1043f + -482f), true), any(vec4<bool>(false, false, false, true)) | false), -8521i, -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a | u_input.a), ~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -20216i), vec2<i32>(-2147483647i, u_input.a))));
}

