struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(true, -1i, 2147483647i);

var<private> global2: i32 = i32(-2147483648);

var<private> global3: vec3<i32> = vec3<i32>(-52810i, -15090i, 52008i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global3 = min((_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), -vec3<i32>(-15994i, 18787i, 2147483647i)) << (min(vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 4294967295u, 16129u)) % vec3<u32>(32u))) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, global1.c, global1.c) ^ vec3<i32>(global3.x, global3.x, -6377i), vec3<i32>(-10171i, u_input.a.x, 1258i) >> (vec3<u32>(71543u, 1u, 37370u) % vec3<u32>(32u))) ^ ((vec3<i32>(global3.x, global3.x, -31371i) << (vec3<u32>(91629u, 1392u, 103903u) % vec3<u32>(32u))) << (countOneBits(vec3<u32>(82895u, 23012u, 1u)) % vec3<u32>(32u))), firstTrailingBit(-vec3<i32>(-67655i, global0.b, global1.b)) & min(vec3<i32>(0i, u_input.a.x, 6291i), vec3<i32>(27152i, global1.b, global3.x)), all(vec4<bool>(true, global1.a, global0.a, global0.a)) & any(!vec3<bool>(global0.a, true, global1.a))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-251f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(611f - -696f))))), -401f, -101f));
    var var_1 = reverseBits(-(~1i));
    var var_2 = Struct_1(all(vec2<bool>(true, true)), 1i, -2147483647i);
    let var_3 = Struct_1(var_2.a, var_2.c, -19291i);
    return abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, _wgslsmith_add_i32(~global3.x, -20559i)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-global3.xx, -global3.yx), vec2<i32>(_wgslsmith_clamp_i32(global3.x, -2147483647i, u_input.a.x), 1i))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = true;
    global1 = Struct_1(false, -46761i, func_3());
    var var_1 = Struct_1(true, 0i, -1i);
    global0 = Struct_1(true, min(-1i, global0.b), global1.b);
    let var_2 = arg_1.yy;
    return Struct_1(all(vec2<bool>(false, true)), ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(-8001i << (0u % 32u), abs(-25675i)), u_input.a.x), ~(~(_wgslsmith_div_i32(-1i, u_input.a.x) & 1i)));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global1 = func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, -709f, 634f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(609f, 541f, 160f)), _wgslsmith_div_vec3_f32(vec3<f32>(1378f, -2180f, 770f), vec3<f32>(-975f, -758f, 1211f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(783f, 391f, -950f), vec3<f32>(-559f, 2854f, 911f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1276f, 543f, -663f), vec3<f32>(-491f, -638f, 1077f)))))));
    global2 = _wgslsmith_sub_i32(firstTrailingBit(-52325i), 0i);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(668f, 595f, -1850f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1238f, 927f, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2480f, 409f, -1839f))))))));
    var var_1 = _wgslsmith_sub_i32(reverseBits(select(-1i, reverseBits(u_input.a.x), true)), ~(-45211i));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -746f)))))));
    return arg_2;
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a.x, ~8068i, abs(firstTrailingBit(i32(-1i) * -7962i)));
    let var_1 = func_4(true, ~select(~1u, 10831u, true) ^ ~4294967295u, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1875f, -1000f, -898f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-124f, 1000f, -538f), vec3<f32>(-1000f, 1167f, -293f)))) - vec3<f32>(1f, 1f, 1f)), vec3<f32>(-647f, -1306f, 1f)));
    return Struct_1(true, _wgslsmith_mod_i32(~global1.c, 2147483647i), firstLeadingBit(~(-global1.b & -20843i)));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    var var_0 = select(select(select(vec3<bool>(false, arg_1.x, arg_2.a), vec3<bool>(arg_1.x, false || arg_0.a, true), select(!vec3<bool>(arg_0.a, true, arg_0.a), !vec3<bool>(global1.a, global1.a, arg_0.a), true)), vec3<bool>(false, arg_0.a, global1.a), !(!select(vec3<bool>(true, arg_1.x, true), vec3<bool>(global1.a, false, false), true))), !select(vec3<bool>(true, func_2(vec3<f32>(-1000f, -1000f, -588f), vec3<f32>(-558f, -226f, -902f)).a, global1.a), !vec3<bool>(false, global0.a, arg_2.a), global0.a), any(!select(vec3<bool>(false, arg_1.x, arg_2.a), vec3<bool>(false, arg_1.x, global0.a), true)));
    let var_1 = Struct_1(var_0.x && true, u_input.a.x, ~arg_0.c);
    var var_2 = 2001f;
    global3 = (max(~(~vec3<i32>(-10692i, 12190i, global1.b)), vec3<i32>(global3.x, var_1.b, 1i)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(6892i, -13720i, arg_3) << (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 11410u), vec3<u32>(24449u, 27288u, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(-11655i, global1.c, -arg_3))) | -(~reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-5053i, 74312i, u_input.a.x), vec3<i32>(arg_2.c, 1i, -1i))));
    global3 = ~countOneBits(vec3<i32>(-(~(-54925i)), 1i, abs(global1.b)));
    return _wgslsmith_div_vec3_u32(~vec3<u32>(~1u, ~33181u, min(12807u, 88024u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(12223u, 4294967295u, 47893u)), vec3<u32>(1u, 1u, 1u))) >> (~firstLeadingBit(vec3<u32>(3535u, _wgslsmith_clamp_u32(1u, 1u, 0u), _wgslsmith_mult_u32(0u, 1u))) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec3<u32>(_wgslsmith_div_u32(select(0u, 58804u, true) >> (~100941u % 32u), ~abs(1u)), ~max(~29069u, 120238u), 0u), ~(~max(vec3<u32>(1u, 4294967295u, 67166u), select(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4218u, 82909u, 1u), true))));
    var_0 = func_5(Struct_1(true, _wgslsmith_mod_i32(~max(49446i, 10386i), u_input.a.x), _wgslsmith_mult_i32(~_wgslsmith_mult_i32(-2147483647i, 0i), global0.c)), vec2<bool>(true, false), func_1(), _wgslsmith_add_i32(_wgslsmith_mult_i32(32612i >> (var_0.x % 32u), ~(-13186i)), 1i) & global0.c);
    let var_1 = func_4(global0.a, ~38398u, func_1());
    global1 = func_4(true, 14579u, Struct_1(true, global3.x, countOneBits(var_1.c)));
    global2 = _wgslsmith_clamp_i32(global1.c, global1.b, i32(-1i) * -_wgslsmith_mult_i32(-global0.c, global0.b));
    let var_2 = 1f;
    var var_3 = Struct_1(any(!vec3<bool>(all(vec3<bool>(global1.a, true, true)), !global0.a, var_1.a)), firstLeadingBit(_wgslsmith_mult_i32(~var_1.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, u_input.a.x, -1i, 2147483647i), vec4<i32>(global0.b, global1.c, global3.x, 85718i)))), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i), 18383u, vec2<f32>(169f, _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-487f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-697f)) - _wgslsmith_f_op_f32(-745f * 1167f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-463f * var_2)))))));
}

