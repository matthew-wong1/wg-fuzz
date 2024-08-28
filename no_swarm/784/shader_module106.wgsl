struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(353f)), 1f, 343f)));
    var var_1 = vec4<u32>(max(_wgslsmith_add_u32(select(firstLeadingBit(u_input.b), 0u, true), ~firstTrailingBit(4294967295u)), ~u_input.a.x), firstTrailingBit(1u), abs(_wgslsmith_mult_u32(firstTrailingBit(44888u), max(u_input.b, u_input.d) | 30337u)), max(u_input.d, ~4206u));
    var_1 = ~vec4<u32>(~select(~var_1.x, u_input.a.x, true), ~reverseBits(var_1.x >> (u_input.a.x % 32u)), 35400u, 1u);
    var_1 = _wgslsmith_div_vec4_u32(u_input.a & abs(u_input.a), _wgslsmith_add_vec4_u32(reverseBits(firstLeadingBit(vec4<u32>(u_input.d, var_1.x, u_input.d, 4294967295u))), ~vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, u_input.a.x, var_1.x, u_input.a.x)), ~4294967295u, var_1.x, ~74161u)));
    var var_2 = Struct_1(u_input.c.xwx, _wgslsmith_div_u32(u_input.a.x, ~(~_wgslsmith_sub_u32(u_input.d, 45886u))), vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, 0i), abs(0i)), 1i, max(_wgslsmith_dot_vec2_i32(~u_input.c.wx, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(1i, -36159i))), firstLeadingBit(u_input.c.x)), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -18033i, u_input.c.x, u_input.c.x), vec4<i32>(-73765i, u_input.c.x, u_input.c.x, u_input.c.x))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + -213f) <= _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-var_0.x)), !any(vec4<bool>(false, true, true, false)) != (u_input.c.x == 45347i), all(vec4<bool>(all(vec2<bool>(true, true)), false, u_input.c.x >= 44146i, all(vec4<bool>(true, false, true, false))))));
    return var_0.xx;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: bool) -> Struct_4 {
    var var_0 = arg_1.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1457f + _wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_f_op_f32(abs(arg_2.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3())));
    let var_3 = ~arg_1;
    let var_4 = 4294967295u;
    return Struct_4(-227f, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, arg_1.x, 0u, var_4)), vec4<u32>(arg_1.x, ~4294967295u, ~44035u, _wgslsmith_clamp_u32(4294967295u, 76268u, 1u))), min(~(4294967295u << (u_input.d % 32u)), reverseBits(var_3.x) >> (_wgslsmith_sub_u32(var_4, 69058u) % 32u))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = i32(-1i) * -arg_2.x;
    let var_1 = func_2(_wgslsmith_dot_vec3_i32(arg_1.a, -_wgslsmith_add_vec3_i32(~arg_2.xzx, vec3<i32>(arg_1.c.x, u_input.c.x, arg_2.x) | vec3<i32>(27080i, arg_2.x, u_input.c.x))), u_input.a, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-770f, arg_0.a, arg_0.a, arg_0.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1408f, 411f, arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-339f, arg_0.a, -814f, arg_0.a)) * vec4<f32>(_wgslsmith_f_op_f32(min(arg_0.a, arg_0.a)), _wgslsmith_f_op_f32(step(1916f, arg_0.a)), arg_0.a, _wgslsmith_f_op_f32(-2431f * -1690f))))), false);
    var var_2 = Struct_2(arg_1, Struct_1(_wgslsmith_mult_vec3_i32(countOneBits(select(arg_1.a, u_input.c.ywy, arg_1.d)), select(vec3<i32>(arg_2.x, 0i, arg_1.a.x) << (u_input.a.zyz % vec3<u32>(32u)), arg_2.ywx, all(vec4<bool>(arg_1.d.x, false, arg_3, arg_3)))), ~min(~arg_0.b, ~0u), firstTrailingBit(arg_2), vec3<bool>(all(!vec3<bool>(true, arg_1.d.x, true)), all(arg_1.d.xz), any(vec4<bool>(true, arg_3, arg_3, false)))), countOneBits(var_1.b), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~firstLeadingBit(var_1.b), ~abs(u_input.d), var_1.b), vec4<u32>(u_input.a.x, 1u, var_1.b, 1u) << (vec4<u32>(_wgslsmith_mod_u32(58058u, 11877u), arg_0.b, _wgslsmith_add_u32(var_1.b, 0u), ~1u) % vec4<u32>(32u))));
    let var_3 = !var_2.b.d.x;
    let var_4 = vec2<u32>(~0u, 4294967295u);
    return Struct_1(abs(-max(u_input.c.yzx, _wgslsmith_div_vec3_i32(arg_1.c.zwz, u_input.c.zyw))), 4294967295u, firstTrailingBit(firstTrailingBit(arg_2) ^ vec4<i32>(arg_1.c.x, 0i, firstLeadingBit(var_2.a.c.x), _wgslsmith_add_i32(u_input.c.x, u_input.c.x))), var_2.b.d);
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = Struct_2(func_4(func_2(min(i32(-1i) * -19944i, 32451i), u_input.a, vec4<f32>(arg_0, -610f, -905f, _wgslsmith_f_op_f32(-arg_0)), false), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-5i, 6447i), vec2<i32>(0i, u_input.c.x)), u_input.c.x, select(0i, -16214i, true)), u_input.d, -u_input.c, vec3<bool>(true, true, true)), firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), 2147483647i, ~38957i, _wgslsmith_dot_vec3_i32(u_input.c.xwy, u_input.c.wzw))), any(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec4<bool>(true, true, true, true))))), func_4(func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, u_input.c.x, -1i), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) | vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, -2147483647i)), ~(~u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(687f, arg_0, arg_0, 606f) + vec4<f32>(-622f, -190f, arg_0, arg_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(303f, 3530f, -652f, -1774f) - vec4<f32>(arg_0, 550f, arg_0, -1182f))), any(vec4<bool>(true, true, false, true)) && false), Struct_1(u_input.c.yxz, _wgslsmith_mod_u32(~28108u, ~u_input.d), (vec4<i32>(1i, 29274i, u_input.c.x, 6820i) >> (u_input.a % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.d, 4294967295u, 38836u), u_input.a) % vec4<u32>(32u)), vec3<bool>(true, true, true)), vec4<i32>(27711i, -52414i, ~u_input.c.x, ~(~u_input.c.x)), _wgslsmith_div_u32(u_input.a.x & u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.a.yz)) > 32965u), firstLeadingBit(~_wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.a.ww) & ~u_input.a.x), _wgslsmith_mult_u32(17678u, func_2(_wgslsmith_div_i32(-12174i, _wgslsmith_clamp_i32(-20951i, 1i, u_input.c.x)), _wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.d, 0u), vec4<u32>(1u, 32215u, u_input.a.x, u_input.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 365f, arg_0, -1000f), vec4<f32>(-1444f, 1314f, arg_0, arg_0))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, -1045f), vec4<f32>(1809f, arg_0, arg_0, 786f), vec4<bool>(false, true, false, false)))), select(any(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, true, false)), true)).b));
    var var_1 = ~u_input.c.xx;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1027f, 2184f, 1260f) * vec3<f32>(329f, arg_0, 1373f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, -160f, 601f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 536f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1435f, -1409f, 318f)))), var_0.a.d.x || func_4(Struct_4(130f, 4294967295u), var_0.b, var_0.b.c, var_0.a.d.x).d.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) - arg_0))));
    var var_3 = _wgslsmith_mult_i32(max(9477i, -abs(1i)), u_input.c.x);
    var var_4 = 2147483647i;
    return Struct_2(func_4(func_2(u_input.c.x, vec4<u32>(u_input.d, u_input.b, min(u_input.a.x, var_0.a.b), firstLeadingBit(4294967295u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(198f, var_2.x, var_2.x, var_2.x), vec4<f32>(-1972f, -608f, arg_0, -1827f), false)), _wgslsmith_div_vec4_f32(vec4<f32>(430f, -442f, -718f, var_2.x), vec4<f32>(var_2.x, 1369f, 1025f, arg_0))), !var_0.a.d.x), var_0.b, var_0.b.c | ~vec4<i32>(-2147483647i, var_1.x, 12867i, var_1.x), false && !(var_0.a.d.x | true)), var_0.b, 4294967295u, max(var_0.a.b, u_input.d));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec2<i32> {
    return abs(-u_input.c.wy) ^ (vec2<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, u_input.c.x), u_input.c.x)) & max(func_4(Struct_4(1043f, 4294967295u), Struct_1(vec3<i32>(1i, 58945i, -2147483647i), u_input.d, vec4<i32>(-1i, 44814i, u_input.c.x, 0i), vec3<bool>(true, arg_2.b.d.x, arg_2.a.d.x)), _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-2147483647i, arg_2.a.c.x, -21826i, arg_2.a.a.x)), !arg_2.a.d.x).a.zz, u_input.c.yw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(func_5(min(~30039u & ~u_input.b, ~abs(0u)), u_input.a.x, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)))), func_5(_wgslsmith_add_u32(62109u, _wgslsmith_sub_u32(max(4294967295u, u_input.a.x), 21518u | u_input.d)), _wgslsmith_mult_u32(_wgslsmith_div_u32(23771u >> (u_input.d % 32u), u_input.d), firstTrailingBit(u_input.b)), Struct_2(Struct_1(u_input.c.wxw | u_input.c.xxy, ~u_input.d, func_1(511f).b.c, vec3<bool>(true, false, false)), Struct_1(func_4(Struct_4(-506f, u_input.b), Struct_1(u_input.c.xzz, 30772u, vec4<i32>(0i, u_input.c.x, u_input.c.x, -2147483647i), vec3<bool>(true, true, false)), vec4<i32>(67996i, u_input.c.x, 20856i, -1366i), true).c.zyz, _wgslsmith_mod_u32(19743u, 1u), -u_input.c, vec3<bool>(true, true, true)), 494u, _wgslsmith_mult_u32(u_input.d | 17873u, ~u_input.a.x))));
    var_0 = vec2<i32>(var_0.x, i32(-1i) * -7247i);
    let var_1 = func_4(func_2(var_0.x, u_input.a << (min(u_input.a, u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(742f, -1800f, -477f, 173f) + vec4<f32>(803f, -1721f, 621f, -1032f)))), !all(vec4<bool>(false, false, false, false)) == false), Struct_1(u_input.c.xwz, u_input.b, u_input.c, vec3<bool>(true, true, true)), (_wgslsmith_mult_vec4_i32(firstTrailingBit(u_input.c), _wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(-49702i, -24846i, u_input.c.x, 0i))) >> (~u_input.a % vec4<u32>(32u))) | firstLeadingBit(vec4<i32>(~u_input.c.x, u_input.c.x, ~u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(25439i, 0i), vec2<i32>(u_input.c.x, -15104i)))), true);
    let var_2 = any(vec2<bool>(true, var_1.d.x)) | !var_1.d.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -481f), _wgslsmith_f_op_f32(309f + 193f), -145f) + vec3<f32>(-276f, -632f, _wgslsmith_f_op_f32(f32(-1f) * -654f))), vec3<f32>(_wgslsmith_f_op_f32(select(172f, _wgslsmith_f_op_f32(ceil(493f)), var_2)), _wgslsmith_f_op_f32(1000f - -116f), _wgslsmith_f_op_f32(max(-629f, 661f))), func_4(func_2(func_4(Struct_4(311f, 11954u), Struct_1(vec3<i32>(1i, var_0.x, 0i), 21659u, var_1.c, var_1.d), u_input.c, var_2).a.x, vec4<u32>(var_1.b, u_input.b, 6927u, 87391u) | u_input.a, vec4<f32>(742f, 1262f, -200f, -2500f), var_2), var_1, abs(-var_1.c), !(var_2 || false)).d)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1350f, _wgslsmith_f_op_f32(trunc(-394f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-2399f, -1000f))), _wgslsmith_f_op_f32(sign(-940f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -1004f, 1637f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 0u, -_wgslsmith_mod_vec3_i32(var_1.a, ~var_1.a), ~var_1.b << (_wgslsmith_clamp_u32(~var_1.b, ~u_input.b | 1u, 1u) % 32u));
}

