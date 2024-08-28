struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(135f);

var<private> global1: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(849f, 297f, -432f), vec3<f32>(-1314f, -3567f, -680f), vec3<f32>(2068f, 1083f, -143f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    let var_0 = u_input.a.x;
    global0 = Struct_1(1978f);
    global1 = array<vec3<f32>, 3>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(global0.a * global0.a), global0.a);
    var var_2 = !(!(!all(vec3<bool>(false, true, false)))) && true;
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(max(-163f, -1199f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f * global0.a) * _wgslsmith_f_op_f32(f32(-1f) * -1693f))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -406f));
    let var_1 = Struct_2(vec3<u32>(~60605u >> (func_3() % 32u), ~(~0u), 1u) >> (countOneBits(select(vec3<u32>(50503u, 47503u, 6621u), vec3<u32>(1u, 1u, 1u), !var_0)) % vec3<u32>(32u)), u_input.b, countOneBits(~max(~45854u, reverseBits(1u))));
    global0 = Struct_1(global0.a);
    var var_2 = 1u;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(min(899f, -752f)));
    return var_1;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(-830f);
    global0 = arg_3;
    var var_1 = arg_3;
    var var_2 = func_2();
    var_2 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32(13825u, 1u, countOneBits(0u)), countOneBits(6803u), 46274u) | vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_div_u32(_wgslsmith_clamp_u32(59608u, 26196u, 59279u), ~arg_1.c), arg_1.c), arg_1.b << ((_wgslsmith_div_u32(48627u << (arg_1.c % 32u), func_3()) >> (abs(arg_2) % 32u)) % 32u), var_2.c);
    return Struct_1(1641f);
}

fn func_1(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<u32>) -> Struct_2 {
    global0 = func_4(u_input.b, func_2(), 39844u, Struct_1(global0.a));
    let var_0 = countOneBits(~vec3<u32>(_wgslsmith_mult_u32(25284u, 1u), arg_1, abs(arg_0.x)));
    var var_1 = Struct_2(vec3<u32>(~_wgslsmith_dot_vec3_u32(arg_0.xzw, arg_0.xwz), ~(49216u & ~arg_2.x), abs(var_0.x << (arg_1 % 32u)) << ((arg_1 | 2996u) % 32u)), func_2().b, _wgslsmith_dot_vec2_u32(vec2<u32>(func_3(), 46179u >> (_wgslsmith_div_u32(var_0.x, 7986u) % 32u)), ~_wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.x, var_0.x), vec2<u32>(arg_1, 7244u) ^ vec2<u32>(20781u, var_0.x))));
    var var_2 = func_2();
    var var_3 = -var_1.b;
    return Struct_2(vec3<u32>(countOneBits(arg_2.x), arg_1, 1u), ~_wgslsmith_sub_i32(~var_1.b, ~(~22162i)), ~(~_wgslsmith_sub_u32(388u, arg_0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec3<u32> {
    global0 = arg_1;
    global0 = arg_2;
    let var_0 = func_4(_wgslsmith_clamp_i32(-(_wgslsmith_mult_i32(-5785i, arg_0.b) ^ firstTrailingBit(-29352i)), u_input.a.x, arg_0.b), arg_0, 0u, arg_2);
    var var_1 = select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), false), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), vec3<bool>(true, 36381u != func_2().a.x, any(vec3<bool>(true, true, true)))), vec3<bool>(true, true, true));
    global1 = array<vec3<f32>, 3>();
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(580f + global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-537f)) - global0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global0.a))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global0.a, -1583f, global0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1449f, 372f, -223f, global0.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(312f, -179f, 1195f, 1607f)))))));
    var var_1 = Struct_2(_wgslsmith_add_vec3_u32(func_5(func_1(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(8055u, 38857u), vec2<u32>(108784u, 10738u)), ~vec2<u32>(21557u, 159u)), func_4(-1i, func_2(), 1u, func_4(1i, Struct_2(vec3<u32>(74920u, 0u, 8506u), u_input.a.x, 71936u), 1u, Struct_1(var_0.x))), func_4(i32(-1i) * -52902i, Struct_2(vec3<u32>(53241u, 33717u, 42461u), -82195i, 23287u), 4294967295u, Struct_1(var_0.x)), 328f), reverseBits(_wgslsmith_div_vec3_u32(max(vec3<u32>(0u, 0u, 566u), vec3<u32>(1u, 2781u, 21693u)), ~vec3<u32>(92022u, 21740u, 41842u)))), 11814i, ~reverseBits(~(~3601u)));
    global1 = array<vec3<f32>, 3>();
    var_1 = Struct_2(firstTrailingBit(func_5(func_2(), func_4(-28278i, Struct_2(var_1.a, var_1.b, var_1.c), _wgslsmith_mult_u32(var_1.a.x, var_1.a.x), func_4(-8114i, Struct_2(vec3<u32>(0u, 53302u, var_1.a.x), 0i, 1u), var_1.c, Struct_1(var_0.x))), func_4(-1i, Struct_2(vec3<u32>(var_1.c, var_1.a.x, 84745u), u_input.b, var_1.a.x), 1u, Struct_1(1000f)), _wgslsmith_f_op_f32(-var_0.x))), ~firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a) >> (~var_1.a.x % 32u)), var_1.c | (var_1.a.x | min(func_3(), 0u)));
    var var_2 = func_2();
    let var_3 = func_4(1i, Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.c, 82474u, var_2.c) >> (vec3<u32>(var_2.a.x, var_1.c, var_2.c) % vec3<u32>(32u)), vec3<u32>(4294967295u, var_2.a.x, var_1.c)) << (vec3<u32>(var_1.a.x, ~13618u, firstTrailingBit(var_1.c)) % vec3<u32>(32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x | 33045i, ~u_input.a.x, -1i, var_1.b), u_input.a), 46057u), _wgslsmith_mult_u32((max(var_1.a.x, var_1.a.x) | 1u) & _wgslsmith_dot_vec2_u32(~vec2<u32>(38127u, var_1.c), vec2<u32>(var_1.a.x, var_1.c)), _wgslsmith_dot_vec3_u32(~abs(var_1.a), func_1(vec4<u32>(var_1.a.x, 57797u, 118915u, var_2.a.x), 3651u, var_2.a.xy).a ^ abs(var_1.a))), Struct_1(1000f));
    let var_4 = vec4<u32>(~18226u, _wgslsmith_mod_u32(~func_5(Struct_2(var_2.a, -39655i, 4294967295u), var_3, Struct_1(1000f), -1825f).x, ~(~19369u) << (~(62622u ^ var_1.c) % 32u)), 1u, ~(~(~1u)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -410f), _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-2026f - _wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_f_op_f32(var_3.a - _wgslsmith_f_op_f32(step(global0.a, var_0.x)))))));
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1276f, 1000f)), _wgslsmith_f_op_f32(trunc(-982f)))))), _wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(934f, _wgslsmith_f_op_f32(239f * global0.a)))), var_3.a)), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(50512u, 4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(37171u, 1u, 25977u), var_1.a, vec3<bool>(true, true, false)) << ((vec3<u32>(var_4.x, var_4.x, 52268u) | vec3<u32>(var_1.a.x, var_1.c, var_2.c)) % vec3<u32>(32u)), ~(~var_1.a))), var_2.a.x, _wgslsmith_mult_i32(var_2.b, _wgslsmith_clamp_i32(var_2.b, ~1i, var_1.b)) | _wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.b, 22415i, -2147483647i), ~u_input.a)));
}

