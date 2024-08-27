struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> vec2<u32> {
    let var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1387f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-291f)) + _wgslsmith_f_op_f32(floor(-432f))))) - _wgslsmith_div_f32(-702f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(611f, 1000f)))));
    let var_2 = Struct_3(Struct_1(u_input.a, reverseBits(~max(27584u, var_0))), _wgslsmith_f_op_f32(var_1.c - -1593f));
    var_1 = Struct_2(-1906f, u_input.b, -1128f);
    var var_3 = Struct_5(var_2, -_wgslsmith_mod_i32(countOneBits(arg_0.x), _wgslsmith_add_i32(-2147483647i, u_input.a) << (1u % 32u)), Struct_2(_wgslsmith_f_op_f32(-809f - -1276f), _wgslsmith_div_u32(67882u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a))))), ~countOneBits(_wgslsmith_div_vec3_u32(~vec3<u32>(71661u, 1u, var_1.b), ~vec3<u32>(30327u, 4294967295u, u_input.b))));
    return vec2<u32>(~(~abs(_wgslsmith_add_u32(0u, arg_1))), (1u ^ var_3.c.b) >> (~0u % 32u));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_div_u32(~u_input.c, u_input.b & 4294967295u) >> (~(~0u) % 32u), _wgslsmith_sub_u32(firstTrailingBit(u_input.b), _wgslsmith_mod_u32(u_input.b, u_input.c))) < 0u;
    let var_1 = func_3(vec3<i32>(u_input.a, (i32(-1i) * -1i) >> (~(u_input.c ^ u_input.b) % 32u), u_input.a), u_input.c);
    let var_2 = Struct_3(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a) | vec4<i32>(0i, u_input.a, 19565i, u_input.a), vec4<i32>(u_input.a, u_input.a, 43384i, 26305i)), abs(u_input.a << (u_input.c % 32u)), 2147483647i), 4294967295u), 862f);
    var_0 = !(_wgslsmith_clamp_i32(firstLeadingBit(~u_input.a), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.a, 14856i, u_input.a), vec3<i32>(var_2.a.a, 0i, -80365i)), var_2.a.a), ~u_input.a << (var_1.x % 32u)) >= _wgslsmith_mult_i32(var_2.a.a, u_input.a));
    var_0 = true;
    return Struct_2(481f, ~(~(min(17777u, var_1.x) | (var_2.a.b >> (var_1.x % 32u)))), var_2.b);
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -1385f, -1097f, 816f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 779f, 1742f, var_0.a), vec4<f32>(-1890f, var_0.a, -138f, -623f)), vec4<f32>(958f, var_0.c, var_0.a, 1000f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, -2404f, var_0.c, var_0.c)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), 859f, 330f, _wgslsmith_div_f32(var_0.c, var_0.a)))));
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_0.a, 1377f, -1155f), vec4<f32>(var_0.a, var_1.x, var_1.x, var_0.a), false))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, 465f, var_1.x, -373f) + vec4<f32>(203f, var_0.c, var_0.c, var_0.a))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_1.x, var_1.x, 1733f))), arg_0.x))), vec4<f32>(_wgslsmith_f_op_f32(min(-575f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-474f)) * _wgslsmith_f_op_f32(round(var_0.c))))), _wgslsmith_f_op_f32(f32(-1f) * -1126f), var_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1116f, 2258f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))))));
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(241f + var_0.c), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.x, 1817f), -404f))), var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1677f) + _wgslsmith_div_f32(-433f, 218f)) + _wgslsmith_div_f32(-424f, -2454f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1070f, 1000f, var_0.c, var_1.x) + vec4<f32>(965f, var_1.x, -254f, -886f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1250f, var_0.a, var_0.c))))))));
    return Struct_4(vec4<i32>(~_wgslsmith_div_i32(u_input.a, -1i), firstLeadingBit(2147483647i), ~_wgslsmith_mod_i32(87003i, u_input.a), 2482i) | _wgslsmith_sub_vec4_i32(reverseBits(-vec4<i32>(-31365i, u_input.a, 2129i, u_input.a)), -max(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), vec4<i32>(8979i, 5543i, 0i, -1i))), vec4<u32>(min(0u, 38961u), ~func_2().b, _wgslsmith_div_u32(1u & var_0.b, 1u), var_0.b), Struct_1(u_input.a, _wgslsmith_sub_u32(max(var_0.b, ~83488u), ~var_0.b ^ (0u >> (var_0.b % 32u)))), ~(29133u ^ func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-10500i, 1i, 22954i)), 9221u).x), Struct_1(11217i, _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b, 25708u), u_input.b)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> f32 {
    var var_0 = !any(vec4<bool>(true, false, true, true));
    var var_1 = func_1(vec2<bool>(true, true)).b.wxy | arg_2.b.yyw;
    var_0 = 1574f > _wgslsmith_div_f32(-126f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-536f, -1525f) + _wgslsmith_f_op_f32(select(-623f, _wgslsmith_f_op_f32(floor(1554f)), false))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-658f))));
    var var_3 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(any(vec3<bool>(true, select(false, false, true), any(vec2<bool>(true, false)))), !all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true))), any(vec3<bool>(true, true, true)) && true);
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1771f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -691f))), _wgslsmith_f_op_f32(select(-1350f, _wgslsmith_f_op_f32(-107f * -1000f), true)))), _wgslsmith_f_op_f32(1149f - -643f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(select(min(-34125i | u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a)), i32(-1i) * -2147483647i, true), u_input.c), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-928f * _wgslsmith_f_op_f32(func_4(func_1(vec2<bool>(false, false)), 30343u, func_1(vec2<bool>(false, false)), func_1(vec2<bool>(true, true))))))));
    var_0 = Struct_3(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, var_0.b) * 309f));
    let var_1 = vec4<bool>((var_0.a.b >= ~102520u) | (((1i << (u_input.b % 32u)) < ~u_input.a) & select(true, true, true)), any(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1609f + var_0.b)))) < 1186f);
    var_0 = Struct_3(Struct_1(~(i32(-1i) * -var_0.a.a), ~var_0.a.b & ~1u), 2003f);
    var var_2 = false;
    var var_3 = Struct_2(-1125f, countOneBits(~(min(46410u, u_input.c) ^ _wgslsmith_sub_u32(93663u, 1u))), var_0.b);
    var var_4 = func_1(select(select(var_1.yy, vec2<bool>(true, true), !select(var_1.zx, vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, false))), !var_1.zy, vec2<bool>(all(!var_1), !(!var_1.x)))).c;
    var_2 = var_1.x;
    var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(7932u >> (select(~31895u, ~firstLeadingBit(var_0.a.b), select(!var_1.x, true, any(vec2<bool>(false, var_1.x)))) % 32u), -182f);
}

