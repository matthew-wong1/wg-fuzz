struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_1(vec2<i32>((u_input.c >> (~1u % 32u)) & u_input.a, ~u_input.c), -1i, select(abs(vec3<i32>(-arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, 0i), arg_1.c), arg_1.a.x)), ~(~arg_1.c) & vec3<i32>(-2147483647i, arg_1.c.x >> (9350u % 32u), max(2147483647i, 18591i)), false), ~(~countOneBits(~vec3<u32>(arg_3.x, 37618u, arg_3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2075f, 299f))), _wgslsmith_f_op_f32(arg_1.e.x * 475f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.e.x + -941f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e.x) - arg_1.e.x))));
    var var_1 = vec3<bool>(all(vec4<bool>(any(select(vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(false, arg_0, false))), arg_0, all(vec3<bool>(false, false, arg_0)), arg_1.c.x > -var_0.a.x)), !arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f + arg_1.e.x)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x)));
    let var_2 = vec2<u32>(~(~0u), reverseBits(20885u));
    let var_3 = var_0;
    let var_4 = var_0.e;
    return vec4<bool>(var_1.x & arg_0, arg_0, true, 12021u < ~((arg_1.d.x ^ u_input.b) << (4294967295u % 32u)));
}

fn func_2() -> u32 {
    var var_0 = all(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true)));
    var var_1 = vec3<bool>(true, true, true);
    let var_2 = vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-913f, 1000f))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1143f, -281f))), _wgslsmith_f_op_f32(floor(-363f)), any(func_3(false, Struct_1(vec2<i32>(u_input.c, u_input.c), u_input.c, vec3<i32>(u_input.c, u_input.a, u_input.c), vec3<u32>(78699u, 4294967295u, 64604u), vec4<f32>(796f, -1439f, -327f, 261f)), vec2<u32>(u_input.b, 0u), vec2<u32>(1u, 0u))))));
    var_1 = vec3<bool>(var_2.x, all(var_2), (4294967295u >> (firstTrailingBit(u_input.b >> (1u % 32u)) % 32u)) < ~38194u);
    let var_3 = Struct_1(~(-(-vec2<i32>(0i, -1i) ^ vec2<i32>(u_input.a, u_input.a))), u_input.c, countOneBits(-(vec3<i32>(u_input.c, u_input.c, 55305i) << (vec3<u32>(21993u, u_input.b, 11516u) % vec3<u32>(32u)))) | -abs(~vec3<i32>(u_input.a, u_input.a, 0i)), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 66424u, u_input.b), vec3<u32>(u_input.b, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 0u)), u_input.b & u_input.b), u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, 701f, -1871f, 969f)))))));
    return ~max(67335u << (u_input.b % 32u), 1u);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> vec3<i32> {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 0u), ~u_input.b);
    var_0 = firstTrailingBit(~_wgslsmith_clamp_u32(~func_2(), ~1u, 83026u));
    var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1937f, -328f), vec2<f32>(-739f, -1070f))), vec2<f32>(-1438f, 354f), vec2<bool>(true, true))))));
    var var_2 = Struct_1(vec2<i32>(u_input.c, 1i) << (_wgslsmith_mod_vec2_u32(max(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 27901u), vec2<u32>(1u, u_input.b)), select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(51271u, u_input.b), vec2<bool>(false, true))), vec2<u32>(u_input.b, func_2())) % vec2<u32>(32u)), 8486i, vec3<i32>(abs(i32(-1i) * -2147483647i), 1i, ~(~(-16975i))), vec3<u32>(u_input.b | func_2(), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(16095u, u_input.b, u_input.b), vec3<u32>(4294967295u, 31437u, u_input.b)) << (u_input.b % 32u)), _wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mult_u32(1u, u_input.b))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(round(-668f)))))), _wgslsmith_f_op_f32(sign(var_1.x)), -662f));
    return select(vec3<i32>(arg_0, 26477i, _wgslsmith_div_i32(30261i, ~abs(arg_1.x))), select(vec3<i32>(arg_0, 0i, var_2.b), -select(-vec3<i32>(u_input.c, arg_0, 0i), ~var_2.c, true), !func_3(any(vec4<bool>(true, true, false, false)), Struct_1(vec2<i32>(arg_0, var_2.c.x), arg_0, arg_1.wyw, var_2.d, vec4<f32>(var_2.e.x, -1278f, 559f, -1279f)), firstLeadingBit(var_2.d.yy), vec2<u32>(0u, u_input.b)).xxx), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<i32>(40789i, _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, -2147483647i, -2147483647i) & vec3<i32>(2147483647i, 16479i, u_input.c)), _wgslsmith_mult_vec3_i32(func_1(0i, vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, -18677i, -41048i), vec3<i32>(1i, 1786i, u_input.a))))), min(-2147483647i >> (1u % 32u), u_input.c), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.a, ~u_input.a), vec3<i32>(0i, 1i, u_input.a) ^ (vec3<i32>(u_input.c, u_input.a, u_input.a) << (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))), ~vec3<i32>(u_input.c, -1i, -53322i))), _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 9566u, 54866u, 13326u), vec4<u32>(u_input.b, u_input.b, u_input.b, 10997u)), ~u_input.b), ~(~vec3<u32>(11993u, 33231u, u_input.b))), firstTrailingBit(~vec3<u32>(u_input.b, 56835u, 4294967295u) << (min(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 15219u, u_input.b)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-389f))), 1219f, -2753f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-605f, 1000f))))));
    var_0 = Struct_1(max(firstLeadingBit(~vec2<i32>(var_0.c.x, -6538i) >> ((vec2<u32>(u_input.b, var_0.d.x) ^ vec2<u32>(var_0.d.x, u_input.b)) % vec2<u32>(32u))), vec2<i32>(-16465i, func_1(u_input.a, vec4<i32>(var_0.a.x, -67332i, var_0.b, var_0.c.x)).x)), abs(_wgslsmith_add_i32(select(-31313i, u_input.a, false), abs(-1i))) >> (_wgslsmith_mult_u32(select(u_input.b, 4294967295u >> (u_input.b % 32u), true), 4294967295u) % 32u), ~(var_0.c | (vec3<i32>(-1i) * -var_0.c)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_0.d.x, 15400u) ^ countOneBits(vec3<u32>(var_0.d.x, 7495u, 0u)), firstLeadingBit(~var_0.d)), var_0.e);
    var_0 = Struct_1(var_0.a, -1i, _wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(var_0.c.x, -31658i, -1i) >> (abs(var_0.d) % vec3<u32>(32u))), var_0.c), ~var_0.d, vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(step(var_0.e.x, 131f)), -469f, var_0.e.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-var_0.e.wz);
    let var_2 = Struct_1(reverseBits(var_0.a), ((var_0.c.x << ((u_input.b >> (4294967295u % 32u)) % 32u)) ^ -1i) | -1i, ~vec3<i32>(-abs(6495i), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 0i, var_0.a.x, 13857i), min(vec4<i32>(1i, var_0.a.x, u_input.a, -2147483647i), vec4<i32>(1i, 22821i, u_input.a, var_0.c.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(-24514i, 8684i, 0i, -1i), vec4<i32>(var_0.a.x, 52083i, 2147483647i, -1i)) | (var_0.b ^ -81620i)), _wgslsmith_mod_vec3_u32(firstTrailingBit(var_0.d), vec3<u32>(0u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 34975u, 47826u), var_0.d)), 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -559f), var_0.e.x, 1188f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(step(957f, _wgslsmith_f_op_f32(-var_1.x))), -675f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), var_1.x)));
    var_1 = _wgslsmith_f_op_vec2_f32(-var_0.e.zz);
    var var_3 = vec2<bool>(true, true);
    var_3 = select(vec2<bool>(var_3.x, !all(func_3(var_3.x, Struct_1(vec2<i32>(var_2.c.x, -1i), -1i, vec3<i32>(var_2.b, u_input.c, u_input.c), vec3<u32>(var_2.d.x, 37834u, var_0.d.x), vec4<f32>(794f, var_2.e.x, -429f, var_0.e.x)), vec2<u32>(u_input.b, var_0.d.x), vec2<u32>(u_input.b, 59987u)).wzy)), func_3(!(var_3.x | false), Struct_1(var_2.a, firstLeadingBit(var_0.c.x ^ 2147483647i), var_0.c, var_0.d, vec4<f32>(_wgslsmith_f_op_f32(var_0.e.x + -166f), var_2.e.x, 1059f, var_2.e.x)), ~vec2<u32>(u_input.b, ~var_2.d.x), ~select(vec2<u32>(4294967295u, u_input.b), var_0.d.zz, vec2<bool>(true, var_3.x)) << ((var_0.d.yx >> (firstTrailingBit(var_2.d.zz) % vec2<u32>(32u))) % vec2<u32>(32u))).xx, ((~u_input.c | (var_2.c.x ^ u_input.a)) <= u_input.a) || false);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(var_0.c.x, i32(-1i) * -2147483647i) ^ vec2<i32>(_wgslsmith_add_i32(0i, 1727i), countOneBits(-2147483647i)), select(vec2<i32>(1i, u_input.c), _wgslsmith_div_vec2_i32(var_2.c.yz, ~vec2<i32>(-25680i, u_input.a)), func_3(var_3.x, Struct_1(vec2<i32>(-2147483647i, var_0.c.x), -8316i, var_0.c, vec3<u32>(u_input.b, var_2.d.x, var_2.d.x), var_2.e), var_0.d.zx, firstLeadingBit(var_2.d.xy)).x)));
}

