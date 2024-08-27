struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = ~vec4<u32>(arg_0.c.b, ~firstLeadingBit(arg_0.e.a), abs(arg_0.c.a), u_input.d);
    let var_1 = Struct_2(Struct_1(~_wgslsmith_div_u32(~u_input.b.x, 10916u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_0.e.b, arg_0.c.a, 4294967295u, 1u), ~vec4<u32>(10299u, 4178u, 4294967295u, u_input.a), !vec4<bool>(false, false, arg_0.a.x, arg_0.d)), ~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.e.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1180f, 246f, -313f, arg_0.b)), all(vec4<bool>(arg_0.d, arg_0.a.x, true, arg_0.a.x)))) * _wgslsmith_f_op_vec4_f32(arg_0.e.c - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.c.x, arg_0.b, -443f, -346f) + arg_0.c.c))), _wgslsmith_f_op_vec4_f32(arg_0.e.c + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(arg_0.c.c, arg_0.c.d))))), arg_0.e, abs(-vec2<i32>(_wgslsmith_mult_i32(1i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -17954i), vec2<i32>(0i, u_input.c)))), _wgslsmith_mult_u32(20242u, var_0.x), Struct_1(115938u, ~_wgslsmith_add_u32(1u, ~var_0.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-160f))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.d.x, arg_0.e.d.x)), arg_0.c.c.x), arg_0.c.d));
    let var_2 = Struct_3(!select(vec2<bool>(!arg_0.d, arg_0.a.x), arg_0.a, !vec2<bool>(arg_0.a.x, true)), reverseBits(_wgslsmith_add_vec4_u32(~min(vec4<u32>(4294967295u, arg_0.e.a, 65215u, 14209u), vec4<u32>(51049u, var_0.x, var_0.x, 4294967295u)), min(~vec4<u32>(5531u, 1u, 22324u, arg_0.e.b), select(vec4<u32>(62043u, var_0.x, var_1.e.a, 88862u), vec4<u32>(1u, 1u, arg_0.c.a, var_0.x), vec4<bool>(arg_0.a.x, false, arg_0.a.x, true))))));
    let var_3 = var_0.xx;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.d.x, var_1.e.c.x));
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = -vec2<i32>(1i, i32(-1i) * -u_input.c);
    var_0 = abs(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(u_input.c, var_0.x)), -vec2<i32>(23693i, 0i)) | vec2<i32>(firstLeadingBit(var_0.x), u_input.c));
    var var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1137f, -1856f, 274f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1181f, -774f, -2045f) + vec3<f32>(362f, -842f, -318f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(151f, 1206f, 233f))), vec3<bool>(true, true, true))))), 1i);
    let var_2 = Struct_2(Struct_1(firstTrailingBit(arg_0.x), max(42643u, u_input.b.x) | (51112u ^ arg_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -283f, var_1.a.x, var_1.a.x) * vec4<f32>(var_1.a.x, var_1.a.x, -621f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1375f, var_1.a.x, var_1.a.x, var_1.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 1857f, -510f, var_1.a.x) * vec4<f32>(1040f, var_1.a.x, -1157f, var_1.a.x))))), Struct_1(~(~(~160499u)), _wgslsmith_sub_u32(arg_0.x, func_3(Struct_4(vec2<bool>(true, true), -505f, Struct_1(u_input.b.x, 4294967295u, vec4<f32>(-752f, 485f, var_1.a.x, var_1.a.x), vec4<f32>(var_1.a.x, var_1.a.x, 565f, var_1.a.x)), true, Struct_1(4294967295u, 0u, vec4<f32>(1930f, 746f, var_1.a.x, -1099f), vec4<f32>(var_1.a.x, 166f, var_1.a.x, -1187f))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-342f, 2028f, -211f, 318f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, var_1.a.x, var_1.a.x, 143f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, 1534f, 2398f, var_1.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(789f, var_1.a.x, var_1.a.x, -1943f) - vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -1000f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.a.x, 1432f, var_1.a.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-199f, var_1.a.x, var_1.a.x, 434f) + vec4<f32>(var_1.a.x, 354f, -708f, var_1.a.x))))))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(var_0.x, var_0.x, var_1.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, 46493i, -1i, var_0.x), vec4<i32>(var_0.x, -1i, var_1.b, 2777i))) | _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(var_1.b), var_1.b), -abs(vec2<i32>(var_1.b, -3053i)), -(~vec2<i32>(49421i, 2147483647i))), _wgslsmith_clamp_u32(~arg_0.x, 36382u, min(_wgslsmith_dot_vec3_u32(u_input.b, countOneBits(vec3<u32>(arg_0.x, 66920u, arg_0.x))), ~arg_0.x)), Struct_1(~(u_input.b.x & abs(arg_0.x)), firstTrailingBit(1u) & 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-204f, var_1.a.x, var_1.a.x, var_1.a.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -972f, 740f) - _wgslsmith_div_vec4_f32(vec4<f32>(578f, var_1.a.x, 297f, var_1.a.x), vec4<f32>(-664f, var_1.a.x, -346f, var_1.a.x)))), vec4<f32>(-1199f, -2258f, var_1.a.x, var_1.a.x)));
    let var_3 = _wgslsmith_sub_i32(-abs(-20433i), 2147483647i & var_2.c.x);
    return Struct_3(select(vec2<bool>((-209f == var_2.a.c.x) || (939f < var_1.a.x), u_input.a < firstLeadingBit(1u)), vec2<bool>(min(u_input.d, 0u) < func_3(Struct_4(vec2<bool>(false, true), -772f, Struct_1(u_input.a, 0u, var_2.a.d, var_2.e.d), false, var_2.b)), false), false), arg_0);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_1(~4294967295u, u_input.e.x, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1137f + -738f) + _wgslsmith_f_op_f32(-1000f + 594f)), -375f, _wgslsmith_f_op_f32(f32(-1f) * -495f), _wgslsmith_f_op_f32(f32(-1f) * -322f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1383f, _wgslsmith_f_op_f32(456f * -1681f), _wgslsmith_f_op_f32(sign(-887f)), _wgslsmith_f_op_f32(-216f - 855f)))));
    var_0 = Struct_1(reverseBits(var_0.b & ~u_input.b.x) | min(var_0.a, 1u & var_0.b), ~(~(~(~4294967295u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.c), vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, 1589f), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)) * vec4<f32>(_wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(abs(var_0.d.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-202f, -428f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-909f)) - -130f), _wgslsmith_f_op_f32(-211f * 540f))));
    var_0 = Struct_1(~_wgslsmith_add_u32(reverseBits(~4294967295u), firstLeadingBit(arg_2.x >> (u_input.b.x % 32u))), 4294967295u | _wgslsmith_dot_vec3_u32(func_2(arg_0.b).b.wzy, arg_0.b.wxy), var_0.c, vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(-var_0.c.x)), 1616f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-189f, var_0.c.x), _wgslsmith_f_op_f32(trunc(963f))) - var_0.c.x), -1724f));
    var var_1 = min(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, 0u, 1u, arg_2.x) | arg_0.b, arg_0.b), arg_0.b), arg_0.b);
    var var_2 = arg_0.b.zww;
    return vec2<i32>(select(_wgslsmith_sub_i32(-1i, firstTrailingBit(1i)), arg_3.x, arg_0.a.x), u_input.c) & (arg_3 & vec2<i32>(arg_3.x, _wgslsmith_clamp_i32(arg_3.x << (var_0.a % 32u), _wgslsmith_clamp_i32(arg_3.x, -2147483647i, arg_3.x), _wgslsmith_mod_i32(-19429i, u_input.c))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(arg_3.e.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f))) != -2133f;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_3.e.c)));
    let var_2 = false;
    let var_3 = _wgslsmith_sub_vec2_i32(func_4(func_2(vec4<u32>(15532u, _wgslsmith_mod_u32(u_input.e.x, arg_1.b.x), arg_1.b.x, min(arg_0.b.x, 1u))), vec3<bool>(arg_1.a.x, u_input.c > u_input.c, false), ~countOneBits(firstLeadingBit(arg_1.b.ww)), vec2<i32>(select(u_input.c, 27074i, false), -53775i) | abs(vec2<i32>(u_input.c, -9420i))), vec2<i32>(16678i, u_input.c));
    return select(select(arg_2.xx, func_2(select(vec4<u32>(1u, 1u, 25026u, 39332u), reverseBits(arg_1.b), true)).a, arg_0.a), func_2(select(arg_0.b, vec4<u32>(func_2(vec4<u32>(u_input.a, arg_1.b.x, 1u, arg_1.b.x)).b.x, arg_3.c.a, 0u, _wgslsmith_div_u32(arg_0.b.x, 0u)), var_2)).a, all(vec4<bool>((u_input.c != 0i) == arg_2.x, arg_2.x, func_2(vec4<u32>(4294967295u, u_input.b.x, arg_1.b.x, 0u)).a.x, arg_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(34845i, -2147483647i, u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 41014i, u_input.c, -18566i), vec4<i32>(-56806i, 59387i, 2147483647i, u_input.c))) << (firstLeadingBit(u_input.b.x >> (76038u % 32u)) % 32u)));
    var var_1 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), func_1(Struct_3(vec2<bool>(true, true), vec4<u32>(u_input.e.x, 12651u, 1u, u_input.a)), Struct_3(vec2<bool>(false, false), vec4<u32>(28508u, 4294967295u, 17222u, u_input.b.x)), vec4<bool>(true, true, true, true), Struct_4(vec2<bool>(false, false), 1184f, Struct_1(0u, u_input.d, vec4<f32>(1016f, 468f, 1041f, -198f), vec4<f32>(-547f, 1017f, 1240f, 655f)), true, Struct_1(u_input.a, u_input.b.x, vec4<f32>(1399f, -689f, -880f, -427f), vec4<f32>(1277f, -166f, 2005f, -353f)))), true), vec2<bool>(all(vec3<bool>(true, false, true)), u_input.a < 66237u)), vec2<bool>(true, true));
    var var_2 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(u_input.b), abs(vec3<u32>(4131u, 4294967295u, 79214u))), abs(abs(u_input.b.x))), _wgslsmith_dot_vec2_u32(~u_input.e, _wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.a, u_input.e.x), u_input.e), reverseBits(u_input.b.xx))) & 50591u, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1444f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(665f, -2054f))), _wgslsmith_div_f32(_wgslsmith_div_f32(717f, 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-594f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(573f * _wgslsmith_f_op_f32(f32(-1f) * -375f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1335f, 766f, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(3727f)), _wgslsmith_f_op_f32(922f - -1233f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(895f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1645f, -363f))))), -289f));
    var var_3 = ~_wgslsmith_clamp_i32(u_input.c, -33601i, -1i);
    let var_4 = vec2<bool>(!any(!select(vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), true)), true);
    var_2 = Struct_1(~var_2.b, _wgslsmith_div_u32(u_input.d, _wgslsmith_div_u32(~(~13940u), ~(~var_2.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.d.x, 1509f)), _wgslsmith_f_op_f32(min(var_2.c.x, _wgslsmith_f_op_f32(-598f * _wgslsmith_f_op_f32(var_2.c.x - 1027f)))), _wgslsmith_f_op_f32(f32(-1f) * -1132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_2.c.x, var_2.c.x)), _wgslsmith_f_op_f32(-var_2.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.d.x, 2907f, -124f, 1378f)))))) + _wgslsmith_f_op_vec4_f32(-var_2.c)));
    var_3 = -46627i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_add_vec4_u32(reverseBits(firstLeadingBit(~vec4<u32>(1u, u_input.e.x, 4294967295u, u_input.e.x))), vec4<u32>(1285u, abs(1u << (u_input.a % 32u)), firstLeadingBit(u_input.b.x << (var_2.a % 32u)), 1u)), abs(min(vec4<u32>(0u, var_2.b, u_input.b.x, u_input.b.x), vec4<u32>(var_2.b, var_2.a, var_2.a, u_input.e.x)) ^ vec4<u32>(1u, 33238u, 4294967295u, var_2.a)) | vec4<u32>(_wgslsmith_div_u32(~var_2.b, ~1u), ~(~4294967295u), _wgslsmith_div_u32(firstLeadingBit(u_input.b.x), func_2(vec4<u32>(var_2.a, 1u, 4294967295u, 64409u)).b.x), abs(4294967295u)), ~_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(30178i, u_input.c) ^ vec2<i32>(var_0, -2147483647i), min(vec2<i32>(u_input.c, var_0), vec2<i32>(9426i, var_0))), ~vec2<i32>(0i, u_input.c)));
}

