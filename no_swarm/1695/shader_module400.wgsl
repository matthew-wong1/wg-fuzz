struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = vec4<u32>(u_input.c, u_input.b, u_input.b, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(abs(arg_0.e.b.x), countOneBits(arg_0.a.x), ~101806u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1, arg_0.e.b.x, u_input.c), arg_0.a))), ~abs(arg_0.a)));
    let var_1 = var_0.yxy;
    var var_2 = arg_0;
    var_0 = countOneBits(_wgslsmith_mult_vec4_u32(arg_0.a, abs(var_2.a)));
    let var_3 = Struct_3(any(select(vec4<bool>(select(arg_0.e.a, true, arg_0.b.a), any(vec3<bool>(false, var_2.c.x, false)), true, arg_0.b.a), select(select(vec4<bool>(var_2.c.x, var_2.b.a, arg_0.e.a, false), vec4<bool>(true, arg_0.b.a, true, arg_0.b.a), vec4<bool>(var_2.c.x, arg_0.c.x, true, arg_0.e.a)), !vec4<bool>(arg_0.b.a, var_2.e.a, true, false), !vec4<bool>(var_2.e.a, var_2.c.x, true, false)), select(select(vec4<bool>(arg_0.e.a, var_2.c.x, arg_0.c.x, var_2.e.a), vec4<bool>(true, arg_0.e.a, var_2.e.a, arg_0.c.x), false), vec4<bool>(var_2.e.a, arg_0.e.a, arg_0.e.a, false), true))), Struct_1(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false))), var_0.wyw), all(select(vec4<bool>(true, arg_0.b.a, true, arg_0.b.a), !vec4<bool>(arg_0.c.x, arg_0.e.a, var_2.b.a, arg_0.b.a), true)) | any(!(!var_2.c)), vec3<u32>(abs(arg_1), _wgslsmith_div_u32(~1u, u_input.b), _wgslsmith_clamp_u32(~var_2.a.x >> (~var_1.x % 32u), 4294967295u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 68514u, var_2.a.x), var_2.b.b), 0u))), _wgslsmith_f_op_f32(f32(-1f) * -743f));
    return arg_1;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>) -> Struct_2 {
    return Struct_2(~vec4<u32>(func_3(Struct_2(vec4<u32>(1u, u_input.b, arg_1, u_input.c), Struct_1(arg_2.x, vec3<u32>(1u, arg_1, 4294967295u)), arg_2, arg_0.x, Struct_1(false, vec3<u32>(arg_1, arg_1, arg_1))), arg_1 << (u_input.b % 32u)), 4294967295u, 1u, 21668u), Struct_1(all(vec3<bool>(false, false, arg_2.x)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 32992u, 0u), vec3<u32>(0u, 29549u, 4294967295u), vec3<u32>(arg_1, 4294967295u, u_input.c)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, arg_1, 0u), vec3<u32>(u_input.c, arg_1, u_input.b)) % vec3<u32>(32u)))), !select(vec3<bool>(arg_2.x, arg_2.x & arg_2.x, !arg_2.x), arg_2, all(!arg_2.zx)), -(~u_input.a), Struct_1(any(!(!arg_2.yy)), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_1, 72665u, 6964u)) | ~vec3<u32>(arg_1, 9541u, 67803u), ~vec3<u32>(0u, 4008u, u_input.b) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 117u, 61283u), vec3<u32>(125399u, u_input.c, arg_1), vec3<u32>(u_input.b, 46845u, 55356u)) % vec3<u32>(32u)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 396f;
    var var_1 = _wgslsmith_sub_u32(u_input.e.x, 1692u);
    var_1 = 4294967295u;
    var_1 = arg_1;
    var_1 = arg_1;
    return Struct_1(any(select(!vec4<bool>(arg_3.e.a, arg_3.e.a, true, true), !select(vec4<bool>(arg_3.e.a, arg_3.e.a, false, true), vec4<bool>(true, arg_3.c.x, arg_3.c.x, true), true), !(!vec4<bool>(arg_3.b.a, arg_3.b.a, true, false)))), ~(~(~vec3<u32>(1u, u_input.b, arg_0.x))));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 0u;
    let var_1 = Struct_1(arg_3.c.x, vec3<u32>(~23513u, reverseBits(~_wgslsmith_dot_vec2_u32(arg_3.e.b.zy, vec2<u32>(arg_3.a.x, 38467u))), 23039u));
    var var_2 = var_1;
    let var_3 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(arg_2, 0u, ~firstLeadingBit(reverseBits(var_2.b.x))), _wgslsmith_clamp_u32(u_input.e.x, var_0, max(var_2.b.x, arg_0.b.b.x) | ~min(0u, 6687u)));
    var_2 = func_2(vec3<i32>(-12327i, 1i, 1i), ~var_0, select(arg_0.c, vec3<bool>(false, var_1.a, any(arg_0.c)), all(!arg_3.c) != var_2.a)).b;
    return arg_3.e;
}

