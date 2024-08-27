struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(52866u, 4294967295u), 1u, -1818f, Struct_3(-1i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(270f + arg_0.x))), -938f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-292f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * arg_0.x) + arg_0.x)))), _wgslsmith_f_op_vec3_f32(-arg_0));
    let var_1 = Struct_2(u_input.b.x, !arg_1);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.x, -958f)), 132f));
    var_2 = arg_0.x;
    let var_3 = u_input.b.zxz;
    return _wgslsmith_clamp_vec3_u32(var_3, u_input.b.xwz, vec3<u32>(0u, 21622u, 1u));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_4 {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-661f * _wgslsmith_f_op_f32(-global0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 123f) * -1398f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c, global0.c)) - -1387f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)));
    var var_3 = -firstTrailingBit(u_input.c);
    global0 = Struct_4(_wgslsmith_sub_vec2_u32(~(func_2(vec3<f32>(var_2, 294f, -147f), arg_1.b).zz & ~u_input.d.xz), vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.b, u_input.b ^ u_input.d), ~_wgslsmith_clamp_u32(global0.a.x, arg_1.a, arg_0.x))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-469f, _wgslsmith_f_op_f32(-global0.c), var_1) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-665f, global0.c, var_2) - vec3<f32>(-392f, var_2, 1291f)))), select(vec2<bool>(select(false, false, true), true), select(vec2<bool>(arg_1.b.x, true), vec2<bool>(false, false), !arg_1.b), _wgslsmith_dot_vec3_u32(u_input.b.wwz, vec3<u32>(20777u, 20361u, 36960u)) >= global0.a.x)).x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1268f)), var_2)), global0.d);
    return Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b, 1189u), u_input.a), 1530u ^ arg_0.x), vec2<u32>(u_input.b.x, u_input.b.x)), ~arg_0.x, -403f, global0.d);
}

fn func_1() -> Struct_4 {
    let var_0 = countOneBits(abs(49872u & global0.a.x));
    var var_1 = vec2<i32>(u_input.c, _wgslsmith_div_i32(~(u_input.c ^ 41657i), global0.d.a));
    global0 = Struct_4(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(global0.a), abs(vec2<u32>(global0.a.x, var_0)), global0.a), vec2<u32>(global0.b, ~global0.a.x)), vec2<u32>(var_0, _wgslsmith_div_u32(u_input.d.x, ~1u))), _wgslsmith_mult_u32(var_0 | (var_0 << (var_0 % 32u)), ~(~19390u)) & var_0, _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(global0.c * global0.c))))), global0.d);
    global0 = func_3(firstLeadingBit(func_2(vec3<f32>(-598f, _wgslsmith_div_f32(global0.c, global0.c), 597f), select(vec2<bool>(true, false), vec2<bool>(true, true), select(true, true, false)))), Struct_2(~var_0, vec2<bool>(true, true)));
    global0 = Struct_4(vec2<u32>(func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.x, 26675u, 4294967295u), vec3<u32>(1u, 68111u, 85885u)) ^ ~vec3<u32>(var_0, global0.b, 88924u), Struct_2(~10241u, vec2<bool>(true, true))).a.x, min(_wgslsmith_div_u32(u_input.b.x, 0u), global0.b & global0.a.x) >> (~_wgslsmith_sub_u32(4294967295u, 12438u) % 32u)), u_input.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c * 980f) * global0.c) - global0.c), _wgslsmith_f_op_f32(select(-556f, global0.c, false)))), func_3(_wgslsmith_add_vec3_u32(~vec3<u32>(29678u, 13804u, 1u), vec3<u32>(var_0, 76979u, 1u)), Struct_2(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(1237f, global0.c, -170f), vec3<f32>(global0.c, global0.c, -928f)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))).x, select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)))).d);
    return func_3(select(u_input.d.zzw, u_input.d.zxz, -153f < global0.c), Struct_2(firstTrailingBit(~1u), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -912f) - global0.c)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(520f)))))), select(vec2<bool>(false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), !(67879i > global0.d.a)));
    let var_1 = false;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.a)) - var_0.a)), vec2<bool>(any(select(select(vec4<bool>(false, true, false, var_0.b.x), vec4<bool>(false, false, var_0.b.x, true), vec4<bool>(false, var_0.b.x, true, var_1)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, var_0.b.x, true, var_0.b.x), var_1), vec4<bool>(var_0.b.x, var_0.b.x, true, var_1))), true));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), !select(var_0.b, select(var_0.b, vec2<bool>(true, var_1), false), any(vec2<bool>(true, var_0.b.x))));
    let var_2 = func_1().d.a;
    var var_3 = global0.d;
    let var_4 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(u_input.d.x | 0u, ~global0.a.x), 1u, 15851u, ~(global0.b & firstLeadingBit(u_input.d.x))), u_input.d, u_input.d);
    var var_5 = Struct_4(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.x, 11062u), _wgslsmith_div_vec2_u32(global0.a, ~func_3(var_4.yzw, Struct_2(var_4.x, vec2<bool>(var_0.b.x, var_1))).a)), ~global0.a.x, 1000f, func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(~34776u, ~153u, u_input.a.x), ~abs(vec3<u32>(u_input.d.x, 44040u, 14291u))), Struct_2(77030u, var_0.b)).d);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(vec3<i32>(reverseBits(16798i), var_3.a, 2147483647i))));
}

