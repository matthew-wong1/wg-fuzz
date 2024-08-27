struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_mult_vec2_u32(u_input.c.xz, ~vec2<u32>(max(u_input.b, 1u), _wgslsmith_div_u32(4294967295u, arg_1.b.b.x))), arg_1.b);
    let var_1 = Struct_1(arg_1.b.a.a, arg_0, -46921i, arg_1.b.c.d);
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1024f, arg_0, _wgslsmith_f_op_f32(sign(var_1.b)), var_0.b.c.b)));
    let var_3 = Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_f32(min(-206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)))), 1i, ~(-var_1.d)), ~var_0.b.b << (~(_wgslsmith_mult_vec4_u32(arg_1.b.b, vec4<u32>(2447u, var_0.a.x, 14886u, u_input.b)) & vec4<u32>(4294967295u, 4294967295u, var_0.b.b.x, 1u)) % vec4<u32>(32u)), Struct_1(vec3<bool>(false, var_1.a.x, true), _wgslsmith_f_op_f32(abs(426f)), -var_1.d.x, _wgslsmith_sub_vec3_i32(select(vec3<i32>(-2147483647i, var_1.c, var_1.d.x), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, arg_1.b.a.c, 22364i), vec3<i32>(-65179i, var_1.c, 0i)), vec3<bool>(false, arg_1.b.a.a.x, var_1.a.x)), ~vec3<i32>(var_1.d.x, arg_1.b.c.d.x, 13410i))));
    var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, var_0.b.c.b, _wgslsmith_f_op_f32(var_1.b + 1000f), _wgslsmith_f_op_f32(-var_3.c.b)), vec4<f32>(_wgslsmith_f_op_f32(sign(-266f)), var_3.c.b, 107f, -377f), select(!vec4<bool>(arg_1.b.c.a.x, var_0.b.c.a.x, var_1.a.x, false), !vec4<bool>(arg_1.b.c.a.x, var_3.c.a.x, false, true), true))))));
    return abs(~min(select(arg_1.b.b, var_0.b.b, vec4<bool>(var_3.c.a.x, false, var_0.b.a.a.x, true)) ^ ~vec4<u32>(var_0.b.b.x, 12700u, 4294967295u, u_input.a), select(var_3.b, vec4<u32>(20851u, u_input.b, arg_2.x, 32887u), true)));
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<i32>(2147483647i, i32(-1i) * -28691i);
    let var_1 = Struct_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), 923f, _wgslsmith_add_i32(var_0.x, _wgslsmith_sub_i32(1i, 2147483647i & var_0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(-var_0.x, _wgslsmith_mod_i32(var_0.x, 0i), abs(var_0.x)), ~vec3<i32>(var_0.x, 2147483647i, -16866i))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 19139u, u_input.a, u_input.c.x), vec4<u32>(20657u, u_input.c.x, u_input.b, u_input.b)) >> (func_3(1255f, Struct_3(~vec2<u32>(u_input.a, u_input.c.x), Struct_2(Struct_1(vec3<bool>(true, true, true), 1313f, 2147483647i, vec3<i32>(576i, 2147483647i, -49608i)), vec4<u32>(u_input.a, u_input.b, u_input.a, u_input.a), Struct_1(vec3<bool>(false, false, true), 110f, var_0.x, vec3<i32>(var_0.x, var_0.x, -32188i)))), ~abs(vec4<u32>(u_input.a, 0u, u_input.c.x, 24521u))) % vec4<u32>(32u)), Struct_1(vec3<bool>(select(all(vec4<bool>(false, false, false, false)), u_input.c.x > 124431u, select(false, false, true)), true, ~40266u > u_input.a), 1000f, _wgslsmith_add_i32(0i, i32(-1i) * -55075i), vec3<i32>(0i, _wgslsmith_clamp_i32(var_0.x, -15580i & var_0.x, ~var_0.x), abs(0i))));
    var var_2 = -1i;
    var var_3 = var_1.c;
    var var_4 = Struct_2(Struct_1(var_1.a.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_3.b, _wgslsmith_f_op_f32(max(-392f, -646f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -816f) + _wgslsmith_div_f32(var_3.b, -583f)))), ~(~(-1i | var_1.c.d.x)), abs(var_1.a.d)), var_1.b, var_1.c);
    return Struct_3(func_3(-1643f, Struct_3(var_1.b.zz, var_1), vec4<u32>(_wgslsmith_mult_u32(0u, 22434u), _wgslsmith_div_u32(41497u, var_4.b.x) | 4190u, var_4.b.x, var_1.b.x)).ww, Struct_2(var_4.c, _wgslsmith_div_vec4_u32(func_3(_wgslsmith_f_op_f32(trunc(var_1.a.b)), Struct_3(u_input.c.zy, Struct_2(var_1.c, var_1.b, var_1.c)), ~vec4<u32>(0u, 1u, 1u, 24051u)), _wgslsmith_mod_vec4_u32(~var_1.b, vec4<u32>(var_4.b.x, 0u, var_4.b.x, 1u))), Struct_1(select(!vec3<bool>(var_1.a.a.x, var_4.a.a.x, false), vec3<bool>(true, true, true), var_1.c.a), _wgslsmith_div_f32(-1364f, var_4.c.b), 20879i, _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(var_0.x, var_4.a.c, var_4.c.d.x)), var_3.d, firstTrailingBit(vec3<i32>(-1i, var_1.c.c, var_3.c))))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = Struct_1(!(!select(vec3<bool>(var_0.b.a.a.x, arg_3, arg_3), !var_0.b.a.a, func_2().b.a.a)), _wgslsmith_f_op_f32(f32(-1f) * -730f), ~abs(-arg_0) & _wgslsmith_add_i32(countOneBits(arg_0), func_2().b.c.c), func_2().b.c.d);
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b))))), _wgslsmith_add_i32(select(0i, var_1.d.x, false) << (_wgslsmith_add_u32(~var_0.a.x, var_0.a.x) % 32u), var_0.b.c.c), arg_2.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.b, 143f, arg_2.b, var_0.b.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.b, var_1.b, 305f, -262f)))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.b, arg_1, arg_2.b, 993f)))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1112f, var_0.b.c.b, 708f, var_0.b.c.b))))));
    var var_4 = var_2.a;
    return Struct_2(func_2().b.a, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~(vec4<u32>(0u, 4294967295u, var_0.b.b.x, 4294967295u) << (vec4<u32>(4294967295u, 25084u, 1u, var_0.a.x) % vec4<u32>(32u))), vec4<u32>(~var_0.a.x, ~0u, max(var_0.a.x, var_0.a.x), _wgslsmith_div_u32(var_0.a.x, var_0.a.x))), ~var_0.b.b), arg_2);
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = ~func_3(_wgslsmith_f_op_f32(max(arg_0.b.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.a.b + arg_0.b.a.b), _wgslsmith_f_op_f32(sign(-604f))))), func_2(), _wgslsmith_sub_vec4_u32(arg_0.b.b, ~arg_0.b.b)).ywz;
    var_0 = arg_0.b.b.wzz;
    let var_1 = func_2();
    var var_2 = func_2();
    var var_3 = 828f;
    return arg_0.b.a.a.x;
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = func_2().b;
    var_0 = func_1(-2147483647i, 728f, func_1(firstTrailingBit(-1i), -1000f, arg_2, !(var_0.a.a.x & arg_3.a.x) || (0i >= _wgslsmith_dot_vec2_i32(vec2<i32>(22563i, -73509i), vec2<i32>(arg_3.c, -15317i)))).c, arg_3.a.x);
    return _wgslsmith_dot_vec3_u32(var_0.b.xyw, vec3<u32>(4294967295u, func_1(arg_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b, -139f) * -491f), func_2().b.a, func_4(Struct_3(vec2<u32>(var_0.b.x, 66901u), Struct_2(arg_2, vec4<u32>(4294967295u, var_0.b.x, 50953u, u_input.c.x), Struct_1(arg_3.a, arg_3.b, 41249i, vec3<i32>(0i, 32766i, 0i)))))).b.x, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(154f + 773f)), func_2(), vec4<u32>(var_0.b.x, u_input.b, 48114u, 17084u) | min(arg_1, var_0.b)).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~firstTrailingBit(u_input.b), u_input.a);
    var var_1 = ~_wgslsmith_clamp_u32(u_input.a, 23257u, _wgslsmith_add_u32(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 10495u, 1u, u_input.b) & vec4<u32>(1u, 99702u, u_input.a, u_input.b), vec4<u32>(u_input.c.x, var_0.x, 10516u, 36026u))));
    var_1 = func_5(func_4(Struct_3(vec2<u32>(var_0.x, u_input.c.x), func_1(48952i, 214f, Struct_1(vec3<bool>(true, false, false), 596f, -2147483647i, vec3<i32>(-22362i, -9330i, -33910i)), false))), vec4<u32>(~_wgslsmith_mod_u32(u_input.b, 81182u), 56611u, 0u | u_input.c.x, ~7954u), Struct_1(vec3<bool>(false, true, true), _wgslsmith_f_op_f32(abs(-1000f)), -2147483647i, func_1(select(-16433i, -10761i, true), _wgslsmith_f_op_f32(1609f * -700f), func_2().b.a, all(vec4<bool>(false, true, false, true))).a.d), Struct_1(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-1188f + -415f), _wgslsmith_clamp_i32(-1i, 1i, _wgslsmith_sub_i32(0i, -10597i)), vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(u_input.b, var_0.x, 48480u) % vec3<u32>(32u)))) >> ((_wgslsmith_div_u32(~func_1(-24634i, 992f, Struct_1(vec3<bool>(true, false, false), 1209f, -4307i, vec3<i32>(36917i, -1i, 7251i)), true).b.x, var_0.x) >> (u_input.c.x % 32u)) % 32u);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2917f, 1800f))))) - func_1(-20538i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(827f - 1029f)), func_1(_wgslsmith_clamp_i32(1i, 26315i, -2147483647i), _wgslsmith_f_op_f32(min(650f, -701f)), Struct_1(vec3<bool>(false, false, false), -1202f, 1i, vec3<i32>(-1i, -1i, 1i)), func_1(0i, -1147f, Struct_1(vec3<bool>(false, true, false), -826f, -2147483647i, vec3<i32>(0i, -13205i, 0i)), false).c.a.x).c, func_2().b.a.a.x).c.b), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -742f))), _wgslsmith_f_op_f32(ceil(-1224f)))))));
    var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~1u, _wgslsmith_add_u32(_wgslsmith_add_u32(~1u, _wgslsmith_sub_u32(0u, u_input.c.x)), countOneBits(4294967295u))), ~func_2().b.b.yww);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~u_input.b, firstLeadingBit(var_0.x), u_input.a | _wgslsmith_mod_u32(abs(0u), var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(483f))))) - -1544f));
}

