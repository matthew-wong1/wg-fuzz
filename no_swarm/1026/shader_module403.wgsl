struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<f32>(-403f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1008f * 179f)) * 1f))));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_1 = Struct_1(false, !any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), true)), vec2<f32>(var_0.x, -1173f), reverseBits(~min(-vec3<i32>(24884i, u_input.b, -60401i), abs(vec3<i32>(u_input.a, 11208i, global0[_wgslsmith_index_u32(0u, 16u)])))), ~select(vec3<u32>(1u, _wgslsmith_add_u32(4510u, u_input.c), u_input.d >> (u_input.d % 32u)), firstTrailingBit(~vec3<u32>(1u, u_input.c, u_input.d)), vec3<bool>(true, true, true)));
    global0 = array<i32, 16>();
    return min(~(~var_1.e), max(abs(min(var_1.e, min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, var_1.e.x, u_input.c)))), ~var_1.e));
}

fn func_4(arg_0: vec3<u32>) -> u32 {
    var var_0 = -u_input.a;
    let var_1 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(arg_0.x, 16u)], u_input.b, _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(20888u, 16u)])), _wgslsmith_mult_i32(8047i, u_input.a)), ~(vec2<i32>(-1i) * -vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(4828u, 16u)])), -(firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(arg_0.x, 16u)], 20284i)) | min(vec2<i32>(22661i, 37284i), vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(34070u, 16u)]))));
    var var_2 = Struct_2(true, _wgslsmith_f_op_f32(round(-1582f)), 0i, select(vec2<u32>(_wgslsmith_mult_u32(~arg_0.x, u_input.c & arg_0.x), arg_0.x), (firstLeadingBit(vec2<u32>(4294967295u, u_input.d)) & arg_0.yx) | select(max(arg_0.zz, arg_0.yx), firstLeadingBit(vec2<u32>(u_input.d, 15315u)), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(!any(vec2<bool>(true, false)), !select(true, true, false))), ~countOneBits(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 16u)], -2147483647i), vec2<i32>(0i, 0i)), -var_1)));
    global0 = array<i32, 16>();
    let var_3 = ~12527u == ~u_input.d;
    return ~arg_0.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> vec2<i32> {
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    var var_0 = 9971u;
    let var_1 = Struct_1(false, any(vec4<bool>(false, arg_0.a, -600f >= arg_0.b, !arg_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-830f, _wgslsmith_f_op_f32(arg_0.b - arg_1.x)))), -vec3<i32>(arg_0.e.x, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b, 0i), vec3<i32>(arg_0.c, u_input.b, 38129i)) ^ -10931i), vec3<u32>(func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d, 18290u) ^ vec3<u32>(4294967295u, arg_0.d.x, arg_0.d.x), func_3())), _wgslsmith_clamp_u32(0u, arg_0.d.x, 4294967295u), func_4(~vec3<u32>(13540u, arg_0.d.x, u_input.c)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.d.x, 0u, 65197u, arg_0.d.x), vec4<u32>(62588u, u_input.c, arg_0.d.x, u_input.d)) % 32u)));
    return min(_wgslsmith_sub_vec2_i32(select(~arg_0.e ^ vec2<i32>(u_input.a, 2147483647i), arg_0.e, _wgslsmith_f_op_f32(-721f - var_1.c.x) < -2012f), var_1.d.zx), reverseBits(~_wgslsmith_clamp_vec2_i32(reverseBits(arg_0.e), vec2<i32>(539i, u_input.b), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(31935u, 16u)]) | var_1.d.yx)));
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_3) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(543f, 169f, 128f, arg_2.c.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(496f, arg_2.c.b, arg_2.c.b, -659f) * vec4<f32>(1412f, arg_2.d, -287f, arg_2.d))) * vec4<f32>(_wgslsmith_f_op_f32(sign(347f)), -714f, arg_2.c.b, _wgslsmith_f_op_f32(-arg_2.d))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2706f, -916f, arg_2.d, 1968f)) * vec4<f32>(-1254f, 1036f, arg_2.d, -1716f)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1806f, 430f, -864f, arg_2.d)))))));
}

