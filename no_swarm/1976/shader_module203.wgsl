struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 188f;

var<private> global1: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: u32) -> bool {
    global1 = -910f;
    var var_0 = arg_0;
    let var_1 = u_input.b;
    var_0 = min(~(~_wgslsmith_mod_u32(34776u, u_input.b ^ u_input.b)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 1u ^ u_input.b, ~u_input.b, ~4294967295u), ~(~vec4<u32>(24607u, 10397u, arg_0, var_1))));
    global1 = _wgslsmith_f_op_f32(-1f);
    return any(vec2<bool>(~var_1 <= firstTrailingBit(u_input.b), true));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<f32>) -> f32 {
    var var_0 = true;
    global0 = -874f;
    var var_1 = u_input.b;
    global0 = -733f;
    let var_2 = ~(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(27505u, 21383u, 0u, u_input.b) | vec4<u32>(4294967295u, u_input.b, 36429u, 0u), vec4<u32>(9095u, u_input.b, 24739u, 27498u) | vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), ~_wgslsmith_add_u32(u_input.b, u_input.b), 1u, u_input.b));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(2230f, _wgslsmith_f_op_f32(max(-582f, -667f)), true)))), true))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_u32(32577u, 1u, u_input.b);
    global0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, false, true), vec2<f32>(-125f, 2788f))))))));
    let var_1 = Struct_3(67923u, Struct_2(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true), true), vec3<i32>(u_input.a.x, 1i, _wgslsmith_add_i32(~u_input.a.x, i32(-1i) * -1654i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-947f, -1983f) * -577f) * _wgslsmith_div_f32(_wgslsmith_div_f32(407f, -1102f), _wgslsmith_f_op_f32(floor(1852f)))), Struct_1(u_input.b >> (_wgslsmith_mod_u32(72989u, 4294967295u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1709f, -310f)) - -151f)), countOneBits(firstTrailingBit(~vec2<u32>(u_input.b, u_input.b)))));
    global1 = _wgslsmith_f_op_f32(-var_1.b.d.b);
    let var_2 = Struct_2(var_1.b.a, ~vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_1.b.b.x, -16746i), -68071i), u_input.a.x, 34033i), _wgslsmith_f_op_f32(var_1.b.d.b - _wgslsmith_f_op_f32(f32(-1f) * -1449f)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.b.e, vec2<u32>(var_1.a, u_input.b)), var_1.b.d.a | var_1.a, ~976u), vec3<u32>(u_input.b, ~0u, min(0u, u_input.b))), var_1.b.d.b), firstTrailingBit(var_1.b.e) << (var_1.b.e % vec2<u32>(32u)));
    return var_1.b.d;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.b, -1460f), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-149f + arg_1)))))));
    var var_0 = Struct_2(vec4<bool>(true, !func_1(29794u) & !all(vec4<bool>(true, false, true, false)), true, any(vec4<bool>(true, true, true, true))), _wgslsmith_div_vec3_i32(~(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_3), vec3<i32>(48054i, 10338i, u_input.a.x))), ~abs(-vec3<i32>(-1i, u_input.a.x, arg_3))), 754f, arg_2, vec2<u32>(1u, firstLeadingBit(1u)));
    var var_1 = Struct_4(Struct_3(~_wgslsmith_dot_vec2_u32(~var_0.e, vec2<u32>(1u, arg_2.a) ^ vec2<u32>(0u, u_input.b)), Struct_2(vec4<bool>(any(var_0.a.zx), var_0.a.x, func_1(65101u), true), ~vec3<i32>(var_0.b.x, 2147483647i, var_0.b.x), _wgslsmith_f_op_f32(round(arg_1)), arg_2, vec2<u32>(~var_0.e.x, 46926u ^ arg_0.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_0.d.a, 15525u << (max(var_0.d.a, var_0.d.a) % 32u), var_0.d.a), vec4<u32>(var_0.e.x, _wgslsmith_clamp_u32(firstLeadingBit(37029u), arg_0.x >> (1u % 32u), ~0u), select(var_0.d.a, 10599u << (arg_2.a % 32u), any(var_0.a.wzx)), _wgslsmith_mod_u32(arg_2.a, _wgslsmith_div_u32(56312u, 38766u)))), arg_0.x, arg_2, -365f);
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1 - 743f)));
    var_1 = Struct_4(var_1.a, vec4<u32>(countOneBits(0u), var_0.d.a, max(~select(0u, arg_0.x, false), 32179u), 58207u), 77907u, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.d.b)) - -1000f) * var_1.a.b.d.b));
    return Struct_1(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-875f - func_2().b)) - _wgslsmith_f_op_f32(f32(-1f) * -193f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_clamp_vec4_u32(select(~vec4<u32>(73942u, u_input.b, u_input.b, u_input.b) | ~vec4<u32>(4294967295u, u_input.b, 1u, 0u), ~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 33693u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), true), ~vec4<u32>(u_input.b, 0u, _wgslsmith_add_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b)), select(~max(vec4<u32>(u_input.b, u_input.b, u_input.b, 0u), vec4<u32>(u_input.b, 62553u, 4294967295u, u_input.b)), ~(~vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b)), func_1(u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f * -2214f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))) * -786f), func_2(), -_wgslsmith_div_i32(_wgslsmith_clamp_i32(i32(-1i) * -26091i, -u_input.a.x, abs(0i)), select(abs(-1i), 5021i, true)));
    var var_1 = !vec3<bool>(true, all(vec3<bool>(true, all(vec3<bool>(true, true, false)), var_0.a >= 0u)), true);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b), var_0.b)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(673f, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1688f, var_0.b, var_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(abs(-268f)), var_0.b, -891f), true))));
    var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_0.b));
    global1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_sub_i32(abs(~(-2147483647i)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 11777i))), -30754i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.b)), -816f));
}

