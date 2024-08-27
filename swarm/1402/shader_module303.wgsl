struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    let var_0 = vec3<bool>(false, !(!all(vec2<bool>(true, true))), true);
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1 - arg_1), _wgslsmith_f_op_f32(step(arg_1, arg_1))), vec2<f32>(259f, _wgslsmith_f_op_f32(ceil(-177f)))), u_input.a.ww, Struct_1(~vec3<u32>(u_input.b.x, 1u, arg_0), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), u_input.a.wyw), -55378i << (0u % 32u)), arg_1, select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, false, true), !var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), ~u_input.a.zy)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1082f, arg_1))))))), ~u_input.a.wy);
    var_1 = Struct_3(var_1.a, firstTrailingBit(min(select(var_1.a.c.b, u_input.a.yw, var_1.a.c.d.ww), ~u_input.a.zz)) >> (select(vec2<u32>(_wgslsmith_add_u32(arg_0, var_1.a.c.a.x), _wgslsmith_mod_u32(1u, var_1.a.c.a.x)), ~var_1.a.c.a.yy, vec2<bool>(var_0.x, true)) % vec2<u32>(32u)));
    let var_2 = true;
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.a.a))))), _wgslsmith_mod_vec2_i32(-abs(vec2<i32>(var_1.b.x, 1i)), min(abs(vec2<i32>(0i, u_input.c)), -vec2<i32>(u_input.c, -1i))), var_1.a.c, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(735f)), arg_1), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 892f) - vec2<f32>(arg_1, arg_1)))), var_1.a.c.b);
    return -1i;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(~func_3(51826u, -1000f), func_3(_wgslsmith_sub_u32(arg_1.x, arg_0.x) | ~arg_1.x, -1264f), 32442i), min(u_input.a.x, -u_input.c));
    let var_1 = ~_wgslsmith_add_vec2_u32(~(~arg_1), vec2<u32>(arg_0.x, 0u));
    var var_2 = Struct_1(max(abs(firstTrailingBit(arg_0.zyw & vec3<u32>(arg_1.x, arg_1.x, arg_0.x))), arg_0.xxx), -abs(~u_input.a.yw), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2764f)))), select(select(vec4<bool>(any(vec2<bool>(true, false)), true, true, var_0 >= 60240i), vec4<bool>(u_input.e < 25981u, all(vec2<bool>(false, true)), false, true), true), select(vec4<bool>(true, var_0 >= -4808i, true, 1i == var_0), vec4<bool>(any(vec3<bool>(false, true, true)), false, true, any(vec3<bool>(false, false, true))), vec4<bool>(any(vec3<bool>(true, true, true)), false, any(vec4<bool>(true, false, true, true)), false)), (any(vec4<bool>(false, false, false, false)) | true) && true), -(_wgslsmith_mod_i32(abs(u_input.a.x), var_0) >> (var_1.x % 32u)));
    var_2 = Struct_1((~firstTrailingBit(vec3<u32>(u_input.d, u_input.b.x, 4294967295u)) | u_input.b) | _wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(_wgslsmith_div_u32(var_1.x, 18453u), 4294967295u, _wgslsmith_div_u32(59512u, var_1.x))), ~select(countOneBits(vec2<i32>(var_2.b.x, u_input.c) ^ u_input.a.xw), ~firstTrailingBit(vec2<i32>(u_input.a.x, 1i)), vec2<bool>(select(var_2.d.x, var_2.d.x, var_2.d.x), all(vec4<bool>(var_2.d.x, true, true, var_2.d.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1161f), var_2.d, _wgslsmith_mult_i32(8596i, _wgslsmith_dot_vec3_i32(abs(u_input.a.wwx), -vec3<i32>(var_0, -2147483647i, -1i)) >> (max(60784u, countOneBits(var_2.a.x)) % 32u)));
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_2.c)))))), 256f), countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.b.x, var_0), u_input.a.xw << (vec2<u32>(0u, 1u) % vec2<u32>(32u))) >> (vec2<u32>(arg_1.x, ~100863u) % vec2<u32>(32u))), Struct_1(reverseBits(arg_0.xxy << (vec3<u32>(21101u, 6494u, 2312u) % vec3<u32>(32u))), firstLeadingBit(var_2.b), _wgslsmith_div_f32(var_2.c, var_2.c), !var_2.d, ~1i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, -2433f) + vec2<f32>(1000f, var_2.c)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(633f, _wgslsmith_div_f32(var_2.c, var_2.c))))));
    return Struct_4(var_2.c, Struct_1(_wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, 69758u, var_2.a.x), var_2.a), var_2.a), abs(u_input.a.zy), 168f, select(!select(var_2.d, vec4<bool>(false, var_3.c.d.x, true, false), var_2.d), !(!vec4<bool>(true, var_2.d.x, false, true)), true), 1i));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.c * 1235f) + _wgslsmith_f_op_f32(arg_2.c * 486f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_0.b.c)))), select(u_input.a.yy, -(vec2<i32>(-1i) * -arg_2.b), true), Struct_1(arg_0.b.a, reverseBits(vec2<i32>(-39394i, _wgslsmith_sub_i32(arg_1, arg_2.e))), arg_0.a, vec4<bool>(true, arg_2.d.x, arg_0.b.d.x, true), arg_0.b.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_2.c + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.c))))));
    var var_1 = var_0.c.d.xyx;
    var var_2 = arg_1 << (32009u % 32u);
    var_2 = -arg_0.b.e;
    var_2 = countOneBits(abs(arg_0.b.e));
    return var_0.c;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_4(-309f, func_4(func_2(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.e, 0u, u_input.e)) | ~vec4<u32>(1u, 63274u, u_input.d, u_input.d), vec2<u32>(61852u, _wgslsmith_add_u32(31399u, u_input.b.x))), -20272i, func_2(vec4<u32>(~35447u, 1u | u_input.d, abs(37302u), abs(u_input.b.x)), ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.zz)).b, firstLeadingBit(vec3<i32>(u_input.c, u_input.a.x, 2147483647i))));
    let var_1 = Struct_4(var_0.a, var_0.b);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1000f)))), var_0.a)), vec2<i32>(2147483647i, -5525i), Struct_1(u_input.b, ~vec2<i32>(_wgslsmith_mod_i32(var_0.b.b.x, var_0.b.e), -var_0.b.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 944f) - _wgslsmith_f_op_f32(trunc(1000f)))), var_1.b.d, func_2(vec4<u32>(~u_input.e, 41684u ^ var_1.b.a.x, var_0.b.a.x << (65314u % 32u), _wgslsmith_mod_u32(var_1.b.a.x, 4294967295u)), var_0.b.a.yy ^ vec2<u32>(var_1.b.a.x, 1u)).b.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.c, 195f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(871f, -770f)))))));
    var_0 = Struct_4(var_0.a, func_2(_wgslsmith_mod_vec4_u32(select(vec4<u32>(31469u, u_input.e, u_input.e, 4294967295u), abs(vec4<u32>(var_2.c.a.x, 0u, 4294967295u, 0u)), !vec4<bool>(var_1.b.d.x, var_0.b.d.x, false, var_0.b.d.x)), vec4<u32>(~1u, var_2.c.a.x, _wgslsmith_div_u32(4294967295u, var_1.b.a.x), 11055u)), var_1.b.a.zy).b);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = select(-firstLeadingBit(vec3<i32>(-1i) * -u_input.a.ywz), -u_input.a.xyx, any(!var_0.b.d.wy));
    let var_2 = ~(~_wgslsmith_clamp_vec2_u32(var_0.b.a.xz, ~var_0.b.a.xz, vec2<u32>(0u, u_input.b.x)) >> (u_input.b.xx % vec2<u32>(32u)));
    let var_3 = _wgslsmith_mod_u32(reverseBits(27107u), var_0.b.a.x);
    var_1 = -countOneBits(vec3<i32>(firstTrailingBit(0i), -max(1i, var_1.x), -47338i));
    var var_4 = ~_wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_2.x, 34348u, u_input.b.x, 1u)), min(vec4<u32>(4294967295u, var_2.x, u_input.b.x, var_2.x), vec4<u32>(0u, var_2.x, 0u, u_input.b.x))), select(vec4<u32>(u_input.d, abs(89377u), _wgslsmith_clamp_u32(17734u, 0u, var_0.b.a.x), 4294967295u), ~vec4<u32>(var_2.x, var_2.x, var_0.b.a.x, 26150u), func_4(var_0, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), Struct_1(vec3<u32>(52101u, var_0.b.a.x, var_0.b.a.x), var_0.b.b, -500f, vec4<bool>(var_0.b.d.x, false, var_0.b.d.x, var_0.b.d.x), -54778i), u_input.a.yzw).d));
    var_4 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, ~(var_4.x >> (4294967295u % 32u)), ~1u, select(u_input.d, var_3, var_0.b.d.x) << (~18073u % 32u)), vec4<u32>(~var_3, var_4.x, ~(~var_2.x), var_2.x), ~max(~vec4<u32>(23120u, 13370u, var_4.x, 38156u), vec4<u32>(var_0.b.a.x, var_2.x, 10684u, var_4.x) ^ vec4<u32>(u_input.b.x, var_2.x, 1u, var_0.b.a.x)));
    let var_5 = u_input.a.yyy;
    let x = u_input.a;
    s_output = StorageBuffer(1553f, vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, var_0.b.c)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(851f, -464f)), _wgslsmith_f_op_f32(-var_0.b.c))))), -698f), -276f);
}

