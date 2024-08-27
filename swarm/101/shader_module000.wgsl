struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<i32> = vec2<i32>(-1077i, i32(-2147483648));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> i32 {
    var var_0 = -(~(~global2.b));
    global2 = Struct_1(global2.a, global2.b);
    let var_1 = Struct_1(~global2.a, global1.x);
    let var_2 = all(vec3<bool>(!any(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true, true));
    global0 = ~(-2147483647i & global2.b);
    return 39536i;
}

fn func_3(arg_0: i32) -> i32 {
    global0 = -arg_0;
    return _wgslsmith_div_i32(65010i, global2.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> Struct_1 {
    global0 = func_2();
    global0 = 1i;
    return Struct_1(0u, func_3(arg_0.x));
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    let var_1 = func_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-62977i, _wgslsmith_mult_i32(30471i, global1.x)), select(vec2<i32>(-15595i, global1.x), vec2<i32>(9223i, 0i), vec2<bool>(true, false)) >> ((vec2<u32>(var_0.a, 4294967295u) & vec2<u32>(4294967295u, arg_2.a)) % vec2<u32>(32u))), reverseBits(~_wgslsmith_sub_vec2_i32(vec2<i32>(21428i, -1i), vec2<i32>(arg_3.b, var_0.b))), vec2<i32>(countOneBits(global2.b), 1i)), arg_1.x != _wgslsmith_div_f32(arg_1.x, -396f));
    global1 = -(~(-countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-3890i, var_0.b), vec2<i32>(global2.b, arg_3.b)))));
    global0 = global1.x;
    global1 = select(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(var_1.b), 1i), select(vec2<i32>(arg_3.b, 21692i), vec2<i32>(0i, 25268i), all(vec4<bool>(false, true, false, false)))), var_0.b), vec2<i32>(global2.b, ~32869i) ^ vec2<i32>(-(~20364i), 44699i), select(vec2<bool>(any(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, false, true))), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), !all(vec4<bool>(false, false, true, true))), vec2<bool>(true, true)));
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = ~(-vec4<i32>(-global1.x, -2147483647i, global1.x >> (_wgslsmith_sub_u32(arg_1, var_0) % 32u), i32(-1i) * -51258i));
    let var_2 = ~(~arg_1);
    let var_3 = abs(vec2<i32>(func_1(var_1.ww, false).b, select(18987i, -27603i, false)) | vec2<i32>(~var_1.x, abs(global2.b))) << (vec2<u32>(~(var_2 ^ u_input.a) << (15082u % 32u), max(~(~var_0), _wgslsmith_add_u32(~var_2, 19554u))) % vec2<u32>(32u));
    var_1 = vec4<i32>(~_wgslsmith_div_i32(0i, -global1.x), ~(-arg_0.b), min(~(~global2.b), _wgslsmith_div_i32(36075i, arg_0.b)), arg_0.b);
    return arg_0;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<u32>) -> f32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -208f) * _wgslsmith_f_op_f32(126f + -343f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-182f, 792f)) * 1000f));
    global1 = ~_wgslsmith_clamp_vec2_i32(~countOneBits(vec2<i32>(40375i, global2.b)), -vec2<i32>(global1.x, 1i), vec2<i32>(-2147483647i, 1i) << (_wgslsmith_mod_vec2_u32(arg_1 & vec2<u32>(49703u, 44986u), vec2<u32>(18580u, 55768u)) % vec2<u32>(32u)));
    var var_1 = func_4(15252u, vec2<f32>(1260f, 1110f), arg_0, arg_0);
    let var_2 = Struct_1(global2.a, 26800i ^ _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(8210i, -15837i)), select(~vec2<i32>(global1.x, -2147483647i), vec2<i32>(2147483647i, 11883i), true)));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), 1000f))) + vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-228f + var_0.x), var_0.x)), _wgslsmith_div_f32(701f, _wgslsmith_f_op_f32(-2134f + -921f)))));
    return 447f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b << (u_input.a % 32u), global1.x), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(2122i, 78670i)) ^ (vec2<i32>(-1i, global1.x) & vec2<i32>(2147483647i, global2.b)), vec2<i32>(global1.x & 2147483647i, global2.b | global2.b))), 1i);
    global1 = vec2<i32>(~(-1i), 32645i);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_5(func_4(4294967295u, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(391f, -1443f), vec2<f32>(-1124f, 999f), vec2<bool>(false, false))), Struct_1(global2.a, global2.b), func_1(vec2<i32>(global2.b, -1i), false)), _wgslsmith_mult_u32(4294967295u, global2.a << (28665u % 32u))), vec2<u32>(firstLeadingBit(min(global2.a, 7696u)), 1u))));
    let var_1 = !(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))) && true);
    global2 = Struct_1(0u, -(global1.x ^ 2147483647i));
    let var_2 = vec4<i32>(global1.x, ~77754i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-23259i, global2.b), -2147483647i), _wgslsmith_div_i32(-21811i, ~global2.b)) ^ (~(global2.b & global1.x) ^ 1i), global2.b);
    let var_3 = all(!(!vec2<bool>(!var_1, true)));
    var var_4 = reverseBits(vec3<i32>(-var_2.x, func_5(Struct_1(1u, global1.x), global2.a << (select(32005u, 0u, var_1) % 32u)).b, var_2.x));
    var var_5 = func_5(func_4(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, u_input.a, global2.a, u_input.a) ^ vec4<u32>(global2.a, u_input.a, global2.a, u_input.a), vec4<u32>(0u, global2.a, 29695u, 0u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1099f, -1044f)) + vec2<f32>(-297f, -385f)))), Struct_1(func_1(var_2.yz, true).a, -26045i), func_4(global2.a | 35683u, _wgslsmith_div_vec2_f32(vec2<f32>(1944f, -755f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-137f, 285f), vec2<f32>(-2188f, -1241f), vec2<bool>(var_1, var_3)))), func_4(select(u_input.a, 1u, var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, 1073f)), func_4(global2.a, vec2<f32>(2958f, 1517f), Struct_1(18795u, var_2.x), Struct_1(0u, -1i)), Struct_1(u_input.a, 90330i)), Struct_1(~1u, 2147483647i))), _wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(0u, 4294967295u)), ~vec2<u32>(u_input.a, _wgslsmith_add_u32(u_input.a, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

