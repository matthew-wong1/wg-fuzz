struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global1: Struct_4;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec3<u32> {
    let var_0 = Struct_4(arg_0, Struct_1(select(true, true, false), ~select(select(global1.b.b, global1.b.b, global1.d), global1.b.b, select(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(500u, 16u)], global1.b.a))), vec2<f32>(-820f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(arg_0 - arg_0))), false);
    global0 = array<vec3<bool>, 16>();
    var var_1 = _wgslsmith_f_op_f32(step(-975f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0)), 321f)) - var_0.c.x) - var_0.a)));
    var var_2 = Struct_3(vec3<bool>(false == ((i32(-1i) * -44187i) > _wgslsmith_add_i32(u_input.a.x, global1.b.b.x)), false, var_0.d), Struct_2(~firstLeadingBit(vec3<u32>(u_input.b, 0u, u_input.b) << (vec3<u32>(0u, u_input.b, 0u) % vec3<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2340f, var_0.c.x, -2775f))), vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-arg_0), var_0.a))), -vec4<i32>(-global1.b.b.x, ~(-2147483647i), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(var_0.b.b.x, -40752i)), var_0.b.b.x << (u_input.b % 32u)) | ~(~reverseBits(vec4<i32>(-2147483647i, global1.b.b.x, u_input.a.x, 66800i))), Struct_2(~(~(~vec3<u32>(u_input.b, u_input.b, u_input.b))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 1012f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-242f, -362f, var_0.c.x), vec3<f32>(global1.c.x, var_0.c.x, arg_0), vec3<bool>(global1.b.a, global1.b.a, false)))))))), u_input.b);
    global0 = array<vec3<bool>, 16>();
    return ~countOneBits(var_2.b.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_4 {
    let var_0 = false;
    global1 = Struct_4(global1.a, global1.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-861f, global1.a)), global1.c)))), !arg_1.x);
    var var_1 = global1.c;
    var var_2 = Struct_2(countOneBits(select(~reverseBits(vec3<u32>(1u, 0u, 0u)), _wgslsmith_div_vec3_u32(func_3(var_1.x, vec2<bool>(arg_0.a, var_0)), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u)), !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(24677u, u_input.b), 16u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2190f, global1.a, var_1.x))));
    let var_3 = global1.b;
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1639f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))), global1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.x, var_2.b.x)) - global1.c) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.b.xx - vec2<f32>(-224f, 1694f))))), false);
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    global0 = array<vec3<bool>, 16>();
    let var_0 = max(vec4<i32>(u_input.a.x, firstTrailingBit(u_input.a.x), abs(2147483647i), -arg_2.b.x) & _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 46526i, 1i, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, 6535i, global1.b.b.x), vec4<i32>(-1684i, 7183i, 18147i, -20617i)), firstTrailingBit(vec4<i32>(68344i, 37644i, arg_2.b.x, 63391i))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(arg_2.b, arg_2.b), global1.b.b.x), arg_2.b.x << (1u % 32u), abs(u_input.a.x), firstTrailingBit(u_input.a.x | 27564i))) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.b, 87517u, u_input.b, 11529u)), ~vec4<u32>(4294967295u, 4294967295u, 0u, u_input.b), ~vec4<u32>(8002u, u_input.b, u_input.b, u_input.b))) % vec4<u32>(32u));
    global1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(func_2(Struct_1(!global1.b.a, abs(vec3<i32>(u_input.a.x, -38935i, arg_0.b.b.x))), !global0[_wgslsmith_index_u32(firstTrailingBit(67182u), 16u)]).b, select(vec3<bool>(true, true, false), select(!global0[_wgslsmith_index_u32(9202u, 16u)], global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 16u)], false), arg_2.a)).b, arg_0.c, func_2(func_2(Struct_1(global1.d, _wgslsmith_sub_vec3_i32(vec3<i32>(-22770i, 2147483647i, 1i), var_0.yzz)), select(vec3<bool>(arg_0.d, false, false), vec3<bool>(arg_0.b.a, arg_2.a, true), func_2(arg_2, vec3<bool>(false, true, global1.d)).d)).b, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, func_3(_wgslsmith_f_op_f32(-global1.c.x), select(vec2<bool>(false, arg_0.b.a), vec2<bool>(true, false), arg_0.d)).x), 16u)]).b.a);
    global1 = Struct_4(-253f, global1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1028f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(489f)) * arg_1)), any(vec4<bool>(arg_0.b.a || true, !(!global1.b.a), arg_2.a, func_2(func_2(Struct_1(global1.d, vec3<i32>(-1i, u_input.a.x, global1.b.b.x)), vec3<bool>(arg_0.d, arg_2.a, true)).b, select(vec3<bool>(true, false, arg_2.a), vec3<bool>(arg_2.a, global1.b.a, false), false)).b.a)));
    var var_1 = u_input.b;
    return Struct_2(abs(min(~(~vec3<u32>(u_input.b, 83916u, 35530u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b) >> (vec3<u32>(4294967295u, 43600u, 40376u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(18448u, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(u_input.b, 4294967295u, u_input.b) >> (vec3<u32>(u_input.b, 14790u, u_input.b) % vec3<u32>(32u))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-849f, _wgslsmith_f_op_f32(floor(131f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), -226f))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = func_2(func_2(Struct_1(arg_1.b.b.x >= _wgslsmith_f_op_f32(max(2813f, global1.c.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(16380i, arg_3.x, u_input.a.x), arg_3.zxy)), !arg_2).b, arg_1.a).b;
    global1 = Struct_4(_wgslsmith_f_op_f32(-global1.c.x), Struct_1(var_0.a, _wgslsmith_add_vec3_i32(var_0.b, vec3<i32>(_wgslsmith_clamp_i32(var_0.b.x, arg_0.x, 2147483647i), -71049i, arg_0.x ^ 24210i))), _wgslsmith_f_op_vec2_f32(arg_1.d.b.zy + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_1.d.b.yy)))), arg_1.a.x || ((all(vec4<bool>(false, var_0.a, var_0.a, false)) && global1.d) & all(select(arg_2.yz, arg_1.a.yx, true))));
    var var_1 = !(!(_wgslsmith_mod_u32(arg_1.d.a.x, 0u) == ~76111u) || global1.d);
    let var_2 = vec3<i32>(-1i) * -(arg_3.zwx | vec3<i32>(arg_0.x | 1i, u_input.a.x, u_input.a.x));
    var var_3 = 27350u;
    return func_2(Struct_1(var_0.a, _wgslsmith_sub_vec3_i32(-var_0.b, var_0.b)), select(vec3<bool>(!var_0.a, !(2194u <= u_input.b), false), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b, 0u), 1u >> (arg_1.e % 32u)), 16u)], !(!arg_2))).b;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<bool>) -> vec2<bool> {
    let var_0 = u_input.b;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(148f + _wgslsmith_f_op_f32(-540f - arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), arg_0.x);
    global0 = array<vec3<bool>, 16>();
    global1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.c.x))) + global1.c.x)), func_5(vec2<i32>(u_input.a.x, abs(-31985i)), Struct_3(vec3<bool>(global1.b.a, !global1.d, true), func_4(func_2(Struct_1(global1.d, vec3<i32>(u_input.a.x, -1i, u_input.a.x)), global0[_wgslsmith_index_u32(16071u, 16u)]), _wgslsmith_f_op_f32(f32(-1f) * -678f), Struct_1(false, vec3<i32>(2147483647i, global1.b.b.x, -4646i))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.a.x, 1i, 1i, global1.b.b.x), vec4<i32>(u_input.a.x, 2147483647i, -23633i, global1.b.b.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, 1i, 23300i, 0i))), Struct_2(vec3<u32>(u_input.b, 4294967295u, var_0) >> (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u)), vec3<f32>(arg_0.x, 1049f, global1.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(44295u, var_0), vec2<u32>(4294967295u, 4294967295u))), !select(!global0[_wgslsmith_index_u32(0u, 16u)], !vec3<bool>(arg_1.x, arg_1.x, true), !global0[_wgslsmith_index_u32(u_input.b, 16u)]), firstTrailingBit(vec4<i32>(2147483647i, ~u_input.a.x, 1i, -1448i))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, -582f), global1.c), func_5(min(vec2<i32>(global1.b.b.x, global1.b.b.x ^ u_input.a.x), _wgslsmith_mult_vec2_i32(-vec2<i32>(global1.b.b.x, -5296i), vec2<i32>(-59421i, global1.b.b.x))), Struct_3(vec3<bool>(func_5(u_input.a, Struct_3(vec3<bool>(arg_1.x, arg_1.x, global1.b.a), Struct_2(vec3<u32>(0u, u_input.b, 13421u), var_1), vec4<i32>(global1.b.b.x, 1i, u_input.a.x, -1i), Struct_2(vec3<u32>(u_input.b, 0u, 121431u), var_1), 0u), vec3<bool>(arg_1.x, false, false), vec4<i32>(global1.b.b.x, global1.b.b.x, u_input.a.x, u_input.a.x)).a, true, true), func_4(Struct_4(-397f, Struct_1(arg_1.x, vec3<i32>(global1.b.b.x, 1i, 0i)), vec2<f32>(-1387f, -646f), global1.b.a), arg_0.x, global1.b), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -1i, -38184i, global1.b.b.x) >> (vec4<u32>(0u, var_0, 4294967295u, 1u) % vec4<u32>(32u)), vec4<i32>(global1.b.b.x, u_input.a.x, -1i, 1i)), func_4(Struct_4(238f, global1.b, arg_0, true), func_4(Struct_4(global1.a, Struct_1(arg_1.x, global1.b.b), arg_0, true), 163f, global1.b).b.x, Struct_1(false, global1.b.b)), 51247u), select(!global0[_wgslsmith_index_u32(0u, 16u)], vec3<bool>(true, any(vec3<bool>(true, arg_1.x, true)), true), !any(vec3<bool>(false, true, global1.d))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, 56795i, 2147483647i) >> (vec4<u32>(27897u, 14435u, 4294967295u, 60908u) % vec4<u32>(32u)), ~vec4<i32>(0i, 2147483647i, global1.b.b.x, global1.b.b.x)), vec4<i32>(-2147483647i, u_input.a.x, _wgslsmith_dot_vec3_i32(global1.b.b, global1.b.b), 50618i))).a);
    global1 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(trunc(-1062f))))) + _wgslsmith_f_op_f32(step(-774f, 180f))), global1.b, _wgslsmith_f_op_vec2_f32(global1.c - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, global1.a) + arg_0)))), func_2(global1.b, global0[_wgslsmith_index_u32(~(~firstTrailingBit(var_0)), 16u)]).d);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 29375i;
    let var_1 = global1.c.x;
    let var_2 = !func_1(global1.c, !(!(!vec2<bool>(global1.b.a, global1.d))));
    let var_3 = global1.b.b;
    var var_4 = func_4(func_2(global1.b, vec3<bool>(func_1(_wgslsmith_f_op_vec2_f32(exp2(global1.c)), var_2).x, !func_1(vec2<f32>(1000f, global1.a), vec2<bool>(true, false)).x, (var_2.x && false) || true)), 350f, global1.b);
    let var_5 = Struct_3(select(!(!select(vec3<bool>(false, global1.d, true), vec3<bool>(global1.d, global1.b.a, false), global0[_wgslsmith_index_u32(14486u, 16u)])), select(global0[_wgslsmith_index_u32(var_4.a.x >> (firstTrailingBit(0u) % 32u), 16u)], vec3<bool>(func_5(vec2<i32>(-1i, -1i), Struct_3(vec3<bool>(true, true, global1.d), Struct_2(var_4.a, vec3<f32>(2006f, global1.c.x, -580f)), vec4<i32>(var_3.x, 59800i, global1.b.b.x, -16713i), Struct_2(vec3<u32>(4294967295u, 12757u, var_4.a.x), var_4.b), u_input.b), vec3<bool>(false, global1.b.a, var_2.x), vec4<i32>(-56676i, var_3.x, 2147483647i, var_3.x)).a, !global1.d, global1.b.a || true), !all(global0[_wgslsmith_index_u32(43410u, 16u)])), true), func_4(func_2(Struct_1(false, -global1.b.b), global0[_wgslsmith_index_u32(34793u, 16u)]), var_4.b.x, Struct_1(global1.d, vec3<i32>(countOneBits(2147483647i), var_0, 29129i & global1.b.b.x))), -select(vec4<i32>(56970i, 1i, u_input.a.x, var_3.x) & _wgslsmith_mod_vec4_i32(vec4<i32>(-44307i, 6810i, -4594i, 2147483647i), vec4<i32>(35217i, var_3.x, var_3.x, var_0)), vec4<i32>(var_0, 1i, 64959i, 1i) & firstLeadingBit(vec4<i32>(38178i, 11188i, global1.b.b.x, 17107i)), var_2.x), Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_4.a.x, 52353u), ~39751u, _wgslsmith_mult_u32(44347u, u_input.b)), select(func_3(var_4.b.x, var_2), abs(vec3<u32>(var_4.a.x, var_4.a.x, var_4.a.x)), 4294967295u >= u_input.b)), vec3<f32>(-1004f, 1f, 869f)), var_4.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(countOneBits(-global1.b.b.x) >> (min(~51982u, ~var_4.a.x) % 32u), _wgslsmith_add_i32(_wgslsmith_mult_i32(~global1.b.b.x, var_0 ^ var_0), _wgslsmith_add_i32(~var_5.c.x, select(global1.b.b.x, u_input.a.x, global1.b.a))), select(func_2(Struct_1(global1.b.a, var_5.c.wyy), var_5.a).b.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_3.x, -1i, var_5.c.x), -var_5.c), true)), var_4.a.x);
}

