struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: f32,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> vec4<i32> {
    let var_0 = -abs(abs(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(0i, -1i, 31999i, 71016i)), ~vec4<i32>(-46965i, -1i, -1i, 1i))));
    var var_1 = ~_wgslsmith_dot_vec2_u32(u_input.a.zy, firstLeadingBit(~vec2<u32>(1u, 74534u)));
    let var_2 = firstLeadingBit(-(firstLeadingBit(~var_0) >> (~vec4<u32>(4294967295u, 9666u, 66639u, u_input.a.x) % vec4<u32>(32u))));
    let var_3 = Struct_4(-select(var_0.x | -36862i, 17196i, true), Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.a.x)) ^ ~vec2<u32>(0u, u_input.a.x), ~vec2<u32>(31131u, 83880u)), Struct_1(~var_2.yzw), vec4<u32>(~_wgslsmith_mod_u32(u_input.b, u_input.b), min(u_input.a.x, u_input.a.x) << (u_input.a.x % 32u), 21323u, firstTrailingBit(countOneBits(1u)))), -534f, u_input.b & 18667u, Struct_2(Struct_1(-_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, 6946i, var_2.x), vec3<i32>(25642i, var_0.x, -78387i)))));
    var_1 = _wgslsmith_mult_u32(0u, var_3.b.c.x);
    return firstTrailingBit(vec4<i32>(reverseBits((var_0.x & -14666i) & (-1i >> (u_input.b % 32u))), var_0.x, -var_0.x, _wgslsmith_mod_i32(~1496i, var_0.x)));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = _wgslsmith_clamp_i32(0i | min(~_wgslsmith_mult_i32(18486i, 1i), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-14149i, -569i, 2147483647i)), firstLeadingBit(vec3<i32>(-20259i, 463i, -40936i)))), min(i32(-1i) * -1i, -2147483647i), 1i);
    var var_1 = func_3(false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, -684f, arg_1, arg_0.x))) - vec4<f32>(arg_1, arg_0.x, 750f, arg_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_div_f32(1701f, -1000f), arg_1, 212f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1f, arg_1, _wgslsmith_f_op_f32(-626f - _wgslsmith_f_op_f32(sign(-367f))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1375f, _wgslsmith_f_op_f32(-1349f * arg_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_0.x)), true)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 - arg_0.x))), _wgslsmith_f_op_f32(select(645f, _wgslsmith_f_op_f32(round(-1907f)), true))))));
    var var_3 = Struct_3(vec2<u32>(~(~62540u) ^ ~_wgslsmith_mod_u32(arg_2.x, 0u), (reverseBits(u_input.a.x) | arg_2.x) | select(abs(arg_2.x), firstLeadingBit(50378u), true)), Struct_1(_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(0i, var_1.x, 11248i), var_1.xyz)), var_1.zzy)), _wgslsmith_mult_vec4_u32(arg_2, countOneBits(countOneBits(~vec4<u32>(u_input.a.x, 66911u, u_input.a.x, arg_2.x)))));
    let var_4 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(var_3.b.a, var_3.b.a), var_1.x, var_3.b.a.x)));
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -332f));
    var var_2 = u_input.a;
    let var_3 = Struct_4(abs(~(-9406i)), Struct_3(~(~firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x))), Struct_1(~countOneBits(arg_3.zyx)), firstLeadingBit(vec4<u32>(var_2.x, 4294967295u, 4294967295u, 0u) | _wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(82772u, 1u, u_input.a.x, 0u)))), arg_1.x, ~60527u, arg_0);
    var var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-162f, -866f, -525f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2933f, 1392f, -961f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_3.c, 505f, -927f), vec3<f32>(1086f, arg_1.x, var_3.c))))))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    return var_3;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = func_4(func_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1663f, arg_1.x))), _wgslsmith_f_op_vec2_f32(arg_1.yx - _wgslsmith_f_op_vec2_f32(-arg_1.yx)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), _wgslsmith_f_op_f32(round(arg_1.x)))), _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(33863u, u_input.b, u_input.b, u_input.b)), ~(vec4<u32>(0u, u_input.a.x, u_input.b, u_input.b) & vec4<u32>(34390u, u_input.b, u_input.b, u_input.b)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yy) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, arg_1.x)))))))), Struct_1(vec3<i32>(_wgslsmith_add_i32(select(-17045i, 0i, arg_0.x), _wgslsmith_mult_i32(-24231i, -27582i)), max(_wgslsmith_mod_i32(0i, -1i), 1i), firstTrailingBit(_wgslsmith_div_i32(-36254i, -51448i)))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(-42711i, 0i, -2147483647i)), vec3<i32>(0i, 747i, 2147483647i)), 1i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, -2147483647i, -1i)), ~vec3<i32>(-33711i, 1i, -2147483647i)), min(35536i << (u_input.b % 32u), ~(-2147483647i))), vec4<i32>(1i, 1i, 1i, 1i) & func_3(arg_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 820f, arg_1.x) * vec4<f32>(996f, -764f, arg_1.x, 279f)))));
    var var_1 = func_4(var_0.e, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-356f, -482f)), 1000f), -610f)), func_4(Struct_2(Struct_1(vec3<i32>(-59450i, 30764i, 30270i))), arg_1.yy, Struct_1(~vec3<i32>(var_0.e.a.a.x, -1i, var_0.a)), firstTrailingBit(vec4<i32>(1i, 3367i, var_0.a, 2147483647i))).c), Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b.b.a >> (vec3<u32>(var_0.d, 0u, 44758u) % vec3<u32>(32u)), vec3<i32>(var_0.b.b.a.x, 40544i, var_0.b.b.a.x)), firstTrailingBit(vec3<i32>(-9060i, -1i, var_0.e.a.a.x)))), -(_wgslsmith_mod_vec4_i32(vec4<i32>(32900i, var_0.b.b.a.x, -13668i, var_0.a), vec4<i32>(-1i, var_0.b.b.a.x, var_0.a, -27897i)) << (min(vec4<u32>(u_input.a.x, u_input.a.x, var_0.b.c.x, u_input.a.x), ~var_0.b.c) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-476f, var_0.c, 245f, var_0.c))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c, 1326f, var_1.c, var_0.c)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-244f, arg_1.x), -999f, arg_1.x, _wgslsmith_f_op_f32(abs(var_0.c)))))));
    let var_3 = arg_0.wyz;
    var_1 = Struct_4(-37776i, func_4(var_1.e, arg_1.xz, Struct_1(var_1.e.a.a), min(vec4<i32>(-1i, 3446i, 0i, 2255i), min(vec4<i32>(var_0.a, var_1.b.b.a.x, -1i, var_0.b.b.a.x), vec4<i32>(var_1.b.b.a.x, var_0.e.a.a.x, var_0.a, 53495i))) | countOneBits(vec4<i32>(var_0.a, var_0.b.b.a.x, 1i, 5094i))).b, func_4(func_4(Struct_2(var_1.b.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz)), Struct_1(vec3<i32>(16095i, -14797i, -9937i)), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 12670i, 10037i, var_0.b.b.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_1.a, var_0.e.a.a.x, var_1.b.b.a.x), vec4<i32>(var_0.b.b.a.x, 31511i, 22739i, 2147483647i)))).e, _wgslsmith_f_op_vec2_f32(arg_1.xx * var_2.zx), var_1.e.a, -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.e.a.a.x, -2147483647i, var_0.a, var_0.a), max(vec4<i32>(5160i, var_1.e.a.a.x, 1i, var_0.a), vec4<i32>(var_0.e.a.a.x, -30113i, -22640i, -2147483647i)))).c, var_1.d, var_1.e);
    return func_4(Struct_2(Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_1.b.b.a, vec3<i32>(-14859i, var_0.a, var_1.b.b.a.x)), vec3<i32>(6201i, 9200i, 73409i) ^ var_0.e.a.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1406f, -229f), arg_1.zx)))) - _wgslsmith_f_op_vec2_f32(min(arg_1.zx, vec2<f32>(402f, 1123f))))), func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, -102f)), arg_0.yy)), arg_1.x, ~(~(~vec4<u32>(var_0.b.c.x, 0u, 1u, 40459u)))).a, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i >> (~var_1.b.a.x % 32u), var_1.a, ~(1i | var_1.b.b.a.x), _wgslsmith_dot_vec2_i32(~var_0.b.b.a.zz, -var_0.e.a.a.yz)), vec4<i32>(abs(-17854i), i32(-1i) * -2147483647i, var_0.a, -22095i) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(var_0.b.c, var_1.b.c), ~var_1.b.c) % vec4<u32>(32u)))).b;
}

