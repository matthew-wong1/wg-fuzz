struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    var var_0 = arg_0;
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-317f - _wgslsmith_f_op_f32(trunc(551f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(307f * arg_0))))));
    let var_1 = _wgslsmith_mult_u32(~min(0u & ~u_input.a.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, 4294967295u)), max(u_input.a.xz, u_input.a.xy))), u_input.a.x);
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1241f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(1034f, _wgslsmith_f_op_f32(-arg_0)), -658f))));
    return vec4<i32>(15629i, -2147483647i, -reverseBits(~select(-11067i, -2147483647i, false)), -17217i);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<f32>) -> Struct_3 {
    var var_0 = ~arg_1.x;
    var var_1 = Struct_2(arg_0.a);
    var var_2 = vec4<bool>(var_1.a.e.x, arg_0.a.a.x > (((var_1.a.b >> (arg_1.x % 32u)) ^ var_1.a.b) ^ arg_0.a.b), !any(arg_0.a.e), 1i > arg_0.a.a.x);
    var_0 = max(arg_1.x, var_1.a.c.x);
    let var_3 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(21254i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-32284i, var_1.a.a.x), vec2<i32>(var_1.a.a.x, 16029i)), -arg_0.a.a.x), -34835i, ~arg_0.a.a.x), vec4<i32>(var_1.a.a.x, _wgslsmith_sub_i32(-2147483647i, ~1i), arg_0.a.a.x, var_1.a.b)), !var_2.x, _wgslsmith_div_i32(-firstLeadingBit(-1i), ~(-13072i) >> (_wgslsmith_mod_u32(min(arg_0.a.c.x, 4294967295u), var_1.a.c.x) % 32u)), countOneBits(~vec4<u32>(22850u, abs(24373u), select(0u, arg_0.a.c.x, var_2.x), ~33828u)));
    return Struct_3(func_3(arg_0.a.d.x), !(_wgslsmith_mult_i32(func_3(-486f).x, arg_0.a.b) > 16768i), ~2147483647i, var_3.d << (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_3.d, var_3.d) >> (vec4<u32>(107029u, var_3.d.x, arg_1.x, arg_0.a.c.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(max(vec4<u32>(20640u, u_input.b, 4294967295u, var_1.a.c.x), var_3.d), _wgslsmith_sub_vec4_u32(var_3.d, var_3.d))) % vec4<u32>(32u)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = true;
    var var_1 = Struct_1(vec2<i32>(-1i << (arg_1.d.x % 32u), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(-70817i, 1i, 14211i, arg_1.a.x)), 2147483647i) & -_wgslsmith_mult_i32(2147483647i, -1i)), -19328i, u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -218f, 137f), vec3<f32>(-1313f, 750f, 362f), arg_0)), _wgslsmith_div_vec3_f32(vec3<f32>(-907f, -711f, 1212f), vec3<f32>(-2086f, 727f, -1374f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-358f, -787f, -1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(621f, 615f, 1029f) - vec3<f32>(410f, -554f, -750f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-253f, 918f, 954f))))), vec4<bool>(arg_0.x, countOneBits(_wgslsmith_mult_i32(1i, arg_1.c)) > _wgslsmith_sub_i32(_wgslsmith_mult_i32(3148i, 20385i), -arg_1.a.x), any(select(arg_0, vec3<bool>(true, true, true), false)), true));
    var_1 = Struct_1(countOneBits(var_1.a), func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-770f))))).x, _wgslsmith_mult_vec3_u32(~(arg_1.d.yzw | (vec3<u32>(u_input.a.x, arg_1.d.x, u_input.b) | vec3<u32>(4294967295u, 1u, var_1.c.x))), var_1.c), var_1.d, var_1.e);
    let var_2 = Struct_2(Struct_1(func_2(Struct_2(Struct_1(vec2<i32>(-2147483647i, var_1.b), -18952i, u_input.a, vec3<f32>(var_1.d.x, -1000f, var_1.d.x), var_1.e)), ~(vec3<u32>(u_input.a.x, 34983u, arg_1.d.x) | var_1.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_1.d.x, -646f, 821f)))).a.yw, 2147483647i, ~max(vec3<u32>(u_input.a.x, arg_1.d.x, 1u), min(vec3<u32>(u_input.b, var_1.c.x, var_1.c.x), vec3<u32>(0u, u_input.a.x, 25871u))), var_1.d, vec4<bool>(true, true, true, true)));
    var var_3 = var_1.b;
    return var_2;
}

