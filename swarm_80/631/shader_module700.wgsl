struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(1i, 38776i, 36097i, -48484i, 0i, 0i, 0i, -6104i, 1i, -23334i, 70173i, -1i, 1i, 0i, 1959i, 1i, 2147483647i, -3628i, i32(-2147483648), 2147483647i, 0i, 70557i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, arg_0.x) + arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)))));
    let var_1 = Struct_2(u_input.a.x | (min(42491u, u_input.a.x) << (u_input.d.x % 32u)), ~(22724u << (u_input.d.x % 32u)), vec2<u32>(u_input.a.x, 4294967295u), !(arg_0.x == -275f), ~arg_1.x << (~u_input.d.x % 32u));
    let var_2 = max(arg_1.x, -1i);
    let var_3 = vec2<i32>(_wgslsmith_div_i32(~_wgslsmith_div_i32(arg_3.x, global0[_wgslsmith_index_u32(36252u, 22u)]), u_input.c.x ^ var_1.e) << (~select(~var_1.c.x, ~1u, all(vec4<bool>(var_1.d, arg_2, false, var_1.d))) % 32u), u_input.c.x);
    var var_4 = Struct_4(!(!select(vec4<bool>(false, false, var_1.d, arg_2), select(vec4<bool>(var_1.d, false, arg_2, false), vec4<bool>(arg_2, var_1.d, false, var_1.d), vec4<bool>(var_1.d, arg_2, true, false)), select(vec4<bool>(var_1.d, var_1.d, arg_2, true), vec4<bool>(false, arg_2, false, false), vec4<bool>(var_1.d, var_1.d, arg_2, false)))), Struct_3(all(!select(vec3<bool>(false, true, arg_2), vec3<bool>(true, true, var_1.d), vec3<bool>(arg_2, true, var_1.d))), var_1.b, var_0), -_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(select(arg_3, arg_3, vec4<bool>(var_1.d, false, var_1.d, true)), vec4<i32>(var_3.x, 13682i, var_3.x, global0[_wgslsmith_index_u32(var_1.a, 22u)])), vec4<i32>(var_2, var_3.x, arg_1.x, -39199i) << (~vec4<u32>(4294967295u, 1u, var_1.b, 4294967295u) % vec4<u32>(32u)), u_input.c), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, 1000f))), ~firstLeadingBit(abs(vec3<u32>(var_1.a, 3546u, 22310u)))));
    return -689f;
}

fn func_2() -> i32 {
    let var_0 = max(4294967295u, 4294967295u);
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1143f, -312f) * vec2<f32>(-663f, -299f))), select(u_input.b.yy, u_input.c.zx, any(vec4<bool>(true, true, true, false))), !any(vec3<bool>(true, true, false)), -u_input.c | firstTrailingBit(u_input.c))), -910f)));
    global0 = array<i32, 22>();
    let var_2 = vec3<bool>(true, !(_wgslsmith_mod_i32(u_input.b.x, i32(-1i) * -47931i) > _wgslsmith_dot_vec3_i32(-u_input.c.wxy, vec3<i32>(u_input.c.x, u_input.b.x, 2147483647i))), !(!any(vec4<bool>(true, false, true, false)) != true));
    global0 = array<i32, 22>();
    return _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(global0[_wgslsmith_index_u32(16783u, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)], global0[_wgslsmith_index_u32(u_input.a.x, 22u)], -1i)), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.b.x, -9523i), vec2<i32>(14579i, global0[_wgslsmith_index_u32(u_input.e, 22u)]), -u_input.b.xy), vec2<i32>(firstLeadingBit(0i), u_input.b.x)), ~(~1i), 29805i ^ global0[_wgslsmith_index_u32(var_0, 22u)], -global0[_wgslsmith_index_u32(select(5221u, select(4294967295u, 1u, true), false), 22u)]));
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_2 {
    global0 = array<i32, 22>();
    let var_0 = true;
    var var_1 = Struct_3(select(any(!vec3<bool>(var_0, var_0, var_0)), true, var_0), u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f - arg_0) * _wgslsmith_div_f32(-1567f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-968f, 395f)))));
    let var_2 = Struct_3(select(true, arg_0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f - -1000f) + _wgslsmith_f_op_f32(arg_0 * 998f)), var_1.a), ~(~_wgslsmith_div_u32(u_input.e, ~var_1.b)), -2238f);
    let var_3 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_1.b, 71591u), select(var_1.b, var_2.b, var_1.a), ~38768u, max(1u, u_input.d.x)), ~reverseBits(u_input.a)), max(~(~1u), var_2.b), select(~u_input.d.xy, ~vec2<u32>(1u, var_2.b) ^ (u_input.d.yx & vec2<u32>(u_input.e, 1588u)), !(!vec2<bool>(var_2.a, true))), select(select(var_1.a, abs(var_1.b) >= firstTrailingBit(6530u), true), any(select(vec4<bool>(false, var_1.a, var_1.a, var_0), vec4<bool>(false, var_2.a, true, var_2.a), vec4<bool>(var_0, var_0, var_1.a, var_1.a))) || true, false), countOneBits(32376i));
    return Struct_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(~u_input.a.x & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 68863u), vec3<u32>(21765u, 26657u, 4294967295u)), firstTrailingBit(0u)), ~var_1.b), _wgslsmith_mod_u32(firstLeadingBit(~4294967295u), firstTrailingBit(var_2.b)), _wgslsmith_add_vec2_u32(select(_wgslsmith_sub_vec2_u32(~u_input.a.xx, vec2<u32>(8144u, u_input.e)), firstTrailingBit(~vec2<u32>(var_2.b, 1u)), !vec2<bool>(var_0, true)), var_3.c), var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.c.x >> (0u % 32u), 2147483647i), -2147483647i, reverseBits(min(arg_1, u_input.b.x))), _wgslsmith_sub_vec3_i32(select(-u_input.b, vec3<i32>(arg_1, global0[_wgslsmith_index_u32(33655u, 22u)], arg_1) & vec3<i32>(0i, 0i, 2147483647i), var_0 & var_0), -u_input.c.zwx)));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = 1977f;
    let var_1 = Struct_3(true, 4294967295u, 1582f);
    let var_2 = -189f == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(343f)), -1863f))));
    let var_3 = var_1.b;
    var var_4 = var_3;
    return Struct_4(select(vec4<bool>(arg_1.d, true, any(vec3<bool>(false, arg_1.d, false)), var_2), !(!select(vec4<bool>(var_1.a, arg_1.d, var_1.a, arg_1.d), vec4<bool>(false, false, var_1.a, arg_1.d), var_1.a)), !(!(var_3 <= 93676u))), var_1, u_input.c, Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c, var_1.c, var_1.c) - vec3<f32>(595f, var_1.c, var_1.c)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-407f, var_1.c, var_1.c), vec3<f32>(594f, 1000f, var_1.c))))))), _wgslsmith_mult_vec3_u32(u_input.a.yxx, _wgslsmith_div_vec3_u32(u_input.a.yxx, vec3<u32>(44920u, 22471u, var_1.b)) << (abs(u_input.a.xyx) % vec3<u32>(32u)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: f32, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = u_input.a.x;
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    var var_1 = vec4<f32>(526f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1449f * arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -1166f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(3099f, 851f))))))), _wgslsmith_f_op_f32(abs(arg_2)), -2258f);
    var_0 = arg_1;
    return func_5(u_input.c.x, func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2 * arg_2))))), _wgslsmith_sub_i32(func_2(), -2147483647i)));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: i32) -> Struct_4 {
    let var_0 = arg_1.a.zx;
    var var_1 = arg_1.a;
    global0 = array<i32, 22>();
    let var_2 = firstTrailingBit(-_wgslsmith_add_i32(1i, arg_0.x));
    return arg_1;
}

