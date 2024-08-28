struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1648f, 879f, 153f, 100f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -812f, _wgslsmith_f_op_f32(-382f + 158f), _wgslsmith_f_op_f32(global0.x + global0.x)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-227f - global0.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_f32(min(865f, -942f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-889f, global0.x)), global0.x), _wgslsmith_f_op_f32(global0.x * -380f)), vec4<bool>(~u_input.a.x > -2147483647i, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.c)) < ~u_input.c))));
    var var_0 = Struct_1(any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(global0.x - global0.x) == _wgslsmith_f_op_f32(global0.x + global0.x))), select(min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.b, 74219u, u_input.c) ^ vec4<u32>(4294967295u, 3755u, u_input.c, u_input.c), abs(vec4<u32>(u_input.c, u_input.b, 43705u, u_input.b))), vec4<u32>(u_input.b, u_input.c, 4440u, u_input.c) | countOneBits(vec4<u32>(u_input.b, 16942u, 9325u, u_input.c))), vec4<u32>(0u, min(_wgslsmith_sub_u32(73381u, u_input.b), 1u), _wgslsmith_sub_u32(~12135u, 0u), u_input.b >> (u_input.c % 32u)), vec4<bool>(any(vec3<bool>(false, true, false)) || false, u_input.d.x <= firstLeadingBit(0i), true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + 1772f))), 9607u);
    let var_1 = vec3<bool>((1i | _wgslsmith_add_i32(countOneBits(u_input.d.x), u_input.a.x)) < u_input.d.x, false, true);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(144f, global0.x, -1257f, global0.x)), vec4<f32>(1000f, 164f, _wgslsmith_f_op_f32(157f + -1945f), var_0.c)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1233f, 345f, 456f) * vec4<f32>(global0.x, global0.x, 1000f, var_0.c)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(662f, var_0.c, 1772f, global0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, global0.x, -1030f, var_0.c))))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(892f, -904f) * _wgslsmith_f_op_f32(f32(-1f) * -374f)) + var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 333f) - _wgslsmith_f_op_f32(trunc(-1000f))), -460f);
    return false && (-29987i < u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> vec4<bool> {
    let var_0 = arg_0.b;
    global0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-837f)), 503f, -1174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1378f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_0.c, 1504f, 1318f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c, -212f, -639f, 2017f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-933f, -334f, 715f, arg_0.c)), false))))))));
    let var_1 = 80679u;
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.x + arg_0.c), _wgslsmith_f_op_f32(f32(-1f) * -347f), -2321f, 773f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, global0.x, 849f, -1097f))))))));
    let var_2 = countOneBits(_wgslsmith_div_i32(~62165i, ~2147483647i) | u_input.a.x) >> (reverseBits(var_0.x) % 32u);
    return vec4<bool>(arg_0.a | false, false, func_3(), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1138f, 953f) * _wgslsmith_f_op_f32(trunc(-745f))) <= global0.x);
}

fn func_2(arg_0: bool) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1683f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * _wgslsmith_f_op_f32(trunc(836f)))), -144f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1005f, global0.x, 326f, global0.x) + vec4<f32>(global0.x, 305f, -1000f, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1480f, 917f, global0.x, global0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-814f, global0.x, 138f, -762f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -815f, -180f, -527f) - vec4<f32>(-544f, global0.x, 306f, global0.x))))));
    var var_0 = func_4(Struct_1(!arg_0, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, ~u_input.b, 0u, u_input.b << (u_input.b % 32u)), firstLeadingBit(vec4<u32>(u_input.b, u_input.c, 30382u, 4294967295u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(18056u, 78561u, u_input.b, u_input.b), vec4<u32>(89156u, u_input.c, 50581u, 9150u))), -1470f, 0u), vec2<bool>(false, true == func_3()));
    var var_1 = select(vec2<u32>(u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, 47251u), vec2<u32>(4199u, 30364u)), ~(~vec2<u32>(53906u, 38763u)))), abs(min(_wgslsmith_add_vec2_u32(vec2<u32>(0u, 54080u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(10458u, u_input.c))), vec2<u32>(_wgslsmith_div_u32(0u, 10245u), u_input.c))), select(select(select(!var_0.zz, !var_0.zw, arg_0 | var_0.x), vec2<bool>(func_4(Struct_1(arg_0, vec4<u32>(u_input.c, 23129u, 96040u, 4294967295u), global0.x, u_input.c), var_0.zx).x, var_0.x), vec2<bool>(any(vec4<bool>(true, false, var_0.x, true)), true)), vec2<bool>(false, true), vec2<bool>(var_0.x, any(select(vec4<bool>(arg_0, false, var_0.x, false), vec4<bool>(arg_0, var_0.x, arg_0, arg_0), vec4<bool>(var_0.x, var_0.x, false, true))))));
    var_1 = max(firstTrailingBit(vec2<u32>(20807u, 1u)), _wgslsmith_add_vec2_u32(max(~vec2<u32>(1u, u_input.b), vec2<u32>(1u, 0u)), vec2<u32>(u_input.c, _wgslsmith_mod_u32(var_1.x, var_1.x)))) >> (vec2<u32>(8618u, ~4294967295u) % vec2<u32>(32u));
    var var_2 = Struct_1(arg_0, ~((select(vec4<u32>(u_input.c, var_1.x, var_1.x, 1u), vec4<u32>(u_input.b, u_input.b, 18798u, 4294967295u), vec4<bool>(true, false, var_0.x, var_0.x)) ^ vec4<u32>(1u, u_input.c, 4294967295u, var_1.x)) & ~abs(vec4<u32>(u_input.b, 0u, 1u, 56809u))), global0.x, 1u);
    return 4767u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: bool) -> i32 {
    var var_0 = u_input.b >> ((12224u >> (u_input.c % 32u)) % 32u);
    var_0 = _wgslsmith_dot_vec4_u32(~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.c, u_input.c, 73713u), vec4<u32>(0u, u_input.c, 4294967295u, u_input.b)))), vec4<u32>(~(~func_2(arg_2)), firstTrailingBit(func_2(arg_0.x && arg_0.x)), ~u_input.c, ~u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), global0.x) - global0.xx);
    global0 = vec4<f32>(609f, global0.x, _wgslsmith_f_op_f32(exp2(var_1.x)), var_1.x);
    return ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a.x, vec2<i32>(func_1(vec4<bool>(true, true, false, all(vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xz + vec2<f32>(1000f, -605f))), u_input.b != u_input.c), u_input.d.x));
}