fn func_1() -> u32 {
    let var_0 = u_input.d.x;
    var var_1 = Struct_3((!(u_input.a <= -2147483647i) != false) && true, func_5(Struct_2(vec4<u32>(_wgslsmith_sub_u32(u_input.b, 24552u), ~1u, 4294967295u ^ u_input.c, u_input.e.x), func_4(reverseBits(vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 1u)), u_input.c, vec2<i32>(0i, u_input.d.x), func_2(vec3<i32>(2147483647i, 0i, u_input.d.x), 32817u, vec3<bool>(false, false, true))), vec3<bool>(true, true, true), -(i32(-1i) * -37378i), func_4(vec4<u32>(4294967295u, u_input.b, 64953u, 0u) ^ vec4<u32>(77561u, 0u, 4294967295u, 0u), u_input.e.x, vec2<i32>(1i, 17106i), func_2(vec3<i32>(9774i, var_0, u_input.a), u_input.c, vec3<bool>(false, false, true)))), _wgslsmith_mod_i32(_wgslsmith_add_i32(-9064i, var_0) << (4294967295u % 32u), firstTrailingBit(u_input.d.x >> (u_input.b % 32u))), u_input.e.x, Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(1u, u_input.c, u_input.c)), u_input.e.x, _wgslsmith_mult_u32(u_input.e.x, 4294967295u), 63418u ^ u_input.c), Struct_1(false, vec3<u32>(43845u, u_input.c, u_input.b)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), func_2(vec3<i32>(-2147483647i, -1i, -1i), 4294967295u, vec3<bool>(true, false, true)).c, vec3<bool>(false, false, false)), -_wgslsmith_mult_i32(var_0, -2147483647i), Struct_1(all(vec2<bool>(false, false)), vec3<u32>(u_input.b, 4294967295u, u_input.c) ^ vec3<u32>(u_input.c, 18056u, 95178u)))), false, reverseBits(vec3<u32>(85646u, u_input.c, u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(474f, -1139f, true))) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1177f, _wgslsmith_f_op_f32(f32(-1f) * -183f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(432f + -1369f))))));
    var_1 = Struct_3(false, func_2(abs(select(vec3<i32>(var_0, var_0, 2147483647i), -vec3<i32>(-4783i, var_0, u_input.a), true)), abs(max(85217u, 1u)), !vec3<bool>(true, any(vec3<bool>(var_1.c, var_1.b.a, true)), var_1.b.a)).e, var_1.a, reverseBits(var_1.b.b), var_1.e);
    var var_2 = _wgslsmith_div_f32(var_1.e, -625f);
    let var_3 = var_1.b;
    return var_3.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(all(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(false, 6370u > u_input.e.x, true), vec3<bool>(true, true, true))), _wgslsmith_add_vec3_u32(~vec3<u32>(func_1(), ~71118u, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(16498u, u_input.b), ~0u, ~u_input.b), ~(~vec3<u32>(u_input.e.x, u_input.c, 0u)))));
    var_0 = false;
    var_0 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(218f, -2069f)))));
    let var_3 = min(u_input.d, vec4<i32>(u_input.d.x, func_2(vec3<i32>(_wgslsmith_mult_i32(u_input.a, -28002i), u_input.a, 1i), 1u, vec3<bool>(func_4(vec4<u32>(u_input.c, 0u, var_1.b.x, var_1.b.x), u_input.c, vec2<i32>(0i, u_input.d.x), Struct_2(vec4<u32>(1u, 1u, var_1.b.x, u_input.c), var_1, vec3<bool>(var_1.a, false, var_1.a), 0i, Struct_1(false, vec3<u32>(u_input.e.x, 4294967295u, 81994u)))).a, false, 267f < var_2)).d, -u_input.a, ~(-2147483647i)));
    let var_4 = vec3<f32>(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1072f), var_2);
    var var_5 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(27414i, _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, var_3.x), ~(~var_3.x))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<i32>(var_3.x, u_input.d.x) ^ vec2<i32>(_wgslsmith_clamp_i32(20563i, -1i, u_input.d.x), 1i)));
}

