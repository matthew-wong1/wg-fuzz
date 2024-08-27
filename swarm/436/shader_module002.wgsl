struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(arg_2.a.a, _wgslsmith_mod_vec3_u32(arg_2.a.a, max(vec3<u32>(arg_2.a.a.x, 773u, arg_2.a.a.x), arg_3.a.a)) & _wgslsmith_mod_vec3_u32(vec3<u32>(9403u, arg_2.a.a.x, 8645u), arg_2.a.a)), all(!(!(!vec4<bool>(arg_3.a.c.x, false, arg_2.a.c.x, arg_3.a.c.x)))), vec2<bool>(arg_0.x | (_wgslsmith_div_f32(global0.x, -313f) >= global0.x), arg_0.x));
    let var_1 = ~var_0.a.x;
    var var_2 = firstTrailingBit(abs(vec2<i32>(42870i, -arg_1 << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 46172u, 0u, 1u), vec4<u32>(arg_3.a.a.x, 27611u, 18522u, arg_2.a.a.x)) % 32u))));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), _wgslsmith_f_op_f32(ceil(global0.x)), 987f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_div_f32(-661f, 1791f))) - 219f));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-318f)))), _wgslsmith_f_op_f32(global0.x * -509f), global0.x, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(ceil(559f))));
    return countOneBits(_wgslsmith_clamp_u32(arg_2.a.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(37692u, var_0.a.x), 34059u), _wgslsmith_clamp_u32(23472u | firstTrailingBit(1u), 4294967295u, 22739u >> (countOneBits(52925u) % 32u))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-228f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.x)))))), _wgslsmith_f_op_f32(-global0.x), global0.x);
    var var_1 = ~(vec4<i32>(-1i) * -(~vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x)));
    let var_2 = firstTrailingBit(vec2<u32>(func_3(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), true), var_1.x, Struct_2(Struct_1(vec3<u32>(0u, 86002u, 0u), false, vec2<bool>(true, false))), Struct_2(Struct_1(vec3<u32>(14029u, 9537u, 0u), true, vec2<bool>(true, true)))), 1u));
    let var_3 = !((var_2.x > ~var_2.x) == true);
    var_1 = vec4<i32>(var_1.x, _wgslsmith_mult_i32(u_input.a.x, var_1.x), select(var_1.x, select(_wgslsmith_clamp_i32(u_input.a.x, 1i, 1i) & _wgslsmith_mod_i32(var_1.x, 1i), -2100i, true), _wgslsmith_f_op_f32(min(global0.x, 789f)) <= 127f), -countOneBits(_wgslsmith_clamp_i32(23711i, u_input.a.x, u_input.a.x)));
    return Struct_1(vec3<u32>(4294967295u, countOneBits(25979u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(var_2, var_2), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, var_2.x), vec2<u32>(106185u, var_2.x)), ~vec2<u32>(5942u, 0u)))), false, select(vec2<bool>(1u < (var_2.x << (var_2.x % 32u)), !(!var_3)), select(vec2<bool>(true, !var_3), vec2<bool>(var_3 && var_3, var_3), !any(vec4<bool>(false, var_3, var_3, var_3))), false));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2();
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)), _wgslsmith_f_op_f32(round(global0.x)), !var_0.c.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * global0.x))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(589f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-153f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(1618f - -1319f)), arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(763f, global0.x, arg_0)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), global0.x), _wgslsmith_f_op_f32(global0.x * -201f), -1357f);
    let var_2 = Struct_2(var_0);
    global0 = var_1;
    return Struct_2(Struct_1(~vec3<u32>(16931u, _wgslsmith_sub_u32(var_0.a.x, 0u), var_2.a.a.x), true, select(var_0.c, var_0.c, var_0.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1000f, arg_1.x, arg_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_1.x, global0.x, -422f))))));
    let var_0 = arg_0;
    global0 = arg_1;
    let var_1 = arg_0.a.a;
    let var_2 = arg_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(~_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)) < firstLeadingBit(-14411i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.x, -550f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-global0.x), -1429f)), func_3(func_2().c, 0i, func_1(true), Struct_2(func_1(true).a)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(func_1(false).a.c.x, true, any(vec3<bool>(false, true, true)), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), u_input.a.x == -1i))));
    let var_1 = 1u;
    let var_2 = !any(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, var_0.a.c.x, false, true), vec4<bool>(true, false, var_0.a.b, false), vec4<bool>(var_0.a.c.x, var_0.a.c.x, var_0.a.b, true)), true));
    var var_3 = global0.zz;
    let var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, var_3.x, var_3.x), global0.yyy, var_0.a.b))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1370f, -491f, _wgslsmith_f_op_f32(-var_3.x))))));
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), 2082f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, select(~2147483647i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), true && var_0.a.c.x), 14346i), vec3<i32>(min(_wgslsmith_div_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, -1i)), ~u_input.a.x, abs(-5962i & u_input.a.x))), _wgslsmith_mult_i32(u_input.a.x, -4029i), _wgslsmith_f_op_f32(-2026f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1031f)))));
}