fn func_6(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    global0 = array<i32, 16>();
    let var_0 = Struct_1(!all(vec2<bool>(true, true)), false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.ww * arg_1.zy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yw + arg_1.wz))), -select(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(26136u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], -1i), vec3<i32>(-2147483647i, u_input.b, 1i)), ~vec3<i32>(u_input.a, u_input.a, u_input.b)), -vec3<i32>(global0[_wgslsmith_index_u32(1u, 16u)], -2147483647i, -21130i), vec3<bool>(true, true, true)), select(~vec3<u32>(~u_input.d, u_input.c << (u_input.c % 32u), 33447u), ~vec3<u32>(~u_input.d, u_input.c, u_input.d), vec3<bool>(true, true, true)));
    global0 = array<i32, 16>();
    return Struct_2(true, -849f, -2147483647i, ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(56290u, 4294967295u) & var_0.e.zx), _wgslsmith_add_vec2_u32(vec2<u32>(14633u, 86881u), firstTrailingBit(vec2<u32>(u_input.d, u_input.c)))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], -924i), var_0.d.zx | var_0.d.yx), reverseBits(var_0.d.zy ^ vec2<i32>(-2147483647i, 1i))), vec2<i32>(-13259i, ~(-13414i))));
}

fn func_1() -> bool {
    let var_0 = func_6(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_vec4_f32(func_5(select(min(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(u_input.c, 16u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], u_input.b)), vec2<i32>(0i, u_input.b)), func_2(Struct_2(false, 1009f, -1i, vec2<u32>(31160u, u_input.c), vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.d, 16u)])), vec4<f32>(722f, 1541f, 962f, -1173f)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, false)))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.d, 16u)], 20876i), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, u_input.d), 16u)]), _wgslsmith_mult_i32(~u_input.b, 2147483647i | global0[_wgslsmith_index_u32(0u, 16u)]), u_input.a), Struct_3(~vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 16u)], 2147483647i, global0[_wgslsmith_index_u32(1282u, 16u)]) >> (_wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.d, u_input.c), vec3<u32>(1u, 0u, 8469u)) % vec3<u32>(32u)), vec2<bool>(true, any(vec4<bool>(true, true, false, false))), Struct_2(true, 1f, firstLeadingBit(global0[_wgslsmith_index_u32(u_input.c, 16u)]), vec2<u32>(1u, 4294967295u) & vec2<u32>(u_input.d, u_input.d), -vec2<i32>(28920i, 1i)), _wgslsmith_f_op_f32(round(-123f))))));
    var var_1 = _wgslsmith_div_u32(1u, func_3().x);
    var var_2 = _wgslsmith_clamp_i32(var_0.c, max(-var_0.e.x, abs((global0[_wgslsmith_index_u32(u_input.d, 16u)] ^ -15237i) >> (~u_input.c % 32u))), firstLeadingBit(~u_input.a));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(841f)), -1223f)), var_0.b));
    let var_4 = Struct_1(var_0.a || !var_0.a, true, _wgslsmith_f_op_vec2_f32(-var_3.zz), reverseBits(reverseBits(vec3<i32>(1i, -36007i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, 0i, var_0.c), vec4<i32>(u_input.a, u_input.b, 1132i, 2147483647i))))), reverseBits(vec3<u32>(func_4(abs(vec3<u32>(u_input.d, var_0.d.x, 1u))), u_input.c, ~var_0.d.x << (~u_input.c % 32u))));
    return _wgslsmith_mod_u32(var_4.e.x | var_0.d.x, ~(reverseBits(var_4.e.x) ^ ~4294967295u)) < 0u;
}

fn func_7(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = arg_0;
    var var_1 = Struct_3(~arg_2.d, !select(!(!vec2<bool>(arg_2.b, arg_2.b)), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, false, true, true)), any(vec4<bool>(arg_0.a, true, arg_0.a, arg_2.a)))), func_6(-1571f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1104f, arg_0.b, 384f, -396f) - vec4<f32>(484f, arg_0.b, -329f, -160f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -114f, var_0.b, arg_2.c.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-117f, -940f, -277f, arg_0.b)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1553f, 1323f, 214f) + vec4<f32>(arg_0.b, 1818f, var_0.b, arg_2.c.x))))), _wgslsmith_f_op_f32(-var_0.b));
    global0 = array<i32, 16>();
    let var_2 = true | (_wgslsmith_f_op_f32(-arg_0.b) <= _wgslsmith_f_op_f32(select(409f, -441f, _wgslsmith_f_op_f32(step(1000f, arg_0.b)) == _wgslsmith_f_op_f32(var_1.c.b + 655f))));
    return Struct_3(arg_2.d, var_1.b, var_0, 1053f);
}

