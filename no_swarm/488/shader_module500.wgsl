struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    let var_0 = vec2<bool>(select(arg_0, false, select(true, false, arg_0)), arg_0);
    let var_1 = Struct_2(1020f);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * -1212f)))), -1585f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a))) + 409f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-343f)) + arg_1.a))));
    var var_3 = 9718i >> (~_wgslsmith_add_u32(1u, reverseBits(_wgslsmith_dot_vec3_u32(u_input.a.xzz, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)))) % 32u);
    let var_4 = Struct_1(u_input.a.x, _wgslsmith_div_f32(161f, arg_1.a), _wgslsmith_dot_vec2_i32(select(min(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-14762i, u_input.c.x)), vec2<i32>(~(-8108i), 37339i), vec2<bool>(true, true)), select(reverseBits(select(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c, false)), firstTrailingBit(u_input.c) | _wgslsmith_add_vec2_i32(u_input.c, u_input.c), all(vec2<bool>(var_0.x, false)))), _wgslsmith_add_u32(min(0u, min(58965u, _wgslsmith_dot_vec3_u32(u_input.a.xxz, u_input.a.zyz))), select(reverseBits(51549u) & ~u_input.b, u_input.b, false)), true);
    return 952f;
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(480f, arg_1.a)));
    var var_1 = -2169f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true, var_0, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) + -571f);
    var var_3 = select(!(!select(vec3<bool>(arg_0, arg_0, arg_0), select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, true), arg_0), true)), vec3<bool>(false, true, arg_0), true);
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = ~(vec4<u32>(~(~u_input.a.x), 4294967295u, _wgslsmith_dot_vec2_u32(~vec2<u32>(65831u, u_input.a.x), reverseBits(vec2<u32>(u_input.b, 10947u))), u_input.b) ^ abs(reverseBits(u_input.a)));
    var_0 = vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, ~u_input.a.x);
    var_0 = u_input.a;
    let var_1 = all(select(vec2<bool>(all(vec4<bool>(false, false, true, true)), false), vec2<bool>(true, true), true)) & func_2((i32(-1i) * -u_input.c.x) < abs(max(u_input.c.x, 0i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(469f, 1198f))));
    let var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 0u) >> (vec3<u32>(u_input.b, var_0.x, var_0.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), 38176u, var_0.x), vec3<u32>(1u, 0u, ~u_input.b)), vec3<u32>(select(4294967295u, 0u, true), 4294967295u, var_0.x));
    return Struct_1(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(526f * -589f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(var_1, Struct_2(-1348f), Struct_2(938f))), _wgslsmith_f_op_f32(-1000f + -433f))))), ~u_input.c.x, var_0.x >> (firstTrailingBit(var_0.x ^ reverseBits(var_2.x)) % 32u), select(~(1349u >> (u_input.b % 32u)) == var_2.x, false, true));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(796f);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(arg_3.b * -1000f)) * -280f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(340f)), _wgslsmith_div_f32(1283f, arg_3.b))), _wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(arg_2.b - 398f))))));
    var var_3 = vec2<bool>(!(1u != arg_0.a), arg_3.e);
    var_3 = vec2<bool>(any(select(!vec2<bool>(false, arg_2.e), vec2<bool>(true, true), vec2<bool>(true, true))), any(vec4<bool>(arg_2.d < _wgslsmith_sub_u32(1u, u_input.a.x), all(select(vec4<bool>(false, false, true, arg_2.e), vec4<bool>(var_3.x, true, true, arg_3.e), false)), select(all(vec4<bool>(arg_3.e, arg_2.e, var_3.x, false)), func_1().e, var_3.x), _wgslsmith_f_op_f32(arg_0.b - 1048f) <= func_1().b)));
    return vec2<bool>(-2147483647i != _wgslsmith_add_i32(select(~(-2147483647i), _wgslsmith_div_i32(u_input.c.x, u_input.c.x), false), 32019i), abs(firstTrailingBit(30174u)) != _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 5773u, 0u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec3<u32>(138420u, 7884u, arg_3.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, arg_3.d, arg_0.a), u_input.a.wxx), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = !func_4(Struct_1(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -528f), _wgslsmith_mod_i32(1i, 2147483647i) >> (_wgslsmith_sub_u32(1u, var_0) % 32u), u_input.a.x, !all(vec3<bool>(true, true, true))), _wgslsmith_mod_i32(u_input.c.x, -2147483647i), func_1(), Struct_1(var_0, -737f, u_input.c.x, _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_sub_u32(var_0, u_input.a.x)), true));
    let var_2 = _wgslsmith_clamp_vec4_i32(select(min(~vec4<i32>(-35225i, -18182i, 8516i, 0i), abs(vec4<i32>(1i, 12240i, 0i, u_input.c.x))), ~(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<bool>(false, true, false, all(var_1))), ~_wgslsmith_div_vec4_i32(~vec4<i32>(-13263i, -26052i, u_input.c.x, u_input.c.x) << (~vec4<u32>(var_0, 44497u, var_0, 23158u) % vec4<u32>(32u)), vec4<i32>(0i, u_input.c.x, -1i, reverseBits(-5251i))), vec4<i32>(0i, -11306i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(abs(vec3<i32>(u_input.c.x, -2147483647i, u_input.c.x)), -vec3<i32>(-27287i, -2147483647i, 0i)), reverseBits(select(vec3<i32>(82650i, u_input.c.x, u_input.c.x), vec3<i32>(-9873i, 2147483647i, u_input.c.x), var_1.x))), firstLeadingBit(u_input.c.x)));
    let var_3 = firstTrailingBit(abs(u_input.a.zy));
    let var_4 = _wgslsmith_add_vec3_u32(~(u_input.a.zxz & (vec3<u32>(1u, 0u, u_input.a.x) << (vec3<u32>(3927u, 0u, var_0) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(~u_input.a.zxx, u_input.a.xxz, ~vec3<u32>(4294967295u, 31388u, 0u))) | u_input.a.xyx;
    let var_5 = vec4<bool>(true & !(~u_input.b > 15922u), !any(select(vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(true, false), vec2<bool>(false, var_1.x), false), var_1)), var_1.x, all(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x))));
    let var_6 = true;
    let var_7 = firstLeadingBit(~(~(~4294967295u >> ((u_input.a.x ^ 371u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, var_3.x);
}

