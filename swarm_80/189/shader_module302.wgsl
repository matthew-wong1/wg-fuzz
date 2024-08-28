struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -18291i, 2147483647i) << (u_input.b % vec3<u32>(32u)), vec3<i32>(-22498i, -64945i, min(-1i, -28560i))), arg_1.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(-767f)), -469f, 1f, -446f))), countOneBits(~(vec4<i32>(0i, 32716i, -2147483647i, -41917i) << (vec4<u32>(arg_2, u_input.a, 1u, 1u) % vec4<u32>(32u))))));
    let var_1 = arg_1;
    var var_2 = firstTrailingBit(max(~arg_2, ~(~26567u)));
    var var_3 = vec3<u32>(~_wgslsmith_clamp_u32(1u, firstLeadingBit(u_input.c.x), ~55855u), firstLeadingBit(arg_2) & ~countOneBits(firstTrailingBit(34288u)), 1u);
    var var_4 = Struct_3(!(!arg_1.zz), Struct_2(Struct_1(vec3<i32>(34647i, -var_0.a.a.x, -var_0.a.d.x), true, var_0.a.c, -select(vec4<i32>(-6407i, 2147483647i, -1i, -2147483647i), var_0.a.d, vec4<bool>(var_1.x, false, var_0.a.b, false)))), _wgslsmith_div_u32(_wgslsmith_mod_u32(~arg_2, 6976u), abs(arg_2)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(62606u, var_3.x, u_input.b.x, var_3.x)), vec4<u32>(~1u, 1u, ~4294967295u, var_3.x)), _wgslsmith_mod_u32(33258u, arg_2)), 58641u);
    return _wgslsmith_dot_vec2_u32(var_3.zx << (firstTrailingBit(vec2<u32>(56903u, arg_2)) % vec2<u32>(32u)), countOneBits(vec2<u32>(4294967295u, var_4.e << (~var_4.e % 32u))));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32, arg_2: bool) -> u32 {
    let var_0 = select((_wgslsmith_sub_vec4_u32(~vec4<u32>(44089u, u_input.c.x, u_input.b.x, 1u), ~vec4<u32>(arg_1, 5688u, u_input.c.x, 0u)) & vec4<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(u_input.b.x, 4294967295u), 1u, 4294967295u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(1u ^ u_input.a, ~73692u, 118324u, u_input.a << (0u % 32u)), ~vec4<u32>(arg_1, arg_1, arg_1, 27832u)), vec4<u32>(20305u, func_3(false, select(vec3<bool>(false, arg_2, arg_0.x), vec3<bool>(false, false, arg_2), vec3<bool>(false, arg_0.x, false)), _wgslsmith_sub_u32(19131u, u_input.b.x)), ~arg_1 | _wgslsmith_div_u32(1u, 4294967295u), ~arg_1) >> (((vec4<u32>(u_input.c.x, u_input.c.x, arg_1, 5732u) | vec4<u32>(1u, 4294967295u, 1u, 0u)) | ~(~vec4<u32>(5544u, arg_1, 30572u, 72234u))) % vec4<u32>(32u)), !arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(604f - -104f), _wgslsmith_f_op_f32(f32(-1f) * -857f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(495f)), _wgslsmith_f_op_f32(480f - -690f))))));
    let var_2 = _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-(~(-15480i)), ~(-1i)), vec2<i32>(1i, abs(firstLeadingBit(-59340i)))), ~(~(-(~0i))));
    let var_3 = Struct_1(max(max(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2, 2147483647i, -45485i), vec3<i32>(-40910i, var_2, var_2)), countOneBits(vec3<i32>(-51268i, var_2, 2147483647i))), -vec3<i32>(var_2, var_2, var_2) >> ((vec3<u32>(u_input.a, 4294967295u, 4294967295u) >> (vec3<u32>(4294967295u, 4294967295u, 649u) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<i32>(12150i, _wgslsmith_div_i32(var_2, abs(var_2)), -countOneBits(var_2)), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(217f)))), 1413f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(880f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -264f)))), _wgslsmith_mult_vec4_i32(select(firstLeadingBit(countOneBits(vec4<i32>(var_2, var_2, -17904i, -1i))), reverseBits(reverseBits(vec4<i32>(-64474i, 1i, 1710i, var_2))), vec4<bool>(true, arg_2, true, true)), -_wgslsmith_add_vec4_i32(vec4<i32>(11288i, var_2, var_2, var_2) << (var_0 % vec4<u32>(32u)), ~vec4<i32>(var_2, var_2, -2147483647i, 2147483647i))));
    var var_4 = var_3;
    return var_0.x;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(arg_0.b.a.c, _wgslsmith_f_op_vec4_f32(-arg_0.b.a.c)));
    var var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_2.x, ~arg_2.x, u_input.a, arg_0.e), ~vec4<u32>(arg_1.x, 4294967295u, ~26580u, ~(~0u)), reverseBits(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 22880u, 1u, 18179u), vec4<u32>(0u, 24916u, u_input.b.x, arg_0.c) | vec4<u32>(39649u, arg_0.d, 86794u, arg_1.x)), ~vec4<u32>(4294967295u, 1u, 0u, 4294967295u))));
    var var_2 = max(_wgslsmith_add_vec4_u32(~(vec4<u32>(arg_1.x, arg_1.x, arg_0.e, arg_1.x) & vec4<u32>(4294967295u, 1u, 0u, 4984u)), ~(~vec4<u32>(arg_0.c, 1u, arg_0.c, 0u))) | ~(~max(vec4<u32>(1u, 4294967295u, 36074u, 13882u), vec4<u32>(var_1.x, arg_1.x, arg_0.d, arg_1.x))), countOneBits(abs(~(~vec4<u32>(var_1.x, arg_2.x, arg_1.x, 1u)))));
    var_1 = ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, var_1.x, var_1.x, var_2.x)), vec4<u32>(~arg_1.x, u_input.c.x, var_1.x, var_1.x)) >> (abs(vec4<u32>(arg_0.d, ~_wgslsmith_clamp_u32(arg_0.c, var_2.x, 11390u), 46397u, select(func_2(arg_0.a, 63695u, arg_0.b.a.b), ~18006u, arg_0.b.a.b))) % vec4<u32>(32u));
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(-arg_0.b.a.d.wxy & firstLeadingBit(arg_0.b.a.a), _wgslsmith_mult_vec3_i32(-arg_0.b.a.a, -vec3<i32>(1i, arg_0.b.a.a.x, arg_0.b.a.d.x))), arg_0.b.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.a.c))), abs(~abs(arg_0.b.a.d))));
    return _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.a.d.x, arg_0.b.a.d.x, 1i), firstLeadingBit(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.a.d.x, arg_3, arg_3), var_3.a.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec2<u32> {
    let var_0 = ~countOneBits(_wgslsmith_mult_u32(~36286u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 86100u)), ~vec4<u32>(0u, 11643u, 1u, u_input.c.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-810f, _wgslsmith_f_op_f32(select(-853f, _wgslsmith_f_op_f32(f32(-1f) * -435f), true)), -124f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1961f, 1455f))))))));
    let var_2 = _wgslsmith_sub_i32(~_wgslsmith_add_i32(-1i >> (~u_input.b.x % 32u), arg_0.x), i32(-1i) * -reverseBits(~arg_1.x));
    var var_3 = ~_wgslsmith_mod_i32(-arg_0.x, 1i);
    var_3 = 0i;
    return u_input.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(u_input.b.x, reverseBits(select(26719u | ~u_input.b.x, 11860u, any(vec2<bool>(true, true)))));
    var var_1 = u_input.b.yz | _wgslsmith_clamp_vec2_u32(abs(u_input.b.xx >> (vec2<u32>(var_0, var_0) % vec2<u32>(32u))), u_input.c, ~abs(reverseBits(vec2<u32>(var_0, var_0))));
    var_1 = _wgslsmith_mult_vec2_u32(~select(_wgslsmith_mod_vec2_u32(~u_input.c, max(vec2<u32>(var_1.x, var_0), u_input.c)), func_4(vec2<i32>(-2147483647i, -15616i), func_1(Struct_3(vec2<bool>(true, true), Struct_2(Struct_1(vec3<i32>(-10116i, 1i, -36241i), false, vec4<f32>(240f, -819f, -2186f, 396f), vec4<i32>(-2147483647i, -5582i, 33479i, -42776i))), 0u, 74997u, 35626u), vec2<u32>(var_0, 4294967295u), vec3<u32>(var_1.x, u_input.a, var_1.x), -1i)), false), countOneBits(countOneBits(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(771u, 50041u), vec2<u32>(16340u, var_1.x))))));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, var_0, var_0), u_input.b | vec3<u32>(4294967295u, 6382u, 44492u)), firstTrailingBit(u_input.b), _wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, var_0, var_1.x)), vec3<u32>(4294967295u, 30501u, u_input.b.x) >> (vec3<u32>(var_1.x, var_0, 4294967295u) % vec3<u32>(32u)))), ~(~(~(vec2<u32>(var_1.x, 17181u) | u_input.c))), vec2<f32>(1991f, -616f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -649f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-486f, -319f), vec2<f32>(-142f, -496f)) - vec2<f32>(857f, -474f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-128f, 278f))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1099f, -501f), vec2<f32>(1063f, -645f))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -780f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-243f, -246f))))));
}

