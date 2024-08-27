struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(step(1253f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f - 645f))));
    let var_1 = Struct_4(_wgslsmith_dot_vec4_i32(-max(-vec4<i32>(-2147483647i, 16371i, 1i, 4781i), select(vec4<i32>(-1i, 2147483647i, 1i, -2147483647i), vec4<i32>(0i, -1i, 0i, -13121i), true)), firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(25126i, -1i, 9091i, 27586i))), _wgslsmith_f_op_f32(round(-413f)));
    var_0 = 1321f;
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.b))));
    var var_3 = Struct_1(all(vec4<bool>(!(var_1.b >= 236f), false, all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), false)), ~_wgslsmith_div_vec3_u32(firstTrailingBit(u_input.b.wxz), firstTrailingBit(u_input.b.wwx) << (vec3<u32>(u_input.e, u_input.e, u_input.a) % vec3<u32>(32u))), u_input.b.wyy);
    return countOneBits(~(~firstTrailingBit(min(vec4<i32>(var_1.a, 0i, var_1.a, 1i), vec4<i32>(var_1.a, 2147483647i, -9990i, -39569i)))));
}

fn func_2(arg_0: bool, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_2(!all(vec2<bool>(any(vec3<bool>(arg_0, arg_0, false)), arg_0)), ~func_3() ^ ~firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, -15110i, -41082i)), ~(4294967295u >> (_wgslsmith_mod_u32(countOneBits(4294967295u), _wgslsmith_mult_u32(26753u, u_input.c)) % 32u)));
    let var_1 = !vec4<bool>(arg_0, var_0.a, all(select(vec2<bool>(arg_0, var_0.a), vec2<bool>(false, arg_0), vec2<bool>(var_0.a, var_0.a))) | arg_0, arg_0);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1153f)), _wgslsmith_f_op_f32(2003f - -1116f)) * _wgslsmith_f_op_f32(f32(-1f) * -791f))) * -1085f);
    var_2 = -894f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1560f + _wgslsmith_f_op_f32(-1246f * 871f)))));
    return vec3<bool>(true, any(var_1.wyx), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_4 {
    let var_0 = select(select(!(!(!arg_0)), arg_0, all(vec4<bool>(true, arg_1.c.a, false, arg_1.b.a)) & !arg_1.c.a), vec2<bool>(true & func_2(!arg_1.b.a, _wgslsmith_mod_u32(u_input.e, 0u)).x, !arg_1.c.a), true);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(16509i, -arg_1.b.b.x), vec2<i32>(-arg_1.c.b.x, firstLeadingBit(2147483647i) ^ arg_1.b.b.x)) > arg_1.b.b.x;
    var var_2 = 1139f;
    var var_3 = Struct_4(func_3().x & arg_1.c.b.x, _wgslsmith_f_op_f32(arg_1.a.x * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x)))))));
    let var_4 = _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(arg_1.b.c, 1u & arg_1.b.c, ~(~0u), 0u));
    return Struct_4(22002i, _wgslsmith_f_op_f32(f32(-1f) * -1361f));
}

fn func_1() -> Struct_3 {
    let var_0 = func_4(vec2<bool>(true, all(func_2(any(vec2<bool>(true, true)), 4294967295u))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1292f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1066f)), _wgslsmith_f_op_f32(-1607f * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-520f))), 676f), Struct_2(true, _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-8517i, 16524i, 22523i, 34513i)), 1u), Struct_2(!func_2(false, 0u).x, select(vec4<i32>(-29148i, 33623i, -27703i, -1i), select(vec4<i32>(-2147483647i, 1i, 1572i, -8215i), vec4<i32>(2147483647i, 7332i, -32443i, -1i), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), false)), ~0u)));
    var var_1 = Struct_1(any(select(func_2(-39562i <= var_0.a, u_input.a).xx, vec2<bool>(true, true), select(vec2<bool>(true, true), func_2(false, 1u).yy, true))), firstLeadingBit(u_input.b.xzw), ~u_input.b.www);
    let var_2 = var_1.b.x;
    var_1 = Struct_1(!all(vec4<bool>(all(vec3<bool>(var_1.a, true, var_1.a)), func_2(var_1.a, 4294967295u).x, !var_1.a, var_1.c.x >= var_1.c.x)), u_input.b.wwx, countOneBits(var_1.c));
    var var_3 = Struct_1(all(!vec3<bool>(false, var_1.a, true || var_1.a)), _wgslsmith_mod_vec3_u32((_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 21082u, 127066u), vec3<u32>(54330u, u_input.b.x, u_input.e)) << (vec3<u32>(u_input.a, var_1.c.x, 17454u) % vec3<u32>(32u))) | (vec3<u32>(var_1.b.x, var_1.b.x, 8506u) << (~u_input.b.xyy % vec3<u32>(32u))), var_1.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(select(1u, var_1.c.x, any(vec3<bool>(false, true, true))), ~(~u_input.b.x), u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(abs(var_1.b.x), u_input.e, 33091u >> (1u % 32u)), ~vec3<u32>(u_input.d, 9459u, u_input.b.x)), countOneBits(max(u_input.b.yzw, ~vec3<u32>(u_input.e, 1u, 1u)))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(var_0.b, var_0.b, false)), -1241f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(round(293f))), vec4<f32>(_wgslsmith_f_op_f32(round(-737f)), var_0.b, var_0.b, _wgslsmith_f_op_f32(-var_0.b)), vec4<bool>(true, true, true, true))))), Struct_2(var_1.a, _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(6917i, 50156i, var_0.a, 1i) >> (vec4<u32>(4294967295u, u_input.a, u_input.c, var_3.c.x) % vec4<u32>(32u)), -vec4<i32>(var_0.a, -1i, 43915i, var_0.a)), vec4<i32>(select(-1i, var_0.a, var_3.a), ~1i, var_0.a & 2147483647i, var_0.a)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(min(32195u, 58968u), 4294967295u), var_1.c.x)), Struct_2(var_3.a, vec4<i32>(var_0.a | firstLeadingBit(2147483647i), ~var_0.a, var_0.a, select(-var_0.a, -11423i, !var_3.a)), max(~4294967295u, var_1.c.x) | var_1.b.x));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(any(vec2<bool>(all(!vec4<bool>(arg_0.b.a, false, arg_0.b.a, arg_0.b.a)), all(select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.c.a, false), true)))), vec3<u32>(~reverseBits(arg_1.x), arg_1.x, ~(~1u)), arg_1.wzx);
    var var_1 = func_1();
    let var_2 = select(vec3<bool>(var_1.b.a, var_1.c.a, true), func_2(false, var_0.b.x), all(vec3<bool>(true, false, false)));
    var_0 = Struct_1(var_2.x, vec3<u32>(1u, var_1.b.c >> ((4294967295u ^ var_0.b.x) % 32u), 24226u) & _wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_0.c.x, 39073u, 4294967295u)), vec3<u32>(_wgslsmith_div_u32(18701u, var_0.c.x), firstLeadingBit(31359u), abs(1u))), var_0.b);
    let var_3 = select(2147483647i, 1i, false);
    return true;
}

