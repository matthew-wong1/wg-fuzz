struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(-13183i, -6899i), vec2<i32>(-4266i, 0i), vec2<i32>(i32(-2147483648), -13867i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(1i, 1i), vec2<i32>(3759i, i32(-2147483648)), vec2<i32>(-1i, 27237i), vec2<i32>(-9266i, 0i), vec2<i32>(1i, -62928i), vec2<i32>(-1i, 55008i), vec2<i32>(5845i, -1i));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<i32> {
    let var_0 = arg_0;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_0 - -185f)) - -2194f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_0)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + _wgslsmith_f_op_f32(-697f - -1305f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1357f, 1241f, all(vec2<bool>(false, false)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-364f, var_0, true)) * -1597f)))));
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    global0 = array<vec2<i32>, 12>();
    return max(-(u_input.b.xwz ^ (vec3<i32>(-13690i, 0i, u_input.b.x) & vec3<i32>(-50394i, u_input.b.x, -29727i))), vec3<i32>(30001i, arg_1.a, -arg_2.x));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> Struct_2 {
    let var_0 = 0i;
    global0 = array<vec2<i32>, 12>();
    let var_1 = Struct_4(Struct_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(44958i, u_input.b.x >> (arg_2 % 32u), arg_1.a.a), ~func_3(arg_0, arg_1.b, u_input.b.xyx), vec3<i32>(31724i, ~(-10889i), -10074i)), Struct_2(arg_1.b, Struct_1(-2147483647i << (u_input.a.x % 32u)))), Struct_2(arg_1.a, arg_1.a), Struct_1(~(-1i)), arg_1);
    let var_2 = var_1;
    global0 = array<vec2<i32>, 12>();
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = !(!select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(false, false))));
    var_0 = vec2<bool>(true, select(any(!(!vec2<bool>(true, var_0.x))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-643f))) > _wgslsmith_f_op_f32(floor(-1118f))));
    var_0 = !(!select(select(select(vec2<bool>(true, false), vec2<bool>(var_0.x, false), var_0.x), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), var_0.x), true), !select(vec2<bool>(false, var_0.x), vec2<bool>(false, var_0.x), true), true));
    var var_1 = Struct_4(Struct_3(vec3<i32>(func_3(_wgslsmith_f_op_f32(1238f - 4228f), Struct_1(arg_1.a.a), ~vec3<i32>(arg_1.b.a, arg_3.a, 2147483647i)).x, 2147483647i, 44613i), func_2(1f, arg_1, arg_0)), func_2(1629f, Struct_2(arg_3, func_2(_wgslsmith_f_op_f32(step(633f, -1000f)), arg_1, arg_2.x).a), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x >> (78420u % 32u), _wgslsmith_sub_u32(arg_2.x, 0u)), arg_0)), Struct_1(-1i & (select(arg_1.a.a, u_input.b.x, true) & u_input.b.x)), Struct_2(Struct_1(-2147483647i), Struct_1(u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-784f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1437f)) - -722f))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2, -1417f, -158f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(647f * var_2))))))));
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(~1u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f))), Struct_2(Struct_1(50925i), Struct_1(i32(-1i) * -38556i)), ~u_input.a.x), vec3<u32>(~max(78840u, u_input.a.x), min(4294967295u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(18723u, 45502u))) & ~vec3<u32>(~35790u, ~u_input.a.x, 87u), Struct_1(min(u_input.b.x, u_input.b.x))));
    global0 = array<vec2<i32>, 12>();
    var var_1 = var_0.wz;
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(2285f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_4(u_input.a.x, Struct_2(Struct_1(32998i), Struct_1(23088i)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(1i))).x, _wgslsmith_f_op_f32(var_0.x * var_0.x)))), var_0.x, -838f));
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(648f * var_1.x), _wgslsmith_f_op_f32(max(-1000f, var_1.x)), _wgslsmith_f_op_f32(min(-135f, -484f)), -268f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, -254f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(2018f + -169f)), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_div_f32(-1487f, 2796f)))), -243f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_0.x) * _wgslsmith_div_f32(-1570f, -955f)) + -750f))));
    return func_2(var_0.x, Struct_2(Struct_1(u_input.b.x), Struct_1(firstTrailingBit(1i))), abs(14460u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 12>();
    var var_0 = Struct_1(11535i);
    var var_1 = Struct_3(abs(u_input.b.zyz), func_1());
    var var_2 = u_input.a;
    var_2 = countOneBits(reverseBits(u_input.a));
    var_0 = func_1().b;
    let var_3 = vec4<bool>(true, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(24970u, 5175u, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, 56751u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 41102u, u_input.a.x) % vec4<u32>(32u))), 1u) < _wgslsmith_clamp_u32(1u, ~(~u_input.a.x), 1u), !any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !(!(any(vec2<bool>(false, false)) != true)));
    let x = u_input.a;
    s_output = StorageBuffer(-369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 47516u);
}

