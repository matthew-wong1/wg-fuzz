struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 3808u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    global0 = abs(0u);
    let var_0 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(firstLeadingBit(u_input.b), firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, 41617u)))), u_input.b) & 14955u;
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(max(-483f, 1f)), vec2<f32>(-1216f, _wgslsmith_f_op_f32(floor(887f))), !all(vec2<bool>(true, true)), 15305i, vec3<u32>(26727u, ~var_0, u_input.c)));
    let var_2 = Struct_4(var_1.a.a, Struct_1(var_1.a.a, vec2<f32>(961f, 1708f), !(-var_1.a.d >= u_input.a.x), 16690i, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 50786u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0, var_0, var_0), var_1.a.e)))), var_1.a.a);
    var var_3 = u_input.b.zx;
    return var_1.a;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(abs(~18279u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(8802u, arg_3.x)), u_input.b.x), 1u, countOneBits(arg_0.b.e.x)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~arg_3, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_1.b.e.x, 4985u, arg_3.x), arg_3)), vec4<u32>(reverseBits(4294967295u), 1u, _wgslsmith_add_u32(13812u, arg_1.b.e.x), ~arg_0.b.e.x)), vec4<u32>(u_input.c, abs(arg_1.b.e.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(50502u, u_input.c, arg_3.x), arg_0.b.e) % 32u), 0u, 0u)));
    global0 = ~(var_0.x ^ (u_input.c & arg_3.x));
    let var_1 = vec3<i32>(5175i, 1946i, -reverseBits(arg_2.x)) ^ vec3<i32>(u_input.a.x, func_2(select(select(vec3<bool>(arg_0.b.c, arg_1.b.c, arg_1.b.c), vec3<bool>(arg_1.b.c, arg_1.b.c, false), false), !vec3<bool>(arg_1.b.c, false, arg_0.b.c), vec3<bool>(arg_0.b.c, false, arg_1.b.c))).d, arg_2.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.b.b);
    global0 = _wgslsmith_div_u32(countOneBits(~min(~0u, u_input.b.x)), ~(~reverseBits(func_2(vec3<bool>(arg_0.b.c, arg_0.b.c, arg_1.b.c)).e.x)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) - _wgslsmith_f_op_f32(floor(arg_0.b.a))))), _wgslsmith_f_op_vec2_f32(arg_1.b.b - arg_0.b.b), true, -2147483647i, ~select(func_2(select(vec3<bool>(arg_0.b.c, true, arg_0.b.c), vec3<bool>(arg_1.b.c, arg_0.b.c, false), vec3<bool>(true, true, arg_0.b.c))).e, ~(~vec3<u32>(u_input.b.x, arg_0.b.e.x, 3583u)), any(select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.b.c, arg_1.b.c), false))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = _wgslsmith_mult_u32(firstTrailingBit(~(~(1u & u_input.c))), ~u_input.b.x);
    var var_0 = Struct_2(func_3(Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -238f)), func_2(vec3<bool>(true, arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1810f * 1111f), 1202f))), Struct_4(-305f, func_2(arg_0), _wgslsmith_f_op_f32(-1f)), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-u_input.a.x, ~(-2147483647i))), firstTrailingBit(~vec4<u32>(4294967295u, 32301u, 9866u, 1u)) | _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 1u), vec4<u32>(u_input.c, 6975u, 4294967295u, u_input.b.x)), min(vec4<u32>(0u, u_input.c, u_input.b.x, u_input.c), vec4<u32>(0u, 27276u, u_input.c, u_input.b.x)))), !(!vec2<bool>(false, any(vec2<bool>(arg_0.x, true)))));
    var_0 = Struct_2(func_2(vec3<bool>(true, false, arg_0.x)), vec2<bool>(true, any(select(!vec4<bool>(var_0.b.x, var_0.a.c, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), !vec4<bool>(var_0.a.c, false, var_0.a.c, false)))));
    var_0 = Struct_2(var_0.a, !select(vec2<bool>(false, !var_0.a.c), var_0.b, true));
    global0 = 25824u;
    return var_0.a;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    let var_0 = !(arg_3.a.a <= func_1(!(!vec3<bool>(arg_3.a.c, true, false))).a);
    let var_1 = select(vec4<i32>(~_wgslsmith_div_i32(u_input.d, arg_2 ^ arg_0.x), max(_wgslsmith_add_i32(1i, -38447i), func_3(Struct_4(arg_3.a.b.x, Struct_1(arg_3.a.a, vec2<f32>(-881f, -1465f), var_0, 41079i, vec3<u32>(854u, 48328u, 0u)), arg_3.a.a), Struct_4(arg_3.a.a, Struct_1(-1483f, arg_3.a.b, arg_3.a.c, -53353i, vec3<u32>(1623u, u_input.c, 0u)), -1168f), _wgslsmith_div_vec2_i32(arg_1, vec2<i32>(2147483647i, arg_2)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, 30399u, u_input.b.x), vec4<u32>(4294967295u, u_input.c, 64200u, 1u))).d), func_2(vec3<bool>(true, 9031u >= arg_3.a.e.x, arg_3.a.a > arg_3.a.b.x)).d, ~(~(~arg_3.a.d))), -vec4<i32>(-_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), arg_2, arg_0.x, ~1673i), select(true, true, false));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.b.x) * _wgslsmith_f_op_f32(-arg_3.a.b.x)) + _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-802f, arg_3.a.b.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1052f))), -794f, arg_3.a.a);
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -522f), _wgslsmith_f_op_vec2_f32(var_2.xz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.x, -1188f), vec2<f32>(-585f, 1000f), vec2<bool>(false, true))))), false & func_1(select(vec3<bool>(arg_3.a.c, true, arg_3.a.c), vec3<bool>(arg_3.a.c, arg_3.a.c, var_0), vec3<bool>(var_0, true, true))).c, -(arg_2 & arg_3.a.d), arg_3.a.e), vec2<bool>(var_0, func_2(!select(vec3<bool>(var_0, arg_3.a.c, var_0), vec3<bool>(arg_3.a.c, var_0, false), true)).c));
    let var_4 = var_3;
    return _wgslsmith_div_f32(arg_3.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.b.x))))));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>) -> vec3<i32> {
    var var_0 = reverseBits(~min((u_input.b << (u_input.b % vec3<u32>(32u))) << (~u_input.b % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 12350u, u_input.c), ~vec3<u32>(u_input.c, u_input.c, u_input.c))));
    var_0 = min(vec3<u32>(4294967295u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.c, 23872u, var_0.x, u_input.c), vec4<u32>(1u, 84224u, var_0.x, var_0.x)), ~vec4<u32>(1u, u_input.c, var_0.x, 1u)) << (firstLeadingBit(4294967295u) % 32u), u_input.c), select(_wgslsmith_mult_vec3_u32(u_input.b << (u_input.b % vec3<u32>(32u)), func_2(vec3<bool>(arg_0, false, arg_0)).e >> (u_input.b % vec3<u32>(32u))), u_input.b, ~firstTrailingBit(0u) > ~var_0.x));
    var var_1 = u_input.a.x;
    global0 = var_0.x;
    global0 = 1557u & var_0.x;
    return -vec3<i32>(u_input.a.x, firstLeadingBit(u_input.d), abs(i32(-1i) * -50685i) << (_wgslsmith_dot_vec3_u32(~u_input.b, u_input.b) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~vec3<u32>(~4294967295u, _wgslsmith_clamp_u32(u_input.c, 19459u, u_input.c), u_input.b.x), ~u_input.b) & _wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(0u, 9123u, u_input.c))), u_input.b);
    let var_1 = ~12918u;
    global0 = ~1u;
    let var_2 = func_5(any(vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(func_4(~vec4<i32>(u_input.a.x, -2147483647i, u_input.d, u_input.a.x) ^ -vec4<i32>(18477i, 11573i, -1i, u_input.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, u_input.a.x), u_input.a), -6586i, Struct_3(func_1(vec3<bool>(true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1156f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false)).b.x + 435f)), -2556f));
    let var_3 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1148f), func_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)))), _wgslsmith_f_op_f32(-1789f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, -859f, -1625f, 349f))) * vec4<f32>(574f, _wgslsmith_f_op_f32(-944f - var_3.c), var_3.c, var_3.a))))));
    let var_5 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(746f, 486f, var_4.x) + _wgslsmith_f_op_vec3_f32(max(var_4.xwz, var_4.wyz))))), _wgslsmith_mod_vec3_i32(max(-vec3<i32>(var_5, -20427i, var_2.x), -(vec3<i32>(var_3.b.d, var_2.x, 1i) << (vec3<u32>(0u, 1u, 62531u) % vec3<u32>(32u)))), vec3<i32>(-1i, -_wgslsmith_add_i32(1i, 9133i), -abs(-23620i))), _wgslsmith_f_op_f32(-1468f * var_3.c), ~countOneBits(var_2), var_4.x);
}

