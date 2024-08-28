struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 85189u;

var<private> global1: Struct_1;

var<private> global2: u32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.a * global1.a), global1.a, arg_3.x)), _wgslsmith_f_op_f32(-arg_0)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-559f)) * _wgslsmith_f_op_f32(-global1.a)))), vec3<u32>(53753u, countOneBits(arg_1), _wgslsmith_mod_u32(9233u, 4294967295u)), ~13173u);
    let var_2 = firstLeadingBit(1u);
    global0 = _wgslsmith_dot_vec2_u32(countOneBits(min(~var_1.b.xz, global1.b.zx)), var_1.b.yz);
    let var_3 = true;
    return ~var_1.b;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> bool {
    global2 = reverseBits(24261u);
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-346f - 366f))), ~global1.b, select(~global1.b.x, _wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1, 30760u, 25671u), u_input.d)), false));
    var var_0 = arg_3;
    var var_1 = var_0.a;
    var var_2 = ~(~max(global1.b, func_3(_wgslsmith_f_op_f32(-global1.a), arg_3.b.x << (var_0.b.x % 32u), -arg_2, vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1265f + arg_3.a))) < global1.a;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a))) * _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(1218f - global1.a))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, global1.a, all(arg_2))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global1.a, global1.a))))))), u_input.d.yxx, global1.c);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), 1000f)), countOneBits(vec3<u32>(abs(45663u), global1.c, _wgslsmith_mult_u32(u_input.d.x, func_3(var_0.a, u_input.a, u_input.e, vec3<bool>(arg_2.x, arg_0, true)).x))), ~(~_wgslsmith_add_u32(u_input.d.x, 69828u)));
    let var_2 = _wgslsmith_clamp_i32(~(-1i), countOneBits(-51936i), u_input.e);
    let var_3 = Struct_1(var_1.a, func_3(var_1.a, _wgslsmith_mult_u32(var_1.b.x, firstTrailingBit(global1.c)), ~max(u_input.e, var_2), select(select(vec3<bool>(arg_1, arg_0, arg_2.x), vec3<bool>(false, true, true), vec3<bool>(arg_0, false, arg_0)), vec3<bool>(true, arg_0, true), true)) & firstTrailingBit(~vec3<u32>(8831u, 4294967295u, 4294967295u)), firstTrailingBit((_wgslsmith_div_u32(var_0.c, var_1.c) >> (~1u % 32u)) >> (46917u % 32u)));
    global0 = abs(var_3.c) | ~firstLeadingBit(select(_wgslsmith_mod_u32(var_3.c, 4294967295u), 1u, true));
    return var_3;
}

fn func_1() -> f32 {
    let var_0 = func_4(all(!vec4<bool>(true, all(vec2<bool>(false, false)), func_2(u_input.b, global1.b.x, -13647i, Struct_1(-487f, vec3<u32>(u_input.a, global1.c, 54133u), global1.c)), false)), any(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)))), vec2<bool>(true, true));
    let var_1 = -1520f;
    global2 = u_input.d.x;
    let var_2 = ~func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, -921f) + _wgslsmith_div_f32(var_1, 1256f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a))))), countOneBits(_wgslsmith_mult_u32(countOneBits(19690u), u_input.a)), 12215i, vec3<bool>(func_2(u_input.e, ~global1.c, ~2147483647i, var_0), true, false)).x;
    global1 = func_4(_wgslsmith_f_op_f32(floor(var_1)) != -350f, !(var_2 > select(~37896u, ~var_2, true)), select(vec2<bool>(_wgslsmith_f_op_f32(-global1.a) < _wgslsmith_f_op_f32(var_0.a * 1389f), all(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))), vec2<bool>(true, false), true));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(338f, global1.b, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, 39251u, u_input.d.x, u_input.a)), vec4<u32>(u_input.c.x, max(37875u, ~global1.b.x), 36082u | global1.b.x, 21982u)));
    let var_1 = u_input.d;
    global2 = ~86205u;
    var var_2 = global1.a;
    global1 = Struct_1(_wgslsmith_f_op_f32(floor(607f)), _wgslsmith_mod_vec3_u32(u_input.d.xzz, _wgslsmith_div_vec3_u32(~(~vec3<u32>(var_1.x, global1.c, var_1.x)), countOneBits(~vec3<u32>(global1.c, var_0.c, var_1.x)))), u_input.a);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.a, _wgslsmith_f_op_f32(func_1()), select(true, true, true)))));
    let var_4 = var_1;
    let var_5 = _wgslsmith_f_op_f32(-var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(-672f, -2114f), var_5, func_4(false, true, vec2<bool>(false, true)).a)) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1912f, global1.a, 737f, var_5)), vec4<f32>(var_5, var_0.a, var_5, -1441f), true))))), var_1.x, 487f, _wgslsmith_f_op_f32(global1.a - _wgslsmith_f_op_f32(var_0.a + var_0.a)));
}

