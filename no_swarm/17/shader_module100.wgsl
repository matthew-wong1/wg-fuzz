struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(0u, 5610u), vec2<u32>(4294967295u, 43295u), vec2<u32>(32988u, 9307u), vec2<u32>(50787u, 17115u), vec2<u32>(1u, 4294967295u), vec2<u32>(31647u, 1u), vec2<u32>(4534u, 50690u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 3260u), vec2<u32>(34362u, 16382u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 45690u), vec2<u32>(130139u, 18771u), vec2<u32>(4294967295u, 27131u), vec2<u32>(75570u, 116778u), vec2<u32>(75143u, 0u), vec2<u32>(1u, 0u), vec2<u32>(0u, 26021u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(65932u, 0u), vec2<u32>(76977u, 57831u), vec2<u32>(0u, 8285u), vec2<u32>(25781u, 1u), vec2<u32>(28339u, 24652u), vec2<u32>(0u, 9020u), vec2<u32>(4294967295u, 9835u), vec2<u32>(3280u, 84822u));

var<private> global1: array<Struct_2, 19>;

var<private> global2: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(38638u, 1u), vec2<u32>(20760u, 13347u), vec2<u32>(0u, 58560u), vec2<u32>(18939u, 71079u), vec2<u32>(49507u, 0u), vec2<u32>(0u, 0u), vec2<u32>(46166u, 4294967295u), vec2<u32>(19219u, 4334u), vec2<u32>(40862u, 9275u), vec2<u32>(4294967295u, 1u), vec2<u32>(7373u, 51163u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 32220u), vec2<u32>(50939u, 34988u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 47095u), vec2<u32>(23645u, 1u), vec2<u32>(12920u, 0u), vec2<u32>(44471u, 16966u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    global2 = array<vec2<u32>, 20>();
    global0 = array<vec2<u32>, 28>();
    let var_0 = abs(u_input.e);
    let var_1 = vec3<i32>(u_input.c.x, var_0, u_input.c.x);
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(~u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), ~51021u, reverseBits(56743u))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x)), vec4<u32>(_wgslsmith_div_u32(u_input.d.x, 4274u), 1395u, 48266u, 110986u | u_input.d.x))), (abs(_wgslsmith_mod_vec4_u32(vec4<u32>(41948u, 4294967295u, 1u, 1u), vec4<u32>(0u, 84361u, u_input.d.x, 74541u))) | (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, u_input.d.x, 1u), vec4<u32>(1u, u_input.b.x, 13258u, u_input.d.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, u_input.d.x, 1u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, 4294967295u), vec4<u32>(64342u, 0u, u_input.d.x, u_input.b.x)) % vec4<u32>(32u)))) << (~(min(vec4<u32>(1u, 35735u, 13105u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d.x)) << ((vec4<u32>(u_input.b.x, 38647u, u_input.d.x, u_input.d.x) << (vec4<u32>(30203u, u_input.b.x, 43776u, u_input.b.x) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return 39364u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> vec3<u32> {
    global2 = array<vec2<u32>, 20>();
    var var_0 = vec4<u32>(func_3(), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(57516u, 65366u, 46073u), vec3<u32>(101368u, 1868u, u_input.b.x), true), (vec3<u32>(4294967295u, 532u, u_input.d.x) | vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)) >> (~vec3<u32>(u_input.d.x, u_input.d.x, u_input.b.x) % vec3<u32>(32u))) >> (_wgslsmith_div_u32(0u, ~max(0u, 35938u)) % 32u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b.x), vec2<u32>(u_input.d.x, 25854u)), firstTrailingBit(u_input.d.x))), 1u), ~_wgslsmith_mod_u32(u_input.d.x & (u_input.d.x | u_input.b.x), min(u_input.b.x, u_input.b.x) << (u_input.d.x % 32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))))));
    var var_2 = arg_0.x;
    var_0 = vec4<u32>(4294967295u, 13701u, ~_wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(33024u, firstLeadingBit(var_0.x))), ~firstLeadingBit(_wgslsmith_mult_u32(u_input.d.x & 0u, 4294967295u)));
    return ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(var_0.xwy, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 99883u, 0u), vec3<u32>(34099u, u_input.d.x, 4294967295u))), var_0.www << (abs(vec3<u32>(u_input.b.x, 44764u, var_0.x)) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(abs(var_0.xwz) ^ ~vec3<u32>(u_input.d.x, 25401u, 1u), abs(vec3<u32>(u_input.d.x, var_0.x, 1u)) ^ reverseBits(var_0.zyw)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = ~u_input.c.xww & -(u_input.a.yzw << ((_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.d.x), vec3<u32>(u_input.d.x, u_input.b.x, 25301u), vec3<u32>(u_input.d.x, u_input.b.x, 4294967295u)) | (vec3<u32>(69870u, 0u, u_input.b.x) ^ vec3<u32>(u_input.d.x, u_input.b.x, 33864u))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(316f + _wgslsmith_div_f32(-977f, _wgslsmith_f_op_f32(-103f + 1022f))), -643f, select(true, 4294967295u <= u_input.d.x, true))) * 577f);
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    global0 = array<vec2<u32>, 28>();
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1435f)), _wgslsmith_f_op_f32(-1f))) + -146f), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -876f), _wgslsmith_f_op_f32(max(-2024f, _wgslsmith_f_op_f32(f32(-1f) * -304f)))), firstLeadingBit(func_2(vec4<f32>(621f, 434f, -219f, -1000f), vec4<f32>(-2231f, 645f, 663f, 110f), u_input.a.wzx) | ~vec3<u32>(u_input.d.x, u_input.d.x, 24472u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~u_input.b, ~vec2<u32>(u_input.d.x, u_input.b.x)), _wgslsmith_add_u32(0u, u_input.d.x)), _wgslsmith_f_op_f32(step(1000f, 301f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f + 245f) - _wgslsmith_f_op_f32(round(-1000f)))) + _wgslsmith_f_op_f32(max(-814f, _wgslsmith_f_op_f32(f32(-1f) * -1286f)))), arg_0);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(131f, -1764f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(419f, 260f))), false & any(vec4<bool>(true, arg_1.x, arg_3.d, arg_1.x)))) * arg_3.b.a), abs(~_wgslsmith_sub_vec3_u32(select(arg_3.b.b, arg_3.b.b, false), ~arg_3.b.b)), ~arg_3.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), arg_3.d))));
    let var_1 = var_0.b.zz;
    global2 = array<vec2<u32>, 20>();
    var var_2 = firstLeadingBit(func_3());
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_3.a)), _wgslsmith_f_op_f32(-arg_3.c)))) * arg_3.b.a);
    return Struct_2(-2265f, func_1(all(vec4<bool>(false, true, false | arg_3.d, false))).b, var_0.d, false);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    global1 = array<Struct_2, 19>();
    var var_0 = arg_3.b.b.yy;
    global2 = array<vec2<u32>, 20>();
    var var_1 = arg_0.xzw << (abs(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.d, arg_3.b.d, arg_3.c, arg_1.a.x) - vec4<f32>(arg_3.a, -1627f, -1000f, arg_3.c)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2142f, 559f, arg_3.b.a.x, 1570f) - vec4<f32>(arg_3.a, -172f, arg_2.d, arg_1.d))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-2067f, arg_1.a.x, arg_2.a.x, -467f), vec4<f32>(arg_2.a.x, 177f, arg_3.a, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(149f, 1565f, -1000f, arg_2.d)))), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 18872i))) % vec3<u32>(32u));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1(true).b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_1(arg_3.d).a), arg_1.d, false)), true);
    return arg_3;
}

