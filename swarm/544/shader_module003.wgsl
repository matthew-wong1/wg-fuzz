struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    let var_0 = Struct_2(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(708f, 444f), arg_0.a, -423f, _wgslsmith_f_op_f32(843f + -1503f))), vec4<bool>(all(select(select(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, true)), vec4<bool>(arg_1.x, true, arg_1.x, true), u_input.a <= -1i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(arg_0.d, -524f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a))), arg_1.x, arg_0.b.x >= abs(arg_0.b.x)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1144f))), ~arg_0.b, reverseBits(vec4<u32>(_wgslsmith_sub_u32(22876u, arg_0.b.x), u_input.b.x << (0u % 32u), select(u_input.b.x, var_0.a.c.x, true), 28440u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a)), u_input.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) - arg_0.d), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1582f), _wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.d * 395f) * _wgslsmith_f_op_f32(arg_0.a + var_0.a.d)))), !var_0.c);
    var var_2 = 36840u;
    var var_3 = _wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(var_1.a.e, 1i, var_0.a.e)) << (abs(arg_0.c.wyw) % vec3<u32>(32u)), abs(~vec3<i32>(4604i, var_0.a.e, var_0.a.e)) | _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.e, -1i, 28767i)), ~vec3<i32>(var_0.a.e, -22866i, var_0.a.e))) >= arg_0.e;
    var_3 = 1i >= select(1i, _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0.a.e, 1i), vec3<i32>(-25383i, 29787i, -72181i)), 1i), !var_1.c.x);
    return 30310i;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(true, true);
    var var_1 = vec4<i32>(_wgslsmith_add_i32(func_3(Struct_1(-885f, vec4<u32>(u_input.c.x, 1u, u_input.c.x, 47821u), vec4<u32>(4294967295u, u_input.c.x, 1u, 4294967295u), 1186f, u_input.a), !vec2<bool>(var_0.x, false)) ^ ~1i, u_input.a), u_input.a, -2147483647i, ~(i32(-1i) * -(~u_input.a)));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(643f, _wgslsmith_f_op_f32(trunc(600f)))), 552f), ~(~(~vec4<u32>(arg_0, u_input.c.x, 29198u, arg_0)) << (vec4<u32>(arg_0 << (2163u % 32u), arg_0, arg_0, _wgslsmith_div_u32(27515u, u_input.c.x)) % vec4<u32>(32u))), vec4<u32>(u_input.b.x, ~_wgslsmith_mod_u32(~115665u, u_input.b.x), ~_wgslsmith_div_u32(u_input.c.x, 0u), reverseBits(4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-666f - -972f)))), 0i);
    let var_3 = vec2<i32>(23524i, _wgslsmith_mult_i32(-u_input.a, _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.x, -16185i), -33348i))) ^ countOneBits(max(max(~var_1.xy, select(vec2<i32>(24551i, var_1.x), var_1.xz, true)), vec2<i32>(-2147483647i, -u_input.a)));
    return ~(~vec4<u32>(~(u_input.b.x & u_input.c.x), arg_0, arg_0, ~reverseBits(u_input.b.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    let var_0 = Struct_2(arg_1, vec4<f32>(arg_3, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -325f), _wgslsmith_f_op_f32(trunc(-1069f)), all(vec3<bool>(arg_0.x, true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 - -1055f) - arg_3)), 1187f), vec4<bool>(arg_0.x & true, any(select(arg_0, vec2<bool>(false, true), !arg_0.x)), false, true));
    var var_1 = Struct_1(523f, ~(~(~firstLeadingBit(vec4<u32>(4294967295u, u_input.b.x, var_0.a.b.x, 0u)))), vec4<u32>(_wgslsmith_clamp_u32(~1680u ^ (4294967295u & var_0.a.c.x), ~var_0.a.b.x, 93185u), countOneBits(arg_1.b.x), 54177u, max((var_0.a.c.x | 4294967295u) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 84043u, var_0.a.c.x, arg_1.b.x), var_0.a.b), reverseBits(firstTrailingBit(30669u)))), arg_3, 1i);
    let var_2 = true;
    var_1 = arg_1;
    var_1 = arg_1;
    return ~(~var_0.a.b.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>) -> vec3<f32> {
    let var_0 = ~abs(u_input.c);
    var var_1 = u_input.c.yy;
    var var_2 = u_input.a;
    var var_3 = func_4(vec2<bool>(all(!arg_0), arg_0.x), Struct_1(303f, func_2(0u), vec4<u32>(_wgslsmith_sub_u32(~26800u, var_0.x ^ 1u), var_1.x, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.x, var_0.x), var_0.x), _wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, arg_1.x), countOneBits(u_input.c.x))), _wgslsmith_f_op_f32(-1f), _wgslsmith_dot_vec2_i32(min(vec2<i32>(0i, 50663i), vec2<i32>(2147483647i, u_input.a)), reverseBits(vec2<i32>(-53196i, 0i) | vec2<i32>(u_input.a, u_input.a)))), -reverseBits(vec4<i32>(2147483647i, u_input.a >> (71469u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, 1i)), _wgslsmith_sub_i32(0i, 2516i))), -1450f);
    let var_4 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1157f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f) - _wgslsmith_f_op_f32(min(775f, 751f)))))));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, 728f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-316f, 701f, -489f), vec3<f32>(-774f, -834f, var_4.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1921f, var_4.x, 957f) * vec3<f32>(var_4.x, -319f, 667f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_4.x, -822f, -626f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_4.x, var_4.x, var_4.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, -1251f, var_4.x)), vec3<f32>(var_4.x, 370f, -297f), arg_0.yzy))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 26574u;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, 130f), -397f)))), 642f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -669f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -679f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -538f))), 1f))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1) - _wgslsmith_f_op_vec3_f32(func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), u_input.c.yy))));
    var_0 = func_4(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(false, false, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), Struct_1(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-var_1.x), false)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, u_input.c.x) ^ vec4<u32>(u_input.b.x, u_input.c.x, 36134u, u_input.b.x), vec4<u32>(4294967295u, 113405u, 11834u, u_input.c.x) & vec4<u32>(u_input.b.x, u_input.c.x, 6791u, 3219u)) & vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(u_input.b.x, u_input.c.x), firstLeadingBit(4294967295u), abs(u_input.b.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.c.zx, vec2<u32>(u_input.c.x, 17063u)), u_input.b.x, ~firstTrailingBit(u_input.c.x), _wgslsmith_mult_u32(~44071u, ~u_input.c.x)), -242f, u_input.a), -vec4<i32>(2147483647i, u_input.a << (~u_input.c.x % 32u), -32688i, countOneBits(abs(-4141i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(var_2.x * -782f))))));
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(i32(-1i) * -17273i, ~select(min(14395i, -36272i), firstTrailingBit(u_input.a), true)), -(~_wgslsmith_add_vec2_i32(select(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(true, true)), vec2<i32>(42571i, u_input.a) & vec2<i32>(-1i, u_input.a))));
    var_3 = ~vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -1i << (u_input.b.x % 32u)), -var_3.x) | vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1358i, 43997i), 1i | var_3.x, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 19046i), vec3<i32>(var_3.x, 2147483647i, -26186i))), -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, var_3.x, -1i, var_3.x), vec4<i32>(u_input.a, -10283i, u_input.a, 63741i))), u_input.a);
    let var_4 = Struct_1(var_2.x, vec4<u32>(~abs(4294967295u), _wgslsmith_clamp_u32(u_input.b.x, ~1u, func_2(0u).x), u_input.b.x, 34276u), vec4<u32>(0u, 1u, u_input.c.x, firstTrailingBit(~0u)), var_1.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(-2147483647i, u_input.a, u_input.a), vec3<i32>(-41917i, 4839i, 2147483647i)), vec3<i32>(var_3.x, -3970i, 0i) ^ vec3<i32>(-1i, 37352i, var_3.x)), func_3(Struct_1(_wgslsmith_f_op_f32(max(var_2.x, var_1.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(93278u, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(26897u, 24877u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.c.x, 0u, u_input.b.x)), abs(vec4<u32>(u_input.c.x, u_input.b.x, 4294967295u, u_input.b.x)), _wgslsmith_f_op_f32(-var_2.x), var_3.x), vec2<bool>(var_2.x == var_1.x, all(vec2<bool>(true, false))))));
    let var_5 = Struct_2(var_4, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, _wgslsmith_div_f32(-1195f, _wgslsmith_f_op_f32(var_1.x - -1000f)), 2054f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1018f, 2464f)))))), select(select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true)), all(vec3<bool>(true, false, false))), vec4<bool>(_wgslsmith_f_op_f32(var_4.d * var_2.x) > _wgslsmith_f_op_f32(var_4.a + -715f), true, false, _wgslsmith_div_f32(1064f, var_4.d) > var_1.x), any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    var_3 = abs(firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.a, var_4.e) ^ vec2<i32>(2147483647i, -33976i))) & _wgslsmith_sub_vec2_i32(vec2<i32>(~var_5.a.e, _wgslsmith_dot_vec2_i32(vec2<i32>(75055i, 1i), vec2<i32>(var_4.e, -14907i))), vec2<i32>(~var_4.e, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(1778f, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(9101u, u_input.b.x, u_input.b.x, var_4.c.x)), ~(~var_5.a.b >> (vec4<u32>(62356u, var_5.a.b.x, var_5.a.c.x, 0u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_5.b.x), var_1.x) + vec2<f32>(_wgslsmith_f_op_f32(var_4.d * var_1.x), 1000f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.x, var_1.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_4.d)) + vec2<f32>(var_4.a, var_2.x)))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(-25238i, 52758i), -vec2<i32>(31772i, -1i)) & -(vec2<i32>(2147483647i, -10289i) | vec2<i32>(u_input.a, 2147483647i)), vec2<i32>(-1i) * -reverseBits(vec2<i32>(0i, var_3.x))));
}