fn func_5(arg_0: Struct_4) -> u32 {
    let var_0 = Struct_1(abs(~func_1(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1316f, arg_0.c, arg_0.c), vec3<f32>(arg_0.c, -238f, arg_0.c), false))).b.a));
    var var_1 = (all(vec2<bool>(true, true)) & true) | true;
    var var_2 = u_input.a.xz;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.c, arg_0.c, 1000f, 764f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.c, arg_0.c, arg_0.c, arg_0.c))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1559f, arg_0.c, -2121f, -1000f), vec4<f32>(arg_0.c, arg_0.c, -878f, arg_0.c))), vec4<f32>(arg_0.c, arg_0.c, arg_0.c, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-1625f - -1033f), arg_0.c, arg_0.c, -409f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), arg_0.c, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(arg_0.c - arg_0.c))))));
    return ~(~71394u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(20724u, 12932u, func_5(Struct_4(-(i32(-1i) * -21645i), func_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1371f, -1465f, 149f), vec3<f32>(864f, 1059f, -1172f)))), _wgslsmith_f_op_f32(f32(-1f) * -850f), max(select(0u, 5177u, false), func_1(vec4<bool>(false, false, false, false), vec3<f32>(-1443f, -1923f, 1305f)).c.x), Struct_2(Struct_1(vec3<i32>(29084i, 15958i, 3779i))))), u_input.b);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -645f), 468f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(f32(-1f) * -185f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(962f - -232f), -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(1000f * 279f), _wgslsmith_f_op_f32(step(-1412f, 380f)), _wgslsmith_div_f32(739f, -1725f)))));
    var var_2 = firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec3_i32(~max(vec3<i32>(2147483647i, 10263i, -41349i), vec3<i32>(1i, 48181i, -18131i)), vec3<i32>(1i, 2147483647i, ~1i))));
    let var_3 = func_1(!vec4<bool>(false, true, true, all(vec4<bool>(true, false, false, true))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))), var_1.x, _wgslsmith_f_op_f32(-var_1.x))).b.a.x & ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, ~(-2147483647i), -1i, func_3(false, vec4<f32>(-1871f, -885f, 140f, var_1.x)).x), -vec4<i32>(1i, -55168i, 54309i, -5528i));
    let var_4 = func_4(Struct_2(func_4(Struct_2(func_2(var_1.zw, var_1.x, var_0).a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.x, 497f))) - vec2<f32>(var_1.x, -767f)), Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_3, -18475i), vec3<i32>(0i, var_3, -8123i))), abs(vec4<i32>(var_3, var_3, 0i, 0i) ^ vec4<i32>(var_3, var_3, var_3, 19502i))).b.b), var_1.yy, func_4(func_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -203f), -183f), var_1.x, select(~vec4<u32>(u_input.a.x, 1u, 49446u, 4294967295u), vec4<u32>(var_0.x, 12983u, 18957u, var_0.x), true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(918f * var_1.x), _wgslsmith_f_op_f32(ceil(var_1.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1106f, var_1.x) + vec2<f32>(var_1.x, -301f)) - vec2<f32>(var_1.x, var_1.x))), func_1(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-573f, 106f, 285f))).b, ~vec4<i32>(-var_3, 1i, 1i, -var_3)).b.b, _wgslsmith_sub_vec4_i32(abs(func_3(all(vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 1227f, 1182f, var_1.x))))), vec4<i32>(_wgslsmith_sub_i32(25186i & var_3, 1i), ~var_3, firstTrailingBit(0i), 2147483647i))).b.b;
    var var_5 = true != (_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-775f, 1097f)))) == var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(var_4.a.x), ~(vec3<i32>(-1i) * -var_4.a));
}

