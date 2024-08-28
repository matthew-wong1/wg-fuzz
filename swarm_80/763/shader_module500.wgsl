struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1727f * _wgslsmith_f_op_f32(f32(-1f) * -766f))), -1376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1485f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1550f, -389f)) * _wgslsmith_f_op_f32(sign(535f))))));
    let var_1 = vec3<u32>(firstTrailingBit(1u), min(_wgslsmith_sub_u32(_wgslsmith_sub_u32(34249u, u_input.b.x), ~87086u), ~(1u & u_input.b.x)), firstTrailingBit(min(countOneBits(0u), ~0u))) & vec3<u32>(_wgslsmith_clamp_u32(1u, ~34226u, firstLeadingBit(6318u)), 37154u, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b), u_input.b));
    var var_2 = u_input.b.x;
    var_2 = ~abs(~(~min(1u, var_1.x)));
    var_2 = u_input.b.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(sign(-307f)), 842f));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-392f - 563f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0, var_0)))), _wgslsmith_div_f32(-504f, var_0), 306f)));
    let var_2 = vec3<bool>(!select(true, any(vec4<bool>(false, false, false, false)), true) != true, true, var_1.x == _wgslsmith_f_op_f32(var_1.x * 1f));
    var var_3 = vec3<bool>(true, true, var_2.x);
    let var_4 = 2147483647i;
    return Struct_1(select(~(~vec2<u32>(41385u, 0u)), ~vec2<u32>(4792u & u_input.b.x, 1u), var_3.xy), u_input.a, ~select(~_wgslsmith_div_vec4_i32(vec4<i32>(var_4, u_input.a, -1i, var_4), vec4<i32>(u_input.a, -676i, u_input.a, u_input.a)), -vec4<i32>(var_4, u_input.a, u_input.a, 13445i) ^ ~vec4<i32>(-8354i, var_4, var_4, 23792i), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))) * 138f));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1009f)))), _wgslsmith_f_op_f32(-arg_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1618f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-538f)))), false)) - _wgslsmith_div_f32(-1465f, _wgslsmith_f_op_f32(1f * arg_2.d.d))));
    var var_1 = vec4<f32>(558f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.d + arg_2.d.d), arg_0.b.d), _wgslsmith_div_f32(-1039f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.d) * 469f)), _wgslsmith_div_f32(arg_2.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x - 2807f), _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2029f))))));
    var_1 = vec4<f32>(-472f, -471f, 110f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.e), -425f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec3_f32(func_3()).x)));
    var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1155f, arg_0.b.d, all(vec2<bool>(true, false)))) * 792f), -381f, func_2().d), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_1.x, var_1.x, 1109f), vec4<f32>(var_1.x, -667f, arg_0.b.d, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_2.e, arg_2.a.d, -222f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 428f, 1000f, arg_0.a.d), vec4<f32>(arg_0.d.d, arg_0.a.d, -174f, -1221f))))))))));
    let var_2 = vec2<bool>(!any(select(!vec4<bool>(false, false, arg_2.c, false), select(vec4<bool>(false, true, arg_2.c, true), vec4<bool>(true, false, arg_2.c, true), true), all(vec3<bool>(arg_0.c, false, false)))), any(!vec4<bool>(true, all(vec3<bool>(false, arg_2.c, false)), !arg_0.c, false || arg_0.c)));
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: u32) -> vec4<bool> {
    let var_0 = func_4(Struct_2(func_2(), func_2(), any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), vec2<bool>(false, false), vec2<bool>(true, true))), func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2391f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(172f)), _wgslsmith_f_op_f32(min(-365f, -1080f))))), i32(-1i) * -1i, Struct_2(func_2(), Struct_1(select(abs(vec2<u32>(55646u, 47419u)), firstTrailingBit(u_input.b), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), -arg_0, vec4<i32>(min(-21326i, arg_0), _wgslsmith_div_i32(-56611i, 13777i), ~u_input.a, arg_0), _wgslsmith_f_op_vec3_f32(func_3()).x), true, func_2(), -721f), _wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(4294967295u), 1u, 1u), vec3<u32>(u_input.b.x, 39078u, 7215u)) << (~vec3<u32>(4294967295u, ~4294967295u, _wgslsmith_mod_u32(1u, 4294967295u)) % vec3<u32>(32u)));
    var var_1 = func_4(var_0, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, 45153i), max(~_wgslsmith_div_i32(8315i, 2147483647i), -1i)), func_4(var_0, min(arg_0, min(21285i, firstLeadingBit(-16248i))), var_0, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(122288u, u_input.b.x, var_0.b.a.x), vec3<u32>(4294967295u, var_0.b.a.x, 49319u))))), select(_wgslsmith_mod_vec3_u32(~(vec3<u32>(28207u, u_input.b.x, 4294967295u) << (vec3<u32>(arg_1, 12742u, 4294967295u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(52620u, u_input.b.x, u_input.b.x), vec3<u32>(arg_1, 1u, 4294967295u)), _wgslsmith_div_u32(0u, 85751u), 1u)), ~(~vec3<u32>(u_input.b.x, u_input.b.x, 67098u)), reverseBits(~34952u) > _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_0.d.a.x, 1u, var_0.b.a.x, 41547u)), ~vec4<u32>(u_input.b.x, 4294967295u, var_0.d.a.x, var_0.a.a.x)))).a.c.x;
    var_1 = _wgslsmith_mult_i32(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32((vec4<i32>(u_input.a, u_input.a, 16934i, 99864i) >> (vec4<u32>(u_input.b.x, u_input.b.x, 1u, 26754u) % vec4<u32>(32u))) << (~vec4<u32>(var_0.d.a.x, u_input.b.x, var_0.d.a.x, 0u) % vec4<u32>(32u)), ~(-vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.a))), ~var_0.b.c ^ select(max(var_0.b.c, vec4<i32>(-1i, u_input.a, u_input.a, 0i)), var_0.a.c, !vec4<bool>(var_0.c, true, var_0.c, var_0.c))));
    var var_2 = ~(~select(~vec3<u32>(26673u, arg_1, 4294967295u), reverseBits(vec3<u32>(var_0.b.a.x, var_0.d.a.x, 24968u)), !vec3<bool>(false, var_0.c, false)) & _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.b.x, arg_1, 46951u), vec3<u32>(u_input.b.x, arg_1, 4942u)) << (vec3<u32>(1u, 4294967295u, var_0.a.a.x) % vec3<u32>(32u)), vec3<u32>(4294967295u, var_0.a.a.x, 4294967295u) >> ((vec3<u32>(10746u, 11089u, var_0.d.a.x) >> (vec3<u32>(54543u, u_input.b.x, arg_1) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_3 = -vec2<i32>(0i, 18222i);
    return select(vec4<bool>(true, var_0.c, true | !func_4(var_0, var_3.x, var_0, vec3<u32>(var_2.x, 18519u, arg_1)).c, !(!var_0.c)), !vec4<bool>(true, all(vec3<bool>(true, true, true)), _wgslsmith_sub_i32(-42716i, var_0.b.c.x) != ~0i, false), select(select(!vec4<bool>(false, var_0.c, var_0.c, true), !(!vec4<bool>(var_0.c, true, false, true)), any(vec3<bool>(true, var_0.c, var_0.c))), vec4<bool>(!any(vec3<bool>(var_0.c, var_0.c, var_0.c)), 1197f > _wgslsmith_div_f32(var_0.b.d, -656f), all(!vec3<bool>(true, var_0.c, var_0.c)), true), !all(vec3<bool>(false, false, var_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!(!func_1(-40053i, u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2013f, 146f, 1087f, -909f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(763f)), -204f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(721f + -997f)), vec4<bool>(!var_0.x, true, true, false))), vec4<f32>(-145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f + 616f)), -1007f, -1211f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(365f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1055f, -1057f)) - _wgslsmith_div_f32(379f, 1415f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1133f)), _wgslsmith_div_f32(-639f, -1538f))));
    var_0 = !select(vec4<bool>(any(var_0.yw), true, true, false), !(!vec4<bool>(true, false, var_0.x, true)), select(!select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, true)), select(vec4<bool>(false, false, true, true), !vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x)));
    var_0 = vec4<bool>(true, any(var_0.xzy), ~(66909u >> (countOneBits(u_input.b.x) % 32u)) == ~1u, false);
    var_0 = select(!(!vec4<bool>(var_0.x, var_0.x == false, var_0.x, var_0.x)), vec4<bool>(all(vec4<bool>(var_0.x, true, all(var_0.xy), u_input.a >= -11344i)), all(vec3<bool>(!var_0.x, false, var_0.x)), false, !(u_input.a >= -u_input.a)), !func_4(Struct_2(func_2(), Struct_1(vec2<u32>(0u, u_input.b.x), -49503i, vec4<i32>(u_input.a, 0i, 1i, 52766i), 450f), false, Struct_1(u_input.b, -70410i, vec4<i32>(1i, 1i, 0i, 216i), -912f), var_1.x), min(~28428i, u_input.a), func_4(func_4(Struct_2(Struct_1(u_input.b, -28957i, vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.a), -300f), Struct_1(vec2<u32>(u_input.b.x, 1u), 30639i, vec4<i32>(37841i, -1i, 8019i, 1i), -3293f), false, Struct_1(vec2<u32>(u_input.b.x, 29273u), -2147483647i, vec4<i32>(-23827i, 0i, u_input.a, -41962i), 584f), var_1.x), u_input.a, Struct_2(Struct_1(vec2<u32>(u_input.b.x, 8629u), -2147483647i, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), var_1.x), Struct_1(u_input.b, 59784i, vec4<i32>(u_input.a, 68097i, 2147483647i, u_input.a), var_1.x), true, Struct_1(u_input.b, u_input.a, vec4<i32>(-48914i, u_input.a, u_input.a, 1i), 1203f), 1836f), vec3<u32>(4294967295u, 1u, u_input.b.x)), _wgslsmith_add_i32(0i, 1i), func_4(Struct_2(Struct_1(u_input.b, -1i, vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), -726f), Struct_1(vec2<u32>(69200u, u_input.b.x), -9366i, vec4<i32>(u_input.a, u_input.a, -1i, u_input.a), var_1.x), var_0.x, Struct_1(vec2<u32>(4294967295u, u_input.b.x), -2147483647i, vec4<i32>(-2147483647i, u_input.a, 0i, 2147483647i), var_1.x), 837f), -1i, Struct_2(Struct_1(u_input.b, u_input.a, vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a), var_1.x), Struct_1(u_input.b, -2147483647i, vec4<i32>(u_input.a, 1i, -46185i, u_input.a), var_1.x), false, Struct_1(vec2<u32>(0u, 43376u), u_input.a, vec4<i32>(-2147483647i, 0i, -61444i, 0i), 1000f), -107f), vec3<u32>(u_input.b.x, 6065u, u_input.b.x)), ~vec3<u32>(30757u, u_input.b.x, u_input.b.x)), vec3<u32>(33189u, u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, 10217u))).c);
    var var_2 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, countOneBits(80505u)), u_input.b, ~vec2<u32>(u_input.b.x, u_input.b.x) << ((vec2<u32>(u_input.b.x, 3196u) | u_input.b) % vec2<u32>(32u))), u_input.a, ~(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 10436i, 20066i, 0i), vec4<i32>(6513i, u_input.a, u_input.a, u_input.a)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(28952i, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i))), _wgslsmith_f_op_f32(909f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), true)))), Struct_1(reverseBits(vec2<u32>(~0u, ~40951u)), max(u_input.a, _wgslsmith_div_i32(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 40730i)))), vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, u_input.a, 7011i, u_input.a), max(vec4<i32>(18722i, 30739i, 4461i, u_input.a), vec4<i32>(u_input.a, -51125i, 12990i, u_input.a))), -(~u_input.a), 2147483647i & _wgslsmith_mult_i32(u_input.a, u_input.a)), var_1.x), true, func_2(), _wgslsmith_f_op_f32(f32(-1f) * -689f));
    var_0 = vec4<bool>(true, var_1.x == -300f, false, var_2.c | !(~var_2.a.b > _wgslsmith_sub_i32(0i, var_2.d.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-180f, u_input.a, ~(vec3<u32>(1u, var_2.d.a.x & 1u, var_2.b.a.x ^ 54642u) ^ _wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.b.a.x, var_2.a.a.x, u_input.b.x), vec3<u32>(74802u, var_2.a.a.x, u_input.b.x) & vec3<u32>(3292u, u_input.b.x, u_input.b.x))));
}

