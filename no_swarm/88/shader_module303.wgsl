struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-317f, -897f), vec3<u32>(63392u, 1u, 0u), vec3<i32>(-80805i, i32(-2147483648), 21744i), vec3<i32>(-43403i, 27006i, 8825i), vec3<f32>(586f, -817f, 836f));

var<private> global3: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(134f, -1000f), vec2<f32>(1000f, -270f), vec2<f32>(910f, -152f), vec2<f32>(-405f, 345f), vec2<f32>(-942f, -877f), vec2<f32>(631f, -501f), vec2<f32>(1708f, -558f), vec2<f32>(-986f, -763f), vec2<f32>(392f, 378f), vec2<f32>(229f, -1726f), vec2<f32>(1141f, 313f), vec2<f32>(-518f, 1513f), vec2<f32>(1004f, 518f));

var<private> global4: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec2<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(162f * global1.e.x), global2.a.x);
    global0 = array<vec2<i32>, 24>();
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-385f, var_0.x) * _wgslsmith_f_op_f32(ceil(arg_0)))))), vec3<u32>(min(min(global1.b.x, 23669u), ~1u), ~46806u, 0u), firstLeadingBit(-(vec3<i32>(-1i) * -vec3<i32>(-1i, 11532i, global2.d.x))), -global1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-880f, 1750f, var_0.x) * vec3<f32>(global1.e.x, arg_0, global2.e.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, arg_0, -1398f)))))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a * global1.e.zy), max(~var_1.b, vec3<u32>(var_1.b.x, global1.b.x, 77698u)) << (~global1.b % vec3<u32>(32u)), -global2.c, global1.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(var_1.e)))));
    global2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-118f, global2.a.x) - vec2<f32>(var_0.x, arg_0)) + _wgslsmith_div_vec2_f32(global1.e.xz, var_1.a)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.x, var_0.x))), 783f)), vec3<u32>(_wgslsmith_mult_u32(1u, global2.b.x), _wgslsmith_dot_vec2_u32(select(vec2<u32>(19988u, global2.b.x), global1.b.yy, global4.zx) >> (~vec2<u32>(45704u, 8250u) % vec2<u32>(32u)), ~global1.b.zy), 29180u), vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-7651i, global1.c.x), global1.c.yz), var_1.d.x), -2147483647i & (firstLeadingBit(global1.c.x) >> (var_1.b.x % 32u)), u_input.a), firstTrailingBit(var_1.d), global2.e);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) - vec2<f32>(919f, -896f)))) + _wgslsmith_f_op_vec2_f32(-global1.e.xy)), _wgslsmith_f_op_vec2_f32(abs(global2.a)), true));
}