fn func_7(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = true;
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(func_1(func_5(global0[_wgslsmith_index_u32(~1u, 22u)], Struct_2(u_input.d.x, 37016u, u_input.a.zw, false, global0[_wgslsmith_index_u32(arg_2.d.b.x, 22u)])).a.xzy, firstLeadingBit(27646u), -1448f, select(vec2<i32>(arg_2.c.x, global0[_wgslsmith_index_u32(u_input.e, 22u)]), reverseBits(vec2<i32>(arg_2.c.x, -2936i)), true && arg_2.b.a)).c.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(33119i, 20020i), u_input.b.x | -1i) << (min(abs(54902u), u_input.d.x) % 32u), max(_wgslsmith_mod_i32(2147483647i, firstTrailingBit(-44848i)), max(-1i, 1i) ^ ~global0[_wgslsmith_index_u32(arg_2.d.b.x, 22u)])), _wgslsmith_add_i32(_wgslsmith_add_i32(arg_2.c.x, firstTrailingBit(7442i)), -min(-1i, arg_2.c.x)));
    global0 = array<i32, 22>();
    var var_2 = Struct_4(!vec4<bool>(~1u <= arg_2.d.b.x, all(arg_2.a.xw), var_0, var_0 || all(vec4<bool>(true, true, arg_2.a.x, true))), arg_2.b, arg_2.c, func_1(!arg_2.a.wyz, ~_wgslsmith_sub_u32(_wgslsmith_mult_u32(25714u, arg_2.b.b), ~u_input.d.x), 869f, vec2<i32>(max(-10227i, u_input.b.x), -6916i)).d);
    var var_3 = !var_2.a.xxx;
    return Struct_2(~(~var_2.b.b), 33994u, ~arg_2.d.b.xx, !(!any(vec4<bool>(var_2.a.x, true, false, var_0)) || true), min((global0[_wgslsmith_index_u32(58178u << (u_input.a.x % 32u), 22u)] << ((36767u & arg_2.d.b.x) % 32u)) & countOneBits(func_6(arg_2.c, Struct_4(arg_2.a, Struct_3(false, var_2.b.b, 381f), vec4<i32>(25803i, -20668i, arg_2.c.x, -2147483647i), var_2.d), u_input.c.x).c.x), var_1.x & (func_4(arg_0.x, -2147483647i).e << (_wgslsmith_mod_u32(0u, u_input.d.x) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(260f, 238f)), 1159f), vec2<f32>(_wgslsmith_f_op_f32(784f + 929f), _wgslsmith_div_f32(-1506f, 355f)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(381f, -820f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1281f, 1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1567f, -143f)))))), func_6(u_input.c, func_1(vec3<bool>(true, true, true), _wgslsmith_add_u32(u_input.e, 1u), -1035f, vec2<i32>(2147483647i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], 1i))), _wgslsmith_sub_i32((global0[_wgslsmith_index_u32(u_input.e, 22u)] >> (4941u % 32u)) ^ _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 2147483647i), -global0[_wgslsmith_index_u32(u_input.d.x, 22u)])));
    global0 = array<i32, 22>();
    global0 = array<i32, 22>();
    let var_1 = var_0;
    var var_2 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1706f, _wgslsmith_f_op_f32(f32(-1f) * -987f), -420f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1512f, 1980f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 583f, 220f, 771f) + vec4<f32>(483f, 240f, 1803f, -359f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2090f, 1037f, -1000f, -473f) - vec4<f32>(-674f, -2268f, -486f, 296f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(166f, -1225f, 290f, -784f)))));
}

