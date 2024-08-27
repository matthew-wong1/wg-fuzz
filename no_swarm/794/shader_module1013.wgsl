struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global1: vec3<f32>;

var<private> global2: f32 = -406f;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 1000f));
    let var_1 = arg_1;
    let var_2 = ~(~1u);
    global1 = vec3<f32>(-1346f, _wgslsmith_f_op_f32(global3.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1134f, global3.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(trunc(global3.d))))));
    let var_3 = arg_2.x;
    return _wgslsmith_div_vec2_i32(-(~vec2<i32>(global3.c.x, global3.c.x)), vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(global3.a, vec4<i32>(arg_2.x, var_3, -1i, arg_2.x))), i32(-1i) * -5753i)) & select(~countOneBits(min(global3.a.xx, vec2<i32>(var_3, global3.c.x))), global3.e.wx, ~2147483647i > global3.e.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_2(max(-((global3.e >> (arg_1.d % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(vec4<i32>(25641i, 0i, 16410i, global3.a.x), global3.e)), vec4<i32>(~(-2147483647i), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec4_i32(global3.e, vec4<i32>(2147483647i, 0i, 2147483647i, global3.a.x))), -abs(0i), global3.e.x)), arg_2, select(func_3(vec4<f32>(451f, global1.x, global3.d, -163f), Struct_1(!global3.b.b.xxw, !vec4<bool>(global3.b.a.x, arg_1.b.x, arg_2.b.x, arg_1.b.x), max(global3.b.d.x, 4294967295u), vec4<u32>(global3.b.c, global3.b.c, 0u, 10699u)), -global3.c), vec2<i32>(_wgslsmith_add_i32(u_input.b.x, firstLeadingBit(-13711i)), -23597i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(364f)))), global1.x, -(~vec4<i32>(21112i, func_3(vec4<f32>(-1558f, global1.x, -577f, 1954f), Struct_1(arg_1.b.yxx, arg_1.b, 61443u, vec4<u32>(arg_3.x, 4294967295u, arg_1.d.x, arg_1.d.x)), u_input.b).x, _wgslsmith_mult_i32(0i, global3.e.x), _wgslsmith_mod_i32(-1i, u_input.b.x))));
    var var_1 = var_0.d;
    return Struct_3(arg_2.b, var_0, _wgslsmith_f_op_f32(1204f * 408f), -_wgslsmith_clamp_vec3_i32(~vec3<i32>(-19272i, arg_0.x, arg_0.x), -vec3<i32>(var_0.c.x, arg_0.x, arg_0.x), vec3<i32>(-1i, ~(-1620i), -7594i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_3 {
    global3 = Struct_2(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.c.x, _wgslsmith_mult_i32(u_input.b.x, arg_0.d.x), global3.a.x, -1i), ~abs(arg_1.a)), Struct_1(vec3<bool>(select(arg_3.b.x, global3.b.a.x, true), true, true), vec4<bool>(~0u >= arg_1.b.c, true, true, true), arg_0.b.b.c & ~reverseBits(u_input.a), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.b.d.x, u_input.a, 0u, arg_0.b.b.c), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 50167u, arg_2.x, u_input.a), arg_3.d)))), ~(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(10324i, arg_0.d.x), global3.e.zy), ~arg_1.a.zw) | _wgslsmith_sub_vec2_i32(vec2<i32>(-4903i, -14536i), _wgslsmith_add_vec2_i32(arg_0.b.a.wx, u_input.b))), global3.d, vec4<i32>(_wgslsmith_div_i32(-_wgslsmith_add_i32(1i, -33320i), -48831i), _wgslsmith_div_i32(-1i, (u_input.b.x ^ arg_0.d.x) ^ abs(-21327i)), select(-475i, _wgslsmith_mult_i32(~48547i, global3.c.x), !any(arg_1.b.a.yy)), u_input.b.x));
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 818f, global1.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(214f, arg_0.b.d, 380f) * vec3<f32>(-203f, -709f, -478f)))))))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.d, arg_1.d) + _wgslsmith_f_op_f32(-global1.x))) * -1000f));
    let var_1 = func_2(-arg_0.b.e, func_2(arg_1.e, arg_3, Struct_1(arg_0.b.b.b.xwy, !(!vec4<bool>(arg_3.a.x, global3.b.b.x, global0[_wgslsmith_index_u32(18977u, 3u)], arg_3.b.x)), 14880u, _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(86078u, arg_2.x, arg_2.x, u_input.a)), ~vec4<u32>(arg_3.c, 17027u, arg_1.b.c, 0u))), _wgslsmith_clamp_vec3_u32(~(~arg_0.b.b.d.zwx), vec3<u32>(firstTrailingBit(global3.b.d.x), func_2(arg_1.a, arg_1.b, arg_0.b.b, vec3<u32>(75645u, arg_3.d.x, arg_1.b.d.x)).b.b.c, arg_0.b.b.c >> (arg_0.b.b.c % 32u)), ~min(vec3<u32>(4294967295u, 52537u, arg_3.d.x), vec3<u32>(68722u, arg_0.b.b.d.x, global3.b.c)))).b.b, Struct_1(vec3<bool>((arg_3.b.x & arg_3.a.x) & true, any(arg_0.b.b.b.xz), false && global3.b.b.x), !vec4<bool>(arg_0.a.x, false || arg_1.b.a.x, arg_1.b.b.x, true), arg_3.d.x, ~_wgslsmith_sub_vec4_u32(vec4<u32>(global3.b.c, arg_2.x, 53997u, arg_2.x), arg_0.b.b.d)), ~vec3<u32>(~(~1u), _wgslsmith_div_u32(11062u, arg_0.b.b.c), 1u)).b;
    let var_2 = arg_0;
    return Struct_3(arg_1.b.b, var_2.b, _wgslsmith_f_op_f32(-1007f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), global3.a.xzz);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    var var_0 = 0u;
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_mod_u32(1u, u_input.a)), arg_0.b.b.d.x), 3u)];
    global2 = func_2(func_2(countOneBits(abs(vec4<i32>(0i, -1i, 15703i, u_input.b.x))) >> (arg_0.b.b.d % vec4<u32>(32u)), arg_0.b.b, func_4(func_4(func_4(Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(global3.b.c, 3u)], false, false, global0[_wgslsmith_index_u32(arg_2.d.x, 3u)]), Struct_2(arg_0.b.e, Struct_1(arg_1.a, arg_2.b, 4294967295u, vec4<u32>(0u, arg_2.c, 42811u, arg_2.d.x)), vec2<i32>(6884i, -25159i), global3.d, arg_0.b.e), 2435f, arg_0.b.a.wwy), Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, 33694i, -2147483647i), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)], arg_1.a.x), arg_0.a, 41889u, arg_1.d), global3.a.yx, -251f, arg_0.b.e), arg_2.d.xxz, arg_0.b.b), func_2(global3.e, Struct_1(global3.b.b.wyz, vec4<bool>(false, true, global3.b.a.x, true), arg_0.b.b.c, arg_1.d), Struct_1(arg_0.a.xww, arg_1.b, 4294967295u, global3.b.d), arg_2.d.wyw).b, max(global3.b.d.yzw, arg_0.b.b.d.yzx), func_2(arg_0.b.a, Struct_1(global3.b.a, vec4<bool>(global0[_wgslsmith_index_u32(arg_2.d.x, 3u)], global3.b.b.x, arg_1.a.x, true), 18460u, global3.b.d), arg_2, arg_2.d.wyy).b.b), func_2(_wgslsmith_div_vec4_i32(arg_0.b.e, vec4<i32>(arg_0.b.a.x, 202i, global3.e.x, -1722i)), Struct_1(vec3<bool>(true, true, false), global3.b.b, arg_1.c, arg_0.b.b.d), func_4(Struct_3(vec4<bool>(true, true, true, false), arg_0.b, 296f, vec3<i32>(2147483647i, -22877i, u_input.b.x)), Struct_2(vec4<i32>(u_input.b.x, 45816i, arg_0.b.a.x, arg_0.b.e.x), Struct_1(global3.b.b.zww, vec4<bool>(false, arg_0.b.b.a.x, arg_1.a.x, arg_1.b.x), 0u, vec4<u32>(4294967295u, 96916u, 4294967295u, arg_0.b.b.c)), arg_0.d.xy, arg_0.c, vec4<i32>(0i, arg_3, global3.c.x, -1i)), arg_0.b.b.d.yzw, Struct_1(vec3<bool>(arg_1.b.x, arg_2.b.x, false), arg_1.b, global3.b.c, vec4<u32>(arg_2.c, 34667u, 36458u, 0u))).b.b, ~global3.b.d.xyy).b, vec3<u32>(~4294967295u, ~1u, 18572u), global3.b).b.b, reverseBits(min(_wgslsmith_sub_vec3_u32(arg_0.b.b.d.www, vec3<u32>(4294967295u, 14917u, 62315u)), abs(vec3<u32>(arg_2.c, 17117u, u_input.a))))).b.e, global3.b, func_2(select(vec4<i32>(u_input.b.x | global3.c.x, ~u_input.b.x, arg_0.b.a.x, abs(-17614i)), reverseBits(arg_0.b.a), !(!global0[_wgslsmith_index_u32(1000u, 3u)])), arg_0.b.b, func_4(arg_0, arg_0.b, ~arg_0.b.b.d.wzw, func_4(arg_0, func_4(arg_0, arg_0.b, arg_1.d.xyx, Struct_1(arg_0.a.xzw, vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.d.x, 3u)], arg_2.a.x, arg_1.a.x), 0u, vec4<u32>(u_input.a, 4294967295u, 86856u, 57173u))).b, _wgslsmith_div_vec3_u32(global3.b.d.zzy, vec3<u32>(23127u, arg_0.b.b.c, 22154u)), arg_1).b.b).b.b, ~arg_2.d.wyw).b.b, func_4(func_4(func_4(Struct_3(arg_2.b, arg_0.b, -554f, arg_0.d), arg_0.b, vec3<u32>(4294967295u, 1068u, 6951u), Struct_1(arg_1.b.yzw, vec4<bool>(global3.b.a.x, arg_2.b.x, false, false), 1u, vec4<u32>(4294967295u, u_input.a, 1u, u_input.a))), func_2(arg_0.b.a, arg_1, Struct_1(vec3<bool>(true, true, arg_2.a.x), arg_1.b, 4294967295u, arg_1.d), global3.b.d.yyx).b, vec3<u32>(arg_1.c, arg_1.c, arg_2.c), Struct_1(arg_0.a.yyw, vec4<bool>(false, true, arg_2.a.x, true), u_input.a, arg_1.d)), Struct_2(global3.a, func_4(arg_0, Struct_2(global3.e, global3.b, vec2<i32>(-18487i, -92920i), 164f, vec4<i32>(-36181i, arg_3, arg_0.d.x, arg_3)), vec3<u32>(arg_1.c, 24290u, arg_0.b.b.c), Struct_1(arg_0.b.b.b.xzy, vec4<bool>(arg_1.b.x, arg_0.b.b.a.x, true, global0[_wgslsmith_index_u32(1u, 3u)]), 23543u, vec4<u32>(28964u, 42563u, arg_1.c, 65347u))).b.b, vec2<i32>(-17795i, 1i) ^ vec2<i32>(u_input.b.x, -4658i), -1284f, global3.a), vec3<u32>(u_input.a, 4294967295u, 14113u) & max(arg_1.d.zzz, vec3<u32>(1u, 1u, arg_0.b.b.d.x)), func_2(_wgslsmith_add_vec4_i32(arg_0.b.e, vec4<i32>(global3.e.x, 31272i, arg_0.d.x, 0i)), func_2(global3.a, arg_1, Struct_1(arg_1.a, arg_0.b.b.b, u_input.a, vec4<u32>(arg_1.c, 50044u, 11031u, u_input.a)), vec3<u32>(u_input.a, 0u, arg_0.b.b.d.x)).b.b, func_2(vec4<i32>(global3.e.x, -1i, arg_3, arg_3), Struct_1(arg_2.b.wxz, arg_1.b, 4294967295u, global3.b.d), Struct_1(arg_1.b.zyw, arg_0.a, arg_1.d.x, vec4<u32>(arg_2.c, arg_1.d.x, arg_2.d.x, 4294967295u)), arg_1.d.yzw).b.b, vec3<u32>(u_input.a, 4294967295u, 82695u)).b.b).b.b.d.zzy ^ (~func_2(global3.e, Struct_1(arg_0.a.yyw, vec4<bool>(arg_0.a.x, true, arg_0.a.x, global3.b.b.x), global3.b.c, arg_0.b.b.d), arg_1, vec3<u32>(23744u, 17372u, 0u)).b.b.d.wyw >> (_wgslsmith_sub_vec3_u32(arg_1.d.xwx, max(arg_0.b.b.d.wyy, vec3<u32>(4294967295u, u_input.a, 4294967295u))) % vec3<u32>(32u)))).b.d;
    let var_2 = arg_0.a.zw;
    let var_3 = ~(~countOneBits(vec2<u32>(~0u, 0u)));
    return func_2(arg_0.b.e, func_2(global3.e, func_4(Struct_3(!vec4<bool>(false, arg_0.a.x, false, arg_1.a.x), arg_0.b, _wgslsmith_f_op_f32(global3.d - arg_0.b.d), vec3<i32>(-1i, arg_3, arg_0.b.e.x)), arg_0.b, reverseBits(vec3<u32>(1u, 0u, 55045u)), Struct_1(func_2(arg_0.b.e, arg_1, global3.b, global3.b.d.wyx).a.wzx, select(global3.b.b, arg_2.b, arg_2.b), ~arg_0.b.b.d.x, _wgslsmith_sub_vec4_u32(vec4<u32>(11437u, u_input.a, 0u, 1u), vec4<u32>(5506u, 0u, 4294967295u, var_3.x)))).b.b, func_2(~(~arg_0.b.a), Struct_1(global3.b.a, arg_1.b, var_3.x, abs(global3.b.d)), Struct_1(func_4(arg_0, arg_0.b, vec3<u32>(var_3.x, 35016u, arg_2.d.x), arg_1).b.b.a, vec4<bool>(true, true, arg_1.b.x, global0[_wgslsmith_index_u32(global3.b.c, 3u)]), arg_0.b.b.d.x, arg_2.d), global3.b.d.zxz).b.b, _wgslsmith_sub_vec3_u32(vec3<u32>(~arg_0.b.b.d.x, global3.b.c ^ arg_1.c, 25064u), arg_2.d.yxw ^ _wgslsmith_add_vec3_u32(arg_0.b.b.d.yxz, global3.b.d.xwx))).b.b, Struct_1(vec3<bool>(arg_0.b.b.b.x, global0[_wgslsmith_index_u32(30630u, 3u)], all(!vec3<bool>(arg_1.a.x, arg_2.a.x, arg_2.b.x))), vec4<bool>(any(vec2<bool>(false, false)), true, false, true), 0u, vec4<u32>(global3.b.d.x, _wgslsmith_mult_u32(u_input.a, 34406u), func_4(func_2(global3.a, Struct_1(arg_1.a, vec4<bool>(arg_1.a.x, false, arg_0.b.b.a.x, true), global3.b.d.x, vec4<u32>(5245u, 1u, u_input.a, 18608u)), Struct_1(vec3<bool>(true, true, arg_1.a.x), arg_1.b, 0u, vec4<u32>(arg_0.b.b.c, 4294967295u, 82415u, 49783u)), arg_2.d.wzz), arg_0.b, ~arg_0.b.b.d.zzw, func_4(Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(global3.b.c, 3u)], arg_0.b.b.b.x, global3.b.a.x, global3.b.a.x), Struct_2(vec4<i32>(u_input.b.x, -1i, arg_3, 0i), arg_1, vec2<i32>(arg_3, 3029i), global3.d, global3.e), -1000f, vec3<i32>(28798i, arg_3, -15982i)), arg_0.b, arg_1.d.xwz, global3.b).b.b).b.b.c, 1u ^ countOneBits(global3.b.c))), select(vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, 4294967295u, 12615u, arg_2.d.x), min(vec4<u32>(var_3.x, arg_1.d.x, 82705u, 0u), arg_2.d)), min(1u, var_3.x)), vec3<u32>(0u, ~1u, ~global3.b.d.x), arg_1.b.zyy));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    global3 = arg_0.b;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.c, global1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1451f)), 280f)));
    var var_0 = arg_0.b.b.b.x;
    var var_1 = arg_0.b.b.d.zx;
    let var_2 = ~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_1.c), arg_0.b.b.d.wy << (arg_1.d.xz % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~global3.b.d.wy, vec2<u32>(41746u, var_1.x)), select(abs(vec2<u32>(0u, 0u)), vec2<u32>(arg_0.b.b.c, 4294967295u), arg_1.b.x)), vec2<u32>(0u, max(u_input.a, 8586u)) << (arg_1.d.zy % vec2<u32>(32u)));
    return Struct_1(select(!global3.b.b.wzw, global3.b.b.yzw, (true || !global3.b.a.x) && any(global3.b.b.yz)), !(!(!select(global3.b.b, arg_0.b.b.b, global3.b.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(func_5(arg_0, global3.b, func_5(arg_0, global3.b, Struct_1(vec3<bool>(false, global3.b.b.x, false), global3.b.b, u_input.a, vec4<u32>(1u, var_2.x, arg_0.b.b.d.x, 13225u)), global3.e.x).b.b, firstTrailingBit(-8953i)).b.b.c, 47413u), ~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 7509u), vec2<u32>(arg_1.c, arg_0.b.b.c)) & arg_0.b.b.d.yy)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(global3.b.c, var_1.x, var_1.x, 11886u)), arg_0.b.b.d) << (abs(vec4<u32>(u_input.a, ~var_2.x, 0u, ~u_input.a)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = 1u;
    var var_1 = u_input.a;
    var var_2 = _wgslsmith_div_u32(arg_1, ~(~(~arg_1)) << (_wgslsmith_clamp_u32(~(~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 9600u, var_0, 12965u), global3.b.d), ~global3.b.d), var_0) % 32u));
    global0 = array<bool, 3>();
    let var_3 = -1000f;
    return Struct_2(~(vec4<i32>(-1i) * -(~vec4<i32>(0i, global3.c.x, 1i, 12979i))), func_6(func_5(func_4(func_2(vec4<i32>(-2147483647i, global3.c.x, -33640i, 1i), Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(19631u, 3u)], global3.b.b.x, false), global3.b.b, var_0, vec4<u32>(44785u, var_0, 59951u, global3.b.d.x)), Struct_1(global3.b.a, global3.b.b, u_input.a, global3.b.d), vec3<u32>(var_0, 4294967295u, 1u)), func_2(vec4<i32>(1i, global3.c.x, 26237i, u_input.b.x), Struct_1(vec3<bool>(false, false, arg_0.x), global3.b.b, 4291u, global3.b.d), Struct_1(vec3<bool>(false, arg_0.x, arg_0.x), vec4<bool>(true, false, global0[_wgslsmith_index_u32(41664u, 3u)], false), var_0, global3.b.d), global3.b.d.zyw).b, max(global3.b.d.yzx, vec3<u32>(u_input.a, 44926u, 1u)), Struct_1(vec3<bool>(false, global3.b.a.x, global0[_wgslsmith_index_u32(0u, 3u)]), global3.b.b, arg_1, vec4<u32>(0u, 43512u, u_input.a, 0u))), func_2(select(vec4<i32>(1i, -9680i, 47738i, -1i), vec4<i32>(u_input.b.x, global3.a.x, 0i, global3.e.x), global3.b.b), func_4(Struct_3(global3.b.b, Struct_2(global3.a, global3.b, global3.c, -482f, vec4<i32>(u_input.b.x, u_input.b.x, 1i, global3.c.x)), global1.x, vec3<i32>(global3.a.x, -2147483647i, global3.a.x)), Struct_2(vec4<i32>(1i, global3.a.x, global3.e.x, -11251i), global3.b, vec2<i32>(-57944i, global3.c.x), -2815f, vec4<i32>(2446i, 8880i, u_input.b.x, u_input.b.x)), global3.b.d.yzz, global3.b).b.b, global3.b, global3.b.d.wyx).b.b, global3.b, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-51536i, -1i, global3.a.x), global3.e.ywx), -1i)), func_2(vec4<i32>(i32(-1i) * -16697i, global3.e.x, ~2147483647i, -18766i), Struct_1(!arg_0, func_4(Struct_3(vec4<bool>(global3.b.a.x, global0[_wgslsmith_index_u32(31883u, 3u)], false, global3.b.a.x), Struct_2(vec4<i32>(-16510i, global3.a.x, -25234i, u_input.b.x), Struct_1(arg_0, global3.b.b, 53082u, vec4<u32>(0u, 4294967295u, 1u, var_0)), vec2<i32>(u_input.b.x, global3.a.x), global1.x, global3.e), -482f, vec3<i32>(u_input.b.x, -2147483647i, 914i)), Struct_2(global3.e, global3.b, vec2<i32>(-1i, u_input.b.x), global1.x, vec4<i32>(0i, -1i, 2147483647i, global3.e.x)), global3.b.d.yyx, Struct_1(global3.b.b.xwz, vec4<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 3u)], true), 4294967295u, global3.b.d)).b.b.b, ~33819u, global3.b.d), func_4(Struct_3(global3.b.b, Struct_2(vec4<i32>(u_input.b.x, global3.c.x, 2147483647i, -29416i), global3.b, u_input.b, -1000f, global3.e), -772f, global3.e.yxx), func_4(Struct_3(vec4<bool>(true, true, true, true), Struct_2(global3.e, global3.b, u_input.b, -131f, vec4<i32>(global3.a.x, -19896i, -1i, -2147483647i)), global1.x, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), Struct_2(global3.a, global3.b, global3.a.yx, -2016f, vec4<i32>(-1i, -2147483647i, 1i, -61688i)), global3.b.d.zxx, global3.b).b, ~global3.b.d.wwx, Struct_1(arg_0, vec4<bool>(false, false, false, true), u_input.a, vec4<u32>(arg_1, arg_1, 84154u, arg_1))).b.b, ~(global3.b.d.yyw << (global3.b.d.zww % vec3<u32>(32u)))).b.b, global3.c), global3.a.wx, _wgslsmith_f_op_f32(-global3.d), min(firstTrailingBit(select(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, global3.c.x, -19730i, u_input.b.x), global3.a), abs(vec4<i32>(0i, global3.a.x, global3.e.x, u_input.b.x)), true)), -global3.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(select(vec3<bool>(!any(vec2<bool>(global3.b.b.x, true)), global3.b.a.x, false), select(!global3.b.b.xzy, vec3<bool>(true, !global3.b.a.x, true), global3.b.b.x), global3.b.b.yww), ~(~abs(global3.b.d.x)) | u_input.a);
    var var_0 = ~max(_wgslsmith_sub_vec2_u32(global3.b.d.wy, max(vec2<u32>(37971u, 0u), global3.b.d.yx)), ~vec2<u32>(~26372u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(max(global3.a, global3.e), ~(~_wgslsmith_add_u32(~1u, var_0.x)), global3.a.x, -(~(-_wgslsmith_div_vec2_i32(vec2<i32>(global3.c.x, u_input.b.x), u_input.b))));
}

