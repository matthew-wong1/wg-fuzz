struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: f32, arg_3: bool) -> vec4<u32> {
    var var_0 = ~u_input.a;
    var var_1 = -37185i;
    var_0 = select(abs(u_input.a >> (u_input.b % 32u)), -48878i, !(false && (67749u > _wgslsmith_div_u32(4294967295u, u_input.b))));
    let var_2 = Struct_1(select(vec2<bool>(all(select(vec4<bool>(arg_3, false, true, arg_3), vec4<bool>(false, false, true, arg_3), vec4<bool>(false, false, true, true))), any(vec4<bool>(arg_3, arg_3, true, true))), !select(vec2<bool>(true, arg_3), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(!(!arg_3), arg_3)), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(42353u, u_input.b, u_input.b, u_input.b) | vec4<u32>(u_input.b, u_input.b, u_input.b, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), countOneBits(vec4<u32>(7478u, u_input.b, u_input.b, 129170u)))) | vec4<u32>(~u_input.b, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 1u), vec4<u32>(u_input.b, u_input.b, 0u, 7082u))), u_input.b, ~_wgslsmith_mult_u32(95310u, 1u)), vec3<i32>(~u_input.a, u_input.a, -39642i));
    var_1 = var_2.c.x;
    return var_2.b;
}

