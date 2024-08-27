struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    let var_0 = ~u_input.b;
    var var_1 = Struct_3(-vec4<i32>(0i, -2208i, ~var_0.x, _wgslsmith_clamp_i32(0i, max(var_0.x, -108553i), firstLeadingBit(2147483647i))), !vec3<bool>(true, !any(vec2<bool>(true, false)), false));
    var var_2 = 1f;
    let var_3 = ~countOneBits(u_input.e) ^ _wgslsmith_add_vec4_u32(~u_input.e, ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, arg_0.x, u_input.e.x, 1u), u_input.e), ~24473u, firstLeadingBit(u_input.e.x), 25866u));
    let var_4 = var_1.b;
    return var_1.a.x;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: f32, arg_3: f32) -> vec4<bool> {
    var var_0 = Struct_2(!select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), arg_3 != arg_3), vec4<bool>(true, true, true, true)), Struct_1(~(~u_input.e), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), false || any(vec4<bool>(true, false, false, true)))), (2147483647i << (_wgslsmith_dot_vec4_u32(vec4<u32>(7196u, 1u, u_input.c.x, 29862u), vec4<u32>(u_input.c.x, 0u, u_input.e.x, u_input.c.x)) % 32u)) & -10827i, Struct_1(vec4<u32>(1u, firstLeadingBit(~12412u), u_input.c.x, u_input.e.x), select(vec2<bool>(arg_0 > u_input.b.x, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)))), true);
    let var_1 = ~(-_wgslsmith_mod_vec3_i32(~abs(vec3<i32>(-2147483647i, var_0.c, var_0.c)), -u_input.d.xzw));
    let var_2 = var_0.d;
    let var_3 = _wgslsmith_f_op_f32(-arg_2);
    let var_4 = !select(vec3<bool>(-arg_0 > 1i, var_0.b.b.x || var_0.d.b.x, false), vec3<bool>(var_0.d.b.x, true | (true | var_0.b.b.x), var_2.b.x), var_0.a.x);
    return !(!vec4<bool>(any(var_0.a.yz), any(var_0.a.wxy), false, select(any(var_4), var_0.a.x, true)));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    let var_0 = min(~_wgslsmith_add_u32(min(~u_input.e.x, abs(0u)), countOneBits(abs(u_input.c.x))), firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e)));
    var var_1 = func_4(_wgslsmith_clamp_i32(func_3(countOneBits(vec2<u32>(var_0, 48077u)), _wgslsmith_dot_vec3_i32(-vec3<i32>(4830i, 11290i, 2147483647i), _wgslsmith_mod_vec3_i32(u_input.d.xyy, arg_0.a.zzz))), i32(-1i) * -arg_0.a.x, firstLeadingBit(1i)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1941f, 1675f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(933f, _wgslsmith_div_f32(-470f, 592f), arg_0.b.x != arg_0.b.x)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1734f * 310f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(909f)) - _wgslsmith_f_op_f32(round(-132f)))))));
    return Struct_1(select(vec4<u32>(var_0, 0u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_0, var_0, 33854u), vec4<u32>(var_0, 4294967295u, 0u, 1u))), _wgslsmith_sub_u32(var_0 | var_0, reverseBits(1u))), u_input.e, vec4<bool>(false && var_1.x, var_1.x, true, false)), !vec2<bool>(any(vec4<bool>(arg_0.b.x, var_1.x, arg_0.b.x, arg_0.b.x)), true));
}

fn func_1() -> Struct_1 {
    let var_0 = 18247u;
    var var_1 = vec4<u32>(4294967295u, min(_wgslsmith_dot_vec4_u32(u_input.e, ~u_input.e), ~var_0), var_0, _wgslsmith_dot_vec2_u32(firstTrailingBit(min(u_input.c.zy, _wgslsmith_add_vec2_u32(vec2<u32>(56708u, 0u), vec2<u32>(u_input.e.x, 67839u)))), min(~u_input.c.zx, u_input.c.yx)));
    let var_2 = func_2(Struct_3(~(vec4<i32>(u_input.b.x, u_input.d.x, 25165i, u_input.b.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(19546u, var_0, var_0, 4294967295u), vec4<u32>(1u, 43986u, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))), vec3<bool>(true, false, true)));
    var var_3 = Struct_3(vec4<i32>(u_input.b.x | u_input.b.x, _wgslsmith_dot_vec2_i32(select(u_input.b, vec2<i32>(u_input.a, u_input.b.x), var_2.b), ~u_input.b), -62819i, _wgslsmith_add_i32(u_input.b.x, max(u_input.b.x, u_input.d.x))) ^ vec4<i32>(-1i, -3789i, 0i, -1i), vec3<bool>(all(var_2.b), any(vec4<bool>(true, true, true, true)) && any(vec4<bool>(false, var_2.b.x, var_2.b.x, var_2.b.x)), var_2.b.x));
    let var_4 = true;
    return Struct_1(u_input.e, !var_2.b);
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = Struct_3(u_input.d, vec3<bool>(arg_3.b.x, any(func_4(-1i, vec2<f32>(784f, -1522f), -409f, -1379f).zyz) || arg_3.b.x, !arg_3.b.x));
    let var_1 = arg_3.b.x;
    var var_2 = true;
    var var_3 = arg_3.a.yzw;
    let var_4 = var_0.b.x;
    return ~(_wgslsmith_mod_vec2_u32(arg_2.a.zx, ~(~vec2<u32>(u_input.c.x, arg_3.a.x))) ^ vec2<u32>(var_3.x, reverseBits(arg_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = abs(~(~(~u_input.e)) << (vec4<u32>(max(0u, _wgslsmith_add_u32(u_input.e.x, 0u)), 23612u, 1u, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, 1u))) % vec4<u32>(32u)));
    let var_2 = select(~firstLeadingBit(func_5(u_input.d.x, vec2<i32>(var_0, -1i), func_1(), Struct_1(vec4<u32>(1u, u_input.e.x, 5437u, u_input.e.x), vec2<bool>(false, false)))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), var_1.xy), func_5(u_input.a, vec2<i32>(var_0, u_input.a), Struct_1(u_input.e, vec2<bool>(true, true)), Struct_1(vec4<u32>(var_1.x, u_input.e.x, u_input.c.x, u_input.c.x), vec2<bool>(false, true)))), ~u_input.c.x << (min(u_input.e.x, u_input.c.x) % 32u)), !func_2(Struct_3(vec4<i32>(-5461i, u_input.d.x, u_input.d.x, 2147483647i), vec3<bool>(true, true, true))).b.x);
    let var_3 = any(vec2<bool>(all(vec3<bool>(u_input.e.x >= var_2.x, all(vec3<bool>(true, false, true)), all(vec2<bool>(false, true)))), !(27555i != var_0) | true));
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -339f), -1551f, _wgslsmith_f_op_f32(-987f - -432f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1326f, 601f, -1000f), vec3<f32>(-909f, 551f, 188f), vec3<bool>(true, true, var_4.b.x))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1480f, -161f, -716f), vec3<f32>(-1037f, 224f, 1513f), vec3<bool>(var_3, true, true)))))))), func_3(reverseBits(countOneBits(vec2<u32>(19694u, u_input.e.x) | var_2)), -68i), -select(abs(u_input.d.yx), countOneBits(~u_input.d.xw), vec2<bool>(any(vec3<bool>(true, false, false)), var_3 && false)));
}

