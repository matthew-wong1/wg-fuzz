struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = ~_wgslsmith_mult_u32(~(~abs(1u)), countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 47298u), vec2<u32>(4294967295u, 5255u))));
    var var_1 = Struct_3(vec3<f32>(2045f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(164f, 1147f, false)), 664f), 868f)), _wgslsmith_f_op_f32(f32(-1f) * -377f)), -select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, 0i, -48672i), vec3<i32>(0i, u_input.a.x, -34002i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -21247i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<bool>(true, true, true)), firstLeadingBit(1u), _wgslsmith_f_op_f32(-948f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))))));
    let var_2 = -var_1.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.d))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))) - var_1.d);
    let var_4 = _wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(1i, ~(-16201i), 2147483647i, -5803i) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18656u, var_0, 19795u), vec4<u32>(47004u, 0u, var_1.c, var_1.c)), ~var_1.c, _wgslsmith_mod_u32(0u, var_0), 4294967295u) % vec4<u32>(32u))), -firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(-29121i, 33650i, 1i, 44587i), vec4<i32>(var_1.b.x, u_input.a.x, 0i, var_2.x))), _wgslsmith_mod_vec4_i32(firstLeadingBit(-countOneBits(vec4<i32>(var_2.x, 1i, -2147483647i, -7455i))), max(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.b.x, 0i, var_2.x, -46482i), ~vec4<i32>(-18914i, 2147483647i, var_1.b.x, -24986i)), select(countOneBits(vec4<i32>(var_1.b.x, u_input.a.x, var_1.b.x, var_1.b.x)), select(vec4<i32>(2147483647i, var_2.x, -32458i, var_2.x), vec4<i32>(u_input.a.x, -28344i, -32649i, u_input.a.x), false), vec4<bool>(var_3, false, true, var_3)))));
    return !var_3;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = 3024i;
    var var_1 = func_3();
    var var_2 = Struct_4(Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(877f, 957f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1226f)))), _wgslsmith_f_op_f32(-551f + _wgslsmith_f_op_f32(f32(-1f) * -1035f))), firstLeadingBit(vec3<i32>(2147483647i, abs(u_input.a.x), -28208i)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0, 31895u, arg_0), ~vec3<u32>(arg_0, arg_0, 1u)), 896f), Struct_1(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, all(vec4<bool>(false, false, false, false)), all(vec3<bool>(false, false, true))), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-252f, _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -118f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 745f))))))), _wgslsmith_f_op_f32(-1000f + 950f), !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(1223f, 1748f)), _wgslsmith_f_op_f32(1642f - 689f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f))));
    let var_3 = Struct_2(var_2.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-451f, _wgslsmith_f_op_f32(-var_2.b.c.x))), var_2.a.b, Struct_1(var_2.b.a, _wgslsmith_f_op_vec4_f32(round(var_2.b.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.b.c * vec3<f32>(-868f, -2496f, -599f)))), vec2<f32>(var_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) + var_2.b.c.x))), !(countOneBits(min(-48448i, u_input.a.x)) <= ~(-1i)));
    var_1 = true;
    return var_2.b;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1578f, -101f, 124f) - vec3<f32>(500f, 483f, -303f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1058f, 525f, 1567f)))), vec3<i32>(-(~u_input.a.x), arg_0, reverseBits(u_input.a.x)), firstTrailingBit(~1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-207f, -831f, true)))), func_2(~65464u), 912f, any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false)));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, var_0.b.c.x))) - _wgslsmith_f_op_f32(ceil(759f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1503f * 2768f), var_0.a.d) - func_2(_wgslsmith_clamp_u32(var_0.a.c, var_0.a.c, var_0.a.c)).b.x)))));
    var var_2 = ~(-2147483647i) & _wgslsmith_sub_i32(var_0.a.b.x, select(u_input.a.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_0, 2147483647i, -18673i)), -var_0.a.b), true & (var_0.c >= -866f)));
    var var_3 = max(countOneBits(~(~vec4<u32>(var_0.a.c, var_0.a.c, var_0.a.c, 1u))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.c, 49938u, var_0.a.c, var_0.a.c), vec4<u32>(35183u, var_0.a.c, 0u, var_0.a.c)), ~vec4<u32>(var_0.a.c, 0u, var_0.a.c, var_0.a.c), vec4<u32>(3256u, 4294967295u, 0u, var_0.a.c))) << (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.c, 0u, var_0.a.c, 1u), vec4<u32>(var_0.a.c, var_0.a.c, 66386u, 4294967295u)), ~vec4<u32>(var_0.a.c, var_0.a.c, 4294967295u, var_0.a.c)) ^ vec4<u32>(~var_0.a.c, ~var_0.a.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.c, 1u, 4236u), vec3<u32>(var_0.a.c, 1u, 4294967295u)), ~62766u), _wgslsmith_div_vec4_u32(min(vec4<u32>(var_0.a.c, 3193u, 4294967295u, var_0.a.c), firstLeadingBit(vec4<u32>(var_0.a.c, 40949u, 109350u, var_0.a.c))), vec4<u32>(0u, _wgslsmith_sub_u32(var_0.a.c, 13902u), 1u, var_0.a.c ^ 4294967295u))) % vec4<u32>(32u));
    var var_4 = _wgslsmith_clamp_vec3_u32(var_3.yzw, _wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(~1u, ~var_3.x, ~4294967295u)), var_3.wyx), var_3.wyx | vec3<u32>(~var_3.x, firstTrailingBit(31885u) | min(1u, 10566u), 33682u));
    return Struct_2(Struct_1(!var_0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, -1155f, -493f, -1434f), vec4<f32>(748f, var_1, -666f, 2531f)))) + var_0.b.b), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))), var_1, _wgslsmith_f_op_f32(abs(func_2(41531u).c.x))), var_0.a.a.xx), var_0.b.d, countOneBits(-_wgslsmith_add_vec3_i32(-vec3<i32>(-16173i, 0i, -1i), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x))), Struct_1(select(!func_2(var_4.x).a, select(!var_0.b.a, func_2(1u).a, false), !(var_3.x < var_4.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -1077f) - _wgslsmith_f_op_f32(var_0.a.a.x - var_1)), var_0.b.d.x, _wgslsmith_f_op_f32(-442f + -1260f), _wgslsmith_div_f32(-676f, 272f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-518f, _wgslsmith_f_op_f32(-var_1), -456f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(204f, var_1) * vec2<f32>(var_1, var_0.c)), var_0.b.b.yy, vec2<bool>(true, true)))), func_3());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.x);
    var_0 = func_1(_wgslsmith_mod_i32(-4698i, ~(~var_0.c.x)) >> (~0u % 32u));
    let var_1 = Struct_2(Struct_1(var_0.d.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(787f, var_0.b.x, var_0.a.c.x, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d.c.x, 609f, var_0.a.c.x), vec3<f32>(var_0.b.x, var_0.b.x, -271f))) + var_0.d.b.wxw)), var_0.a.c.xy), func_2(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 61838u, 41972u), ~vec3<u32>(1u, 9647u, 42589u)), 1u)).c.zz, _wgslsmith_clamp_vec3_i32(-var_0.c, vec3<i32>(u_input.a.x, 0i, _wgslsmith_mod_i32(var_0.c.x, var_0.c.x)) | vec3<i32>(10320i, u_input.a.x, 42916i), _wgslsmith_add_vec3_i32(reverseBits(reverseBits(var_0.c)), vec3<i32>(select(var_0.c.x, 1i, var_0.a.a.x), var_0.c.x, -u_input.a.x))), var_0.a, var_0.b.x > var_0.d.b.x);
    var_0 = func_1(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, var_1.c.x), select(-33657i, u_input.a.x, func_1(-u_input.a.x).e)));
    let var_2 = ~select(~select(vec4<i32>(-38099i, 1i, 2147483647i, 42592i), vec4<i32>(22306i, -1i, var_0.c.x, 15715i), true) << (_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 0u, 24750u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.c.x, var_1.c.x), var_0.c.zy), -var_1.c.x, -var_0.c.x, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, 37325i, u_input.a.x), var_0.c), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c.x, u_input.a.x, -26719i), vec3<i32>(2180i, var_1.c.x, 19420i)))), select(!(!vec4<bool>(var_1.a.a.x, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.e, true, var_1.d.a.x), !vec4<bool>(false, true, true, var_1.d.a.x)), _wgslsmith_f_op_f32(abs(var_1.a.b.x)) > 415f));
    var_0 = Struct_2(var_1.d, var_0.b, reverseBits(-countOneBits(vec3<i32>(1i, -27043i, -14913i) | var_2.wxy)), var_0.a, (_wgslsmith_add_i32(u_input.a.x, var_1.c.x) == _wgslsmith_clamp_i32(var_1.c.x, 16566i << (1u % 32u), -14293i)) && true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1(-19242i).a.b.x), -30166i, _wgslsmith_f_op_vec3_f32(-var_0.d.b.www));
}