fn func_2(arg_0: vec2<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x + global1.a.x) - _wgslsmith_f_op_f32(global2.a.x * 1845f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.e.x)))))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global3[_wgslsmith_index_u32(6365u, 13u)], vec2<f32>(-1095f, -927f)) * vec2<f32>(-305f, 687f))) * _wgslsmith_f_op_vec2_f32(func_2(~_wgslsmith_div_vec2_u32(global1.b.xy, vec2<u32>(3577u, 0u))))), abs(abs(firstTrailingBit(~vec3<u32>(global2.b.x, 0u, global1.b.x)))), global1.c, vec3<i32>(-59634i, _wgslsmith_div_i32(global2.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(17841i, global1.c.x), vec2<i32>(-6763i, -18268i))), global2.d.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1198f) * global1.e.x), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global2.e.x)), 807f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1508f)) * _wgslsmith_f_op_f32(-177f + -186f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.e.xx), vec2<f32>(845f, _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(step(-234f, var_0.a.x)))))), ~(_wgslsmith_mod_vec3_u32(select(global1.b, vec3<u32>(global2.b.x, global2.b.x, global1.b.x), vec3<bool>(global4.x, global4.x, global4.x)), abs(vec3<u32>(global2.b.x, global1.b.x, 4294967295u))) & vec3<u32>(_wgslsmith_dot_vec2_u32(global1.b.zz, vec2<u32>(global1.b.x, global1.b.x)), ~global1.b.x, 4294967295u)), vec3<i32>(-2147483647i, _wgslsmith_mod_i32(firstTrailingBit(-1i), reverseBits(-1850i)), var_0.c.x << ((global2.b.x << (~var_0.b.x % 32u)) % 32u)), ~(~(-global2.d) ^ countOneBits(vec3<i32>(global1.c.x, global1.c.x, global2.c.x))), var_0.e);
    var var_2 = global2.e.x;
    global4 = vec4<bool>(true, global4.x, global4.x, false);
    let var_3 = global1.d.x;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(global2.a, var_1.e.yy, global4.xz)), _wgslsmith_f_op_vec2_f32(-global1.e.xx))))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(~global2.b.x, global2.b.x, global2.b.x), ~global1.b), countOneBits(select(vec3<i32>(1i, 2147483647i, -21444i), ~global2.d, global4.yww)) ^ vec3<i32>(~_wgslsmith_div_i32(var_0.d.x, 23224i), _wgslsmith_div_i32(firstLeadingBit(-1i), -70091i), ~_wgslsmith_div_i32(-1i, 26740i)), select(select(reverseBits(vec3<i32>(2147483647i, global2.d.x, 54111i)), vec3<i32>(_wgslsmith_mult_i32(global1.c.x, 0i), min(-1i, u_input.a), ~(-1615i)), select(!global4.wyz, global4.www, !global4.x)), vec3<i32>(min(countOneBits(global2.c.x), _wgslsmith_add_i32(global2.d.x, -10171i)), ~global1.d.x, -16265i), !(!global4.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.e.x, 926f, arg_0), _wgslsmith_f_op_vec3_f32(select(global1.e, vec3<f32>(-1772f, 302f, arg_0), false)))), vec3<f32>(867f, 1069f, _wgslsmith_f_op_f32(f32(-1f) * -1434f)))), var_1.e));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1, arg_3: bool) -> vec2<f32> {
    let var_0 = -114f;
    let var_1 = !vec4<bool>(_wgslsmith_f_op_f32(select(-1540f, 368f, arg_0.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -349f), (arg_3 && true) & all(global4.zwz), !(_wgslsmith_f_op_f32(min(global2.e.x, arg_1)) != -871f), arg_0.x);
    var var_2 = vec3<i32>(firstLeadingBit(~u_input.a), _wgslsmith_mod_i32(0i, ~(-(~arg_2.d.x))), -min(-79145i, _wgslsmith_mod_i32(~arg_2.c.x, 2147483647i)));
    let var_3 = vec4<bool>(false, !(!(global2.b.x == 26102u)), all(var_1), all(arg_0.yyz));
    var_2 = _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(0i, 1i, arg_2.c.x)), (vec3<i32>(-global2.d.x, -14875i, global1.c.x) & global1.d) >> (~arg_2.b % vec3<u32>(32u)), ~(vec3<i32>(-1i) * -global1.c) >> (vec3<u32>(global2.b.x << (~0u % 32u), ~4294967295u, _wgslsmith_div_u32(15343u, 0u >> (global2.b.x % 32u))) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(global1.e.xz + vec2<f32>(-418f, _wgslsmith_f_op_vec2_f32(func_2(~_wgslsmith_mult_vec2_u32(global2.b.zx, arg_2.b.yy))).x));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<f32>(1951f, _wgslsmith_f_op_vec2_f32(func_2(vec2<u32>(func_1(_wgslsmith_f_op_f32(floor(arg_0.x))).b.x, global1.b.x))).x, 723f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e) * _wgslsmith_f_op_vec3_f32(-global2.e)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, _wgslsmith_f_op_vec2_f32(func_2(global2.b.yx)).x, _wgslsmith_f_op_f32(global2.e.x * 378f)) * _wgslsmith_f_op_vec3_f32(global1.e + _wgslsmith_f_op_vec3_f32(exp2(global2.e)))));
    var var_1 = Struct_1(vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(global4.x, true, global4.x, global4.x), -1000f, Struct_1(global1.e.yx, global2.b, vec3<i32>(-35976i, u_input.a, -1i), vec3<i32>(global2.d.x, global2.d.x, -18353i), vec3<f32>(435f, global2.a.x, -186f)), false)).x, -500f))), global2.b, global2.c, _wgslsmith_clamp_vec3_i32(abs(-(~global1.d)), vec3<i32>(0i, global1.c.x, ~_wgslsmith_add_i32(u_input.a, u_input.a)), abs(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(global2.c, vec3<i32>(-27570i, 6724i, u_input.a), global1.c), _wgslsmith_mod_vec3_i32(global1.d, global1.c)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -1139f, arg_0.x));
    global4 = !(!vec4<bool>((global4.x & global4.x) || (global4.x & global4.x), true, all(!global4.yxw), !global4.x));
    let var_2 = func_1(arg_0.x);
    return func_1(func_1(_wgslsmith_f_op_vec2_f32(func_3(885f)).x).e.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 13>();
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * -112f)), -1903f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-101f, global2.e.x) + global3[_wgslsmith_index_u32(global1.b.x, 13u)]), _wgslsmith_f_op_vec2_f32(func_4(select(vec4<bool>(global4.x, true, true, true), vec4<bool>(global4.x, false, false, true), vec4<bool>(true, global4.x, global4.x, false)), _wgslsmith_f_op_f32(global2.a.x + global2.e.x), func_1(654f), false)))));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e.x))), global1.a.x), max(~(func_1(-1000f).b ^ vec3<u32>(global2.b.x, 1u, global1.b.x)), ~(~vec3<u32>(global2.b.x, global2.b.x, 17343u))), ~(~vec3<i32>(-global2.c.x, -2147483647i | global1.c.x, 1i)), global1.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.e + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1298f, global2.a.x, 1970f), var_0.e))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(101f, 425f, global2.e.x) * vec3<f32>(-408f, global2.e.x, global2.e.x)), _wgslsmith_f_op_vec3_f32(global1.e + vec3<f32>(global1.a.x, global2.a.x, global2.a.x))))))));
    let var_2 = func_5(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.x, 1817f) + vec2<f32>(-702f, global1.e.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.e.x, 2171f) + var_0.e.yx), global1.a, all(global4.yy))) + vec2<f32>(var_1.a.x, 1000f)))));
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(-(~_wgslsmith_add_i32(var_2.d.x, -1i)), -var_1.c.x), -2645i, global2.c.x);
    global1 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-855f + func_5(_wgslsmith_f_op_vec2_f32(func_4(vec4<bool>(global4.x, global4.x, global4.x, true), global2.a.x, var_2, false))).e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.e.x)) * _wgslsmith_f_op_f32(round(-1000f)))));
    var_1 = func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.e.zy), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(577f + global2.a.x) * 844f), _wgslsmith_f_op_f32(exp2(var_0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(func_1(global2.e.x).d.x >> (min(1351u, global1.b.x) % 32u)) ^ -_wgslsmith_sub_i32(u_input.a, var_0.c.x << (9897u % 32u)), _wgslsmith_dot_vec4_i32(~(~(vec4<i32>(var_0.c.x, 0i, -2147483647i, 0i) ^ vec4<i32>(var_3.x, var_3.x, global1.c.x, var_3.x))), ~vec4<i32>(var_1.d.x, ~global2.c.x, abs(38976i), ~global1.c.x)));
}

