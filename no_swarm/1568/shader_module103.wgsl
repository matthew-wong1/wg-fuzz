struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = arg_0;
    let var_1 = true;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -249f);
    var var_2 = Struct_1(u_input.b.x, vec3<i32>(-(i32(-1i) * -2147483647i), (abs(-4260i) & arg_0.a.x) ^ 0i, 19761i), select(select(!select(vec4<bool>(true, false, false, arg_0.b), vec4<bool>(var_1, var_0.b, true, var_1), var_0.b), !select(vec4<bool>(var_0.b, false, var_0.b, var_0.b), vec4<bool>(false, var_1, true, var_0.b), var_1), var_1), !vec4<bool>(select(false, true, true), var_0.b, true, true), select(vec4<bool>(all(vec2<bool>(var_1, false)), !var_0.b, false & var_1, false || arg_0.b), !select(vec4<bool>(true, var_1, var_1, var_0.b), vec4<bool>(false, true, true, var_0.b), vec4<bool>(var_1, arg_0.b, arg_0.b, true)), select(vec4<bool>(false, var_1, var_1, true), select(vec4<bool>(arg_0.b, var_1, var_1, true), vec4<bool>(var_1, false, arg_0.b, var_1), vec4<bool>(false, var_1, false, true)), !var_0.b))), 4294967295u, -(~(-_wgslsmith_mod_i32(0i, 12802i))));
    var var_3 = 1u;
    return -abs(_wgslsmith_mult_i32(~var_0.a.x, -2147483647i) << (~4294967295u % 32u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_mult_vec4_i32(vec4<i32>(25731i, abs(25100i), ~u_input.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-7726i, u_input.e.x) | vec2<i32>(-2147483647i, u_input.e.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(47396i, 0i), vec2<i32>(1i, 802i), vec2<i32>(u_input.c, u_input.e.x)))), vec4<i32>(firstTrailingBit(~u_input.e.x), u_input.c, func_3(Struct_3(vec4<i32>(24640i, u_input.e.x, u_input.c, -1i), false)), u_input.c)), -abs(u_input.c) != u_input.e.x);
    let var_1 = vec4<i32>(2147483647i, u_input.e.x, u_input.c, 2147483647i);
    global0 = -420f;
    let var_2 = select(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(var_1 << (u_input.a % vec4<u32>(32u)), ~var_0.a, select(vec4<bool>(var_0.b, true, false, var_0.b), vec4<bool>(true, var_0.b, var_0.b, false), true)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, -4303i, -41257i, -6499i), var_1)), ~(vec4<i32>(18345i, u_input.c, -6144i, var_0.a.x) | vec4<i32>(u_input.c, 2147483647i, -21307i, u_input.e.x))), ~vec4<i32>(1i, _wgslsmith_sub_i32(var_0.a.x, var_1.x), _wgslsmith_mod_i32(var_1.x, u_input.e.x), -var_1.x)), -firstTrailingBit((0i >> (u_input.a.x % 32u)) & _wgslsmith_clamp_i32(14901i, 2147483647i, 37403i)), 1000f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(592f, -137f)))));
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1415f, _wgslsmith_f_op_f32(f32(-1f) * -269f))), -746f)));
    return Struct_2(Struct_1(13289u, max(-var_0.a.zwz, firstTrailingBit(firstTrailingBit(vec3<i32>(-27020i, var_1.x, -1808i)))), !vec4<bool>(true, true, all(vec4<bool>(var_0.b, true, var_0.b, var_0.b)), true), countOneBits(~u_input.d.x), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.yzx, vec3<i32>(36347i, var_1.x, -67620i) ^ vec3<i32>(-1i, u_input.c, var_1.x)), -2147483647i)), vec2<i32>(-1i, u_input.e.x), var_0.b);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_2 {
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))), arg_1.x), _wgslsmith_div_f32(-919f, arg_1.x)));
    let var_0 = -454f;
    let var_1 = func_2();
    var var_2 = var_1.a.c.xw;
    global0 = -2313f;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_3(~(-_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(arg_1.b.x, arg_1.a.e, u_input.c, 1i)), vec4<i32>(-32672i, 2147483647i, -1i, 15992i) << (u_input.a % vec4<u32>(32u)))), arg_0.c);
    global0 = -1000f;
    var var_1 = _wgslsmith_mult_i32(countOneBits(_wgslsmith_div_i32(-17268i, 31522i)), u_input.e.x) ^ -abs(-var_0.a.x);
    let var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(var_0.a.wx, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_0.a.ywx, var_0.a.zxw), arg_0.b.x << (arg_1.a.d % 32u)), ~_wgslsmith_clamp_i32(var_0.a.x, 10789i, arg_1.a.e))), -arg_2.b.x, min(-29896i, max(arg_1.a.b.x, var_0.a.x)));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(countOneBits(func_1(arg_2.a, vec4<f32>(2587f, 1372f, 166f, -1043f), arg_2).a.a << (~1u % 32u)), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8852u, arg_0.a.a), u_input.a.yy), ~0u, 1u >> (arg_2.d % 32u))), _wgslsmith_dot_vec2_u32(abs(max(u_input.b & u_input.d.xy, min(vec2<u32>(24165u, 3712u), u_input.a.zy))), u_input.a.xw));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-601f, 101f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1828f + _wgslsmith_div_f32(-908f, _wgslsmith_f_op_f32(2329f + _wgslsmith_div_f32(-1491f, 874f))))));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-331f * _wgslsmith_f_op_f32(func_4(func_1(u_input.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1356f, -856f, 114f, 775f)), Struct_1(4294967295u, vec3<i32>(u_input.c, u_input.c, 0i), vec4<bool>(false, true, false, true), 1u, 2147483647i)), func_1(u_input.d.x, vec4<f32>(-1411f, 135f, -602f, -178f), func_1(u_input.d.x, vec4<f32>(-391f, -417f, 484f, 866f), Struct_1(51958u, vec3<i32>(-1i, -2147483647i, 10826i), vec4<bool>(true, true, false, true), 36271u, u_input.e.x)).a), func_2().a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-198f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 718f)) + _wgslsmith_f_op_f32(-609f + 528f)))), any(!func_2().a.c)));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(func_2(), Struct_2(Struct_1(u_input.d.x, vec3<i32>(u_input.e.x, -13637i, 9687i), vec4<bool>(true, false, true, true), 101759u, -25154i), ~u_input.e, true), func_2().a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * -292f))))));
    let var_1 = u_input.d.xzy;
    global0 = var_0;
    let var_2 = !func_1(_wgslsmith_div_u32(1u, var_1.x), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1886f, -285f, -765f, 1000f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-650f, var_0, 500f, 1000f)))))), func_1(~(u_input.d.x ^ 30121u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -546f, -585f, var_0) + vec4<f32>(657f, -1052f, var_0, 1000f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, 682f, var_0, 392f)))), func_1(~u_input.b.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-453f, -448f, -1014f, -2630f)), func_1(var_1.x, vec4<f32>(var_0, var_0, var_0, var_0), Struct_1(var_1.x, vec3<i32>(2147483647i, u_input.c, -33028i), vec4<bool>(true, true, true, true), u_input.d.x, u_input.e.x)).a).a).a).a.c;
    let var_3 = func_2();
    var var_4 = _wgslsmith_div_u32(var_1.x, var_3.a.a);
    var_4 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(19541u, abs(u_input.d.x))), vec2<u32>(~21663u, 47856u)), var_3.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(u_input.d.xxx, abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, 4294967295u, var_3.a.a), _wgslsmith_add_vec3_u32(var_1, vec3<u32>(4294967295u, 0u, 29871u))))), vec4<f32>(_wgslsmith_f_op_f32(1023f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(var_3.a, vec2<i32>(14092i, var_3.a.e), var_2.x), var_3, Struct_1(u_input.d.x, var_3.a.b, vec4<bool>(true, var_3.c, true, false), u_input.b.x, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(888f * var_0) - 875f))), -1170f, _wgslsmith_f_op_f32(floor(257f))), ~(~firstLeadingBit(vec2<i32>(-13929i, 4612i))), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-1i, var_3.b.x, -2943i, var_3.a.b.x) ^ (vec4<i32>(var_3.a.b.x, var_3.b.x, -2147483647i, 23438i) | vec4<i32>(0i, 32071i, -2147483647i, -2147483647i))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(u_input.c, var_3.a.e), -2147483647i, 1i, var_3.a.e), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 0i, 0i, -1i), vec4<i32>(1i, var_3.b.x, -20255i, var_3.a.b.x) | vec4<i32>(var_3.a.e, -2147483647i, -4957i, var_3.a.b.x)))));
}

