struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 40327i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = Struct_5(Struct_3(1u, vec4<u32>(u_input.d, _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 24206u), reverseBits(u_input.b)), u_input.a, 4294967295u), vec2<bool>(false, _wgslsmith_f_op_f32(f32(-1f) * -681f) < _wgslsmith_f_op_f32(sign(1484f))), 0i));
    let var_1 = (-(~vec3<i32>(var_0.a.d, -14928i, 0i)) | arg_0.wxy) | vec3<i32>(var_0.a.d, -51201i, arg_0.x);
    let var_2 = 0u;
    global0 = arg_2.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(18050i, 1i, _wgslsmith_clamp_i32(var_0.a.d, -var_1.x, u_input.c.x ^ 16256i), -1i & u_input.c.x), vec4<i32>(-1i) * -abs(arg_0));
    let var_3 = Struct_4(abs(~var_0.a.d) << (1u % 32u), vec3<f32>(arg_1.x, arg_1.x, arg_1.x), ~50968u);
    return ~var_2;
}

fn func_2(arg_0: i32, arg_1: Struct_5) -> Struct_3 {
    var var_0 = vec2<i32>(-32208i, _wgslsmith_sub_i32((i32(-1i) * -9731i) >> (~(~0u) % 32u), -47659i));
    let var_1 = Struct_1(vec2<u32>(~func_3(vec4<i32>(37334i, arg_0, var_0.x, 18423i), _wgslsmith_f_op_vec2_f32(vec2<f32>(646f, -158f) * vec2<f32>(-245f, -713f)), u_input.c), 1u), vec2<u32>(~0u, arg_1.a.b.x) ^ vec2<u32>(arg_1.a.a, ~(~4294967295u)), (~_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, arg_0, var_0.x), vec3<i32>(-23016i, 0i, -2147483647i), vec3<i32>(8911i, 3750i, arg_1.a.d)) >> (_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, arg_1.a.b.x, 34091u), vec3<u32>(23604u, u_input.b, 7104u)), _wgslsmith_sub_vec3_u32(arg_1.a.b.zwx, vec3<u32>(10949u, 2466u, 3173u))) % vec3<u32>(32u))) >> (firstTrailingBit(_wgslsmith_mult_vec3_u32(~arg_1.a.b.zzz, _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.a.a, arg_1.a.a, 93699u), arg_1.a.b.wxy))) % vec3<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(26584i, -2147483647i, 1i, arg_1.a.d), vec4<i32>(u_input.c.x, u_input.c.x, -2865i, arg_0)), max(vec4<i32>(var_0.x, arg_1.a.d, u_input.c.x, arg_1.a.d), vec4<i32>(arg_0, arg_1.a.d, arg_1.a.d, 14686i)) << (arg_1.a.b % vec4<u32>(32u))), var_0.x), false);
    var var_2 = arg_1.a;
    let var_3 = -2147483647i;
    let var_4 = select(vec4<bool>(true, false, select(var_1.e, arg_1.a.c.x, var_2.c.x), false), !vec4<bool>(any(arg_1.a.c), true, var_2.c.x, select(true, false, arg_1.a.c.x)), select(vec4<bool>(true || (arg_1.a.c.x && false), all(select(vec3<bool>(arg_1.a.c.x, var_1.e, var_1.e), vec3<bool>(false, arg_1.a.c.x, true), vec3<bool>(true, false, var_2.c.x))), true, all(select(vec2<bool>(false, var_2.c.x), var_2.c, true))), !select(vec4<bool>(true, arg_1.a.c.x, false, var_2.c.x), vec4<bool>(var_1.e, var_1.e, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, var_2.c.x), var_2.c.x)), false));
    return Struct_3(1u, ~reverseBits(vec4<u32>(countOneBits(0u), select(0u, var_1.a.x, true), var_1.b.x, var_1.a.x)), vec2<bool>(true, true), firstTrailingBit(~(-3908i)));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2(u_input.c.x << (~reverseBits(_wgslsmith_sub_u32(u_input.a, u_input.b)) % 32u), Struct_5(Struct_3(select(1u, abs(4294967295u), all(vec3<bool>(false, false, true))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.a, u_input.b), vec4<u32>(u_input.d, 10592u, 11898u, u_input.d)), vec2<bool>(false, true), 18487i)));
    global0 = u_input.c.x;
    let var_1 = vec2<u32>(select(u_input.b, 4294967295u, var_0.c.x), 19157u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 486f);
    let var_3 = Struct_5(func_2(44206i, Struct_5(Struct_3(~u_input.d, vec4<u32>(u_input.b, u_input.a, u_input.d, var_1.x), vec2<bool>(var_0.c.x, var_0.c.x), _wgslsmith_sub_i32(u_input.c.x, 1i)))));
    return Struct_4(-16895i, vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1229f - _wgslsmith_f_op_f32(1022f * -1052f)), -710f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1557f)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(268f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1278f)))) + -1632f));
    let var_1 = func_1();
    var var_2 = min(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.c.x, u_input.c.x, var_1.a), vec3<i32>(~u_input.c.x, u_input.c.x, countOneBits(u_input.c.x)))), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.c.x, u_input.c.x), ~(vec3<i32>(u_input.c.x, -43900i, -1i) ^ vec3<i32>(30289i, 1i, u_input.c.x)))));
    var var_3 = vec3<u32>(1u, 0u, 70957u);
    var_2 = -abs(select(vec3<i32>(var_1.a, -2147483647i, u_input.c.x), ~vec3<i32>(10839i, var_2.x, u_input.c.x), var_1.c >= 96769u)) | firstLeadingBit(reverseBits(select(vec3<i32>(9973i, -2147483647i, var_1.a) & vec3<i32>(13824i, var_1.a, 17055i), -vec3<i32>(var_2.x, var_1.a, var_2.x), vec3<bool>(true, true, false))));
    let var_4 = -1197f;
    var var_5 = func_2(u_input.c.x, Struct_5(func_2(var_1.a, Struct_5(Struct_3(4294967295u, vec4<u32>(var_3.x, 1u, 26881u, 1u), vec2<bool>(true, false), 27589i)))));
    global0 = var_5.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_div_u32(u_input.b, var_3.x), ~(_wgslsmith_sub_u32(u_input.d, 61979u) << (~u_input.d % 32u)), u_input.a, ~var_3.x & var_1.c));
}

