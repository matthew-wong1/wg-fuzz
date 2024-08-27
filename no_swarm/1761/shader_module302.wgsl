struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = vec2<bool>(!all(arg_0), select(any(!(!arg_0.yx)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1994f))) <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1251f, 1000f)), true));
    return 47366i;
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(true, ~0u, arg_3, arg_0.b.x, arg_1);
    global0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(~global0.x & ~arg_2), -(~max(global0.x, -1i)), global0.x), ~(~abs(vec3<i32>(global0.x, arg_2, global0.x))), (~vec3<i32>(arg_2, global0.x, -2147483647i) | min(vec3<i32>(arg_2, arg_2, global0.x), -vec3<i32>(arg_2, -13937i, global0.x))) ^ select(vec3<i32>(arg_2 ^ -1i, ~global0.x, -arg_2), vec3<i32>(arg_2, -global0.x, 1i), select(-1i, global0.x, false) >= global0.x));
    let var_1 = Struct_1(vec4<bool>(all(!vec4<bool>(arg_3.a.x, false, false, arg_3.a.x)), true, -2147483647i == _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(11672i, global0.x), global0.xy), global0.x), !arg_0.c.a.x), countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_3.b, var_0.c.b, min(vec4<u32>(arg_1, 45101u, 47931u, arg_3.b.x), arg_0.c.b)), arg_0.c.b)));
    let var_2 = Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1944f, 1321f)))), _wgslsmith_f_op_f32(-945f - _wgslsmith_f_op_f32(-1000f - 827f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1374f * 634f) * _wgslsmith_f_op_f32(select(289f, -1833f, arg_0.b.x))), _wgslsmith_f_op_f32(ceil(-433f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))), 209f);
    let var_3 = var_2;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_3.a.xxz))));
}

