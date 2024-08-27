struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_4,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = u_input.b.x;
    var var_1 = any(select(!arg_1, vec2<bool>(_wgslsmith_f_op_f32(round(-696f)) == -1000f, any(vec3<bool>(true, true, true))), !vec2<bool>(select(arg_1.x, false, arg_1.x), arg_1.x)));
    let var_2 = vec4<i32>(i32(-1i) * -u_input.c.x, 2406i, -(-2147483647i >> (((u_input.a ^ arg_0.b) & ~arg_0.b) % 32u)), 0i);
    var var_3 = vec2<u32>(u_input.a << ((arg_0.b ^ u_input.a) % 32u), 6694u);
    var_3 = max(~vec2<u32>(1u, firstTrailingBit(var_3.x)), firstTrailingBit(~min(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(arg_0.b, u_input.a))));
    return reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(22550u, arg_0.b), vec2<u32>(1u, var_3.x)), min(arg_0.b, 0u)) << (reverseBits(abs(vec2<u32>(u_input.a, arg_0.b))) % vec2<u32>(32u)), ~countOneBits(~vec2<u32>(72003u, 0u))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_5) -> vec4<i32> {
    let var_0 = arg_1.d.x | false;
    var var_1 = min(_wgslsmith_mod_vec2_u32(arg_0.yz, arg_0.xw | arg_0.zx), ~_wgslsmith_sub_vec2_u32(~(~arg_0.yy), ~vec2<u32>(arg_0.x, 1u)));
    var_1 = ~_wgslsmith_sub_vec2_u32(func_3(Struct_3(vec2<i32>(arg_1.b.a.x, arg_1.a.x), u_input.a), !vec2<bool>(true, var_0)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.a), arg_0.yy), ~arg_0.yw ^ vec2<u32>(_wgslsmith_mult_u32(arg_1.b.b, 2635u), ~arg_1.b.b));
    var var_2 = !vec2<bool>(true, any(select(select(vec4<bool>(true, var_0, var_0, arg_1.c.b.b), arg_1.d, arg_1.d), select(arg_1.d, arg_1.d, true), vec4<bool>(true, arg_1.c.b.b, arg_1.d.x, var_0))));
    var_2 = select(arg_1.d.xx, arg_1.d.zx, arg_1.c.b.b);
    return arg_1.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec4<u32> {
    var var_0 = vec2<bool>(!all(vec2<bool>(true, arg_0.x > 0u)), ~u_input.a <= arg_0.x);
    var_0 = vec2<bool>(var_0.x, var_0.x);
    let var_1 = Struct_5(vec4<i32>(countOneBits(~(-67935i)), -reverseBits(u_input.b.x), -1i, 15769i) & select(vec4<i32>(~3435i, 0i, 32872i, ~u_input.c.x), _wgslsmith_div_vec4_i32(~vec4<i32>(-5369i, -1i, u_input.b.x, 1i), func_2(vec4<u32>(arg_0.x, u_input.a, arg_0.x, 0u), Struct_5(vec4<i32>(-1i, u_input.b.x, u_input.c.x, -43486i), Struct_3(u_input.c.zy, 26383u), Struct_4(Struct_3(vec2<i32>(-2147483647i, 1i), arg_0.x), Struct_2(-952f, var_0.x, Struct_1(u_input.b.x), arg_1, vec4<f32>(1411f, arg_1.x, -145f, -1201f))), vec4<bool>(false, var_0.x, false, false)))), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, true, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, true, false)))), Struct_3(vec2<i32>(1i, u_input.b.x), ~(~(~0u))), Struct_4(Struct_3(_wgslsmith_sub_vec2_i32(u_input.b.xy, vec2<i32>(-56344i, u_input.c.x)), u_input.a), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))), true, Struct_1(u_input.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, -146f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1942f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, 1316f, arg_1.x, -533f)))))), select(select(select(vec4<bool>(true, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x), all(vec4<bool>(true, var_0.x, true, true))), !vec4<bool>(true, false, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, !var_0.x)), vec4<bool>(true & var_0.x, all(vec2<bool>(var_0.x, var_0.x)), !(var_0.x & var_0.x), var_0.x), var_0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1388f)) + -869f);
    var_0 = vec2<bool>(!var_0.x, true);
    return (vec4<u32>(abs(~arg_0.x), max(_wgslsmith_sub_u32(arg_0.x, 27231u), max(38216u, 23694u)), ~11109u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_0.x, 79219u), vec3<u32>(u_input.a, 1u, 1u)), func_3(Struct_3(vec2<i32>(var_1.c.b.c.a, -10670i), 53835u), vec2<bool>(var_1.c.b.b, var_1.c.b.b)).x)) & vec4<u32>(4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(63340u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 39394u, 27299u, u_input.a), vec4<u32>(4294967295u, 48060u, u_input.a, 0u))), u_input.a, arg_0.x)) << (abs(vec4<u32>(~var_1.b.b >> (4294967295u % 32u), 0u, countOneBits(countOneBits(arg_0.x)), _wgslsmith_sub_u32(min(4294967295u, u_input.a), 1u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, 11120u, 10559u)), ~vec4<u32>(u_input.a, 4315u, 10700u, u_input.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, u_input.a), vec4<u32>(52576u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u))), func_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 20916u, u_input.a) << (vec3<u32>(118252u, u_input.a, u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1159f, -1293f, 331f)) + _wgslsmith_div_vec3_f32(vec3<f32>(801f, 105f, -420f), vec3<f32>(1000f, -225f, 1775f))))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, _wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, 0u)), func_1(firstLeadingBit(vec3<u32>(u_input.a, 22411u, u_input.a)), vec3<f32>(106f, 539f, -1087f)).x), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, 49226u), firstLeadingBit(u_input.a), u_input.a), u_input.a << ((u_input.a >> (32755u % 32u)) % 32u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a, 31630u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a), true), reverseBits(vec3<u32>(4294967295u, u_input.a, 17763u))), _wgslsmith_mod_u32(u_input.a, u_input.a) ^ ~u_input.a)));
    let var_1 = select(select(vec3<bool>(true, true, select(false, true, true) != any(vec4<bool>(true, true, true, false))), vec3<bool>(false, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !all(vec2<bool>(false, false)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), all(vec3<bool>(false, false, true))), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false)))), true);
    var var_2 = Struct_3(u_input.b.zx, var_0.x);
    var var_3 = var_0.zz;
    let var_4 = var_1.x;
    var var_5 = vec4<u32>(func_3(Struct_3(-var_2.a, _wgslsmith_mod_u32(u_input.a, 4294967295u) >> (var_3.x % 32u)), vec2<bool>(!var_4 && !var_4, var_1.x)).x, var_2.b, ~_wgslsmith_div_u32(23389u, ~32291u), var_3.x);
    var_5 = _wgslsmith_sub_vec4_u32(vec4<u32>(var_3.x, u_input.a, abs(~reverseBits(u_input.a)), 21317u), ~(~abs(vec4<u32>(u_input.a, 56951u, 4294967295u, 7996u))));
    var var_6 = _wgslsmith_mult_vec2_i32(abs(var_2.a), ~vec2<i32>(-44451i, var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.xz);
}

