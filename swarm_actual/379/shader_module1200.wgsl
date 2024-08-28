struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(0i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1192f - -2040f) - 1000f) + _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-934f - 1330f))), _wgslsmith_f_op_f32(floor(625f)))), vec2<i32>(~_wgslsmith_mod_i32(-1i, ~41426i), ~u_input.d.x), _wgslsmith_mod_i32(-20731i, -max(-45708i, -1i)) ^ ~_wgslsmith_mod_i32(firstTrailingBit(u_input.d.x), -18962i));
    var var_1 = firstLeadingBit(reverseBits(max(abs(vec2<u32>(72092u, 40415u)), u_input.c)) | u_input.c);
    var var_2 = countOneBits(_wgslsmith_add_vec2_i32(-vec2<i32>(-2147483647i, 34515i), u_input.b.xw) << (u_input.c % vec2<u32>(32u)));
    var_1 = u_input.c;
    let var_3 = false;
    return _wgslsmith_mod_i32(var_0.d, ~(~1i));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = arg_1;
    var_0 = firstTrailingBit(~arg_1);
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(func_3(), var_0.x), u_input.b.yw, ~select(u_input.d.wx, -countOneBits(vec2<i32>(arg_1.x, -30878i)), !(!vec2<bool>(true, arg_0))));
    var var_1 = select((select(vec4<i32>(u_input.d.x, arg_1.x, var_0.x, -7587i) >> (vec4<u32>(25646u, u_input.c.x, 7104u, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, -19992i, 0i, var_0.x), u_input.b, u_input.b), vec4<bool>(true, true, arg_0, true)) >> (reverseBits(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 5145u)) % vec4<u32>(32u))) ^ u_input.b, u_input.b, arg_0);
    var var_2 = -(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(arg_1, vec2<i32>(var_0.x, var_0.x), arg_0), vec2<i32>(u_input.d.x, var_0.x)), vec2<i32>(-2147483647i, u_input.a)));
    return ~(~_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), ~(~vec3<u32>(u_input.c.x, 101152u, 82460u))));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = ~u_input.c;
    var var_1 = -1998f > arg_0.b;
    var var_2 = _wgslsmith_dot_vec4_u32(~(~vec4<u32>(61021u, 0u, 1u, 45180u) | _wgslsmith_mod_vec4_u32(vec4<u32>(26929u, u_input.c.x, 35871u, var_0.x), vec4<u32>(9248u, 1u, var_0.x, 4294967295u))), ((vec4<u32>(4294967295u, var_0.x, 49393u, var_0.x) ^ vec4<u32>(25024u, u_input.c.x, 62418u, 46200u)) ^ countOneBits(vec4<u32>(21812u, u_input.c.x, var_0.x, var_0.x))) & vec4<u32>(min(0u, u_input.c.x), u_input.c.x, 15138u, var_0.x)) <= _wgslsmith_dot_vec3_u32(func_2(true, -_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.b.x), u_input.d.yx)), ~vec3<u32>(52710u, 1u, var_0.x) | countOneBits(vec3<u32>(14604u, 0u, 1u)));
    var_1 = true;
    var var_3 = firstLeadingBit(select(vec3<i32>(-2147483647i, 10992i, 47803i) ^ firstTrailingBit(vec3<i32>(arg_0.c.x, arg_0.c.x, 12791i)), _wgslsmith_sub_vec3_i32(u_input.b.zzx, ~u_input.b.zyw) | firstTrailingBit(u_input.b.ywx), true));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(~(func_1(Struct_1(u_input.b.x, -1203f, vec2<i32>(u_input.a, u_input.d.x), 1i)) << (u_input.c.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~12978u, ~0u, 4294967295u, 0u), ~vec4<u32>(u_input.c.x, 12492u, 1u, u_input.c.x))) == reverseBits(~u_input.c.x);
    var var_1 = Struct_2(Struct_1(u_input.b.x, _wgslsmith_div_f32(-1527f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(101f)))), abs(u_input.d.zz >> (select(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x), true) % vec2<u32>(32u))), -1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(292f)) + 742f))))), Struct_1(u_input.d.x, _wgslsmith_f_op_f32(f32(-1f) * -297f), firstLeadingBit(u_input.b.wy), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.yy, u_input.b.zy), u_input.b.yx) >> (max(_wgslsmith_mod_u32(0u, u_input.c.x), u_input.c.x) % 32u)), 27347i, u_input.a);
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(1829f * _wgslsmith_f_op_f32(trunc(var_1.a.b))), Struct_1(i32(-1i) * -1i, _wgslsmith_f_op_f32(f32(-1f) * -918f), -((vec2<i32>(var_1.a.d, u_input.d.x) << (u_input.c % vec2<u32>(32u))) ^ abs(u_input.b.xy)), var_1.d), max(42281i, var_1.e), _wgslsmith_clamp_i32(abs(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(32245i, 2147483647i)), var_1.a.c)), -_wgslsmith_sub_i32(-74336i, _wgslsmith_add_i32(u_input.b.x, var_1.d)), _wgslsmith_sub_i32(var_1.c.a, -u_input.d.x)));
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d.xwx, min(-u_input.b.zwy, u_input.b.ywy >> (vec3<u32>(12516u, u_input.c.x, 1u) % vec3<u32>(32u)))), -_wgslsmith_add_vec3_i32(-vec3<i32>(-1i, -1i, 1i), _wgslsmith_mult_vec3_i32(u_input.b.zzz, vec3<i32>(-7444i, 19820i, -1i)))) ^ ~_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.d, var_1.d, -66600i, var_1.a.c.x) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(45152i, var_1.e, var_1.e, var_1.e), u_input.d), select(vec4<i32>(var_1.c.a, u_input.a, u_input.a, u_input.a), ~u_input.b, var_0));
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-493f, _wgslsmith_div_f32(103f, _wgslsmith_f_op_f32(step(var_1.c.b, -170f))), _wgslsmith_div_i32(var_1.a.c.x, 11720i) > _wgslsmith_div_i32(2147483647i, 9664i))))), var_1.a, var_1.d, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1680f, var_1.c.b) + var_1.a.b), 1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.b))))), 1632f), 4294967295u);
}

