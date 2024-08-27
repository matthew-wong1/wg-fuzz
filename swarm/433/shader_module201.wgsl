struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 1i, 1i), vec3<i32>(1484i, 0i, 52367i)), _wgslsmith_sub_i32(4691i, 0i)), -vec2<i32>(1i, 1i)) << (6636u % 32u);
    let var_1 = Struct_1(vec3<i32>(select(reverseBits(_wgslsmith_add_i32(-37691i, -33985i)), -23192i, true), 0i, ~firstLeadingBit(-2147483647i) << (_wgslsmith_add_u32(4294967295u, u_input.a.x & u_input.a.x) % 32u)), false, 8169i, _wgslsmith_mod_i32(~min(41811i << (u_input.a.x % 32u), ~(-1i)), _wgslsmith_add_i32(~countOneBits(7875i), ~(i32(-1i) * -38095i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(402f)))), 591f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1939f, _wgslsmith_f_op_f32(-1021f - 1157f))))) * vec2<f32>(-140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1767f, -735f))))));
    var_0 = var_1.a.x;
    var var_3 = select(select(vec3<bool>(all(vec2<bool>(var_1.b, var_1.b)) | true, -var_1.d > (var_1.a.x << (u_input.a.x % 32u)), true), !(!select(vec3<bool>(true, var_1.b, false), vec3<bool>(false, var_1.b, false), false)), var_1.b), select(vec3<bool>(!all(vec3<bool>(var_1.b, var_1.b, true)), any(vec2<bool>(var_1.b, false)), var_1.b), select(!vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(any(vec3<bool>(var_1.b, true, false)), var_1.b, any(vec3<bool>(var_1.b, true, var_1.b))), select(vec3<bool>(var_1.b, var_1.b, var_1.b), !vec3<bool>(true, true, var_1.b), select(vec3<bool>(false, false, true), vec3<bool>(false, true, var_1.b), var_1.b))), !(!(!vec3<bool>(false, var_1.b, var_1.b)))), select(!select(vec3<bool>(var_1.b, true, false), vec3<bool>(var_1.b, true, var_1.b), var_1.b), vec3<bool>(select(true, var_1.b, var_1.b), var_1.b, !var_1.b || false), select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.b, false, var_1.b), any(vec3<bool>(false, var_1.b, var_1.b))), vec3<bool>(true, var_1.d >= var_1.c, var_2.x > var_2.x), !vec3<bool>(var_1.b, var_1.b, var_1.b))));
    return vec2<u32>(max(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zz), u_input.a.x) | 39217u, u_input.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_1(vec3<i32>(5153i, arg_0.d, select(arg_0.d & (arg_0.a.x | arg_0.c), arg_0.c, arg_0.b)), true, -16962i, ~2147483647i);
    let var_1 = var_0.c;
    var var_2 = Struct_4(~arg_2.x);
    var_2 = Struct_4(14326u);
    var_2 = Struct_4(~48030u);
    return false;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = vec2<bool>(!arg_1, func_4(arg_2, func_3(), ~(~u_input.a)));
    let var_2 = true;
    var_0 = ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 32510u), vec4<u32>(u_input.a.x, 90339u, u_input.a.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 39616u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x))), vec4<u32>(u_input.a.x ^ u_input.a.x, ~46647u, select(2143u, u_input.a.x, false), ~31489u)));
    var_1 = vec2<bool>(true, any(select(vec2<bool>(arg_1 | arg_2.b, false), vec2<bool>(!var_1.x, arg_1), (arg_2.d == -2147483647i) && var_1.x)));
    return u_input.a.x;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = -7793i & _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(-1i, -32060i, -57504i)))), ~1i);
    return Struct_1(-(~_wgslsmith_clamp_vec3_i32(vec3<i32>(69394i, var_0, -1i) | vec3<i32>(var_0, 4251i, 6390i), ~vec3<i32>(-1i, 35442i, 0i), ~vec3<i32>(7i, var_0, var_0))), true || !(!all(vec3<bool>(true, true, false))), var_0, _wgslsmith_mod_i32(~(~var_0 >> (59786u % 32u)), countOneBits(45360i)));
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_4(_wgslsmith_mult_u32(~(~u_input.a.x), 0u) >> (u_input.a.x % 32u));
    let var_1 = func_5(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(677f, -1602f)) + _wgslsmith_f_op_f32(748f * -2131f))), !(12186i > firstTrailingBit(-1i)), Struct_1(-vec3<i32>(1i, 0i, -2147483647i), true, ~(-8396i), -(~(-21025i)))), var_0.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1693f * -2025f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(568f)), _wgslsmith_f_op_f32(-322f * -522f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1044f))) - _wgslsmith_f_op_f32(trunc(1000f)))));
    let var_2 = func_5(~(~12453u ^ u_input.a.x), 11328u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1015f)), _wgslsmith_f_op_f32(abs(-1096f))), _wgslsmith_f_op_f32(trunc(141f)), _wgslsmith_div_f32(-934f, -1276f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1752f + 1112f)), _wgslsmith_f_op_f32(trunc(270f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(100f + 827f))))));
    var var_3 = var_0.a;
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(342f, -188f, 983f, 395f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-389f, 488f, 227f, 940f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) - _wgslsmith_f_op_f32(round(-339f))), _wgslsmith_f_op_f32(-818f - -1031f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-816f - -620f))), 644f)), _wgslsmith_f_op_f32(842f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(474f)), _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(-252f, 611f)))), var_2.a.xx, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1471f, -239f, true)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(982f * 1000f))), var_1.b && func_4(var_2, vec2<u32>(0u, 15201u), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)))))), vec2<bool>(false || !var_2.b, func_5(var_0.a, ~_wgslsmith_mod_u32(var_0.a, u_input.a.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1392f, -663f, 1214f)))).b));
    return vec3<bool>(false, true, all(vec4<bool>(var_4.c.x > var_1.a.x, true | var_2.b, true, var_1.b | var_4.e.x)) & (-209f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(144f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !any(func_1());
    var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1229f)))));
    var_0 = true;
    var var_2 = func_5(abs(~(~1u) & u_input.a.x), max(_wgslsmith_mod_u32(abs(func_2(-1063f, true, Struct_1(vec3<i32>(2147483647i, -14234i, 2147483647i), true, -42702i, -1i))), _wgslsmith_div_u32(func_3().x, ~24571u)), 69782u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, 122f) * _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(203f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) - -364f)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(356f, var_1, 961f)))), vec3<f32>(_wgslsmith_f_op_f32(-352f * var_1), _wgslsmith_f_op_f32(max(1144f, -1100f)), _wgslsmith_f_op_f32(trunc(var_1)))))));
    let var_3 = Struct_4(65307u);
    var_2 = Struct_1(vec3<i32>(var_2.a.x, -2147483647i, 3921i), !select(any(!vec3<bool>(var_2.b, var_2.b, var_2.b)), any(!vec4<bool>(true, var_2.b, false, var_2.b)), false), _wgslsmith_dot_vec4_i32(~vec4<i32>(firstTrailingBit(59194i), var_2.a.x, -var_2.a.x, -32682i), _wgslsmith_mod_vec4_i32(~vec4<i32>(var_2.c, 0i, var_2.a.x, var_2.d), vec4<i32>(var_2.a.x | var_2.a.x, _wgslsmith_add_i32(var_2.a.x, 0i), var_2.c, countOneBits(-13821i)))), ~_wgslsmith_sub_i32(-countOneBits(-1i), ~_wgslsmith_sub_i32(-1i, var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(-43527i, _wgslsmith_sub_vec2_i32(firstTrailingBit(var_2.a.yx) & select(firstTrailingBit(vec2<i32>(var_2.d, var_2.c)), var_2.a.zx, 4294967295u < u_input.a.x), vec2<i32>(0i & _wgslsmith_clamp_i32(var_2.c, -1i, var_2.d), var_2.c)), ~firstTrailingBit(vec2<u32>(~var_3.a, ~var_3.a)), vec4<i32>(var_2.a.x, firstTrailingBit(0i), var_2.d, var_2.d), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(max(vec4<i32>(var_2.d, 29070i, 15858i, 38360i), _wgslsmith_mod_vec4_i32(vec4<i32>(-80344i, 1i, var_2.a.x, var_2.a.x), vec4<i32>(-11i, -19145i, var_2.c, 34933i))), ~(vec4<i32>(var_2.c, var_2.c, var_2.a.x, -1i) ^ vec4<i32>(var_2.c, 0i, var_2.a.x, var_2.a.x))), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_2.c, -64360i, var_2.c, var_2.c) & abs(vec4<i32>(var_2.d, 0i, 37189i, var_2.d)), vec4<i32>(var_2.d, var_2.a.x, -13442i, -var_2.a.x))));
}

