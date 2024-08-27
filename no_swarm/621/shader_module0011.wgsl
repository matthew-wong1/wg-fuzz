struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1656f, -1104f, vec2<i32>(1i, 13766i), false, vec3<f32>(-264f, -1789f, 799f)), false, -1i);

var<private> global1: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = vec4<i32>(-arg_0.c, arg_0.c, countOneBits(-(~(-23425i))), firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.c, 0i), u_input.d), _wgslsmith_sub_i32(global0.c, u_input.d), -2147483647i ^ firstLeadingBit(global0.a.c.x))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1411f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) + 1321f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.b) * _wgslsmith_f_op_f32(round(-1525f)))));
    let var_3 = -(-21837i & (var_0.x ^ var_1.a.c.x));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1580f, global0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(152f + var_1.a.e.x), _wgslsmith_f_op_f32(sign(-2534f)), var_1.a.d))), ~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, 2147483647i, u_input.c, 2897i), vec4<i32>(-1i, arg_0.a.c.x, -1507i, var_3) | vec4<i32>(arg_0.a.c.x, arg_0.a.c.x, var_3, arg_0.c)), u_input.d), global0.b, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.a * 1000f))), 615f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.a.a)) * _wgslsmith_f_op_f32(arg_0.a.e.x + -1000f))))));
    return 3853u;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = 106f;
    var var_1 = _wgslsmith_add_u32(~u_input.b | _wgslsmith_div_u32(u_input.b, ~0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.b, u_input.b), vec4<u32>(u_input.a, u_input.b, 3737u, 9009u)) % 32u)), func_3(Struct_2(Struct_1(1f, _wgslsmith_f_op_f32(1181f - var_0), -global0.a.c, arg_3.d, arg_3.e), arg_3.d, -(~(-1i))), ~(~firstTrailingBit(u_input.a))));
    let var_2 = u_input.a;
    var var_3 = arg_3;
    var_3 = Struct_1(_wgslsmith_f_op_f32(global0.a.e.x * arg_3.e.x), 2596f, vec2<i32>(u_input.d, -29569i), !(firstTrailingBit(arg_1) <= (arg_1 ^ ~global0.a.c.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + arg_2.x)), _wgslsmith_f_op_f32(-336f + _wgslsmith_f_op_f32(f32(-1f) * -1334f))), 1184f));
    return firstLeadingBit(~reverseBits(~vec4<i32>(global0.a.c.x, -24925i, 20867i, -51283i)) & _wgslsmith_add_vec4_i32(~vec4<i32>(-28110i, global0.a.c.x, global0.a.c.x, -26708i), firstLeadingBit(vec4<i32>(arg_0, arg_1, arg_3.c.x, var_3.c.x))));
}

