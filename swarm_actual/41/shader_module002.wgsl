struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-4097i, -832f, Struct_1(vec2<f32>(-1001f, -361f), false), Struct_1(vec2<f32>(-437f, 370f), false));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: vec4<i32>) -> vec2<bool> {
    var var_0 = 34779i;
    var var_1 = Struct_2(-abs(-arg_3.x & ~9591i), arg_0.a.x, Struct_1(global0.c.a, any(!(!vec2<bool>(arg_0.b, false)))), global0.c);
    global0 = Struct_2(~countOneBits(firstLeadingBit(-7356i) ^ var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-260f + -430f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(279f, var_1.b)) * _wgslsmith_f_op_f32(arg_1 + 963f)))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(floor(-296f)), arg_0.a.x))), arg_0.b), arg_0);
    let var_2 = Struct_2(min(var_1.a, firstTrailingBit(u_input.a.x)) >> (~arg_2 % 32u), var_1.b, var_1.d, arg_0);
    var var_3 = all(select(!(!select(vec3<bool>(var_2.d.b, arg_0.b, false), vec3<bool>(false, var_1.d.b, false), vec3<bool>(false, global0.d.b, false))), !(!(!vec3<bool>(var_1.c.b, var_2.c.b, arg_0.b))), !(!select(vec3<bool>(true, false, var_2.c.b), vec3<bool>(true, false, var_2.d.b), vec3<bool>(false, global0.c.b, false)))));
    return vec2<bool>((global0.a < var_2.a) & !global0.c.b, select((i32(-1i) * -1i) > ~u_input.b, true, true) | true);
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> vec4<u32> {
    global0 = Struct_2(u_input.c.x << (~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(41945u, 1u, 1u, 4294967295u), vec4<u32>(50674u, 1u, 1u, 52219u))) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-376f)))))), arg_0.d, global0.c);
    var var_0 = -(~_wgslsmith_sub_i32(-9920i, -11156i << (min(0u, 19957u) % 32u)));
    let var_1 = vec2<bool>(global0.c.b, false);
    var var_2 = ~1u;
    let var_3 = select(vec2<bool>(any(select(select(vec4<bool>(arg_1, false, var_1.x, true), vec4<bool>(global0.c.b, global0.c.b, global0.c.b, false), vec4<bool>(var_1.x, arg_1, global0.c.b, var_1.x)), vec4<bool>(arg_0.d.b, global0.d.b, true, true), any(vec3<bool>(false, false, true)))), 1i < ((-16223i & global0.a) << (firstTrailingBit(17173u) % 32u))), var_1, !func_3(Struct_1(vec2<f32>(arg_0.b, 1617f), var_1.x), _wgslsmith_f_op_f32(global0.c.a.x + -2713f), 4294967295u, ~vec4<i32>(-2147483647i, 0i, u_input.a.x, global0.a)));
    return select(~reverseBits(min(~vec4<u32>(87934u, 1u, 1u, 36815u), vec4<u32>(0u, 0u, 17732u, 5660u))), ~vec4<u32>(1u, _wgslsmith_clamp_u32(max(0u, 1u), ~1u, ~55072u), 1u, 4294967295u), select(!select(select(vec4<bool>(global0.c.b, false, false, arg_0.c.b), vec4<bool>(false, arg_0.c.b, false, true), global0.d.b), !vec4<bool>(false, false, global0.c.b, global0.d.b), any(vec4<bool>(global0.d.b, arg_0.c.b, true, true))), select(!vec4<bool>(arg_0.d.b, true, false, true), select(!vec4<bool>(true, arg_1, false, arg_1), select(vec4<bool>(false, global0.d.b, var_3.x, true), vec4<bool>(true, true, arg_0.d.b, true), true), !vec4<bool>(false, global0.d.b, false, var_1.x)), !(!vec4<bool>(true, global0.c.b, true, arg_0.d.b))), !(!vec4<bool>(false, arg_1, global0.c.b, false))));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = vec2<u32>(22304u, _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(7197u, 40787u, 4294967295u, 51372u)), ~func_2(Struct_2(u_input.a.x, -1585f, global0.d, Struct_1(global0.c.a, global0.d.b)), arg_0.x, vec4<i32>(u_input.a.x, u_input.c.x, -2147483647i, 66990i)))) ^ func_2(Struct_2(1112i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2181f)), -928f), global0.c, global0.d), any(select(vec4<bool>(false, true, global0.d.b, global0.c.b), arg_0, vec4<bool>(true, true, true, arg_0.x))) || !all(vec2<bool>(global0.d.b, true)), vec4<i32>(24993i, countOneBits(-global0.a), ~(global0.a >> (0u % 32u)), _wgslsmith_dot_vec3_i32(select(u_input.c.wyw, vec3<i32>(28233i, u_input.a.x, u_input.b), false), ~vec3<i32>(0i, 10744i, -39876i)))).xz;
    var_0 = ~select(~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1159u, var_0.x), vec2<u32>(var_0.x, 0u))), ~reverseBits(abs(vec2<u32>(0u, 93751u))), vec2<bool>(all(select(vec3<bool>(global0.d.b, false, true), vec3<bool>(arg_0.x, global0.c.b, arg_0.x), arg_0.zzy)), true));
    var var_1 = vec3<bool>((true != !(var_0.x >= 24425u)) && all(!select(vec2<bool>(arg_0.x, global0.d.b), vec2<bool>(true, global0.d.b), arg_0.xx)), arg_0.x, false);
    let var_2 = _wgslsmith_f_op_f32(trunc(global0.b));
    var var_3 = !select(arg_0.yz, arg_0.yz, true);
    return Struct_2(~0i, -1228f, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, -2589f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d.a.x, global0.d.a.x), vec2<f32>(1000f, -1262f), false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, -739f), global0.c.a, arg_0.x)))), var_3.x), Struct_1(_wgslsmith_div_vec2_f32(global0.d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.c.a, vec2<f32>(global0.c.a.x, global0.b))))), any(vec4<bool>(false, arg_0.x, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, global0.c.b, false, global0.c.b), select(vec4<bool>(global0.d.b, global0.c.b, false, false), vec4<bool>(true, global0.c.b, global0.d.b, false), global0.c.b), select(vec4<bool>(true, false, true, global0.c.b), vec4<bool>(global0.c.b, global0.c.b, global0.c.b, false), false)), vec4<bool>(any(vec4<bool>(global0.d.b, false, true, global0.d.b)), 778f >= global0.b, true, all(vec4<bool>(false, false, global0.d.b, true)))), !select(select(vec4<bool>(false, global0.d.b, true, global0.c.b), vec4<bool>(global0.c.b, false, false, global0.d.b), vec4<bool>(false, true, global0.d.b, false)), vec4<bool>(false, false, global0.c.b, true), vec4<bool>(global0.d.b, true, false, true)), select(select(!vec4<bool>(global0.d.b, true, global0.c.b, global0.d.b), !vec4<bool>(global0.d.b, false, global0.d.b, true), global0.b > global0.b), !vec4<bool>(global0.c.b, global0.c.b, false, false), false)));
    global0 = func_1(!(!vec4<bool>(var_0.d.b, select(var_0.d.b, false, false), true, true)));
    let var_1 = Struct_2(_wgslsmith_add_i32(-(u_input.c.x ^ func_1(vec4<bool>(false, true, false, var_0.c.b)).a), ~firstLeadingBit(-2147483647i)), var_0.d.a.x, var_0.c, func_1(vec4<bool>(!global0.d.b, var_0.c.b, any(vec4<bool>(false, var_0.d.b, var_0.d.b, true)) | any(vec4<bool>(var_0.c.b, true, true, var_0.d.b)), global0.c.a.x > _wgslsmith_f_op_f32(-global0.b))).c);
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, -630f) * -1000f), var_0.b) + global0.b)));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d.a.x))), _wgslsmith_f_op_f32(227f - _wgslsmith_f_op_f32(1725f + _wgslsmith_div_f32(1335f, -1169f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1596f, 213f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -696f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.d.a), var_0.c.a)))), select(!var_0.d.b, true, !var_1.c.b) | !(!global0.d.b))));
    var_0 = Struct_2(~(-global0.a), var_3.x, func_1(vec4<bool>(false, true, (false & global0.c.b) == false, !any(vec3<bool>(true, var_0.c.b, global0.d.b)))).c, var_0.d);
    var_0 = func_1(vec4<bool>(true, var_1.c.b, false, _wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(select(var_3.x, -615f, global0.c.b))) < 433f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_0.d.a + vec2<f32>(398f, 914f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.a))))), global0.a, ~_wgslsmith_add_u32(~(~22677u), ~select(0u, 38492u, false)), select(-((u_input.c ^ vec4<i32>(var_0.a, global0.a, var_0.a, -1i)) | -u_input.c), ~vec4<i32>(16787i, var_0.a, var_1.a << (1u % 32u), _wgslsmith_dot_vec2_i32(u_input.c.wz, u_input.a)), !select(select(vec4<bool>(var_1.c.b, true, false, false), vec4<bool>(false, true, false, global0.c.b), vec4<bool>(global0.d.b, false, var_0.c.b, var_1.d.b)), vec4<bool>(true, false, var_1.c.b, var_1.c.b), var_1.d.b)));
}

