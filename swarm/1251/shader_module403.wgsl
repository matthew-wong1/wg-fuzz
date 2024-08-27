struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: vec3<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = Struct_1(vec4<i32>(-1i, _wgslsmith_clamp_i32(arg_0, ~u_input.b.x, _wgslsmith_div_i32(0i, -1i)), -1i, ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-4716i, 1i, 0i, arg_0), vec4<i32>(u_input.b.x, 1i, u_input.d.x, arg_0), arg_1.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0), vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, u_input.b.x)))), _wgslsmith_mod_i32(u_input.d.x, -u_input.a.x));
    var var_1 = arg_1.a.x;
    var var_2 = Struct_3(Struct_1(vec4<i32>(u_input.d.x, u_input.d.x, var_0.a.x, arg_0), -_wgslsmith_add_i32(-20944i, _wgslsmith_div_i32(u_input.d.x, arg_0))), !(!vec3<bool>(arg_1.a.x, true, false)), vec3<i32>(-1i, ~0i, firstLeadingBit(_wgslsmith_mult_i32(abs(u_input.d.x), arg_0))));
    return vec4<i32>(~2147483647i, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(1i, 1i, arg_0)), vec3<i32>(var_2.a.a.x, var_0.b, arg_0)), var_0.a.x) ^ var_0.a;
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = Struct_3(Struct_1(func_3(u_input.d.x, Struct_2(vec2<bool>(false, false))), ~min(_wgslsmith_mult_i32(1i, -16189i), -27035i)), !vec3<bool>(!any(vec2<bool>(true, false)), false, true), ~(vec3<i32>(-1i) * -vec3<i32>(arg_0, u_input.a.x, 2349i)));
    var_0 = Struct_3(Struct_1(var_0.a.a, _wgslsmith_clamp_i32(min(u_input.a.x, var_0.a.b), arg_0, i32(-1i) * -19935i)), var_0.b, ~select(vec3<i32>(_wgslsmith_add_i32(0i, 2147483647i), arg_0 ^ var_0.c.x, ~0i), -var_0.a.a.yzy ^ vec3<i32>(u_input.d.x, arg_0, -30086i), select(vec3<bool>(true, true, true), select(var_0.b, vec3<bool>(true, false, true), vec3<bool>(false, false, var_0.b.x)), false)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1094f, 2320f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-282f))))))) < _wgslsmith_f_op_f32(f32(-1f) * -430f);
    var var_2 = ~select(vec2<u32>(reverseBits(~u_input.c.x), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), u_input.c.ywy), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c))), (min(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(87968u, 34057u)) & u_input.c.zy) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.zx) % vec2<u32>(32u)), !any(vec3<bool>(var_1, var_1, var_1)));
    var_0 = Struct_3(var_0.a, var_0.b, _wgslsmith_clamp_vec3_i32(u_input.b, _wgslsmith_mod_vec3_i32(var_0.c & u_input.a, reverseBits(vec3<i32>(-565i, -49110i, -2147483647i))), abs(var_0.a.a.xxz)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1623f, _wgslsmith_f_op_f32(292f - -348f), var_0.b.x)))), var_2.x, u_input.c.yzz, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(394f)))), _wgslsmith_f_op_f32(f32(-1f) * -111f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-136f)) + _wgslsmith_f_op_f32(f32(-1f) * -1452f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(541f + 986f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(607f, 108f))), -558f))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(arg_0.d.x, 1115f, -1852f, _wgslsmith_f_op_f32(sign(-2456f)));
    let var_1 = 1000f;
    var var_2 = ~(~(~abs(u_input.c >> (u_input.c % vec4<u32>(32u)))));
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 1869f, 410f, -1000f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, -401f, arg_0.d.x, -685f) + vec4<f32>(var_1, arg_0.a, 1000f, 339f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(500f, arg_0.a, var_1, -1689f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1772f, arg_0.d.x, -629f, -1346f), vec4<f32>(var_0.x, -435f, var_0.x, var_0.x))), true)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, var_1, var_1, var_1), vec4<f32>(var_0.x, var_1, var_0.x, arg_0.a))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1203f, var_0.x, var_1, var_1))), vec4<f32>(_wgslsmith_f_op_f32(-946f * 611f), _wgslsmith_f_op_f32(1251f * -1000f), _wgslsmith_f_op_f32(-var_0.x), 1000f), any(vec4<bool>(false, true, false, false))))));
    return Struct_1(arg_1.a, select(countOneBits(-u_input.a.x), (firstLeadingBit(u_input.d.x) >> ((var_2.x | 4294967295u) % 32u)) << (u_input.c.x % 32u), true));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = !select(vec3<bool>(_wgslsmith_mod_i32(arg_0.a.x, arg_0.a.x) != (-1i | u_input.b.x), false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true);
    var var_1 = Struct_3(Struct_1(func_3(-4806i, Struct_2(vec2<bool>(var_0.x, var_0.x))), -4557i), vec3<bool>(true, var_0.x, true), _wgslsmith_div_vec3_i32(u_input.a, ~select(vec3<i32>(u_input.a.x, -2147483647i, u_input.b.x), arg_0.a.www, select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x))));
    var_0 = vec3<bool>(false && var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1674f - 457f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(536f)) + -221f)), !var_0.x);
    let var_2 = Struct_3(Struct_1(func_3(-u_input.d.x, Struct_2(var_1.b.zx)) << (vec4<u32>(u_input.c.x, ~51330u, ~4294967295u, 1u) % vec4<u32>(32u)), 0i), var_1.b, var_1.c);
    var_1 = var_2;
    return var_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = func_5(func_4(func_2(-countOneBits(u_input.a.x)), Struct_1(~vec4<i32>(u_input.d.x, u_input.a.x, -2147483647i, 1i) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_1.x, u_input.c.x), u_input.c) % vec4<u32>(32u)), u_input.d.x)));
    var var_1 = ~_wgslsmith_dot_vec3_u32(u_input.c.wwx, _wgslsmith_clamp_vec3_u32(~select(vec3<u32>(1u, arg_1.x, 98036u), u_input.c.xwx, vec3<bool>(true, var_0.b.x, false)), u_input.c.xxw, vec3<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.c.zy), ~124587u)));
    var var_2 = firstLeadingBit(u_input.c.x);
    let var_3 = _wgslsmith_f_op_f32(arg_0.x - -545f);
    let var_4 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(0u, arg_1.x, ~u_input.c.x), ~u_input.c.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-767f, 1000f, _wgslsmith_f_op_f32(-1326f * _wgslsmith_f_op_f32(step(-1555f, 814f))), -517f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-858f - -1197f), -867f, _wgslsmith_f_op_f32(func_1(vec3<f32>(152f, -1833f, 216f), vec4<u32>(51481u, 1u, u_input.c.x, u_input.c.x), vec3<f32>(-149f, -815f, 685f))), _wgslsmith_f_op_f32(f32(-1f) * -268f))))));
    let var_1 = func_5(Struct_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, -2147483647i, u_input.b.x) | vec4<i32>(27443i, u_input.d.x, u_input.b.x, 25321i), vec4<i32>(u_input.b.x, -21786i, u_input.b.x, u_input.b.x)), ~u_input.d.x)).a;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), -910f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - _wgslsmith_f_op_f32(-1627f + 361f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-153f)), var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, _wgslsmith_f_op_f32(-var_0.x), -1424f, _wgslsmith_f_op_f32(round(var_0.x)))) * vec4<f32>(_wgslsmith_f_op_f32(min(750f, var_0.x)), func_2(u_input.b.x).d.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.x, -200f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.x)))))));
    var var_2 = u_input.b;
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(266f, _wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), var_0.x)));
    var var_3 = ~u_input.c.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(275f)) - var_0.x), -875f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, _wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(var_0.zxy, var_0.yzx))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(-1168f + 275f), _wgslsmith_f_op_f32(f32(-1f) * -242f)), true)))), func_4(func_2(-firstLeadingBit(u_input.a.x)), func_4(func_2(var_2.x), func_4(Struct_4(-300f, 0u, u_input.c.zzx, vec3<f32>(-137f, var_0.x, var_0.x)), var_1))).a.x);
}

