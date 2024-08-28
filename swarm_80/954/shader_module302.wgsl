struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_div_i32(u_input.a, u_input.a);
    var var_1 = arg_0;
    return var_1.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = ~_wgslsmith_sub_u32(arg_0.b.x, _wgslsmith_add_u32(77237u, arg_0.b.x)) ^ _wgslsmith_dot_vec3_u32(u_input.c, max(countOneBits(vec3<u32>(arg_0.b.x, arg_1.b.x, 11303u)), u_input.c));
    var var_1 = 4983u;
    let var_2 = Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(exp2(arg_0.a.x)), 1000f), vec2<u32>(arg_0.b.x, reverseBits(u_input.c.x)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-16830i, abs(1i), select(1i, 48953i, true), _wgslsmith_dot_vec4_i32(arg_1.c, arg_0.c)), vec4<i32>(65047i, arg_0.c.x, -39420i, 2876i) & -arg_0.c), -vec3<i32>(arg_0.d.x, u_input.e.x, 0i));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_2.a.x)), arg_0.a.x, true)), _wgslsmith_f_op_f32(arg_1.a.x - -127f), _wgslsmith_f_op_f32(-var_2.a.x)), select(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1.b.x, var_2.b.x), var_2.b, vec2<u32>(u_input.d.x, 28998u))), ~arg_1.b | ~var_2.b, any(select(vec2<bool>(true, false), vec2<bool>(false, true), false))) ^ ~_wgslsmith_clamp_vec2_u32(min(arg_0.b, arg_1.b), var_2.b, vec2<u32>(arg_0.b.x, arg_0.b.x)), firstTrailingBit(vec4<i32>(-1i, abs(-arg_0.c.x), -(~u_input.e.x), (u_input.a & -2147483647i) << (4294967295u % 32u))), ~(vec3<i32>(~19146i, ~u_input.a, -1i) << (vec3<u32>(u_input.d.x >> (0u % 32u), 4294967295u, 9679u) % vec3<u32>(32u))));
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), var_2.a.x, var_3.a.x), vec2<u32>(firstTrailingBit(u_input.d.x), _wgslsmith_div_u32(1u, 53259u) ^ _wgslsmith_mod_u32(~var_3.b.x, ~1409u)), -var_2.c, firstLeadingBit(-arg_1.d));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_3.a)), _wgslsmith_f_op_vec3_f32(ceil(var_2.a))) * var_3.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1183f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.a.x + var_2.a.x), 920f)), -186f) * arg_1.a));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(arg_1.a, func_3(Struct_1(vec3<f32>(arg_1.a.x, -780f, arg_1.a.x), u_input.d.yx, arg_1.c, arg_1.c.wxz)), select(vec4<i32>(u_input.a, u_input.a, -1i, -8367i), countOneBits(vec4<i32>(1i, u_input.e.x, 0i, 1i)), arg_0 <= arg_0), _wgslsmith_mult_vec3_i32(arg_1.d >> (u_input.c % vec3<u32>(32u)), -u_input.e)), arg_1)), _wgslsmith_add_vec2_u32(~vec2<u32>(42663u, arg_1.b.x) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28790u, arg_1.b.x, u_input.b.x, arg_1.b.x), u_input.d), 0u) % vec2<u32>(32u)), arg_1.b), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c.x, 1i, 0i, 1i), firstTrailingBit(arg_1.c)), _wgslsmith_add_vec3_i32(vec3<i32>(-17833i, -2147483647i, firstTrailingBit(u_input.a)), u_input.e << (firstTrailingBit(u_input.c) % vec3<u32>(32u))) >> (firstLeadingBit(u_input.d.wyx) % vec3<u32>(32u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a)), select(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d), ~18303u) & (min(u_input.d.yw, u_input.d.yw) & vec2<u32>(55073u, u_input.b.x)), ~(~select(vec2<u32>(10571u, var_0.b.x), arg_1.b, true)), !(~u_input.d.x >= (var_0.b.x ^ 4294967295u))), var_0.c, abs(abs(arg_1.d)));
    let var_1 = var_0.a.x;
    var var_2 = arg_1;
    let var_3 = ~var_0.b;
    return _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(var_0.b.x, 1u)), firstTrailingBit(u_input.b), arg_1.b), ~(vec2<u32>(_wgslsmith_div_u32(u_input.d.x, 0u), ~arg_1.b.x) ^ ~_wgslsmith_mult_vec2_u32(var_3, vec2<u32>(36347u, 4294967295u))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1686f, _wgslsmith_div_f32(arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_f32(-arg_0.a.x)) * arg_0.a)), ~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1428f - 498f)), arg_0), ~select(vec4<i32>(-1i) * -arg_0.c, vec4<i32>(~(-13571i), 1i, _wgslsmith_mult_i32(u_input.a, arg_0.d.x), -arg_0.d.x), false), vec3<i32>(87557i, reverseBits(-u_input.e.x), select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(arg_0.c, arg_0.c), 26772i, _wgslsmith_mod_i32(u_input.e.x, u_input.e.x)), _wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.d.x, -30268i), firstLeadingBit(arg_0.d.x)), ~1u <= (6023u | arg_1))));
    return ~var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(func_1(Struct_1(vec3<f32>(-135f, -193f, 788f), vec2<u32>(61266u, u_input.c.x) ^ u_input.c.xy, vec4<i32>(u_input.a, u_input.a, u_input.e.x, u_input.e.x), _wgslsmith_mult_vec3_i32(u_input.e, vec3<i32>(0i, u_input.a, u_input.e.x))), u_input.c.x), u_input.a), ~u_input.e.x ^ _wgslsmith_mult_i32(-u_input.e.x, 1i));
    var_1 = select(_wgslsmith_dot_vec2_i32(u_input.e.xx, vec2<i32>(select(-2147483647i, u_input.a, true), func_1(Struct_1(vec3<f32>(882f, 1312f, -651f), vec2<u32>(var_0, var_0), vec4<i32>(2147483647i, u_input.a, 2147483647i, 30306i), u_input.e), 4294967295u))), i32(-1i) * -1i, !all(vec3<bool>(u_input.e.x <= u_input.a, false, true)));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.e.x, _wgslsmith_mod_i32(1i, u_input.e.x), _wgslsmith_clamp_i32(u_input.a, -27195i, u_input.a), u_input.e.x), select(_wgslsmith_mult_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, -1i, 1i), vec4<i32>(u_input.a, 0i, -1i, -1i)), _wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.e.x, -2147483647i, u_input.e.x), vec4<i32>(-30951i, 17118i, -26378i, -2147483647i))), abs(vec4<i32>(16953i, 12091i, ~25476i, u_input.e.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, all(vec4<bool>(true, true, false, false)), true, true), any(vec3<bool>(true, false, false)))));
    var var_3 = false;
    let var_4 = false;
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f - -728f)) + 1f)));
    var_5 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2287f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1385f, 765f))))))));
    var_1 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(-1130f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(269f, -154f, 1116f, 183f) - vec4<f32>(1396f, 820f, 545f, 2160f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1844f, -1420f, 414f, 989f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, 1483f, -1102f, 797f)))))), 1u);
}

