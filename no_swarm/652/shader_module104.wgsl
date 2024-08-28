struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: array<i32, 29> = array<i32, 29>(32663i, 17256i, -8891i, 38366i, 2147483647i, 20604i, 1i, -1i, 0i, 15104i, 2147483647i, 7482i, -10918i, -38192i, 2147483647i, -1i, 1i, 2147483647i, -57799i, -1i, 22160i, 7668i, 53281i, 0i, i32(-2147483648), -13211i, -1i, -9257i, -16392i);

var<private> global1: Struct_4 = Struct_4(vec2<f32>(434f, -995f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global0 = array<i32, 29>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f)), 1424f)))));
    let var_1 = _wgslsmith_sub_u32(70981u, countOneBits(14368u));
    global0 = array<i32, 29>();
    global1 = Struct_4(arg_0.a);
    return u_input.a.x;
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_add_vec4_u32(abs(vec4<u32>(~9044u, countOneBits(1u), u_input.d, u_input.c.x)) & vec4<u32>(u_input.c.x << (~u_input.b % 32u), u_input.a.x, u_input.c.x, ~(~81622u)), abs(~(vec4<u32>(0u, 15274u, 4294967295u, 57802u) | vec4<u32>(u_input.b, u_input.d, 0u, 1737u))));
    var var_1 = false & all(select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(false, false, false))), select(-2147483647i, global0[_wgslsmith_index_u32(var_0.x, 29u)], false) >= -1i));
    var_1 = true;
    let var_2 = reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.c.x), 29u)] | -global0[_wgslsmith_index_u32(func_3(Struct_4(vec2<f32>(global1.a.x, global1.a.x))), 29u)], -9575i, -5606i));
    let var_3 = Struct_2(260f, Struct_1(global1.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - global1.a.x) * _wgslsmith_f_op_f32(global1.a.x * global1.a.x))), global1.a.x, all(vec3<bool>(true, true, true)))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_3.c - _wgslsmith_f_op_f32(1000f - -1053f)), 972f) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * -1010f) - _wgslsmith_f_op_f32(sign(-871f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-566f, 941f) - global1.a.x))));
}

fn func_1(arg_0: i32) -> Struct_3 {
    global1 = func_2();
    global0 = array<i32, 29>();
    var var_0 = reverseBits(~vec2<u32>(_wgslsmith_mod_u32(~u_input.c.x, u_input.d & 4294967295u), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c.wyx, u_input.c.yzw))));
    var_0 = vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, var_0.x, _wgslsmith_sub_u32(u_input.b, var_0.x), 16671u), max(~u_input.c, vec4<u32>(43355u, var_0.x, 74245u, var_0.x) | vec4<u32>(u_input.a.x, var_0.x, u_input.c.x, u_input.c.x))), _wgslsmith_add_u32(max(countOneBits(138668u) ^ var_0.x, 1u), ~var_0.x));
    let var_1 = u_input.c.wx;
    return Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1090f * 587f) + _wgslsmith_f_op_f32(step(global1.a.x, global1.a.x))), -911f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.x * global1.a.x), _wgslsmith_f_op_f32(max(global1.a.x, -248f)))) - global1.a.x) - 1000f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(265f, 312f, any(vec4<bool>(false, true, false, false)))))));
}

fn func_4(arg_0: Struct_3) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, 700f)))))) + vec3<f32>(1420f, func_1(global0[_wgslsmith_index_u32(u_input.a.x, 29u)] & -2147483647i).c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))));
    let var_1 = func_1(abs(-global0[_wgslsmith_index_u32(~u_input.a.x << (~51256u % 32u), 29u)]));
    let var_2 = _wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(abs(0u), u_input.b, abs(25044u), min(u_input.b, 24640u))), u_input.c ^ _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c << (abs(vec4<u32>(1u, u_input.b, 0u, u_input.d)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, u_input.a.x, u_input.b), u_input.c, vec4<u32>(42315u, u_input.b, 1u, u_input.c.x))), ~select(vec4<u32>(~40786u, u_input.c.x, _wgslsmith_div_u32(19463u, 10264u), u_input.d), vec4<u32>(4294967295u, 0u, 101394u, 42429u), all(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.a))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1387f))))), global1.a.x);
    global1 = func_2();
    return Struct_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, -163f)) + _wgslsmith_f_op_f32(select(var_3.c, 236f, true))))), func_2().a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 29>();
    global0 = array<i32, 29>();
    global1 = func_4(func_1(-select(firstLeadingBit(-2147483647i), global0[_wgslsmith_index_u32(u_input.a.x, 29u)] ^ 1i, 0u > u_input.a.x)));
    var var_0 = select(select(vec4<bool>(true && (global0[_wgslsmith_index_u32(47319u, 29u)] < -3931i), any(vec2<bool>(false, false)) || true, ~u_input.b >= u_input.c.x, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(76173u, 29u)]) != _wgslsmith_add_i32(-1i, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), vec4<bool>(select(true, u_input.a.x == 1u, global1.a.x != global1.a.x), min(global0[_wgslsmith_index_u32(u_input.b, 29u)], global0[_wgslsmith_index_u32(1u, 29u)]) >= (2555i & global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), !all(vec2<bool>(true, true)), true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(false, false, true, false))), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), !all(vec2<bool>(false, false)), !select(false, false, true), ~global0[_wgslsmith_index_u32(u_input.d, 29u)] > global0[_wgslsmith_index_u32(21018u, 29u)]), !vec4<bool>(any(vec3<bool>(true, false, false)), true, false, true), vec4<bool>(true, true, any(vec3<bool>(false, false, false)), true)));
    var var_1 = ~abs(~u_input.c.xyx);
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(613f, 624f) + vec2<f32>(global1.a.x, -1569f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(669f, -1888f) - global1.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c.yxx & ~vec3<u32>(var_1.x, var_1.x, 52968u), ~u_input.c.xyw), 29u)]);
}

