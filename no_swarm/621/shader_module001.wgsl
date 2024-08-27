struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(862f)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-894f, -117f, -428f, 1000f), vec4<f32>(1041f, 366f, -335f, -1400f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1591f, -714f, -927f, -1055f))))))), !(!(!(!vec4<bool>(false, arg_0, true, arg_0)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(159f * 502f), -104f) * -1502f))));
    var var_1 = Struct_2(u_input.b.x);
    var_1 = Struct_2(_wgslsmith_dot_vec4_i32(~u_input.d, _wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.b.x, u_input.e.x, u_input.d.x, var_1.a), vec4<i32>(-11870i, u_input.b.x, -14814i, var_1.a), var_0.c.x) & u_input.b, ~_wgslsmith_div_vec4_i32(u_input.e, u_input.b))));
    var var_2 = Struct_2(~firstLeadingBit(~(~var_1.a)));
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.c) & vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.c, u_input.c) << (vec4<u32>(u_input.c, 31726u, 4294967295u, 0u) % vec4<u32>(32u)), u_input.d.x >= -10849i), _wgslsmith_sub_vec4_u32(~vec4<u32>(41573u, 39798u, 0u, u_input.c), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.a), vec4<u32>(u_input.a, 58309u, u_input.a, 16770u)))) << (select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, 2393u, u_input.a) | vec4<u32>(42734u, 20212u, 5327u, 17925u), ~vec4<u32>(0u, 0u, u_input.a, u_input.a)), vec4<u32>(_wgslsmith_clamp_u32(54406u, 1u, 4102u), u_input.c, u_input.c, countOneBits(u_input.a)), !(!var_0.c)) % vec4<u32>(32u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, 25096u, u_input.c), vec4<u32>(u_input.a, 21246u, u_input.c, u_input.c)) & ~vec4<u32>(u_input.c, 30701u, u_input.c, 41228u), vec4<u32>(u_input.c, u_input.a, 1u, 96238u) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 74143u, u_input.a, u_input.c), vec4<u32>(7824u, u_input.a, 4294967295u, 40741u), vec4<u32>(u_input.a, 9779u, 1u, u_input.a)), false) | ~vec4<u32>(min(u_input.a, u_input.c), 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 22647u, 4294967295u), vec3<u32>(0u, u_input.a, u_input.c)), ~u_input.c));
    return vec3<u32>(min(1u, 77231u), ~_wgslsmith_sub_u32(~(~4294967295u), var_3.x), 23675u);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<f32>) -> vec3<f32> {
    var var_0 = Struct_4(vec3<i32>(u_input.d.x | -2147483647i, ~u_input.d.x, u_input.e.x) << (~func_3(arg_0.x) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(arg_1.x - 1332f)), _wgslsmith_f_op_vec4_f32(-arg_1), select(vec4<bool>(arg_1.x > arg_1.x, arg_0.x, u_input.e.x >= -2147483647i, true), vec4<bool>(true, arg_0.x, true, true), select(!vec4<bool>(true, false, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, false, true), true)), arg_1.x), -firstTrailingBit(vec4<i32>(u_input.e.x, u_input.d.x, u_input.b.x, u_input.e.x)) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 4294967295u) ^ vec4<u32>(u_input.a, u_input.a, 0u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 64118u, u_input.c, u_input.a), vec4<u32>(4294967295u, 1u, 4294967295u, 89881u), vec4<u32>(u_input.c, 67079u, 4294967295u, 0u))) % vec4<u32>(32u)));
    let var_1 = ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(abs(u_input.c), ~u_input.c, ~18147u), vec3<u32>(13403u, u_input.a, 4294967295u), ~vec3<u32>(0u, u_input.a, u_input.a) ^ firstLeadingBit(vec3<u32>(19726u, u_input.a, u_input.a))));
    var var_2 = arg_0.x;
    var var_3 = Struct_5(abs(~firstLeadingBit(~vec2<u32>(20423u, 1u))));
    let var_4 = Struct_5(var_1.zy);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_1.yzw)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    let var_0 = select(u_input.e.yx, vec2<i32>(_wgslsmith_clamp_i32(0i, 1i, ~_wgslsmith_mult_i32(0i, u_input.e.x)), _wgslsmith_mult_i32(~0i >> (u_input.a % 32u), ~select(68538i, -1i, arg_2.c.x))), arg_2.c.yx);
    let var_1 = Struct_2(_wgslsmith_add_i32(-var_0.x, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(reverseBits(u_input.e), vec4<i32>(24512i, -64822i, var_0.x, u_input.e.x)), ~_wgslsmith_mod_i32(u_input.e.x, -2368i))));
    var var_2 = Struct_3(arg_2);
    let var_3 = select(select(!(!arg_2.c.zwy), !vec3<bool>(arg_3, !arg_2.c.x, any(var_2.a.c)), 1145f > arg_0.x), var_2.a.c.zzw, var_2.a.c.xxx);
    let var_4 = select(_wgslsmith_dot_vec3_i32(select(u_input.e.xxx, -(~vec3<i32>(u_input.d.x, 0i, -66555i)), !select(var_3, var_3, var_2.a.c.x)), min(~abs(vec3<i32>(0i, u_input.b.x, var_1.a)), u_input.e.zzx)), -var_1.a, -2147483647i < -select(~u_input.e.x, -43050i, any(arg_2.c)));
    return var_1.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> u32 {
    var var_0 = (-firstLeadingBit(u_input.b.x) ^ arg_0.x) | -(4090i ^ ~(u_input.d.x | 2147483647i));
    var_0 = u_input.b.x;
    var_0 = ~(~func_4(_wgslsmith_f_op_vec3_f32(func_2(!arg_1.a.c.xy, _wgslsmith_f_op_vec4_f32(vec4<f32>(-215f, arg_1.a.b.x, 205f, arg_1.a.b.x) * arg_1.a.b))), vec2<f32>(-179f, arg_1.a.d), arg_1.a, !all(arg_1.a.c.ywy)));
    var_0 = arg_0.x;
    let var_1 = Struct_5(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 21351u), vec2<u32>(_wgslsmith_div_u32(17680u, 4294967295u), u_input.a)), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(23943u, 1u))), ~vec2<u32>(1u, u_input.c)));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1(-firstTrailingBit(_wgslsmith_mult_vec4_i32(u_input.e, u_input.e)), Struct_3(Struct_1(-321f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, -686f, 931f, -1000f)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), true), -1469f)));
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1176f, -145f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-530f, 410f), _wgslsmith_f_op_f32(floor(-174f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(471f, -1619f)), _wgslsmith_f_op_f32(201f + _wgslsmith_f_op_f32(floor(-476f))), -2143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -719f) - 3048f)), vec4<bool>(false, 1464i < (u_input.d.x ^ -24731i), u_input.a > u_input.c, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(192f, -1225f))) + -214f)));
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_4(var_1.a.b.wxw, _wgslsmith_f_op_vec2_f32(var_1.a.b.zx * vec2<f32>(var_2.a.a, var_2.a.d)), var_2.a, var_1.a.c.x), u_input.e.x, 1i));
}

