struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_4) -> vec2<f32> {
    let var_0 = !vec4<bool>(any(vec2<bool>(true, true)), !(!all(vec2<bool>(true, false))), !((i32(-1i) * -22815i) < _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_3.b, -30322i, u_input.a), vec4<i32>(u_input.a, u_input.b, u_input.a, 38731i))), all(vec3<bool>(true, false, true)));
    let var_1 = abs(-select(~_wgslsmith_mod_vec3_i32(vec3<i32>(1i, arg_0, arg_3.b), vec3<i32>(18072i, arg_3.b, 14125i)), firstLeadingBit(abs(vec3<i32>(-25060i, -18013i, -1i))), !var_0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1661f, 1170f))));
    let var_3 = countOneBits(~_wgslsmith_clamp_i32(reverseBits(~(-2147483647i)), _wgslsmith_clamp_i32(-9873i, firstTrailingBit(var_1.x), i32(-1i) * -2147483647i), countOneBits(1i)));
    var var_4 = Struct_1(~(~(firstLeadingBit(u_input.c) >> (~u_input.c % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(min(arg_3.a.xx, arg_3.a.zy)));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + arg_3.c))) - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1991f, 1108f))))) + _wgslsmith_f_op_f32(-var_2)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_3 {
    var var_0 = arg_1.zx;
    var var_1 = _wgslsmith_mod_i32(u_input.a, u_input.a);
    var var_2 = Struct_3(34414i, Struct_1(vec2<u32>(_wgslsmith_div_u32(0u, arg_0.x), 516u) & vec2<u32>(4294967295u, ~arg_2.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_2.b.x - arg_2.b.x), _wgslsmith_f_op_f32(-var_0.x)), arg_2.b, true))));
    let var_3 = Struct_3(~u_input.a, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(24164u, 53035u), _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.a.x, var_2.b.a.x), arg_0.yx), var_2.b.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.b.x, -1146f) + arg_2.b) + vec2<f32>(var_2.b.b.x, var_0.x))))));
    var var_4 = var_2.a;
    return Struct_3(~(-2147483647i), Struct_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.c.x, 1u, var_3.b.a.x), ~4294967295u), ~(0u & arg_0.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(1i, -1451f, vec2<i32>(1i, u_input.b), Struct_4(arg_1, -1i, arg_1.x)))))))));
}

fn func_4(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1280f), _wgslsmith_f_op_f32(sign(arg_0.b.b.x))), arg_0.b.b.x, _wgslsmith_f_op_f32(-arg_0.b.b.x), _wgslsmith_f_op_f32(163f + arg_0.b.b.x))) * vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1612f, _wgslsmith_f_op_f32(round(1489f)))))), arg_0.b.b.x, -1981f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(arg_0.b.b.x * _wgslsmith_f_op_f32(640f * arg_0.b.b.x)))));
    let var_1 = _wgslsmith_dot_vec4_i32(abs(~(-vec4<i32>(41388i, arg_0.a, arg_0.a, arg_0.a))), min(firstTrailingBit(~vec4<i32>(2147483647i, arg_0.a, arg_0.a, -6200i) << (select(vec4<u32>(arg_0.b.a.x, 0u, 16212u, 49756u), vec4<u32>(1u, 1u, arg_0.b.a.x, arg_0.b.a.x), false) % vec4<u32>(32u))), -(~_wgslsmith_sub_vec4_i32(vec4<i32>(54230i, u_input.a, u_input.b, -27873i), vec4<i32>(1i, 51416i, -30086i, u_input.b)))));
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(func_2(vec4<u32>(arg_0.b.a.x, arg_0.b.a.x, 51502u, ~u_input.c.x), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.b.x, var_0.x, var_0.x)), var_0.xyz)), Struct_1(arg_0.b.a << (vec2<u32>(arg_0.b.a.x, 7347u) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, -520f), arg_0.b.b))).b.b.x * _wgslsmith_f_op_f32(arg_0.b.b.x + _wgslsmith_f_op_f32(arg_0.b.b.x - _wgslsmith_f_op_f32(sign(-1000f))))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_4) -> Struct_4 {
    let var_0 = Struct_3(~select(arg_1.x, -41640i, false), Struct_1(u_input.c, arg_0.xz));
    var var_1 = var_0.b.b.x;
    var var_2 = var_0.b.a.x;
    var_1 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    let var_3 = !select(select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(any(vec4<bool>(false, true, true, false)), true, true, true), vec4<bool>(all(vec4<bool>(true, false, true, true)), false, false, all(vec3<bool>(true, true, true)))), vec4<bool>(false, false, true, true), any(vec2<bool>(true, true)));
    return Struct_4(vec3<f32>(-535f, 959f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))))), ~_wgslsmith_dot_vec2_i32(arg_1, abs(vec2<i32>(37785i, var_0.a)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.b, arg_1.x), arg_1, vec2<i32>(var_0.a, var_0.a))), _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.b.a.x, u_input.c.x, 4294967295u, var_0.b.a.x), vec4<u32>(1u, 23571u, u_input.c.x, 103805u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.x, arg_0.x, 878f)))), var_0.b))));
}

