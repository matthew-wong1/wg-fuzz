struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -700f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = ~reverseBits(66449u);
    global0 = 1f;
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1457f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(534f + 1000f), -1220f))))));
    let var_1 = Struct_1(u_input.c, ~(~30702u), ~max(arg_0.x, ~u_input.a & (arg_0.x << (24032u % 32u))), -949f);
    global0 = _wgslsmith_f_op_f32(step(var_1.d, _wgslsmith_f_op_f32(870f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2324f * var_1.d)))))));
    return _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.a) << (~vec3<u32>(8825u, 36724u, 105682u) % vec3<u32>(32u)), ~(~vec3<u32>(_wgslsmith_clamp_u32(32439u, arg_0.x, 0u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, arg_0.x, u_input.e, var_0), vec4<u32>(var_1.c, 1u, 4310u, arg_0.x)))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(-arg_1.x, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.x, arg_1.x), u_input.b.yx)), ~1i);
    var var_1 = Struct_1(-9164i, min(abs(~u_input.a), firstLeadingBit(0u)) | select(~(~0u), u_input.a | ~u_input.e, true), _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(u_input.e, 0u, 10199u)), func_3(vec2<u32>(u_input.e, ~20663u))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1594f, -734f))))));
    global0 = var_1.d;
    let var_2 = 1u;
    var var_3 = Struct_1(_wgslsmith_clamp_i32(2147483647i, ~(-7246i), _wgslsmith_sub_i32(-var_1.a & -2147483647i, var_0.x)), u_input.a, ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.e, u_input.e), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 10927u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_1.c), vec2<u32>(82127u, var_2)))), _wgslsmith_f_op_f32(step(1582f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-148f)))))));
    return countOneBits(arg_0);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(_wgslsmith_mod_i32(-(0i | arg_1.a), u_input.d) << ((u_input.a << (9550u % 32u)) % 32u), 4294967295u, _wgslsmith_add_u32(u_input.a, (~var_0 | _wgslsmith_add_u32(6481u, var_0)) | 43271u), arg_1.d);
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1329f);
    var var_2 = ~_wgslsmith_sub_u32(22994u, min(firstLeadingBit(29967u), 4294967295u) ^ arg_3.c);
    var var_3 = -1292f;
    return ~vec4<u32>(arg_0.c, _wgslsmith_mod_u32(1u, ~0u), func_2(~var_1.c, reverseBits(vec2<i32>(77878i, 1i) << (vec2<u32>(var_1.c, 73854u) % vec2<u32>(32u)))), u_input.a);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(~(~(func_3(arg_0.yx).x >> (u_input.e % 32u))), ~_wgslsmith_div_u32(firstLeadingBit(~36070u), arg_1.b));
    var var_1 = Struct_1(arg_1.a, ~arg_1.b, ~(~_wgslsmith_dot_vec3_u32(arg_0.xwx, ~arg_0.wzy)), 369f);
    let var_2 = -14785i;
    var_0 = var_1.b;
    let var_3 = _wgslsmith_mult_i32(max(_wgslsmith_clamp_i32(-var_2 & arg_1.a, countOneBits(1i), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(arg_1.a, var_1.a, var_2, var_2)), firstTrailingBit(vec4<i32>(u_input.b.x, arg_1.a, -1i, -55944i)))), ~var_1.a), arg_1.a);
    return Struct_1(1i, ~(_wgslsmith_add_u32(u_input.a & 20629u, u_input.a) >> (_wgslsmith_clamp_u32(4294967295u, var_1.c, ~1u) % 32u)), ~4294967295u, _wgslsmith_f_op_f32(1293f + var_1.d));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(vec4<u32>(u_input.e, 1u, arg_0.c, u_input.e), arg_0).d))));
    var var_0 = Struct_1(u_input.b.x, ~40988u, 4294967295u, _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d, arg_1, false))), 1f, true || any(vec4<bool>(true, false, true, true))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.d, 439f, arg_0.d))) + vec3<f32>(var_0.d, arg_0.d, -1000f)) * vec3<f32>(1797f, -208f, _wgslsmith_f_op_f32(max(arg_0.d, -879f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(-arg_1)))), vec3<bool>(any(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false))))));
    var var_2 = vec3<u32>(~(~_wgslsmith_add_u32(max(u_input.a, arg_0.c), _wgslsmith_sub_u32(var_0.c, 48681u))), _wgslsmith_mod_u32(14726u, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, arg_0.c, 0u), vec3<u32>(arg_0.c, arg_0.b, 34379u)))), u_input.a);
    var_2 = reverseBits(vec3<u32>(var_0.b, func_4(~vec4<u32>(1u, 0u, var_2.x, 7475u), func_4(vec4<u32>(var_0.c, 4294967295u, var_0.c, u_input.e) << (vec4<u32>(var_0.b, 31823u, 4294967295u, var_2.x) % vec4<u32>(32u)), Struct_1(arg_0.a, 837u, u_input.a, arg_1))).c, _wgslsmith_add_u32(1u, arg_0.c)));
    return select(vec2<bool>((_wgslsmith_mult_i32(arg_0.a, 25305i) > countOneBits(var_0.a)) | false, false), !vec2<bool>(!(arg_0.d < -231f), false), !(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), var_0.b > 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(func_4(~func_1(Struct_1(u_input.d, 1u, 8816u, 205f), Struct_1(u_input.d, 4294967295u, 4294967295u, -530f), 9097u, Struct_1(41862i, 60639u, 10900u, -666f)), Struct_1(u_input.d & 1i, ~26718u, u_input.a, _wgslsmith_f_op_f32(540f - 135f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1446f * _wgslsmith_f_op_f32(select(-1256f, 479f, true))))));
    var var_1 = -2982i;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -483f)))), _wgslsmith_div_f32(1991f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -503f))) + _wgslsmith_f_op_f32(-1167f * _wgslsmith_f_op_f32(f32(-1f) * -341f))))));
    var var_2 = u_input.e;
    var_1 = reverseBits(min(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-28493i, u_input.d)), -u_input.b.yy), -4667i) << (4294967295u % 32u));
    var var_3 = Struct_1(2147483647i, ~u_input.a, func_4(~vec4<u32>(40010u, u_input.e, 32255u, 1u), func_4(max(vec4<u32>(u_input.e, u_input.e, 0u, u_input.e), vec4<u32>(67304u, u_input.e, 4294967295u, u_input.e)), Struct_1(-2147483647i, u_input.a, 28117u, -2279f))).b >> (u_input.e % 32u), -388f);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d, var_3.d, -1000f, var_3.d)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, var_3.d, -1074f, var_3.d) + vec4<f32>(-332f, var_3.d, var_3.d, var_3.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, var_3.d, -736f, 208f) + vec4<f32>(230f, var_3.d, var_3.d, -853f)))))), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-2632f, 599f, _wgslsmith_f_op_f32(min(-1701f, 1092f))), ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.c, var_3.b), vec2<u32>(0u, 71674u)), 37607u, true), reverseBits(vec3<i32>(-abs(u_input.c), _wgslsmith_add_i32(max(u_input.b.x, var_3.a), -var_3.a), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_3.a, 44282i, u_input.c), -vec4<i32>(-2147483647i, -1649i, var_3.a, var_3.a)))));
}