fn func_8(arg_0: i32, arg_1: Struct_3, arg_2: f32, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = arg_1.c.b;
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1089f), _wgslsmith_f_op_f32(-674f * 800f), arg_1.b.x)) * arg_2) + 283f)));
    var var_2 = !arg_1.b;
    var_2 = arg_1.b;
    let var_3 = select(!vec4<bool>(true, arg_1.b.x, var_2.x, u_input.c > countOneBits(40604u)), select(!(!vec4<bool>(true, false, var_2.x, arg_1.c.a)), select(!select(vec4<bool>(true, var_2.x, arg_1.b.x, arg_1.c.a), vec4<bool>(arg_1.c.a, false, false, var_2.x), vec4<bool>(false, var_2.x, true, var_2.x)), !vec4<bool>(var_2.x, false, arg_1.c.a, arg_1.b.x), vec4<bool>(all(vec3<bool>(true, arg_1.c.a, false)), true, !arg_1.b.x, false & var_2.x)), !(!arg_1.c.a) & (arg_2 < 1f)), vec4<bool>(false, true, u_input.d == 38802u, arg_1.c.a));
    return Struct_1(true, var_2.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec4_f32(func_5(arg_1.a.zz | arg_1.c.e, min(-8155i, global0[_wgslsmith_index_u32(arg_1.c.d.x, 16u)]), func_7(Struct_2(true, 136f, -1i, vec2<u32>(1u, 16677u), arg_1.c.e), -52543i, Struct_1(arg_1.c.a, false, vec2<f32>(arg_1.d, 1305f), vec3<i32>(56914i, u_input.a, u_input.a), arg_3.wxw)))).x, arg_2)), _wgslsmith_mod_vec3_i32(func_7(arg_1.c, -13155i, Struct_1(!arg_1.c.a, var_3.x, vec2<f32>(-1000f, 1000f), arg_1.a, arg_3.xzz)).a, ~(~_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 16u)], arg_1.c.e.x, u_input.b), vec3<i32>(8516i, arg_0, 2147483647i)))), abs(_wgslsmith_sub_vec3_u32(arg_3.wwx, _wgslsmith_add_vec3_u32(func_3(), select(arg_3.ywx, vec3<u32>(5675u, 4294967295u, 43686u), var_3.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 16>();
    var var_0 = all(vec3<bool>(true, true, true));
    var var_1 = func_8(global0[_wgslsmith_index_u32(u_input.c, 16u)], func_7(Struct_2(func_1(), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(882f, -916f)), 933f)), _wgslsmith_sub_i32(func_2(Struct_2(true, 891f, global0[_wgslsmith_index_u32(58474u, 16u)], vec2<u32>(52772u, 4294967295u), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.d, 16u)])), vec4<f32>(-506f, 780f, -1401f, -302f)).x, _wgslsmith_div_i32(1i, 1i)), _wgslsmith_mult_vec2_u32(vec2<u32>(10906u, 13821u), vec2<u32>(u_input.d, 0u)), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(5012i, global0[_wgslsmith_index_u32(26296u, 16u)]), vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(4933u, 16u)])))), -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(32320u, u_input.c, 0u, 57277u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), vec4<u32>(u_input.c, 1u, u_input.c, u_input.c), vec4<u32>(46481u, u_input.d, u_input.c, 0u))), 16u)], Struct_1(func_1(), false, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -562f), -226f), countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(36451u, 16u)], -2147483647i, 2166i)), vec3<u32>(4294967295u, _wgslsmith_sub_u32(17210u, u_input.c), 4294967295u))), 819f, _wgslsmith_add_vec4_u32(~reverseBits(~vec4<u32>(u_input.c, 4294967295u, u_input.d, u_input.c)), vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), abs(26032u), 57869u | u_input.c, u_input.d) & vec4<u32>(u_input.d, _wgslsmith_mult_u32(u_input.d, u_input.c), u_input.c, u_input.c ^ 4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1564f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1982f, -707f) - _wgslsmith_f_op_f32(915f + var_1.c.x)) - _wgslsmith_f_op_f32(244f + _wgslsmith_div_f32(1194f, var_1.c.x)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(-723f, _wgslsmith_f_op_f32(var_1.c.x - var_1.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_1.c.x)), _wgslsmith_f_op_f32(1940f * var_1.c.x)))), var_1.c)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(2147483647i, 53513i), max(vec2<i32>(8818i, u_input.b), var_1.d.xz)), ~vec2<i32>(-1i, -2147483647i)), vec2<i32>(-35376i, _wgslsmith_mod_i32(firstTrailingBit(u_input.b), -2147483647i))), ~vec2<u32>(149424u, ~u_input.d & ~u_input.c));
}

