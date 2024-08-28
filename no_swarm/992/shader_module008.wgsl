struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 24674u);

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = ~min(u_input.b.xy, u_input.b.yw);
    var var_0 = 17263u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -710f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-407f * 1887f), _wgslsmith_f_op_f32(round(-1071f)))), (global1.a.x | global1.a.x) | true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-330f - -300f))) * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(1129f)))))) + _wgslsmith_f_op_f32(f32(-1f) * -1938f));
    var_1 = -1434f;
    let var_2 = Struct_2(1u);
    return _wgslsmith_mult_u32(~min((var_2.a | u_input.d) & abs(var_2.a), _wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, global0.x), 4294967295u)), max(25490u, ~countOneBits(min(0u, 0u))));
}

fn func_2() -> Struct_1 {
    let var_0 = ~_wgslsmith_clamp_u32(func_3(any(global1.a.yzy)), u_input.b.x, 0u);
    var var_1 = ~47124u;
    var var_2 = global1.a.yxx;
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-229f - -357f))))))));
    let var_4 = any(select(!(!vec2<bool>(var_2.x, global1.a.x)), vec2<bool>(var_2.x, global1.a.x || var_2.x), select(!var_2.yx, vec2<bool>(global1.a.x, true), select(!vec2<bool>(var_2.x, true), global1.a.xy, select(vec2<bool>(var_2.x, global1.a.x), vec2<bool>(var_2.x, true), var_2.xz)))));
    return Struct_1(global1.a);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = var_0;
    global0 = u_input.a.yz;
    let var_2 = Struct_2(~min(~_wgslsmith_dot_vec3_u32(vec3<u32>(22764u, 65241u, u_input.b.x), u_input.b.yxx), 1u));
    var var_3 = vec4<bool>(true, any(global1.a.yy), var_0.a.x, arg_0);
    return var_2;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(9328i, -21008i | firstTrailingBit(~(-u_input.e)), u_input.c.x, 19507i);
    let var_1 = Struct_1(vec4<bool>(true, true, false, all(global1.a)));
    global1 = var_1;
    var var_2 = ~countOneBits(vec4<u32>(abs(45584u), firstTrailingBit(arg_0.x), u_input.a.x, arg_0.x)) >> (~reverseBits(vec4<u32>(~4294967295u, abs(4294967295u), arg_2.a, abs(arg_2.a))) % vec4<u32>(32u));
    global1 = arg_3;
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = func_4(vec4<u32>(1971u, ~min(_wgslsmith_clamp_u32(arg_0.a, arg_0.a, 58853u), max(arg_3.a, u_input.b.x)), global0.x, ~(~firstLeadingBit(global0.x))), arg_0, Struct_2(~arg_3.a), func_4(~vec4<u32>(_wgslsmith_div_u32(arg_0.a, 4294967295u), global0.x, u_input.a.x, 0u >> (0u % 32u)), func_1(var_0.a.x), arg_3, arg_2));
    let var_2 = abs(vec2<i32>(arg_1, arg_1));
    var_0 = func_2();
    let var_3 = Struct_1(select(!select(!var_0.a, var_1.a, !vec4<bool>(global1.a.x, false, var_1.a.x, false)), !global1.a, select(func_4(~u_input.b, Struct_2(u_input.a.x), func_1(arg_2.a.x), func_2()).a, select(select(vec4<bool>(var_0.a.x, var_0.a.x, var_1.a.x, arg_2.a.x), vec4<bool>(false, false, true, var_0.a.x), vec4<bool>(true, arg_2.a.x, true, var_0.a.x)), var_1.a, var_1.a), var_1.a)));
    return func_2();
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_sub_vec4_i32(~u_input.c, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.e), vec4<i32>(u_input.c.x << (~u_input.a.x % 32u), _wgslsmith_add_i32(0i, -2147483647i) & u_input.c.x, u_input.e, 0i)));
    let var_1 = _wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(0i, u_input.c.x) ^ var_0.wz), abs(vec2<i32>(var_0.x, 28295i) >> (vec2<u32>(u_input.d, 72966u) % vec2<u32>(32u)))) & u_input.e;
    global1 = arg_2;
    global0 = u_input.b.xz;
    var var_2 = func_1(true);
    return countOneBits(~75558i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = vec2<i32>(u_input.e, ~(~var_0));
    var_1 = vec2<i32>(var_1.x, func_6(func_5(Struct_2(_wgslsmith_mod_u32(4294967295u, 75141u)), ~_wgslsmith_add_i32(-2147483647i, var_0), func_4(vec4<u32>(global0.x, global0.x, u_input.b.x, global0.x), Struct_2(u_input.a.x), func_1(true), func_2()), func_1(true)), func_5(func_1(!global1.a.x), -16683i, Struct_1(!global1.a), Struct_2(0u)), func_5(Struct_2(~global0.x), ~(-var_1.x), func_4(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.d, 1u, u_input.d), u_input.b), Struct_2(0u), func_1(global1.a.x), Struct_1(global1.a)), func_1(false || global1.a.x))));
    global0 = u_input.a.xz >> (_wgslsmith_add_vec2_u32(u_input.b.wx, ~vec2<u32>(0u, _wgslsmith_clamp_u32(97789u, global0.x, 4294967295u))) % vec2<u32>(32u));
    let var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(12696i, vec2<u32>(u_input.b.x, u_input.a.x), ~(-var_1.x | -1i) | _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(var_0, var_1.x, 0i, 0i)), vec4<i32>(var_0, var_2.x, var_1.x, 1i)));
}