fn func_4(arg_0: vec3<f32>) -> f32 {
    global0 = select(~vec3<i32>(global0.x, -36316i, 8806i), ~(vec3<i32>(-1i) * -vec3<i32>(4304i, -13374i, global0.x)), false) & vec3<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(61564i, global0.x, global0.x, 1i), vec4<i32>(371i, 1i, global0.x, 1i)), countOneBits(vec4<i32>(24810i, -2147483647i, global0.x, -1i) >> (vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))), -11589i, 0i);
    var var_0 = u_input.a.x;
    var var_1 = -global0.x & -17920i;
    let var_2 = ~(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(global0.x, 0i, global0.x, -15439i), vec4<i32>(global0.x, 2147483647i, 56809i, 82874i), true), vec4<i32>(global0.x, global0.x, -2147483647i, global0.x), select(vec4<i32>(33700i, global0.x, 36225i, global0.x), vec4<i32>(global0.x, global0.x, global0.x, -2147483647i), true))) >> ((select(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 49673u, 43823u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), vec4<u32>(u_input.a.x, 6229u | u_input.a.x, abs(u_input.a.x), 1u), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true))) & reverseBits(~reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 62073u, 0u)))) % vec4<u32>(32u));
    global0 = min(_wgslsmith_mult_vec3_i32(min(abs(vec3<i32>(-1i, global0.x, var_2.x) | vec3<i32>(global0.x, 27402i, global0.x)), vec3<i32>(~global0.x, global0.x, 1i)), vec3<i32>(i32(-1i) * -global0.x, 2147483647i, _wgslsmith_mult_i32(~0i, -3568i))), vec3<i32>(countOneBits(firstLeadingBit(1i)) ^ var_2.x, _wgslsmith_mod_i32(max(~var_2.x, -global0.x), firstTrailingBit(~var_2.x)), 1i >> (1u % 32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1811f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1454f, _wgslsmith_f_op_f32(3295f + arg_0.x)), -235f))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> vec3<i32> {
    var var_0 = vec3<f32>(1342f, -1347f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-406f - 1105f), _wgslsmith_div_f32(-784f, -2308f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(arg_0.a.x, vec3<bool>(false, false, arg_0.a.x), arg_0), arg_0.b.x, 0i, Struct_1(arg_0.a, vec4<u32>(0u, arg_0.b.x, arg_0.b.x, 1u)))))) + _wgslsmith_f_op_f32(-1070f * 1683f))));
    var var_1 = Struct_4(arg_0.a.x, arg_0.a.xxy, arg_0);
    var var_2 = abs(_wgslsmith_clamp_vec2_i32(global0.yz, ~arg_2, max(global0.xx, vec2<i32>(arg_2.x, global0.x))) << (~vec2<u32>(reverseBits(arg_1), _wgslsmith_div_u32(1u, 17575u)) % vec2<u32>(32u)));
    let var_3 = vec4<i32>(-min(31660i, _wgslsmith_div_i32(2147483647i, 2147483647i) ^ -var_2.x), ~(-_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.x, global0.x), var_2.x)), ~(-((var_2.x & var_2.x) ^ _wgslsmith_sub_i32(global0.x, arg_2.x))), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_2.x, -30213i, 0i), _wgslsmith_div_vec3_i32(abs(vec3<i32>(2147483647i, arg_2.x, -17505i)), vec3<i32>(var_2.x, global0.x, -11629i) | vec3<i32>(29654i, var_2.x, 7151i)))));
    var_1 = Struct_4(false, select(select(select(vec3<bool>(true, var_1.a, var_1.c.a.x), vec3<bool>(false, false, var_1.a), arg_0.a.x), select(var_1.b, vec3<bool>(var_1.a, arg_0.a.x, true), !var_1.a), var_1.c.a.zwy), vec3<bool>(any(!var_1.c.a), !var_1.b.x, arg_0.a.x), arg_0.a.x), var_1.c);
    return select(_wgslsmith_mult_vec3_i32(vec3<i32>(54457i, -arg_2.x, var_3.x ^ 26988i) ^ vec3<i32>(func_1(vec3<bool>(arg_0.a.x, var_1.a, arg_0.a.x), var_2.x, var_3, var_1.c.b.wz), 2147483647i, arg_2.x), countOneBits(vec3<i32>(var_3.x, abs(var_3.x), arg_2.x ^ 0i))), var_3.zwz, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~(vec3<i32>(38844i, global0.x, -1i) >> (u_input.a % vec3<u32>(32u))), -(vec3<i32>(20375i, global0.x, global0.x) ^ vec3<i32>(global0.x, 38552i, global0.x))), vec3<i32>(global0.x, -global0.x, func_1(vec3<bool>(true, true, true), 1i, _wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, -2147483647i, global0.x), vec4<i32>(0i, global0.x, 0i, global0.x)), select(u_input.a.xy, vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, false))))), ~global0.x, global0.x);
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(791f - -639f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1556f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(186f, -1089f))))))));
    global0 = ~firstTrailingBit(-vec3<i32>(-2147483647i, global0.x, global0.x)) & func_2(Struct_1(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(false, false, false, false), true), vec4<u32>(44873u, 66959u, u_input.a.x, 62728u) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(1u, u_input.a.x, 30510u, 30977u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, 21164u)) % vec4<u32>(32u))), ~u_input.a.x, ~(-(vec2<i32>(-2147483647i, 0i) & vec2<i32>(global0.x, 2147483647i))));
    var var_1 = _wgslsmith_sub_i32(57864i, _wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, func_2(Struct_1(vec4<bool>(true, true, false, false), vec4<u32>(32781u, 1u, u_input.a.x, 1u)), u_input.a.x, vec2<i32>(37514i, global0.x)).x) >> (~_wgslsmith_div_u32(16972u, u_input.a.x) % 32u), _wgslsmith_add_i32(-global0.x, -global0.x)));
    let var_2 = vec2<bool>(false, true);
    global0 = abs(vec3<i32>(~1i, _wgslsmith_sub_i32(-2147483647i, min(-12957i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 14168i), global0.yx))), -(global0.x & global0.x)));
    let var_3 = ~u_input.a.x;
    let var_4 = u_input.a.x;
    global0 = -vec3<i32>(min(-29985i, _wgslsmith_div_i32(93812i, global0.x) << ((var_4 << (var_4 % 32u)) % 32u)), firstTrailingBit(32868i), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.x - var_0.x));
}

