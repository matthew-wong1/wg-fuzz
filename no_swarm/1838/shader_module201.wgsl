struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1002f, false, vec2<u32>(30968u, 4294967295u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> bool {
    let var_0 = ~0u;
    var var_1 = Struct_1(1000f, global0.b, vec2<u32>(max(~arg_0, var_0) | max(_wgslsmith_dot_vec4_u32(vec4<u32>(33812u, u_input.e, var_0, 69836u), vec4<u32>(var_0, arg_0, 1u, var_0)), var_0), ~(~(~u_input.a.x))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(943f + global0.a)))) + _wgslsmith_f_op_f32(-806f * _wgslsmith_f_op_f32(trunc(var_1.a)))), firstTrailingBit(1u) <= 67971u, vec2<u32>(arg_0, countOneBits(var_0) & ~0u));
    global0 = Struct_1(_wgslsmith_f_op_f32(global0.a + _wgslsmith_div_f32(1739f, -623f)), false || !var_1.b, ~(~(~vec2<u32>(17591u, var_0))));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-718f)))), !(arg_2.x != _wgslsmith_f_op_f32(-339f * -1123f)), global0.c ^ abs(~vec2<u32>(u_input.a.x, arg_0)));
    return false;
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: i32) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) + _wgslsmith_f_op_f32(ceil(1080f))), any(vec3<bool>(true, true, true)), vec2<u32>(~(~global0.c.x), ~(global0.c.x & _wgslsmith_sub_u32(814u, 0u))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, -515f, 1210f), vec3<f32>(253f, -474f, arg_1))), _wgslsmith_div_vec3_f32(vec3<f32>(-660f, -377f, global0.a), vec3<f32>(-1615f, -862f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-958f, global0.a, var_0.a)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1227f) + -458f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.a, 779f), _wgslsmith_f_op_f32(f32(-1f) * -538f))), _wgslsmith_f_op_f32(select(-841f, _wgslsmith_f_op_f32(601f - var_0.a), func_3(global0.c.x, vec2<i32>(arg_3, -24952i), vec3<f32>(global0.a, arg_1, 199f)))))));
    global0 = Struct_1(-1548f, true, var_0.c);
    let var_2 = select(vec4<bool>(arg_1 <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + 612f))), arg_0.x, true, true), vec4<bool>(true, global0.b & var_0.b, (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 12605u, var_0.c.x), vec3<u32>(61224u, global0.c.x, var_0.c.x)) ^ ~36027u) > u_input.a.x, var_0.b == !(global0.b || false)), arg_2);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -113f), arg_2.x, vec2<u32>(34407u, _wgslsmith_sub_u32(4294967295u >> (global0.c.x % 32u), 1u)) << (~abs(vec2<u32>(u_input.a.x, 18081u)) % vec2<u32>(32u)));
    return !vec3<bool>(max(1i, 0i) <= -(u_input.d.x << (543u % 32u)), true, true);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = !any(select(select(!vec3<bool>(arg_2.b, arg_2.b, true), !vec3<bool>(true, arg_2.b, arg_2.b), arg_0 != -2147483647i), func_2(!vec3<bool>(true, true, arg_1.b), _wgslsmith_f_op_f32(-global0.a), select(vec4<bool>(arg_1.b, false, arg_1.b, true), vec4<bool>(false, arg_2.b, true, arg_2.b), arg_1.b), arg_0), select(select(vec3<bool>(true, true, arg_1.b), vec3<bool>(true, true, arg_2.b), arg_2.b), vec3<bool>(arg_1.b, false, false), select(vec3<bool>(true, arg_2.b, arg_1.b), vec3<bool>(arg_2.b, true, arg_2.b), arg_1.b))));
    let var_1 = Struct_1(global0.a, any(func_2(vec3<bool>(u_input.c <= 31079i, global0.b, 16050i <= arg_0), _wgslsmith_f_op_f32(-arg_1.a), select(vec4<bool>(false, true, var_0, var_0), select(vec4<bool>(var_0, true, arg_2.b, global0.b), vec4<bool>(arg_2.b, false, arg_2.b, false), vec4<bool>(false, var_0, var_0, arg_1.b)), vec4<bool>(false, arg_2.b, arg_2.b, false)), 34415i)), u_input.a);
    global0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(round(-520f)), _wgslsmith_f_op_f32(step(var_1.a, 1359f)) <= _wgslsmith_f_op_f32(f32(-1f) * -235f))))), !var_0, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.c.x, global0.c.x), var_1.c, _wgslsmith_div_vec2_u32(vec2<u32>(arg_2.c.x, 0u), vec2<u32>(22139u, 10015u))) >> (arg_1.c % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(abs(22790u), 15233u ^ u_input.e), vec2<u32>(~var_1.c.x, arg_1.c.x << (11066u % 32u)))));
    let var_2 = arg_2;
    let var_3 = u_input.d.www;
    return max(min(global0.c.x, ~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(65892u, 37815u, 4294967295u, var_2.c.x)), ~vec4<u32>(0u, u_input.e, 4294967295u, 1u))), select(~1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(17727u >> (global0.c.x % 32u), 4294967295u), ~arg_1.c.x), !all(func_2(vec3<bool>(arg_2.b, false, false), global0.a, vec4<bool>(false, arg_1.b, var_2.b, false), u_input.d.x))));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = func_2(!vec3<bool>(!(!global0.b), select(!arg_1.b, true, true), global0.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(603f, global0.a) - _wgslsmith_f_op_f32(trunc(arg_1.a))), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_1.b, u_input.b >= u_input.d.x, select(true, all(vec2<bool>(true, arg_1.b)), any(vec4<bool>(false, false, arg_1.b, global0.b))), true), all(vec2<bool>(true, true))), -(~(i32(-1i) * -6403i)));
    let var_1 = u_input.d.zww;
    let var_2 = ~abs(max(~vec3<u32>(1u, arg_1.c.x, arg_0), _wgslsmith_add_vec3_u32(~vec3<u32>(54501u, 23476u, 3752u), reverseBits(vec3<u32>(arg_1.c.x, arg_0, arg_1.c.x)))));
    var var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - var_3.a));
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(!(-1593f != global0.a), true, func_4(func_1(u_input.c, Struct_1(global0.a, false, u_input.a), Struct_1(global0.a, global0.b, vec2<u32>(47932u, 25477u)), 0u), Struct_1(global0.a, global0.b, vec2<u32>(global0.c.x, 0u))), any(select(vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(true, global0.b, true, global0.b), vec4<bool>(global0.b, false, global0.b, false)))), select(!select(!vec4<bool>(global0.b, global0.b, false, true), !vec4<bool>(global0.b, false, global0.b, global0.b), 4294967295u <= u_input.e), select(select(select(vec4<bool>(global0.b, true, global0.b, false), vec4<bool>(global0.b, false, global0.b, global0.b), true), !vec4<bool>(global0.b, true, true, true), select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(true, global0.b, false, global0.b), global0.b)), select(select(vec4<bool>(global0.b, global0.b, global0.b, global0.b), vec4<bool>(true, true, global0.b, false), vec4<bool>(global0.b, global0.b, global0.b, global0.b)), vec4<bool>(false, global0.b, global0.b, false), vec4<bool>(global0.b, false, false, true)), vec4<bool>(func_3(0u, vec2<i32>(0i, 1065i), vec3<f32>(1214f, 373f, global0.a)), true, false, 767f <= global0.a)), select(!(!vec4<bool>(global0.b, true, false, true)), vec4<bool>(global0.b, global0.b, global0.b | true, true), -303f > _wgslsmith_f_op_f32(ceil(global0.a)))), any(vec3<bool>(!select(global0.b, false, global0.b), all(vec4<bool>(true, false, true, global0.b)) && func_4(global0.c.x, Struct_1(global0.a, global0.b, u_input.a)), !(true || global0.b))));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(533f + -180f))))), !var_0.x, vec2<u32>(func_1(-(~u_input.c), Struct_1(-1806f, true, global0.c), Struct_1(_wgslsmith_f_op_f32(trunc(289f)), false, vec2<u32>(15358u, global0.c.x)), ~u_input.e), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(19624u, u_input.e, 1u), vec3<u32>(1u, global0.c.x, 7449u), global0.b), vec3<u32>(global0.c.x, 0u, 121491u)), vec3<u32>(~global0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, 0u, 43747u, 0u), vec4<u32>(global0.c.x, global0.c.x, 4294967295u, global0.c.x)), ~11379u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a * 4183f) - 1169f)))), global0.b || global0.b, u_input.a);
    let var_2 = var_1;
    global0 = var_2;
    var var_3 = u_input.e;
    var var_4 = ~(~(~_wgslsmith_add_u32(global0.c.x, _wgslsmith_dot_vec2_u32(global0.c, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(u_input.d, max(vec4<i32>(min(-14260i, -1i), i32(-1i) * -5922i, -44868i, 1i), -(vec4<i32>(u_input.c, 24849i, 1i, 0i) | u_input.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-737f, 535f, -115f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1304f, global0.a, var_1.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_2.a, global0.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1361f, global0.a, 212f) * vec3<f32>(-2071f, -550f, var_2.a)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2081f, var_2.a, var_1.a) - _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(952f, global0.a, var_2.a))))))), select(global0.c, ~(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.c.x, u_input.e), vec2<u32>(u_input.a.x, 1u)) << (_wgslsmith_add_vec2_u32(global0.c, vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))), vec2<bool>(var_0.x, true)), _wgslsmith_clamp_vec4_i32(u_input.d << (~vec4<u32>(1803u, var_1.c.x, var_2.c.x, 64453u) % vec4<u32>(32u)), countOneBits(vec4<i32>(~u_input.b, abs(65326i), -41101i, u_input.b)), vec4<i32>(u_input.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -17151i, 0i, -2147483647i), vec4<i32>(u_input.d.x, -1i, 0i, u_input.b)), _wgslsmith_mult_i32(0i, u_input.c)), ~u_input.b << (0u % 32u), ~(~u_input.c))), 1213f);
}