fn func_6(arg_0: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1312f, -802f, 1673f, 1805f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-886f, 465f, -2375f, -1022f) + vec4<f32>(-779f, -1021f, -1330f, -1480f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-641f, -1000f, -1259f, -1687f) * vec4<f32>(1f, 1f, 1f, 1f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1791f, _wgslsmith_f_op_f32(f32(-1f) * -2296f), _wgslsmith_f_op_f32(ceil(-899f)), _wgslsmith_div_f32(-1000f, 934f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, -155f, 621f, 461f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(611f, 352f, -2903f, -1061f) + vec4<f32>(318f, 1754f, 883f, 759f)))))));
    var var_1 = Struct_1(any(!(!vec3<bool>(arg_0, arg_0, arg_0))) | !arg_0, vec3<u32>(abs(u_input.e), firstTrailingBit(u_input.b.x), u_input.a) | ~vec3<u32>(u_input.e, abs(23272u), _wgslsmith_mod_u32(u_input.c, 23719u)), vec3<u32>(countOneBits(firstTrailingBit(u_input.d)) >> (~75045u % 32u), 82294u, _wgslsmith_mult_u32(u_input.b.x ^ u_input.e, u_input.a) & 1u));
    var var_2 = -356f;
    var_2 = _wgslsmith_f_op_f32(-func_1().a.x);
    let var_3 = !select(vec4<bool>(!(var_1.b.x > 4294967295u), any(vec2<bool>(true, false)), true, true), vec4<bool>(true, select(!arg_0, var_1.a, true), true, (arg_0 || arg_0) || any(vec3<bool>(arg_0, var_1.a, var_1.a))), vec4<bool>(true, var_1.a, !all(vec4<bool>(false, false, false, true)), true || var_1.a));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(((25637u <= ~u_input.a) && true) || false, ~(~(~vec3<u32>(84392u, 32614u, u_input.e))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.b.x, 1u, u_input.b.x) >> (u_input.b.yyx % vec3<u32>(32u))), u_input.b.wxx), ~select(u_input.b.ywz, vec3<u32>(u_input.b.x, u_input.a, 35194u), true)));
    var var_1 = Struct_1(true & all(select(select(vec3<bool>(false, false, true), vec3<bool>(var_0.a, var_0.a, var_0.a), false), !vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, true))), max(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.b.x, u_input.d, 18615u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, u_input.e, var_0.c.x), vec3<u32>(0u, 15265u, u_input.d))), _wgslsmith_div_vec3_u32(var_0.c, ~var_0.b)), _wgslsmith_sub_vec3_u32(max(var_0.c, firstTrailingBit(firstLeadingBit(var_0.b))), var_0.b));
    var var_2 = 1i;
    var_1 = Struct_1(!var_0.a, ~vec3<u32>(countOneBits(var_1.b.x), 1u, ~var_1.b.x) >> ((select(u_input.b.yyy & var_0.b, ~vec3<u32>(u_input.c, var_0.b.x, 0u), var_0.a && true) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(6461u, var_1.b.x, u_input.e), var_0.b, ~vec3<u32>(var_1.c.x, 0u, 20585u)) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.b.yzx);
    var var_3 = Struct_2(any(vec2<bool>(any(select(vec3<bool>(var_1.a, false, false), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_1.a, true, true))), false)), countOneBits(_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-2147483647i, i32(-1i) * -2147483647i, i32(-1i) * -1i, ~(-2147483647i)))), func_6(func_5(func_1(), ~u_input.b, _wgslsmith_mult_vec3_i32(vec3<i32>(53073i, 1i, 0i), vec3<i32>(-1i, -1i, 2147483647i)) << (countOneBits(vec3<u32>(u_input.b.x, 13065u, var_1.b.x)) % vec3<u32>(32u)))));
    let var_4 = ~(_wgslsmith_mult_u32(30040u, ~var_3.c) >> (_wgslsmith_div_u32(0u ^ max(u_input.a, 0u), firstLeadingBit(~var_1.b.x)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_4(vec2<bool>(true, true), func_1()).b));
}

