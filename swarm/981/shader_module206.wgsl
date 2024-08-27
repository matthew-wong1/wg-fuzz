struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec4<u32>(4294967295u, 58330u, 23051u, 4294967295u), false, 2147483647i, vec4<u32>(57450u, 18603u, 44462u, 73383u), vec2<bool>(true, true)), Struct_2(Struct_1(vec4<u32>(1u, 5634u, 47067u, 1u), false, -4205i, vec4<u32>(0u, 1u, 68124u, 1u), vec2<bool>(true, true)), false));

var<private> global1: u32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec2<bool>) -> vec3<i32> {
    global0 = Struct_4(Struct_1(reverseBits(~(~global0.b.a.a)), all(select(select(vec2<bool>(false, true), arg_2, true), global0.b.a.e, !arg_2.x)), _wgslsmith_mult_i32(1i, -36196i), abs(global0.a.d | ~global0.b.a.a), arg_2), global0.b);
    global0 = Struct_4(Struct_1(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.b.a.d.zzy, vec3<u32>(23603u, arg_0, 1u)) & arg_0, u_input.e.x >> (global0.b.a.a.x % 32u), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 39941u), ~0u, _wgslsmith_clamp_u32(9778u, 0u, arg_0)), ~(~0u)), true, _wgslsmith_mod_i32(-6833i, reverseBits(global0.b.a.c)), global0.a.a, !global0.a.e), global0.b);
    return _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-(~(-2147483647i)), -global0.a.c, u_input.b)), vec3<i32>(1i, 1i, u_input.b));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(ceil(323f)), _wgslsmith_f_op_f32(-1207f * 514f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, -2221f))))));
    var var_2 = func_3(_wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1.x, ~arg_1.x >> ((50109u << (0u % 32u)) % 32u)), _wgslsmith_add_u32(4294967295u, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.b.a.d.x, 0u), min(1u, global0.a.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(vec2<bool>(arg_0.a.b && arg_0.a.b, !global0.b.a.b), select(vec2<bool>(global0.a.e.x, global0.a.b), !select(arg_0.b.a.e, vec2<bool>(global0.b.a.b, arg_0.a.e.x), false), !(-2147483647i >= u_input.c)), arg_0.b.a.e));
    let var_3 = !(!select(!select(vec4<bool>(arg_0.b.b, global0.b.b, false, global0.b.b), vec4<bool>(false, false, global0.a.e.x, global0.b.b), vec4<bool>(arg_0.b.a.e.x, true, true, arg_0.a.e.x)), select(!vec4<bool>(false, arg_0.b.b, false, false), !vec4<bool>(arg_0.b.a.b, arg_0.b.b, true, arg_0.a.b), select(vec4<bool>(false, arg_0.a.e.x, arg_0.b.a.b, true), vec4<bool>(global0.a.b, arg_0.b.b, false, false), true)), arg_0.a.e.x));
    var var_4 = var_3.wzw;
    return global0.b;
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = global0.a.c;
    global1 = 0u;
    let var_1 = ~firstTrailingBit(vec3<i32>(reverseBits(max(-1i, u_input.b)), global0.a.c, func_3(86322u, _wgslsmith_f_op_f32(656f - 948f), select(vec2<bool>(true, arg_0.a.e.x), vec2<bool>(false, arg_0.b.a.e.x), vec2<bool>(false, global0.b.b))).x));
    let var_2 = vec3<bool>(true | !arg_0.a.b, true, !arg_0.b.a.e.x);
    global1 = max(_wgslsmith_mod_u32(arg_0.b.a.d.x ^ (5074u << (1u % 32u)), 63659u), 7246u) ^ u_input.d;
    return Struct_4(global0.a, func_2(Struct_4(Struct_1(~global0.a.a, u_input.c > u_input.c, u_input.b, arg_0.a.d, !var_2.yz), func_2(Struct_4(Struct_1(global0.a.a, false, global0.a.c, arg_0.a.d, global0.a.e), Struct_2(arg_0.a, arg_0.b.b)), min(vec3<u32>(10232u, global0.b.a.a.x, 0u), vec3<u32>(0u, 0u, 6340u)))), ~reverseBits(vec3<u32>(arg_0.b.a.a.x, arg_0.b.a.a.x, 23571u) >> (vec3<u32>(u_input.a, global0.a.a.x, 39874u) % vec3<u32>(32u)))));
}

fn func_5(arg_0: f32, arg_1: Struct_4) -> u32 {
    var var_0 = ~(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(global0.b.a.d.yx, vec2<u32>(u_input.d, u_input.e.x)) ^ ~vec2<u32>(66419u, arg_1.a.a.x), vec2<u32>(48490u, 0u) << (~global0.a.a.xx % vec2<u32>(32u))) | ~global0.b.a.d.zy);
    let var_1 = 1469f;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1420f * arg_0))), var_1) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(304f, -179f, 1332f))) + vec3<f32>(-938f, 204f, var_1))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -207f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1494f, -300f, arg_0))))));
    let var_3 = func_4(Struct_4(global0.a, global0.b)).a;
    var var_4 = var_2.xy;
    return var_0.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = -1000f;
    let var_1 = ~global0.b.a.d.wwz;
    var var_2 = ~countOneBits(select(abs(u_input.b) << (~u_input.e.x % 32u), ~(-17003i), !(!global0.b.b)));
    var var_3 = global0.b.a.d.x;
    let var_4 = _wgslsmith_div_u32(func_5(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1097f)), -1000f), _wgslsmith_div_f32(-2196f, _wgslsmith_f_op_f32(min(-1042f, 885f))))), func_4(Struct_4(Struct_1(vec4<u32>(global0.b.a.d.x, var_1.x, global0.a.d.x, var_1.x), global0.b.b, global0.a.c, global0.a.d, global0.a.e), func_2(Struct_4(Struct_1(vec4<u32>(u_input.e.x, 1u, global0.a.a.x, var_1.x), global0.a.e.x, -49824i, vec4<u32>(var_1.x, u_input.a, 28682u, 0u), vec2<bool>(global0.a.b, global0.a.b)), Struct_2(global0.a, true)), vec3<u32>(16605u, var_1.x, 26785u))))), _wgslsmith_dot_vec3_u32(reverseBits(min(vec3<u32>(3356u, global0.b.a.d.x, 23915u), var_1)), vec3<u32>(global0.a.a.x, ~0u, _wgslsmith_add_u32(func_2(Struct_4(global0.a, Struct_2(Struct_1(vec4<u32>(global0.b.a.d.x, u_input.e.x, u_input.d, 1u), global0.a.e.x, 18668i, global0.a.d, vec2<bool>(global0.a.e.x, false)), true)), vec3<u32>(global0.b.a.a.x, u_input.a, 17257u)).a.a.x, 39007u))));
    return StorageBuffer(-1i, ~vec4<u32>(max(global0.b.a.a.x, 1u) ^ abs(u_input.d), 0u, 1u, func_4(func_4(Struct_4(global0.a, Struct_2(Struct_1(global0.a.d, false, -969i, vec4<u32>(6111u, 44943u, var_1.x, 4294967295u), vec2<bool>(false, false)), global0.a.b)))).a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(firstLeadingBit(countOneBits(min(vec2<i32>(u_input.c, u_input.b), vec2<i32>(0i, 0i)) << (~global0.b.a.a.wy % vec2<u32>(32u)))), -(~vec2<i32>(~global0.a.c, ~0i)));
    let var_1 = firstLeadingBit(~38747u);
    let x = u_input.a;
    s_output = func_1();
}

