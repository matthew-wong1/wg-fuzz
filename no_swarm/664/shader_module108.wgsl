struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
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

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: bool) -> vec3<i32> {
    let var_0 = u_input.b;
    let var_1 = u_input.a.x;
    let var_2 = !vec4<bool>(arg_2.x, arg_3, true, !all(arg_2.yz));
    let var_3 = Struct_1(firstLeadingBit(select(vec2<i32>(-arg_1.x, ~1i), ~(arg_1.xz ^ arg_1.xx), arg_2.yy)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_0, var_0 & 1i, var_0, 36690i), vec4<i32>(_wgslsmith_clamp_i32(arg_1.x, -5486i, 2147483647i), abs(arg_1.x), ~u_input.b, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f)))), ~_wgslsmith_mult_u32(1u | min(4294967295u, var_1), _wgslsmith_sub_u32(u_input.a.x, 43587u)));
    let var_4 = var_3;
    return vec3<i32>(var_3.a.x, 12448i, _wgslsmith_dot_vec4_i32(-var_4.b, var_4.b));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec2<i32> {
    var var_0 = select(!vec3<bool>(!(arg_0.x | arg_0.x), arg_0.x, arg_0.x), !vec3<bool>(any(!vec4<bool>(true, arg_0.x, true, false)), false, arg_0.x), vec3<bool>(arg_0.x, arg_0.x, (~u_input.a.x & abs(72966u)) != max(~u_input.a.x, 0u | u_input.a.x)));
    var var_1 = Struct_2(select(select(!select(vec3<bool>(arg_0.x, var_0.x, var_0.x), vec3<bool>(arg_0.x, var_0.x, false), arg_0.x), vec3<bool>(true, true, var_0.x | true), !select(vec3<bool>(false, arg_0.x, false), vec3<bool>(var_0.x, var_0.x, arg_0.x), var_0.x)), !vec3<bool>(var_0.x, !arg_0.x, arg_0.x | false), !select(vec3<bool>(false, true, true), !vec3<bool>(var_0.x, false, arg_0.x), arg_0.x)));
    var var_2 = reverseBits(select(reverseBits(_wgslsmith_sub_vec3_i32(select(arg_1.xxw, arg_1.zwy, vec3<bool>(var_1.a.x, var_0.x, arg_0.x)), vec3<i32>(-1i, 20167i, arg_1.x) ^ arg_1.yzx)), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(func_3(arg_0.x, vec3<i32>(0i, arg_1.x, u_input.b), vec3<bool>(var_0.x, var_0.x, arg_0.x), var_1.a.x), arg_1.wwy ^ arg_1.xwy), -vec3<i32>(-6952i, arg_1.x, 9201i), ~select(vec3<i32>(19982i, u_input.b, arg_1.x), arg_1.ywy, false)), !((i32(-1i) * -62008i) > -arg_1.x)));
    var var_3 = Struct_2(!vec3<bool>(select(arg_0.x, all(var_1.a), true), arg_0.x, false));
    var_2 = arg_1.zwx;
    return vec2<i32>(1i, 36398i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_2(arg_2.a);
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> vec4<f32> {
    let var_0 = -vec3<i32>(func_4(func_4(func_4(Struct_1(vec2<i32>(arg_0.b.x, 0i), arg_0.b, -751f, 4294967295u), false, arg_1), true && arg_2.a.x, Struct_2(arg_2.a)), arg_2.a.x, Struct_2(!vec3<bool>(true, arg_2.a.x, false))).a.x, ~arg_0.a.x, _wgslsmith_add_i32(-19625i, _wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x) >> (1u % 32u)));
    var var_1 = u_input.a.x;
    var_1 = ~_wgslsmith_mult_u32(~u_input.a.x >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a), 1u) % 32u), _wgslsmith_add_u32(5660u, 40537u));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.c, -883f, -1689f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 466f, 156f)), true)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 965f, arg_0.c)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-518f, arg_0.c, arg_0.c) * vec3<f32>(-1040f, 189f, 1037f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, -2019f, arg_0.c) - vec3<f32>(-479f, arg_0.c, arg_0.c)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, 867f, arg_0.c)))))))));
    var var_3 = arg_2;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-834f + 871f) - _wgslsmith_f_op_f32(-1744f + arg_0.c))) + arg_0.c), 938f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(-1726f + 246f)), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_div_f32(-1109f, 501f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1259f, var_2.x))));
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_4(Struct_1(func_2(vec2<bool>(false, false), vec4<i32>(arg_0, 0i, 46847i, -1i)), ~vec4<i32>(u_input.b, arg_0, -2147483647i, -23057i), -1518f, ~0u), true & all(vec2<bool>(true, false)), Struct_2(vec3<bool>(false, false, true))), Struct_2(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), true)), Struct_2(vec3<bool>(true, true, true)), _wgslsmith_div_u32(u_input.a.x, ~u_input.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -310f))), _wgslsmith_f_op_f32(abs(2725f)), -209f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(586f))) * func_4(Struct_1(vec2<i32>(15124i, 2049i), vec4<i32>(u_input.b, -2147483647i, arg_0, arg_0), -2750f, u_input.a.x), true, Struct_2(vec3<bool>(true, true, false))).c)));
    let var_1 = !(!(!all(vec2<bool>(false, true))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x))));
    return 1166f;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = vec2<i32>(firstTrailingBit(-6498i), min(u_input.b & u_input.b, 23475i)) >> (vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, 4294967295u, arg_0.d), vec3<u32>(33732u, _wgslsmith_dot_vec2_u32(u_input.a.wz, vec2<u32>(55400u, arg_0.d)), _wgslsmith_dot_vec3_u32(u_input.a.wyw, u_input.a.wwz))), arg_0.d) % vec2<u32>(32u));
    let var_1 = Struct_1(arg_1.b.yx, min(reverseBits(func_4(arg_1, 45046u < arg_0.d, Struct_2(vec3<bool>(true, true, false))).b), ~select(-arg_0.b, abs(vec4<i32>(var_0.x, arg_1.b.x, 2147483647i, 37330i)), vec4<bool>(true, true, true, true))), arg_1.c, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(33733u, ~arg_1.d, 16945u, 12805u)), ~vec4<u32>(_wgslsmith_sub_u32(0u, arg_0.d), arg_0.d, arg_0.d ^ 0u, arg_1.d << (37302u % 32u))));
    var var_2 = vec2<u32>(abs(reverseBits(~24616u | arg_1.d)), _wgslsmith_dot_vec4_u32(u_input.a ^ ((u_input.a >> (vec4<u32>(0u, 12982u, arg_1.d, 4294967295u) % vec4<u32>(32u))) | ~u_input.a), ~_wgslsmith_clamp_vec4_u32(abs(u_input.a), vec4<u32>(135392u, arg_1.d, 0u, arg_0.d), u_input.a)));
    var_2 = vec2<u32>(var_1.d, 27166u);
    var_2 = _wgslsmith_mult_vec2_u32(~vec2<u32>(abs(arg_1.d), ~(~4294967295u)), u_input.a.xw);
    return arg_0.a;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> StorageBuffer {
    let var_0 = 26284i;
    let var_1 = ~(countOneBits(max(u_input.a.x, abs(arg_0.d))) ^ 0u);
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-918f, _wgslsmith_f_op_f32(func_4(Struct_1(vec2<i32>(var_0, arg_0.b.x), vec4<i32>(10734i, -2147483647i, u_input.b, -21784i), 468f, arg_0.d), true, Struct_2(vec3<bool>(false, arg_1.a.x, false))).c - _wgslsmith_f_op_f32(sign(826f))), _wgslsmith_f_op_f32(max(-1854f, _wgslsmith_f_op_f32(select(arg_3, arg_0.c, false)))), _wgslsmith_f_op_vec4_f32(func_5(func_4(arg_0, true, Struct_2(vec3<bool>(arg_2.a.x, arg_2.a.x, false))), arg_2, arg_2, 0u)).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, arg_0.c, -371f, arg_0.c) + vec4<f32>(arg_3, arg_0.c, -942f, arg_3)), _wgslsmith_div_vec4_f32(vec4<f32>(742f, arg_3, -1549f, -1093f), vec4<f32>(arg_0.c, arg_0.c, arg_3, 1612f)), !vec4<bool>(arg_2.a.x, false, arg_1.a.x, arg_2.a.x))))))));
    let var_3 = !any(select(vec3<bool>(!arg_2.a.x, any(arg_1.a.zx), any(vec4<bool>(true, false, false, arg_1.a.x))), !select(arg_1.a, vec3<bool>(false, arg_2.a.x, false), arg_1.a), true));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -257f);
    return StorageBuffer(var_1, arg_0.b >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_i32(-1i, abs(-(arg_0.b.x ^ -1i))), ~vec2<u32>(0u, abs(u_input.a.x)) | (~(~vec2<u32>(4294967295u, arg_0.d)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 20448u), u_input.a.ww), select(vec2<u32>(u_input.a.x, 30793u), vec2<u32>(39678u, 1u), false)) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0, -2147483647i), arg_0.a ^ arg_0.a), func_6(Struct_1(vec2<i32>(arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.b.x, 0i, arg_0.a.x, arg_0.b.x), arg_0.c, 50440u), Struct_1(vec2<i32>(var_0, var_0), arg_0.b, arg_3, 28069u)), ~(-vec2<i32>(18279i, 26997i))) ^ vec2<i32>(u_input.b, _wgslsmith_mult_i32(~(-67i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_i32((-2452i << ((2310u & u_input.a.x) % 32u)) << (~(u_input.a.x >> (2408u % 32u)) % 32u), -2147483647i) <= (u_input.b & u_input.b);
    let var_1 = false;
    let x = u_input.a;
    s_output = func_7(Struct_1(func_6(Struct_1(-vec2<i32>(-1i, u_input.b), -vec4<i32>(2147483647i, u_input.b, u_input.b, 2147483647i), _wgslsmith_f_op_f32(1000f * -479f), ~u_input.a.x), Struct_1(reverseBits(vec2<i32>(u_input.b, u_input.b)), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_f_op_f32(func_1(-59180i)), u_input.a.x)), ~(-vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b)), 310f, 1u), Struct_2(vec3<bool>(false, true, !var_1)), Struct_2(vec3<bool>(var_1, !(!var_1), true)), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