fn func_6(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = Struct_2(-1000f, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - 630f))), arg_1.x);
    global0 = array<vec2<u32>, 28>();
    var var_1 = i32(-1i) * -4673i;
    var var_2 = true;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1872f, func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.b.x, arg_0.b.b.x, 1u, arg_0.b.c), vec4<u32>(4294967295u, 18480u, u_input.b.x, 5755u)), vec3<bool>(arg_0.d, true, false), 9227u, func_4(vec4<u32>(4294967295u, u_input.b.x, u_input.d.x, 3117u), arg_1.wwy, arg_0.b.c, Struct_2(2317f, arg_0.b, -446f, false))).a)), func_5(u_input.a, var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.a, vec2<f32>(arg_2, -691f), false)) * _wgslsmith_f_op_vec2_f32(select(var_0.b.a, vec2<f32>(arg_0.c, 1308f), arg_1.xw))), vec3<u32>(17647u, abs(1u), ~var_0.b.b.x), 0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-106f, var_0.a))), arg_0).b, _wgslsmith_f_op_f32(-func_5(vec4<i32>(-1i, reverseBits(-1i), u_input.e, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), func_1(arg_1.x).b, arg_0.b, func_1(40203u <= u_input.d.x)).b.a.x), !arg_0.d);
    return global1[_wgslsmith_index_u32(15881u, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(-_wgslsmith_sub_vec4_i32(-u_input.a, u_input.c), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(244f, 501f))), vec3<u32>(1u, u_input.b.x, ~u_input.b.x), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1403f * -510f))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(334f, -412f)), _wgslsmith_f_op_f32(555f + -116f)), vec3<u32>(~17757u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d.x), global2[_wgslsmith_index_u32(0u, 20u)]), 53016u), u_input.b.x, _wgslsmith_f_op_f32(abs(1f))), func_4(min(vec4<u32>(558u, 79848u, 4294967295u, 0u), ~vec4<u32>(u_input.b.x, 4294967295u, 23475u, u_input.b.x)), vec3<bool>(true, all(vec4<bool>(false, false, false, false)), true), u_input.d.x, func_1(true))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1000f))));
    var var_1 = vec2<u32>(~36874u, var_0.b.b.x);
    var var_2 = func_5(select(vec4<i32>(-2147483647i, ~(-2147483647i), ~(~(-2147483647i)), max(-12515i, countOneBits(-2474i))), u_input.a, ~1u == (0u << (func_4(vec4<u32>(5771u, var_1.x, var_0.b.c, u_input.b.x), vec3<bool>(true, var_0.d, true), u_input.d.x, global1[_wgslsmith_index_u32(1u, 19u)]).b.c % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.b.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(298f, -1222f)))), vec3<u32>(reverseBits(~var_1.x), var_0.b.b.x, u_input.b.x), min(~u_input.d.x, _wgslsmith_mult_u32(firstLeadingBit(30462u), ~var_1.x)), 148f), var_0.b, func_6(func_5(~u_input.a, Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.b.a), var_0.b.b, reverseBits(var_1.x), var_0.a), Struct_1(func_6(var_0, vec4<bool>(var_0.d, true, false, var_0.d), -837f).b.a, vec3<u32>(1u, 64609u, u_input.b.x), u_input.b.x, var_0.c), func_4(vec4<u32>(21537u, 0u, 73780u, 3977u), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, var_0.d, false)), u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 19u)])), select(vec4<bool>(true, var_0.d || var_0.d, !var_0.d, func_6(var_0, vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d), var_0.c).d), vec4<bool>(true, var_0.d, true, 0u < var_0.b.c), !func_5(vec4<i32>(u_input.a.x, -1i, u_input.e, -2147483647i), var_0.b, Struct_1(var_0.b.a, vec3<u32>(var_1.x, 0u, 27200u), var_1.x, -323f), global1[_wgslsmith_index_u32(107811u, 19u)]).d), var_0.c));
    var_1 = ~vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(max(var_1.x, 4294967295u), _wgslsmith_mod_u32(0u, u_input.d.x), ~var_2.b.c, var_1.x | 15046u), vec4<u32>(var_0.b.c, ~var_1.x, var_1.x, var_1.x)));
    var var_3 = ~firstTrailingBit(~u_input.c.zxx) | select(vec3<i32>(i32(-1i) * -u_input.a.x, 8948i, select(i32(-1i) * -1i, 0i, true)), -u_input.c.wyx, all(select(!vec2<bool>(var_0.d, false), select(vec2<bool>(var_0.d, var_2.d), vec2<bool>(false, var_0.d), var_0.d), vec2<bool>(true, true))));
    global2 = array<vec2<u32>, 20>();
    let var_4 = -661f;
    global1 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec3_i32(min(u_input.a.zxz, select(vec3<i32>(u_input.e, var_3.x, u_input.e), u_input.c.xzy, vec3<bool>(false, var_2.d, var_2.d))), _wgslsmith_div_vec3_i32(-u_input.c.xzz, u_input.a.wxy)), abs(-35719i), _wgslsmith_div_i32(select(min(var_3.x, u_input.e), ~u_input.a.x, false), var_3.x)), _wgslsmith_add_vec3_i32(~(vec3<i32>(-1i) * -vec3<i32>(var_3.x, var_3.x, 2147483647i)), u_input.a.yww));
}