fn func_2(arg_0: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_mod_vec3_u32(max(~(~vec3<u32>(u_input.b, u_input.b, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u)) << (abs(vec3<u32>(4294967295u, u_input.b, 1u)) % vec3<u32>(32u))), countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(17988u, 0u, u_input.b), select(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(false, true, arg_0.x))))), Struct_2(Struct_1(select(vec2<bool>(arg_0.x, arg_0.x), !vec2<bool>(arg_0.x, arg_0.x), select(arg_0.yx, arg_0.yz, arg_0.x)), max(abs(vec4<u32>(u_input.b, u_input.b, u_input.b, 85771u)), func_3(vec3<f32>(-1811f, -1498f, 184f), vec3<f32>(1308f, 442f, 1000f), -401f, arg_0.x)), vec3<i32>(_wgslsmith_sub_i32(-1i, 1i), 14563i, _wgslsmith_mult_i32(u_input.a, 6463i))), vec4<f32>(459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -817f)), -190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f))), 1i, Struct_1(vec2<bool>(true, arg_0.x || false), func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(825f, -1678f, 711f) - vec3<f32>(-284f, -617f, 1212f)), vec3<f32>(-1801f, 567f, -663f), _wgslsmith_f_op_f32(floor(-1107f)), true), vec3<i32>(u_input.a, 9979i, u_input.a)), !(!(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)))));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~var_0.a, ~_wgslsmith_sub_vec3_u32(var_0.b.d.b.yyy >> (vec3<u32>(var_0.a.x, 5142u, 17611u) % vec3<u32>(32u)), var_0.a)), ~vec3<u32>(~reverseBits(u_input.b), ~(~var_0.b.a.b.x), _wgslsmith_clamp_u32(~u_input.b, var_0.b.a.b.x ^ var_0.b.d.b.x, ~0u)));
    var var_2 = Struct_3(abs(abs(~(vec3<u32>(58258u, u_input.b, u_input.b) ^ var_0.a))), var_0.b);
    var var_3 = ~54639u;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1596f * _wgslsmith_f_op_f32(ceil(-2046f))) - _wgslsmith_f_op_f32(var_2.b.b.x * _wgslsmith_f_op_f32(-339f + -1633f))) - 259f));
    return _wgslsmith_add_vec2_i32(var_0.b.d.c.yy, var_2.b.d.c.zz);
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(-1i, u_input.a) | 1i, u_input.a), -func_2(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, arg_0, arg_0))) & reverseBits(vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), 2147483647i)), vec2<i32>(~u_input.a, abs(-u_input.a)));
    let var_1 = 14617i;
    var_0 = firstTrailingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x ^ var_0.x, _wgslsmith_sub_i32(1i, 20419i)), abs(~vec2<i32>(20607i, var_1))));
    var_0 = vec2<i32>(1i, select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, firstTrailingBit(var_0.x)), func_2(vec3<bool>(true, true, arg_0))), abs(abs(~1i)), select(!any(vec4<bool>(false, arg_0, arg_0, true)), any(vec3<bool>(arg_0, arg_0, true)), _wgslsmith_div_u32(62476u, u_input.b) > 39209u)));
    var_0 = vec2<i32>(-(~_wgslsmith_clamp_i32(~u_input.a, select(-2147483647i, 34822i, arg_0), -2147483647i)), ~abs(1i) << (u_input.b % 32u));
    return Struct_1(!select(vec2<bool>(true, true), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(false, arg_0), arg_0), vec2<bool>(arg_0, false)), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, false), 0u <= u_input.b)), vec4<u32>(1u, ~u_input.b, u_input.b, 0u), firstLeadingBit(vec3<i32>(2147483647i, _wgslsmith_sub_i32(var_0.x, 2147483647i) ^ _wgslsmith_clamp_i32(var_1, var_1, u_input.a), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, u_input.a, var_1, var_0.x)), countOneBits(vec4<i32>(var_1, -2147483647i, var_1, u_input.a))))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.b.x, 241f) + vec2<f32>(arg_3.b.b.x, -528f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.b.b.x, arg_3.b.b.x), vec2<f32>(arg_0.b.b.x, -277f), arg_2.b.a.x))) - arg_0.b.b.yx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1089f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_3.b.b.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -210f), arg_0.b.b.x)), arg_1.a.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.b.b.zz + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(arg_0.b.b.zy)), arg_3.b.b.yz))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.b.x, 939f)))));
    var var_1 = Struct_2(func_1(true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b.b.x * -844f))), -1977f, _wgslsmith_f_op_f32(-arg_0.b.b.x))), arg_3.b.a.c.x, arg_2.b, vec4<bool>(false, all(!arg_3.b.e) || false, u_input.a <= _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, -1i), arg_2.a.c.x), arg_0.b.a.a.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.b.b.x, arg_0.b.b.x))))))));
    var_1 = Struct_2(func_1(!arg_0.b.a.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(564f, _wgslsmith_f_op_f32(-1987f - _wgslsmith_f_op_f32(trunc(426f))), -142f, -2689f)), arg_3.b.a.c.x, Struct_1(func_1(false).a, ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.a.b.x, arg_3.b.a.b.x, 0u, 4294967295u), _wgslsmith_div_vec4_u32(arg_0.b.d.b, vec4<u32>(arg_2.a.b.x, u_input.b, arg_0.b.d.b.x, 13311u)), vec4<u32>(0u, 14622u, 57607u, arg_1.b.x)), arg_2.a.c), select(arg_3.b.e, vec4<bool>(all(select(arg_3.b.e.wzw, arg_3.b.e.yxx, vec3<bool>(true, true, arg_2.a.a.x))), arg_0.b.a.a.x, !(4294967295u != arg_3.a.x), select(arg_3.b.a.a.x, var_1.e.x, arg_2.a.a.x) & arg_2.b.a.x), arg_0.b.c < _wgslsmith_div_i32(1i, 2147483647i)));
    return select(arg_3.b.e.wxz, vec3<bool>(true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f - arg_3.b.b.x), var_0.x, true)) > _wgslsmith_div_f32(-1383f, _wgslsmith_div_f32(-2796f, var_1.b.x)), true), !arg_0.b.e.wxy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), vec3<bool>(true, true, true), func_4(Struct_3(vec3<u32>(u_input.b, u_input.b, 33154u), Struct_2(Struct_1(vec2<bool>(false, false), vec4<u32>(u_input.b, 4294967295u, 0u, u_input.b), vec3<i32>(-4313i, u_input.a, u_input.a)), vec4<f32>(-643f, -734f, -188f, -1125f), u_input.a, Struct_1(vec2<bool>(true, false), vec4<u32>(33710u, 49898u, u_input.b, u_input.b), vec3<i32>(1i, 2147483647i, u_input.a)), vec4<bool>(true, false, false, true))), func_1(true), Struct_4(Struct_1(vec2<bool>(true, true), vec4<u32>(19992u, u_input.b, 0u, u_input.b), vec3<i32>(2147483647i, u_input.a, 0i)), Struct_1(vec2<bool>(false, true), vec4<u32>(u_input.b, 4294967295u, 69604u, u_input.b), vec3<i32>(u_input.a, u_input.a, 11219i))), Struct_3(vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_2(Struct_1(vec2<bool>(true, false), vec4<u32>(14589u, 69655u, u_input.b, 1u), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec4<f32>(-798f, 1000f, -1000f, -455f), 1i, Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.b, u_input.b, u_input.b, 63422u), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec4<bool>(true, false, true, false))))), vec3<bool>(true, false, (1u ^ u_input.b) > (u_input.b << (5389u % 32u))));
    var var_1 = select(~vec4<u32>(u_input.b, 1u, func_1(var_0.x).b.x, ~u_input.b), _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.b, 10568u, 0u, 70673u)), ~vec4<u32>(0u, u_input.b, 10636u, u_input.b)), vec4<bool>(all(vec4<bool>(false, var_0.x, false, var_0.x)), true, true, var_0.x)) & vec4<u32>(_wgslsmith_mult_u32(~955u, ~u_input.b) | u_input.b, u_input.b >> (~0u % 32u), 4294967295u, ~34890u);
    var var_2 = reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, var_1.x, 1u), ~u_input.b, 1u, var_1.x) >> (vec4<u32>(~var_1.x, 0u, ~var_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, var_1.x, 19803u), vec4<u32>(var_1.x, var_1.x, 1u, var_1.x))) % vec4<u32>(32u)), reverseBits(countOneBits(vec4<u32>(u_input.b, 4294967295u, var_1.x, u_input.b)))));
    let var_3 = Struct_3(_wgslsmith_add_vec3_u32(var_2.zyy, min(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, 64148u), var_1.yww, var_1.yzz), ~var_2.yxw) << ((~vec3<u32>(0u, 4294967295u, 0u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), Struct_2(func_1(u_input.b >= 1u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(-934f, -1591f)), _wgslsmith_f_op_f32(floor(-824f)), _wgslsmith_f_op_f32(1198f * 2094f), -571f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -524f, 1385f, -717f) * vec4<f32>(278f, 278f, 1084f, -1889f)), vec4<f32>(-1581f, -1000f, 336f, -139f)), vec4<bool>(any(vec4<bool>(false, var_0.x, false, false)), u_input.a > -46554i, false, func_1(var_0.x).a.x))), u_input.a, func_1(var_0.x), vec4<bool>(false, true, select(var_0.x, var_0.x, true) | true, false)));
    var var_4 = !var_3.b.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_2.wz);
}

