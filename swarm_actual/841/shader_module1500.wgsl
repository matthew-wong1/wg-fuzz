struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: u32,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(699f)))) - 1f);
    var_0 = -693f;
    var var_1 = Struct_4(Struct_1(vec2<u32>(u_input.a.x, ~4294967295u), vec3<i32>(-_wgslsmith_add_i32(-1i, 0i), -34995i, _wgslsmith_dot_vec2_i32(vec2<i32>(-32397i, -1319i), vec2<i32>(-1i, -33709i)) << (u_input.c % 32u)), min(_wgslsmith_div_u32(1u & u_input.c, ~u_input.a.x), _wgslsmith_clamp_u32(~u_input.a.x, 11451u, _wgslsmith_mod_u32(u_input.a.x, u_input.c))), false, ~countOneBits(1i)), 15680u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.b));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1864f)));
    var_0 = _wgslsmith_f_op_f32(round(506f));
    return var_1.a.b.x;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f)));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_u32(u_input.a.zx, u_input.b.zy | _wgslsmith_div_vec2_u32(u_input.a.zx, u_input.b.xy)), (vec3<i32>(-1i) * -vec3<i32>(-22287i, arg_0, arg_0)) >> (u_input.a % vec3<u32>(32u)), countOneBits(25126u), true, func_3()));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0, 298f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 359f)))))))));
    var var_3 = var_2;
    let var_4 = !vec4<bool>(true, var_1.a.d == var_1.a.d, !var_1.a.d, !var_1.a.d);
    return Struct_1(vec2<u32>(18011u, var_1.a.c), vec3<i32>(var_1.a.e, _wgslsmith_mod_i32(~abs(var_1.a.e), _wgslsmith_add_i32(-44573i, min(var_1.a.e, arg_0))), -6574i & firstTrailingBit(~var_1.a.b.x)), firstLeadingBit(var_1.a.a.x), any(var_4.yww), reverseBits(var_1.a.e));
}

fn func_1(arg_0: vec4<i32>) -> vec4<bool> {
    global0 = arg_0.x;
    let var_0 = func_2(-firstLeadingBit(arg_0.x));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(arg_0.x, countOneBits(36822i)) ^ _wgslsmith_add_i32(~var_0.e, 2147483647i), -31319i, -45076i, _wgslsmith_dot_vec2_i32(arg_0.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.e, -6370i), arg_0.wx)) | ~var_0.e), -(~arg_0 | -vec4<i32>(32773i, arg_0.x, var_0.b.x, var_0.e)));
    global0 = -2147483647i;
    global0 = ~var_1.x;
    return select(vec4<bool>(select(true, true, max(4294967295u, u_input.b.x) >= _wgslsmith_div_u32(69415u, 4294967295u)), true, true, all(!vec2<bool>(true, var_0.d))), !select(!(!vec4<bool>(false, var_0.d, var_0.d, true)), select(vec4<bool>(var_0.d, var_0.d, true, true), !vec4<bool>(false, true, false, var_0.d), true), select(vec4<bool>(true, var_0.d, true, var_0.d), vec4<bool>(var_0.d, var_0.d, false, true), !vec4<bool>(var_0.d, var_0.d, true, true))), var_0.d);
}

fn func_4(arg_0: vec4<bool>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f))))));
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32(min(u_input.a >> (u_input.b % vec3<u32>(32u)), ~abs(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x))), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, 4294967295u, u_input.c)), u_input.a)), -vec3<i32>(-43074i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 11827i, 13718i), vec3<i32>(-12391i, -11198i, -2147483647i) >> (u_input.a % vec3<u32>(32u))), -1i), _wgslsmith_mod_vec3_u32(u_input.b, select(~vec3<u32>(u_input.a.x, 55731u, 0u), u_input.b, arg_0.wyw)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1529f))))))), 980f);
    let var_2 = _wgslsmith_f_op_f32(round(-323f));
    var_0 = _wgslsmith_f_op_f32(step(602f, 1564f));
    return Struct_5(Struct_3(~max(var_1.c.x, 1u) >> (min(u_input.b.x, _wgslsmith_add_u32(var_1.a, 0u)) % 32u), vec3<i32>(abs(1i), 0i >> (1u % 32u), abs(-2147483647i)) >> ((~u_input.a << (select(vec3<u32>(52642u, u_input.b.x, 4294967295u), var_1.c, arg_0.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(var_1.c.x ^ ~53748u, var_1.a, 4294967295u)), Struct_3(~_wgslsmith_mult_u32(~48503u, _wgslsmith_add_u32(1u, var_1.a)), countOneBits(firstTrailingBit(vec3<i32>(-78243i, -4679i, 2147483647i))), _wgslsmith_mult_vec3_u32(max(var_1.c, vec3<u32>(u_input.a.x, var_1.c.x, 4294967295u)), ~(~var_1.c))), u_input.a.x, Struct_3(firstTrailingBit(1u), select(vec3<i32>(countOneBits(0i), 2147483647i, -50181i), var_1.b, any(arg_0.wwz)), _wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.a), select(vec3<u32>(0u, 37236u, 10038u), vec3<u32>(1u, var_1.a, 5944u), arg_0.x)) ^ abs(var_1.c)), vec4<bool>(any(!(!arg_0.wzw)), all(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), func_1(~vec4<i32>(0i, -29114i, -13897i, -2147483647i)), true | any(vec2<bool>(false, false))));
    var_0 = Struct_5(var_0.d, var_0.b, countOneBits(~u_input.b.x), Struct_3(u_input.c, vec3<i32>(~var_0.b.b.x, 47676i, ~1i) ^ func_2(countOneBits(var_0.a.b.x)).b, select(~(~u_input.a), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.a.x, 0u), var_0.d.c >> (var_0.b.c % vec3<u32>(32u))), var_0.e.zwx)), !select(!var_0.e, !vec4<bool>(true, true, var_0.e.x, false), !var_0.e.x || false));
    let var_1 = _wgslsmith_f_op_f32(1259f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(246f, 426f, false))), 756f))));
    global0 = ~(-(~(-_wgslsmith_div_i32(1i, var_0.a.b.x))));
    global0 = var_0.a.b.x ^ firstTrailingBit(countOneBits(var_0.b.b.x));
    var var_2 = ~select(vec3<i32>(var_0.a.b.x, ~var_0.a.b.x, ~(~var_0.d.b.x)), vec3<i32>(~(~(-58412i)), var_0.d.b.x, -func_4(var_0.e).a.b.x), select(!func_4(vec4<bool>(var_0.e.x, var_0.e.x, false, var_0.e.x)).e.wxz, func_1(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.b.x, -2147483647i, var_0.a.b.x, 30142i), vec4<i32>(var_0.b.b.x, var_0.d.b.x, -4409i, var_0.b.b.x))).yxw, var_0.b.b.x != 0i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.a, u_input.a.yy, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))))), countOneBits(firstLeadingBit(~vec4<i32>(var_0.b.b.x, 2147483647i, -75682i, -52021i))) >> (~(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0.d.c.x, var_0.c, var_0.d.c.x), vec4<u32>(4294967295u, u_input.b.x, 6104u, var_0.a.c.x)) | (vec4<u32>(1u, 10764u, var_0.a.c.x, 81033u) ^ vec4<u32>(u_input.c, var_0.d.a, 24274u, var_0.b.a))) % vec4<u32>(32u)), ~var_0.b.b | var_0.a.b);
}

