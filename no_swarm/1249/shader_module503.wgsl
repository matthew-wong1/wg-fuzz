struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    global1 = array<vec3<bool>, 16>();
    let var_1 = 194f;
    return _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2188f, _wgslsmith_f_op_f32(trunc(1089f)))), 450f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-166f, -306f)))), _wgslsmith_f_op_f32(step(859f, 678f))))), _wgslsmith_f_op_f32(-var_1), !all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, false, true), true))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 20>();
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(sign(var_0.c.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.c, vec4<f32>(1000f, 1130f, -576f, arg_1.a.x), true)) - arg_1.a))), 60308u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x * arg_1.a.x), _wgslsmith_f_op_f32(arg_1.d.x + -180f), -696f, -175f), arg_1.c, vec4<bool>(true, true, true, false))) - vec4<f32>(1248f, arg_1.d.x, 732f, _wgslsmith_f_op_f32(-arg_1.a.x))), _wgslsmith_div_vec3_f32(var_0.d, vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_f_op_f32(func_3()))));
    let var_2 = global0[_wgslsmith_index_u32(0u, 20u)];
    var_1 = global0[_wgslsmith_index_u32(select(var_2.b, 16924u, (i32(-1i) * -1473i) >= _wgslsmith_mod_i32(arg_0, arg_0)), 20u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1452f, arg_1.d.x, -566f, 878f), vec4<f32>(var_1.c.x, -1279f, var_2.c.x, var_2.c.x))))))), ~(~var_2.b), var_0.c, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1071f, var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -2399f)), 529f, var_2.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.x, -309f, 687f)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_1, 20>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(-2252f, arg_2.c.x)), arg_3.a.x, 601f, _wgslsmith_div_f32(arg_3.a.x, -1335f))))), _wgslsmith_sub_u32(min(_wgslsmith_sub_u32(4294967295u, ~arg_2.b), ~_wgslsmith_dot_vec2_u32(arg_0, arg_0)), _wgslsmith_mod_u32(3033u, arg_2.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(step(arg_3.c.x, 515f)), _wgslsmith_div_f32(arg_3.a.x, arg_3.d.x), arg_3.c.x, -509f)))), arg_3.d);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.a)), firstLeadingBit(20095u), _wgslsmith_f_op_vec4_f32(arg_1 + arg_3.c), vec3<f32>(arg_3.c.x, -2879f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -289f) - _wgslsmith_div_f32(-2562f, var_0.a.x))));
    global0 = array<Struct_1, 20>();
    let var_2 = func_2(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x >> (arg_2.b % 32u)), Struct_1(var_0.c, _wgslsmith_div_u32(20302u, ~1u), vec4<f32>(-236f, arg_1.x, _wgslsmith_f_op_f32(-1f), arg_1.x), arg_1.zyz)).c.x;
    return 4294967295u;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = array<Struct_1, 20>();
    let var_0 = global0[_wgslsmith_index_u32(func_4(firstLeadingBit(_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.b), vec2<u32>(arg_0.b, 108161u)), firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)))), arg_0.a, func_2(-(49461i ^ u_input.a.x) & u_input.a.x, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), -1520f, arg_0.d.x, 1306f), 4294967295u, _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, 599f, arg_0.a.x, arg_0.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1469f, -543f, arg_0.d.x, -258f))), _wgslsmith_f_op_vec3_f32(-arg_0.c.xyy))), func_2(abs(1i), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) - vec4<f32>(870f, -1247f, arg_0.c.x, -1912f)), 1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-165f, arg_0.a.x, 277f, -696f)), true)), arg_0.a.xzy))), 20u)];
    let var_1 = global0[_wgslsmith_index_u32(arg_0.b, 20u)];
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-239f - -1089f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2106f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x)))))));
    let var_3 = (countOneBits(~(~vec2<u32>(4294967295u, 1u))) >> (~vec2<u32>(~var_0.b, var_1.b) % vec2<u32>(32u))) & ~_wgslsmith_clamp_vec2_u32(vec2<u32>(71493u, ~var_1.b), abs(vec2<u32>(15183u, 1901u)), _wgslsmith_add_vec2_u32(select(vec2<u32>(var_1.b, 263u), vec2<u32>(var_0.b, var_1.b), vec2<bool>(false, true)), select(vec2<u32>(arg_0.b, arg_0.b), vec2<u32>(var_1.b, var_0.b), vec2<bool>(false, false))));
    return ~arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(0u, 22402u) ^ vec2<u32>(~_wgslsmith_add_u32(~0u, func_1(Struct_1(vec4<f32>(-346f, 452f, -1364f, 1000f), 29706u, vec4<f32>(-1580f, -1000f, -699f, -667f), vec3<f32>(-590f, -884f, 120f)))), ~func_4(vec2<u32>(1u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-144f, 1000f, -678f, -1250f) + vec4<f32>(1000f, -281f, -222f, -1801f)), Struct_1(vec4<f32>(-526f, -1013f, -1338f, -2881f), 4294967295u, vec4<f32>(1082f, 128f, 1000f, 1054f), vec3<f32>(-148f, 1359f, 416f)), Struct_1(vec4<f32>(844f, -963f, -689f, 896f), 16273u, vec4<f32>(-367f, 1000f, 1004f, -286f), vec3<f32>(1593f, -183f, -681f))));
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(select(~vec4<u32>(53796u, 1u, var_0.x, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 57677u), vec4<u32>(var_0.x, var_0.x, 45062u, 0u)), select(true, true, false)), firstLeadingBit(~vec4<u32>(59855u, 4294967295u, 28233u, var_0.x))));
    let var_2 = _wgslsmith_f_op_f32(func_2(18655i, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(495f, 886f, 1078f, 1455f)), _wgslsmith_clamp_u32(~var_1.x, 1265u, ~var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1398f, 813f, 1870f)) + vec4<f32>(1000f, -1394f, -1296f, -2143f)), vec3<f32>(_wgslsmith_f_op_f32(1343f - -624f), -1254f, -1160f))).c.x - -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(-((~u_input.a & ~vec2<i32>(u_input.a.x, u_input.a.x)) >> (vec2<u32>(var_0.x, var_1.x) % vec2<u32>(32u))));
}

