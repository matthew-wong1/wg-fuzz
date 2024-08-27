struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(-24549i);

var<private> global2: Struct_1 = Struct_1(-2618i);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0;
    var_0 = Struct_1(-2147483647i);
    global0 = Struct_1(-2147483647i);
    let var_1 = Struct_1(i32(-1i) * -2147483647i);
    var_0 = Struct_1(max(u_input.b, -(~(-arg_1.x))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1367f);
}

fn func_2(arg_0: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(450f))) - -403f);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.c.x), u_input.c, Struct_1(2147483647i)))), _wgslsmith_f_op_f32(max(var_0, _wgslsmith_div_f32(1072f, 927f))), -1050f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0 + 1000f), var_0))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0, var_0, 738f, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) - vec4<f32>(var_0, 659f, 644f, var_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0, 737f, -1921f, 1742f), vec4<f32>(var_0, var_0, 1417f, var_0)))))));
    var var_2 = Struct_1(global2.a);
    global1 = Struct_1(-global0.a);
    let var_3 = vec2<bool>(!((global2.a << (0u % 32u)) <= max(global0.a, 1i | global2.a)), !(((2147483647i >= arg_0) & all(vec4<bool>(false, false, false, true))) | true));
    return select(_wgslsmith_mult_vec3_u32(~vec3<u32>(abs(0u), 4294967295u, 24001u), vec3<u32>(u_input.d, min(u_input.a | u_input.d, u_input.a), u_input.a)), ~max(_wgslsmith_add_vec3_u32(max(vec3<u32>(46827u, u_input.a, 0u), vec3<u32>(0u, u_input.a, u_input.d)), abs(vec3<u32>(u_input.a, 18293u, u_input.d))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 55673u, u_input.d), ~vec3<u32>(u_input.a, u_input.a, u_input.d))), !select(vec3<bool>(u_input.b <= global0.a, all(vec2<bool>(true, true)), true), !vec3<bool>(var_3.x, false, var_3.x), true));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = min(vec3<u32>((_wgslsmith_mult_u32(1139u, 0u) ^ (13407u | arg_0.x)) & ~(u_input.a ^ 4294967295u), 4294967295u, arg_0.x), vec3<u32>(max(1u, reverseBits(arg_0.x)), u_input.a, u_input.a));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1703f + -434f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-216f - -1177f), 2455f, true)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1074f, -458f)) - _wgslsmith_f_op_f32(493f * 228f)), _wgslsmith_f_op_f32(abs(-1000f))))));
    var var_3 = arg_2;
    let var_4 = arg_1;
    return Struct_1(global1.a);
}

fn func_1() -> Struct_1 {
    global1 = func_4(func_2(-min(u_input.c.x, global0.a) & _wgslsmith_div_i32(~22854i, 1i)), Struct_1(global2.a), Struct_1(countOneBits(_wgslsmith_sub_i32(i32(-1i) * -45316i, u_input.b))));
    let var_0 = u_input.c;
    global0 = func_4(vec3<u32>(u_input.d, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(18135u, u_input.a)), countOneBits(u_input.a), ~11757u), _wgslsmith_sub_u32(4294967295u, abs(u_input.d ^ 12557u))), Struct_1(-(u_input.c.x << (~1u % 32u))), func_4(~select(~vec3<u32>(1u, 0u, 70139u), vec3<u32>(u_input.a, u_input.d, 48574u) ^ vec3<u32>(26470u, u_input.a, u_input.a), vec3<bool>(true, false, false)), func_4(vec3<u32>(u_input.a, reverseBits(1u), abs(u_input.d)), Struct_1(~(-1i)), Struct_1(-global1.a)), Struct_1(-1i)));
    var var_1 = select(false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true))), false)), ((true & select(false, false, false)) && true) || !any(vec4<bool>(true, false, true, true)));
    global2 = Struct_1(_wgslsmith_dot_vec2_i32(var_0.zw, -abs(vec2<i32>(-6387i, -36803i))));
    return Struct_1(global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(~select(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 1u, u_input.d), vec3<u32>(102205u, u_input.d, 40605u)), vec3<u32>(1u, u_input.a, u_input.a), true), _wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1u, u_input.d), ~vec3<u32>(u_input.d, u_input.d, u_input.a)), ~44406u < abs(u_input.a)));
    global1 = func_1();
    global0 = func_4(var_0, Struct_1(-abs(-2147483647i)), func_4(var_0, Struct_1(-1i), Struct_1(func_4(vec3<u32>(0u, 45761u, 58845u), Struct_1(-1i), Struct_1(340i)).a | select(u_input.c.x, 2147483647i, false))));
    global0 = Struct_1(~countOneBits(global0.a));
    let var_1 = func_4(func_2(u_input.c.x), Struct_1(abs(_wgslsmith_sub_i32(-2595i, 12393i))), func_1());
    var var_2 = func_4(vec3<u32>(select(1u, 4524u, true), u_input.a, 14167u), var_1, func_4(var_0, var_1, var_1));
    let var_3 = func_2(2822i).x;
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(-u_input.c.xw) << (var_0.yz % vec2<u32>(32u)));
}