fn func_5(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec3<u32> {
    var var_0 = Struct_1(func_3(-1567f).zw, -arg_2.a.a.x, vec3<u32>(abs(u_input.b), arg_2.a.c.x, arg_3.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1735f, -1283f, 690f), vec3<f32>(800f, -949f, arg_2.a.d.x))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(955f, -2160f, 856f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-631f, -1115f, -803f), vec3<f32>(902f, arg_2.a.d.x, -503f)))), !select(select(arg_2.a.e, func_4(arg_2.a.e.wzy, Struct_3(vec4<i32>(arg_2.a.a.x, arg_2.a.b, 2147483647i, arg_2.a.b), false, arg_2.a.a.x, vec4<u32>(arg_2.a.c.x, 13921u, 4294967295u, 4294967295u))).a.e, arg_0 != true), arg_2.a.e, vec4<bool>(false && arg_0, true, false, arg_0)));
    var var_1 = vec3<u32>(1u, 33268u, reverseBits(~arg_2.a.c.x));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), 142566u, var_0.c.x), max(vec3<u32>(u_input.b ^ var_1.x, ~func_2(arg_2, u_input.a, vec4<f32>(-1062f, var_0.d.x, var_0.d.x, 1034f)).d.x, abs(firstLeadingBit(61196u))), ~(~func_2(arg_2, vec3<u32>(21674u, 38213u, 46199u), vec4<f32>(-1173f, 163f, var_0.d.x, var_0.d.x)).d.xyz)), var_0.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(arg_0))), arg_0));
    let var_1 = Struct_1(-vec2<i32>(1i, 1i), -4963i, max(func_5(true, select(firstLeadingBit(arg_1.yy), vec2<u32>(28322u, arg_1.x), select(false, true, true)), func_4(vec3<bool>(false, true, true), func_2(Struct_2(Struct_1(vec2<i32>(-59732i, 1i), 1i, vec3<u32>(u_input.b, 0u, arg_1.x), vec3<f32>(var_0.x, 174f, 323f), vec4<bool>(false, false, false, true))), vec3<u32>(4294967295u, 117645u, arg_1.x), arg_0)), ~abs(vec2<u32>(89200u, 0u))), vec3<u32>(0u, 4294967295u, arg_1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.x)) * arg_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.www)) * vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-333f * arg_0.x), func_4(vec3<bool>(true, true, true), Struct_3(vec4<i32>(-1297i, 38393i, -2147483647i, -7389i), true, -1i, vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, u_input.b))).a.d.x)))), select(vec4<bool>(false, all(vec2<bool>(false, false)), false, select(true, any(vec3<bool>(false, false, true)), true)), vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), false, true), false));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_1.d.x)))), 1638f, _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(abs(1598f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0))))));
    var var_2 = Struct_3(select(vec4<i32>(-func_2(Struct_2(var_1), var_1.c, arg_0).a.x, _wgslsmith_mod_i32(22471i, var_1.a.x) << (arg_1.x % 32u), _wgslsmith_sub_i32(-42199i, _wgslsmith_mult_i32(var_1.a.x, -48867i)), ~1i), -_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a.x, -1i, 2147483647i, -6435i), -vec4<i32>(var_1.a.x, -9689i, var_1.b, var_1.a.x)), any(var_1.e)), !var_1.e.x, func_4(select(vec3<bool>(var_1.e.x, var_1.e.x, var_1.e.x), var_1.e.zwy, var_1.e.zzx), func_2(func_4(var_1.e.wwz, Struct_3(vec4<i32>(47819i, var_1.b, 2147483647i, var_1.a.x), var_1.e.x, var_1.a.x, arg_1)), firstTrailingBit(vec3<u32>(var_1.c.x, 25282u, 4294967295u)), vec4<f32>(-164f, var_0.x, -1650f, arg_0.x))).a.b >> (~var_1.c.x % 32u), select(~(~vec4<u32>(arg_1.x, u_input.b, arg_1.x, 23847u)), arg_1, true));
    var_2 = func_2(Struct_2(var_1), ~(~vec3<u32>(arg_1.x, ~4294967295u, reverseBits(u_input.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(-1157f, var_1.d.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(arg_2.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(max(-992f, 2037f)), arg_0.x, _wgslsmith_f_op_f32(-var_0.x))), var_1.e)));
    return !(!func_2(func_4(select(vec3<bool>(var_1.e.x, var_1.e.x, true), var_1.e.ywy, false), func_2(Struct_2(Struct_1(vec2<i32>(1i, 0i), 0i, vec3<u32>(var_1.c.x, 1u, var_1.c.x), var_0.xxz, var_1.e)), vec3<u32>(22300u, var_1.c.x, 9171u), arg_0)), var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 - arg_0))).b);
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = Struct_3(vec4<i32>(-abs(i32(-1i) * -1i), 65364i, _wgslsmith_mod_i32(-1i, -arg_2.b) & -(arg_2.b << (arg_2.c.x % 32u)), ~arg_2.a.x), false, ~(_wgslsmith_div_i32(arg_2.b | arg_2.b, ~arg_2.b) ^ ~(75210i ^ arg_2.a.x)), ~(~vec4<u32>(arg_2.c.x, arg_2.c.x, 1u, arg_2.c.x)));
    let var_1 = var_0.a;
    var var_2 = arg_2;
    var var_3 = Struct_3(countOneBits(vec4<i32>(1i, var_2.a.x, -1i, 40244i) & vec4<i32>(abs(var_0.a.x), -1i | arg_2.a.x, var_0.a.x >> (u_input.a.x % 32u), arg_2.b)), !(true | all(vec4<bool>(true, true, false, arg_2.e.x))), -func_4(vec3<bool>(true | var_2.e.x, false, any(vec4<bool>(arg_2.e.x, arg_2.e.x, false, var_2.e.x))), Struct_3(var_1, select(true, var_2.e.x, true), var_0.a.x, var_0.d)).a.a.x, ~var_0.d);
    var var_4 = _wgslsmith_clamp_vec3_u32(var_0.d.yxy ^ vec3<u32>(u_input.b ^ 1u, 1u, 35871u), vec3<u32>(13627u, func_4(vec3<bool>(true, arg_2.e.x, var_2.e.x), var_0).a.c.x << (44230u % 32u), ~(~arg_2.c.x)), ~_wgslsmith_div_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(6712u, var_0.d.x, u_input.a.x), arg_2.c))) | ~_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_2.c.x, var_3.d.x, 4294967295u) | countOneBits(var_3.d.zzy), vec3<u32>(var_3.d.x, u_input.b, var_3.d.x | var_2.c.x));
    return var_3.a.wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_6(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1174f, 1711f, 544f, 2565f))))), !select(true, true, func_1(vec4<f32>(1000f, 509f, -441f, -532f), vec4<u32>(1u, u_input.b, 0u, u_input.a.x), vec3<f32>(-1010f, 557f, -2168f))), Struct_1(vec2<i32>(1i, -18008i) << (~u_input.a.yy % vec2<u32>(32u)), 1i, firstTrailingBit(u_input.a >> (u_input.a % vec3<u32>(32u))), vec3<f32>(-428f, _wgslsmith_f_op_f32(f32(-1f) * -598f), 1076f), vec4<bool>(true, true, true, true))), _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, 1i), select(abs(2378i), ~0i, true)) & 0i, u_input.a, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))))), vec4<bool>(abs(u_input.a.x) != (~15610u >> (u_input.b % 32u)), func_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1562f, 166f, -932f, -864f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1830f, 766f, 913f, 104f) - vec4<f32>(-1000f, -207f, 1378f, -237f)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 0u), vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 4294967295u)), vec4<u32>(0u, 1u, 7782u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 28096u, u_input.b, 4294967295u), vec4<u32>(u_input.a.x, 54387u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1264f, -998f, 1311f))), true, true));
    let var_1 = !var_0.e.x;
    let var_2 = var_0.b;
    var var_3 = u_input.b;
    var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(var_0.b, ~(-36563i)), 22565i), var_0.b, vec3<u32>(~u_input.a.x, (var_0.c.x | var_0.c.x) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.x, 1u, 0u, 4294967295u), vec4<u32>(u_input.a.x, 33540u, 4294967295u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, 1u, 6883u), vec4<u32>(4294967295u, u_input.b, u_input.a.x, u_input.a.x))) % 32u), u_input.a.x), _wgslsmith_f_op_vec3_f32(-var_0.d), func_4(!(!(!vec3<bool>(false, var_1, true))), Struct_3(vec4<i32>(1i, 0i, 16552i, _wgslsmith_mult_i32(-27045i, var_0.b)), true, var_0.b, ~vec4<u32>(4294967295u, 4294967295u, 267u, 60608u))).a.e);
    var_3 = 4294967295u;
    var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.d.zz, vec2<f32>(-387f, 600f)), _wgslsmith_f_op_vec2_f32(var_0.d.xx + vec2<f32>(var_0.d.x, -974f)), any(var_0.e.xww)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1330f, 2072f)))))))), ~_wgslsmith_div_vec2_u32(abs(~var_0.c.zz), u_input.a.xy), vec2<f32>(_wgslsmith_f_op_f32(func_4(func_4(vec3<bool>(var_0.e.x, var_0.e.x, var_0.e.x), Struct_3(vec4<i32>(var_0.a.x, var_0.a.x, 1i, var_0.a.x), true, 1i, vec4<u32>(u_input.a.x, 1u, 1u, var_0.c.x))).a.e.xzy, Struct_3(vec4<i32>(var_0.a.x, -1i, var_0.b, -27113i), false, -83237i, vec4<u32>(var_0.c.x, var_0.c.x, var_0.c.x, 3278u))).a.d.x * _wgslsmith_f_op_f32(-func_4(vec3<bool>(true, var_0.e.x, var_0.e.x), Struct_3(vec4<i32>(var_0.a.x, var_0.b, var_0.b, var_0.b), true, var_0.a.x, vec4<u32>(var_0.c.x, u_input.b, u_input.a.x, u_input.b))).a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 150f)))), firstLeadingBit(-25412i));
}

