struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(401f, 1467f), vec2<i32>(2147483647i, -1i), true, 6614u, vec2<f32>(1758f, -418f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = global0.c;
    var var_1 = Struct_3(arg_0, 502f, vec4<f32>(global0.e.x, -717f, 1602f, -176f), Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.e.x, global0.e.x), global0.e)))), min(u_input.b.zx, vec2<i32>(max(global0.b.x, u_input.b.x), global0.b.x)), true, abs(~21977u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -1039f)) + global0.a) - vec2<f32>(_wgslsmith_f_op_f32(-global0.e.x), global0.e.x))));
    var var_2 = all(!vec3<bool>(!(-30311i <= arg_2.x), !(!global0.c), true));
    let var_3 = countOneBits(vec2<u32>(_wgslsmith_add_u32(global0.d, 15993u), max(_wgslsmith_div_u32(15638u << (0u % 32u), abs(50429u)), ~(~arg_0))));
    let var_4 = select(arg_0 << (~(~arg_0) % 32u), var_1.a, all(!(!vec3<bool>(global0.c, false, false)))) <= ~global0.d;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(var_1.c.x + global0.a.x), _wgslsmith_f_op_f32(min(-367f, global0.e.x)), _wgslsmith_f_op_f32(abs(716f)), 1022f), _wgslsmith_f_op_vec4_f32(step(var_1.c, var_1.c)))), vec4<f32>(_wgslsmith_f_op_f32(global0.a.x - 1033f), _wgslsmith_f_op_f32(floor(-985f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1922f, 834f)) * -1000f), 1014f), var_1.d.c)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32, arg_3: u32) -> vec4<f32> {
    global0 = arg_0.d;
    global0 = arg_0.d;
    global0 = arg_0.d;
    let var_0 = ~(~(global0.b | arg_1.a)) | arg_0.d.b;
    global0 = arg_0.d;
    return _wgslsmith_f_op_vec4_f32(abs(arg_0.c));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(0u, global0.a.x, _wgslsmith_f_op_vec4_f32(func_4(Struct_3(global0.d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1817f + -163f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(10064u, vec3<i32>(0i, u_input.b.x, u_input.d.x), vec4<i32>(-14029i, 60696i, 24858i, global0.b.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2347f, 659f, 342f, 967f))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e.x, 1344f) + vec2<f32>(134f, global0.e.x)), u_input.b.xz, false, select(6273u, 4294967295u, global0.c), _wgslsmith_f_op_vec4_f32(func_3(5381u, u_input.d, vec4<i32>(u_input.b.x, -36384i, 0i, 5718i))).xw)), Struct_4(vec2<i32>(global0.b.x, max(u_input.d.x, 7028i))), 73832u, min(global0.d, global0.d))), Struct_1(global0.e, ~firstTrailingBit(firstLeadingBit(global0.b)), !(global0.c || false) == true, global0.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-995f, -1000f))));
    return var_0.d;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: bool) -> vec2<u32> {
    var var_0 = func_2();
    var var_1 = ~0i;
    global0 = func_2();
    global0 = func_2();
    global0 = Struct_1(vec2<f32>(-196f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * arg_0.x) + -528f)))), var_0.b, true, ~(~(global0.d >> (global0.d % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.e.x, global0.e.x)))))));
    return arg_1.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.e.zz;
    let var_1 = global0.b.x;
    var_0 = ~(firstLeadingBit(func_1(_wgslsmith_f_op_vec2_f32(-global0.e), vec4<u32>(u_input.a.x, u_input.c, 83625u, 0u), all(vec2<bool>(true, true)))) & u_input.a);
    var_0 = u_input.a;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(global0.a)))), global0.b, any(vec3<bool>(func_2().c, global0.c, true)), countOneBits(4294967295u) & _wgslsmith_mod_u32(30337u, _wgslsmith_div_u32(global0.d >> (57879u % 32u), global0.d)), vec2<f32>(_wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e.x) + _wgslsmith_f_op_f32(-324f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))))));
    let var_2 = abs(72530u >> (0u % 32u));
    var_0 = vec2<u32>(var_2, ~global0.d);
    var var_3 = Struct_3(0u, 569f, _wgslsmith_f_op_vec4_f32(func_3(min(_wgslsmith_add_u32(_wgslsmith_div_u32(11098u, u_input.a.x), ~10411u), _wgslsmith_add_u32(global0.d, global0.d)), vec3<i32>(2147483647i, _wgslsmith_mod_i32(-5629i, 61773i) << (_wgslsmith_clamp_u32(var_2, 0u, var_2) % 32u), -(~(-109660i))), vec4<i32>(_wgslsmith_div_i32(0i, u_input.b.x), select(-1i, 0i, true), _wgslsmith_add_i32(-1i, u_input.d.x), -u_input.d.x) << (vec4<u32>(~0u, u_input.e.x & var_0.x, 36087u, ~15647u) % vec4<u32>(32u)))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(max(var_2, 83369u), func_1(global0.a, vec4<u32>(4294967295u, var_3.d.d, var_3.a, 4294967295u), true).x), _wgslsmith_mult_u32(max(global0.d, 148078u), var_3.d.d), _wgslsmith_dot_vec2_u32(u_input.e.zz, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 0u), u_input.e.yz))), ~vec3<u32>(_wgslsmith_mult_u32(u_input.e.x, 7553u), u_input.a.x, ~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.a.x, global0.a.x, var_3.c.x, -516f))))) + _wgslsmith_f_op_vec4_f32(-var_3.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.c) - var_3.c)), u_input.d.x, 1546f);
}

