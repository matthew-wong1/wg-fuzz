struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-130f, -451f, 1000f, 1705f);

var<private> global1: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_1(any(vec2<bool>(true, global0.x > global0.x)), countOneBits(~4294967295u));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.b, 6098u), vec3<u32>(13828u, var_0.b, 61449u)), 4830u) ^ _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 19716u)), abs(~vec2<u32>(var_0.b, var_0.b)));
    let var_2 = Struct_1(var_0.a, ~var_0.b);
    let var_3 = ~u_input.a | _wgslsmith_clamp_u32(1u, u_input.a, _wgslsmith_add_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b, 61824u), vec3<u32>(1u, 9330u, 43678u)), 12652u), u_input.a));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(978f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-812f, global0.x)), global0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> Struct_1 {
    global1 = arg_0;
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(2081f)), _wgslsmith_f_op_f32(f32(-1f) * -148f), _wgslsmith_f_op_f32(func_3(false)), _wgslsmith_f_op_f32(global0.x - global0.x)) * vec4<f32>(_wgslsmith_f_op_f32(sign(-2517f)), global0.x, global0.x, global0.x)))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(250f * global0.x))) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1269f))), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))), ~1u);
    var var_1 = global0.x;
    var var_2 = global0.x;
    return Struct_1(arg_0, var_0.b);
}

fn func_1() -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 1740f, global0.x, 898f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -248f, global0.x, global0.x) * vec4<f32>(1044f, global0.x, global0.x, global0.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1663f, 105f, global0.x, 1177f), vec4<f32>(-1232f, global0.x, global0.x, -1127f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(2135f, global0.x, 1205f, -2238f), vec4<f32>(-351f, global0.x, global0.x, -198f), vec4<bool>(false, true, false, false))))) - vec4<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1120f), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -689f))))));
    var var_0 = Struct_2(func_2(!(!any(vec3<bool>(true, true, false))), vec2<u32>(u_input.a, abs(~u_input.a))), Struct_1(false && (global0.x <= _wgslsmith_f_op_f32(216f + 100f)), u_input.a >> (abs(1u) % 32u)), Struct_1(30553u >= _wgslsmith_div_u32(~1u, u_input.a), u_input.a), vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(-58461i, 44394i), _wgslsmith_clamp_i32(-11596i, ~(-16780i), -12780i)), 1i, reverseBits(i32(-1i) * -1i), -1i), Struct_1(any(vec4<bool>(true, true, -358f != global0.x, all(vec3<bool>(true, true, true)))), ~38975u));
    let var_1 = Struct_1(!(var_0.a.a & var_0.c.a), u_input.a);
    let var_2 = _wgslsmith_clamp_vec2_u32(~reverseBits(countOneBits(~vec2<u32>(71168u, var_1.b))), reverseBits(select(~vec2<u32>(49373u, 21196u), min(vec2<u32>(13247u, 0u), vec2<u32>(4294967295u, 1u)), var_0.a.a)) >> (~vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.b, 4294967295u), vec2<u32>(var_0.a.b, 1025u))) % vec2<u32>(32u)), vec2<u32>(~(~4294967295u), ~reverseBits(~1u)));
    var var_3 = var_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = 183f;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(global0.x)), global0.x, _wgslsmith_f_op_f32(-1817f - 1204f)) + vec4<f32>(-155f, global0.x, -476f, _wgslsmith_f_op_f32(ceil(global0.x))))));
    global1 = all(!vec3<bool>(false | any(vec4<bool>(true, true, false, true)), any(vec2<bool>(true, false)) && true, func_1()));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(global0.x + -211f);
    var var_5 = Struct_4(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_2.x, -1762f, global0.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1233f, global0.x, -339f) * vec4<f32>(global0.x, var_2.x, global0.x, global0.x)))))), Struct_2(Struct_1(var_3 & var_3, 1u), Struct_1(true, 0u), Struct_1(var_3, ~u_input.a ^ u_input.a), reverseBits(countOneBits(select(vec4<i32>(1i, 0i, -12555i, -2147483647i), vec4<i32>(-2147483647i, 1i, 1i, 0i), vec4<bool>(var_3, var_3, var_3, true)))), func_2(var_3, _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(u_input.a, 4294967295u)), abs(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(1u, 16962u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 917f)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_5.a.zzw, vec3<f32>(1000f, 1239f, global0.x), vec3<bool>(var_5.b.a.a, var_5.b.e.a, var_3))))))))), firstTrailingBit(select(~abs(var_5.b.d.yy), ~var_5.b.d.xz ^ -vec2<i32>(-48774i, -2147483647i), var_5.b.a.a)), var_5.a.x, 38860i);
}