fn func_1() -> f32 {
    global1 = !all(!vec3<bool>(true, global0.a.d, false)) && global0.b;
    let var_0 = Struct_3(max(max(_wgslsmith_mult_vec4_i32(vec4<i32>(42168i, -56816i, global0.c, u_input.c), func_2(u_input.c, u_input.c, vec4<f32>(global0.a.e.x, global0.a.e.x, global0.a.b, global0.a.a), Struct_1(-420f, 142f, global0.a.c, false, global0.a.e))), -(~vec4<i32>(global0.c, 14633i, 16362i, 40964i))), vec4<i32>(~min(global0.a.c.x, 4283i), ~countOneBits(-2147483647i), global0.a.c.x | (34300i | global0.a.c.x), -_wgslsmith_sub_i32(u_input.c, global0.a.c.x))), !(!select(vec3<bool>(true, true, true), !vec3<bool>(true, global0.a.d, true), select(vec3<bool>(global0.a.d, false, true), vec3<bool>(true, global0.b, global0.b), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-817f + -261f), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1751f + global0.a.b) + global0.a.e.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(85756u, 0u, 66610u, 4294967295u), vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(38891u, 4811u, 4294967295u, 65250u), vec4<u32>(u_input.b, 12878u, 4294967295u, 57855u)) & (vec4<u32>(0u, 39174u, 89719u, 126661u) << (vec4<u32>(36078u, 4294967295u, u_input.a, 0u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_u32(~select(vec4<u32>(122793u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.a, 1u, 0u), vec4<bool>(global0.a.d, true, global0.a.d, true)), min(countOneBits(vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.a)), max(vec4<u32>(1u, 4294967295u, 0u, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, 41237u))))), _wgslsmith_f_op_f32(f32(-1f) * -749f));
    var var_1 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(var_0.d, u_input.b), 4294967295u, 4294967295u & var_0.d), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, 1u)), ~vec3<u32>(59435u, u_input.b, 34038u), !global0.b)), min(_wgslsmith_mult_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d, 48993u, var_0.d), vec3<u32>(var_0.d, 4294967295u, 8601u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, 46304u)), ~(~(~vec3<u32>(17927u, var_0.d, 29173u)))), vec3<u32>(var_0.d, 36393u, min(var_0.d, 46651u)));
    var_1 = vec3<u32>(u_input.a, 4294967295u, 39810u);
    let var_2 = select(vec3<bool>(true, any(!vec3<bool>(true, var_0.b.x, var_0.b.x)), true), vec3<bool>(false, !(!var_0.b.x), true), select(var_0.b, vec3<bool>(any(vec4<bool>(true, global0.b, true, false)) | false, false, var_0.b.x), global0.b));
    return -1750f;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> Struct_1 {
    global1 = (-2147483647i >> ((40966u << (arg_0.d % 32u)) % 32u)) > 23270i;
    global0 = Struct_2(Struct_1(arg_0.e, arg_0.c.x, arg_0.a.yz, arg_1.x, global0.a.e), any(vec4<bool>(true, !arg_0.b.x, !(arg_1.x && true), true)), func_2(-2147483647i, _wgslsmith_clamp_i32(arg_0.a.x >> (~u_input.a % 32u), -2147483647i, ~u_input.d ^ -arg_0.a.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1648f, arg_3.x, arg_0.c.x, arg_3.x) + vec4<f32>(976f, -429f, 647f, arg_3.x)) - vec4<f32>(global0.a.a, global0.a.b, arg_0.e, -1480f)))), global0.a).x);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -2132f), global0.a.d))), arg_0.e, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -global0.a.c, ~(-vec2<i32>(-32973i, arg_0.a.x))), arg_0.b.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a.a + -1205f), _wgslsmith_f_op_f32(arg_0.e + 1031f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), true, 21613i);
    global1 = abs(_wgslsmith_clamp_i32(1i, _wgslsmith_sub_i32(2147483647i, u_input.d), abs(arg_0.a.x)) >> (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(33929u, arg_0.d), select(arg_2.x, arg_2.x, false), ~u_input.a) % 32u)) != arg_0.a.x;
    let var_0 = Struct_3(-reverseBits(arg_0.a), vec3<bool>(all(vec2<bool>(false, !global0.b)), arg_1.x, !(arg_3.x >= _wgslsmith_f_op_f32(-global0.a.b))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global0.a.a, -1556f)), -951f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.b, global0.a.a) - global0.a.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_0.e, 803f))))))), arg_2.x, global0.a.a);
    return Struct_1(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_div_f32(arg_3.x, 604f), ~(-_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.x, 1i) << (arg_2 % vec2<u32>(32u)), abs(vec2<i32>(u_input.d, u_input.d)))), arg_0.b.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.e)) * _wgslsmith_f_op_f32(1565f - arg_0.e)) * global0.a.b), arg_0.c.x, global0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(Struct_3(~abs(vec4<i32>(global0.c, global0.a.c.x, global0.a.c.x, -1i)), !select(vec3<bool>(global0.a.d, global0.a.d, global0.a.d), vec3<bool>(false, global0.b, global0.b), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.e) * _wgslsmith_f_op_vec3_f32(round(global0.a.e))), u_input.b, _wgslsmith_f_op_f32(func_1())), !select(select(vec2<bool>(true, true), vec2<bool>(false, global0.a.d), global0.b), !vec2<bool>(global0.b, true), vec2<bool>(false, global0.a.d)), _wgslsmith_add_vec2_u32(~(vec2<u32>(u_input.b, u_input.a) >> (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u))), ~(vec2<u32>(u_input.a, 1u) << (vec2<u32>(40121u, 23286u) % vec2<u32>(32u)))), global0.a.e), select(global0.b, true, 4294967295u >= (u_input.a | _wgslsmith_mod_u32(u_input.a, 26114u))), _wgslsmith_add_i32(-u_input.d, _wgslsmith_mult_i32(-1i, func_2(i32(-1i) * -18630i, -15724i, vec4<f32>(global0.a.b, global0.a.e.x, -1000f, global0.a.a), func_4(Struct_3(vec4<i32>(global0.c, global0.a.c.x, u_input.d, global0.c), vec3<bool>(false, global0.b, global0.b), global0.a.e, 39998u, -1805f), vec2<bool>(global0.b, global0.b), vec2<u32>(4294967295u, u_input.a), vec3<f32>(535f, -676f, -240f))).x)));
    let var_1 = _wgslsmith_dot_vec4_i32(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.d, 24507i, -13189i), vec4<i32>(-12912i, 42707i, ~(-1i), -2147483647i))), vec4<i32>(firstLeadingBit(1i), -1i, 97745i >> (1u % 32u), var_0.a.c.x));
    let var_2 = global0.a.a;
    let var_3 = var_0.a.c & -(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(global0.a.c.x, var_0.a.c.x)), global0.a.c) << (~(~vec2<u32>(u_input.b, u_input.a)) % vec2<u32>(32u)));
    global0 = Struct_2(var_0.a, any(vec2<bool>(true, true)), -firstLeadingBit(max(1i, func_2(10836i, 1i, vec4<f32>(300f, -182f, global0.a.b, -111f), global0.a).x)));
    let var_4 = Struct_3(vec4<i32>(var_0.c, countOneBits(~(var_0.a.c.x | var_0.c)), 0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, u_input.c, -31397i) >> (vec3<u32>(4294967295u, 38589u, 1u) % vec3<u32>(32u)), min(vec3<i32>(295i, 1i, var_0.a.c.x), vec3<i32>(global0.c, -2147483647i, 0i) | vec3<i32>(var_1, var_3.x, var_0.c)))), select(select(select(vec3<bool>(false, var_0.b, global0.a.d), vec3<bool>(false, true, var_0.b), all(vec4<bool>(false, false, false, global0.b))), select(select(vec3<bool>(var_0.b, true, true), vec3<bool>(true, global0.a.d, true), var_0.a.d), select(vec3<bool>(global0.a.d, false, global0.b), vec3<bool>(true, true, true), vec3<bool>(true, global0.b, var_0.b)), global0.b), !select(vec3<bool>(var_0.b, global0.a.d, global0.a.d), vec3<bool>(global0.a.d, global0.a.d, global0.a.d), vec3<bool>(var_0.a.d, var_0.a.d, global0.b))), vec3<bool>(_wgslsmith_sub_i32(2147483647i, var_1) > var_3.x, any(vec3<bool>(false, var_0.a.d, global0.b)), !global0.a.d & true), select(select(vec3<bool>(false, var_0.a.d, true), vec3<bool>(var_0.a.d, true, false), true), vec3<bool>(true, !var_0.b, true), var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-948f, var_0.a.e.x, var_0.a.e.x) - global0.a.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, 1000f, global0.a.b))) + vec3<f32>(global0.a.a, var_0.a.e.x, _wgslsmith_f_op_f32(select(global0.a.e.x, 582f, global0.a.d))))), 0u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-413f)), global0.a.a)));
    var var_5 = global0.a.e.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -639f))));
}