fn func_1(arg_0: f32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(max(-1151f, _wgslsmith_f_op_f32(f32(-1f) * -507f)));
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1000f, -489f, _wgslsmith_f_op_f32(func_4(func_2(vec4<u32>(u_input.c.x, 15239u, 0u, 9487u), vec3<f32>(-434f, -1169f, arg_0), Struct_1(u_input.c, vec2<f32>(arg_0, -220f))))))), vec2<i32>(min(21462i, ~u_input.b), u_input.a), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, arg_0, arg_0)), vec3<f32>(-385f, arg_0, -361f))), u_input.b, arg_0));
    let var_2 = ~_wgslsmith_add_u32(abs(~(u_input.c.x >> (1u % 32u))), ~(~u_input.c.x ^ u_input.c.x));
    var var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(1u), u_input.c.x, 10871u, _wgslsmith_mod_u32(var_2, 4051u)), _wgslsmith_sub_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(33725u, 4294967295u, 1u, var_2), vec4<u32>(80404u, 19122u, u_input.c.x, var_2)), abs(vec4<u32>(4294967295u, 1u, 0u, 17673u))) | vec4<u32>(~12628u, 38383u, _wgslsmith_div_u32(48432u, var_2), var_2), ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_2, var_2, u_input.c.x, u_input.c.x), vec4<u32>(var_2, var_2, var_2, u_input.c.x)), ~vec4<u32>(u_input.c.x, u_input.c.x, 21577u, 111125u))), min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 37427u, var_2, var_2), vec4<u32>(var_2, var_2, 0u, 129618u), vec4<u32>(var_2, 22362u, var_2, 82938u)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(84691u, u_input.c.x, var_2, u_input.c.x), vec4<u32>(0u, var_2, 56529u, 45247u)), vec4<u32>(var_2, ~(~var_2), 88566u, var_2)));
    let var_4 = Struct_2(vec4<i32>(max(var_1.b, -(~(-1i))), select(_wgslsmith_sub_i32(2147483647i, 67497i), 1i, true), func_2(~vec4<u32>(81459u, var_3.x, 4294967295u, var_2) | (vec4<u32>(var_3.x, u_input.c.x, var_2, var_2) << (vec4<u32>(var_2, 23857u, var_3.x, 35942u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, arg_0, var_0))), Struct_1(abs(vec2<u32>(1u, 0u)), vec2<f32>(1f, 1f))).a, -2147483647i));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 + -1443f), _wgslsmith_f_op_f32(-var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = !(!all(vec2<bool>(true, true))) && true;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-416f, -2547f)), _wgslsmith_f_op_f32(-476f + -1000f))))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-290f, -1403f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-319f, 1184f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)))))));
    let var_2 = Struct_1(u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.x - -425f), var_1.x) * _wgslsmith_f_op_vec2_f32(func_1(927f)))));
    let var_3 = u_input.c.x;
    let var_4 = all(select(vec4<bool>(!any(vec2<bool>(false, true)), false, ~0u >= u_input.c.x, func_5(vec4<f32>(var_2.b.x, 1126f, var_2.b.x, var_1.x), vec2<i32>(-27101i, u_input.b), Struct_4(vec3<f32>(var_2.b.x, var_2.b.x, -227f), u_input.b, var_2.b.x)).b >= -u_input.b), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(var_1.x != var_2.b.x, false, true, true)), _wgslsmith_f_op_f32(select(func_2(vec4<u32>(var_2.a.x, var_3, 18352u, var_2.a.x), vec3<f32>(var_1.x, var_2.b.x, var_1.x), var_2).b.b.x, var_1.x, all(vec4<bool>(true, false, false, false)))) > -2093f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(countOneBits(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, -54757i), vec2<i32>(u_input.b, u_input.b)))), vec2<i32>(u_input.b, u_input.a)), u_input.b >> (abs(~(~49179u)) % 32u), 4294967295u, vec4<u32>(u_input.c.x, var_3, 0u, firstLeadingBit(var_2.a.x >> (1u % 32u))));
}

