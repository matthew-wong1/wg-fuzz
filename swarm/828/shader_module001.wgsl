struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: f32;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = -1473f;
    let var_0 = vec3<i32>(-(~2147483647i), _wgslsmith_clamp_i32(-44775i, 1i, abs(-2147483647i)), _wgslsmith_div_i32(1i, _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(7946i, 1i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -14139i, 2147483647i, -5050i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 35775i, 1i, -1i), vec4<i32>(-7102i, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(0i, -8484i, 2147483647i, -21502i)))));
    var var_1 = u_input.b;
    var var_2 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), false)), vec3<bool>(true, true, true), select(vec3<bool>(true == all(vec4<bool>(false, true, true, false)), false, true), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), false));
    global0 = var_2.x & select(true && (true || any(vec3<bool>(var_2.x, false, var_2.x))), false, all(vec4<bool>(true, var_2.x, false, true)) & true);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(730f * 330f) + -1619f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), false));
}

fn func_2() -> Struct_3 {
    var var_0 = ~4294967295u;
    var_0 = 94020u << (u_input.a.x % 32u);
    global1 = _wgslsmith_f_op_f32(func_3());
    var var_1 = 1236f;
    return Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(135f)))))), 2411f)), Struct_2(Struct_1(vec2<f32>(1f, 1f), -min(-18704i, 2147483647i), vec2<bool>(true, true), select(vec4<i32>(0i, -29013i, -32087i, 2147483647i), countOneBits(vec4<i32>(-19000i, -31280i, 1i, -2147483647i)), select(true, false, true)), vec4<i32>(~1i, _wgslsmith_add_i32(2147483647i, -35180i), ~(-2147483647i), i32(-1i) * -748i)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1141f, 784f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 911f))), -3577i, vec2<bool>(true, true), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(-30196i, -5525i, -2147483647i, 0i)), vec4<i32>(-2147483647i, 2147483647i, 41541i, 18480i)), -vec4<i32>(1i, 1i, 1i, 1i))), !vec2<bool>(true, all(vec4<bool>(false, false, false, false))), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 517f) * vec2<f32>(555f, -713f))), -abs(-24355i), vec2<bool>(true, true), vec4<i32>(30569i, 0i, _wgslsmith_mult_i32(-3820i, 48351i), 1i), vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(517f, 115f), vec2<f32>(-2669f, 701f), true)) - _wgslsmith_div_vec2_f32(vec2<f32>(1142f, 1000f), vec2<f32>(1000f, 355f))), -2147483647i, select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, true), vec2<bool>(true, true)), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-firstTrailingBit(vec4<i32>(22009i, -1245i, 33035i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), reverseBits(vec4<i32>(2147483647i, -1i, -2147483647i, -24087i)))), max(vec4<i32>(1i, 1i, 1i, 1i), select(min(vec4<i32>(1i, 0i, -15530i, -52158i), vec4<i32>(1i, 0i, -1i, 27167i)), -vec4<i32>(-24893i, 1i, 1i, 2147483647i), vec4<bool>(true, true, true, true)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4) -> vec4<f32> {
    global0 = arg_2.a.b.c.x;
    var var_0 = arg_1.c.x;
    let var_1 = arg_1.b.a.d.zyx;
    var var_2 = firstTrailingBit(~abs(u_input.a.zzy));
    let var_3 = _wgslsmith_f_op_f32(-106f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.a.a.x - _wgslsmith_f_op_f32(step(arg_2.c.b.a.x, arg_2.a.a.a.x))) * arg_2.a.b.a.x));
    return _wgslsmith_f_op_vec4_f32(arg_2.b * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(arg_2.b, vec4<f32>(1010f, -1567f, var_3, var_3)))))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1319f, -1000f, true))), _wgslsmith_f_op_f32(-941f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-999f * -168f), -836f, false))), -1000f, -1104f), _wgslsmith_f_op_vec4_f32(func_4(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), true), func_2(), Struct_4(Struct_2(Struct_1(vec2<f32>(467f, 290f), -2147483647i, vec2<bool>(true, true), vec4<i32>(5066i, -46312i, 35807i, -1835i), vec4<i32>(-11970i, 2147483647i, -35088i, -90615i)), func_2().b.a), vec4<f32>(_wgslsmith_f_op_f32(289f * -1985f), 1389f, _wgslsmith_f_op_f32(-799f - 565f), -332f), Struct_2(Struct_1(vec2<f32>(-246f, -165f), 2147483647i, vec2<bool>(true, false), vec4<i32>(68302i, 21017i, 2147483647i, 1i), vec4<i32>(1i, 1i, 10983i, 2147483647i)), Struct_1(vec2<f32>(-1291f, 958f), -5340i, vec2<bool>(true, true), vec4<i32>(65721i, -1i, -6605i, -2147483647i), vec4<i32>(-2147483647i, -1i, -25445i, 66196i))), true)))));
    global0 = false;
    var var_1 = _wgslsmith_f_op_f32(floor(-984f));
    global1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1708f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1294f, 866f)))))) - var_0.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-309f + 2812f), var_0.x))) - _wgslsmith_div_vec2_f32(vec2<f32>(-534f, _wgslsmith_f_op_f32(var_0.x - var_0.x)), var_0.wz)), 1i << ((~(~u_input.a.x) << (~countOneBits(0u) % 32u)) % 32u), select(select(func_2().c, func_2().d.a.c, true), select(vec2<bool>(true, true), vec2<bool>(var_0.x > var_0.x, 7227u >= u_input.b), true), all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), all(vec2<bool>(true, true))))), -(~vec4<i32>(1i, 70137i, -37671i, -1i)), min(vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(2147483647i, -2147483647i, 1i, 18342i), -vec4<i32>(47156i, 25295i, -2147483647i, -7762i))) & -(-vec4<i32>(-20833i, 1i, 43938i, -34577i) >> (select(u_input.a, u_input.a, true) % vec4<u32>(32u))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>) -> bool {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1867f * arg_0.x) - 644f);
    let var_0 = Struct_5(1i, func_2().b, ~max(max(select(101010u, u_input.a.x, arg_1.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(35438u, 66610u), vec2<u32>(u_input.a.x, u_input.b))), u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2 - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1403f, arg_1.a.x, -1681f, -827f) * arg_0))))), Struct_4(Struct_2(arg_1, func_1()), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a.x, arg_2.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-584f))))), func_2().d, arg_1.c.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1151f * 1956f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.a.x))))));
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_4(!select(vec4<bool>(arg_1.c.x, var_0.b.b.c.x, true, false), vec4<bool>(true, false, var_0.b.a.c.x, true), true), func_2(), var_0.e)).yy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.e.b.xz, vec2<f32>(652f, var_1.x), vec2<bool>(false, var_0.e.c.a.c.x))) + func_2().d.b.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(361f, 1958f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(func_2().b.a.a.x, arg_1.a.x)))));
    global0 = func_2().b.b.c.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_u32(4294967295u, u_input.b) >= ~firstTrailingBit(firstTrailingBit(1u));
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(830f + _wgslsmith_f_op_f32(abs(-1825f)))))))));
    global0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.wz, _wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.xy)), firstTrailingBit(vec2<u32>(u_input.b, 1u))) != 15856u;
    global0 = func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2015f, 762f, -1061f, 249f))))), func_1(), vec4<f32>(-443f, 1134f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-583f)) * 829f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1112f))));
    let var_0 = vec2<bool>(any(!vec2<bool>(u_input.a.x >= 38052u, true)), false);
    let var_1 = -2234f;
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(374f, var_1, 1986f)) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1, -1725f, var_1), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, -730f, var_1))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, 1000f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, var_1, var_1), vec3<f32>(var_1, -921f, var_1))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, var_1, var_1) + vec3<f32>(var_1, var_1, 1965f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1, var_1, -2128f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -758f, 925f), vec3<f32>(-929f, 2300f, -339f))), select(!vec3<bool>(var_0.x, true, true), !vec3<bool>(true, var_0.x, var_0.x), true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-920f, 1507f), -102f, _wgslsmith_div_f32(-602f, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1886f, var_1, -3105f) * vec3<f32>(var_2.x, var_2.x, var_2.x))))), vec3<i32>(firstLeadingBit(-36885i), 39753i, -17127i) >> (_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.yxz, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (u_input.a.zzw % vec3<u32>(32u)), min(~vec3<u32>(u_input.a.x, u_input.b, 43331u), u_input.a.zwz >> (vec3<u32>(16936u, u_input.b, u_input.a.x) % vec3<u32>(32u)))) % vec3<u32>(32u)));
}

