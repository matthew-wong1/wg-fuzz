struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -65992i;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec3<u32> {
    return countOneBits(firstTrailingBit(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(4294967295u, 4294967295u, arg_2)), select(~vec3<u32>(arg_3, 69313u, 2170u), vec3<u32>(arg_1.a, 13800u, arg_1.d) >> (vec3<u32>(0u, arg_0.a.a, 4294967295u) % vec3<u32>(32u)), true), vec3<u32>(9733u, 50532u, 4294967295u))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    let var_0 = Struct_3(Struct_1(max(_wgslsmith_dot_vec3_u32(func_3(Struct_3(Struct_1(0u, 467f, vec4<bool>(false, true, false, false), u_input.c), Struct_1(1u, 1102f, vec4<bool>(global1.x, global1.x, global1.x, global1.x), u_input.b)), Struct_1(4294967295u, -500f, vec4<bool>(global1.x, global1.x, true, global1.x), 4294967295u), u_input.c, arg_0.x), arg_0), min(4294967295u, u_input.b) | ~46563u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-614f - 1344f), _wgslsmith_f_op_f32(f32(-1f) * -2419f))), 1f)), !select(!vec4<bool>(global1.x, true, true, global1.x), select(vec4<bool>(global1.x, global1.x, true, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x), global1.x), global1.x), arg_0.x), Struct_1(_wgslsmith_add_u32(1u | u_input.a, _wgslsmith_mod_u32(4294967295u << (arg_0.x % 32u), ~20592u)), _wgslsmith_f_op_f32(-1f), vec4<bool>(true, any(vec4<bool>(true, false, true, true)), !(false | global1.x), all(vec3<bool>(true, true, true))), reverseBits(max(arg_0.x << (7400u % 32u), u_input.c))));
    global1 = select(vec3<bool>(!global1.x, false, select(var_0.a.b >= 1000f, any(select(vec3<bool>(global1.x, true, false), vec3<bool>(false, false, true), false)), any(vec2<bool>(var_0.b.c.x, global1.x)))), var_0.a.c.yzy, all(select(vec2<bool>(true, !global1.x), !vec2<bool>(true, global1.x), false & global1.x)));
    let var_1 = arg_0.x;
    return Struct_4(var_0, select(!(!vec4<bool>(var_0.a.c.x, global1.x, true, false)), vec4<bool>(var_0.a.c.x & (var_0.a.b > var_0.a.b), true && any(var_0.a.c.yxy), !global1.x, any(select(vec4<bool>(global1.x, true, false, true), var_0.b.c, var_0.b.c.x))), !select(select(vec4<bool>(false, var_0.a.c.x, true, true), var_0.a.c, vec4<bool>(var_0.a.c.x, false, global1.x, true)), var_0.b.c, true)), var_0.b.c.yxy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b, -545f) - vec2<f32>(var_0.a.b, -952f))))))), all(!vec4<bool>(!global1.x, !var_0.a.c.x, global1.x, var_0.a.c.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: f32, arg_3: f32) -> vec3<f32> {
    var var_0 = vec4<bool>(arg_1.a.b.c.x | func_2(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(1901u, 4294967295u, 4294967295u)))).a.b.c.x, _wgslsmith_div_f32(-1075f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) * _wgslsmith_f_op_f32(ceil(arg_2)))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(-arg_3)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.d.x, -474f)), _wgslsmith_f_op_f32(sign(arg_3))))), false, global1.x);
    let var_1 = func_2(_wgslsmith_div_vec3_u32(min(~(vec3<u32>(4294967295u, u_input.c, u_input.b) << (vec3<u32>(u_input.c, 1u, 201u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, arg_1.a.a.a, 52787u), vec3<u32>(40667u, 4294967295u, 29226u)) >> (~vec3<u32>(u_input.c, 23627u, 47771u) % vec3<u32>(32u))), ~vec3<u32>(1u, 47620u, _wgslsmith_div_u32(27115u, u_input.b)))).a.a;
    global1 = arg_1.c;
    global0 = 33902i & (-max(arg_0.x ^ -34455i, ~(-1i)) >> (~var_1.d % 32u));
    var var_2 = !vec4<bool>(global1.x, all(select(select(vec3<bool>(var_0.x, arg_1.e, arg_1.b.x), var_1.c.yyx, var_1.c.x), !var_1.c.zwy, !var_0.x)), true, func_2(vec3<u32>(arg_1.a.b.d, 95279u, 14889u)).b.x & (~0u != arg_1.a.a.d));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, arg_3, -1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, arg_1.d.x, -799f))), vec3<bool>(true, var_0.x, var_1.c.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a.b, -1192f, 1979f) + vec3<f32>(arg_3, var_1.b, arg_1.a.b.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_2, arg_2) + vec3<f32>(arg_3, -1197f, -284f)), vec3<f32>(-876f, -618f, 1000f)))))));
}

fn func_1() -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(firstLeadingBit(vec2<i32>(-9807i, 36472i)), func_2(vec3<u32>(u_input.c, u_input.b, 58771u)), func_2(vec3<u32>(27794u, 1u, u_input.a)).d.x, 425f)))))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-411f - 1615f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) * _wgslsmith_div_f32(894f, 1674f)), -1137f))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))))), var_0.x);
    let var_2 = 0i;
    var var_3 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, var_2, 2147483647i), vec4<i32>(var_2, 22285i, var_2, var_2)), var_2 | -1i, 1i)), _wgslsmith_mult_vec3_i32(max(-vec3<i32>(var_2, var_2, var_2), _wgslsmith_add_vec3_i32(vec3<i32>(-27752i, var_2, -2147483647i), vec3<i32>(2147483647i, 13801i, -67252i))), _wgslsmith_mult_vec3_i32(vec3<i32>(4505i, var_2, 1i), abs(vec3<i32>(var_2, -2147483647i, -6344i))))), vec3<i32>(var_2, var_2, -var_2 & 0i));
    var_3 = abs(-(vec3<i32>(1i, -var_3.x, ~(-2147483647i)) >> (vec3<u32>(u_input.c, 30099u, ~u_input.c) % vec3<u32>(32u))));
    return vec3<bool>(global1.x, any(func_2(vec3<u32>(abs(4294967295u), 1u, u_input.c)).a.b.c), all(!vec4<bool>(true, global1.x, global1.x, global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 8004i, 28155i, -37570i), max(vec4<i32>(-60255i, 2147483647i, 0i, 0i), vec4<i32>(-2147483647i, -15750i, 1i, 0i))) != -(2147483647i << (u_input.a % 32u))));
    global1 = !vec3<bool>(!(_wgslsmith_f_op_f32(trunc(-771f)) < _wgslsmith_f_op_f32(select(-1320f, -260f, true))), !(true & all(vec4<bool>(var_0, global1.x, var_0, false))), true);
    let var_1 = abs(~countOneBits(7283u)) & u_input.a;
    global1 = select(vec3<bool>(var_0, false, var_0), !(!func_1()), true);
    global0 = abs(abs(i32(-1i) * -_wgslsmith_clamp_i32(-25214i, -1i, 2147483647i)));
    var var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(reverseBits(1i), _wgslsmith_div_i32(reverseBits(3866i), ~13575i), 1i)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(1i, 1i, 1i), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -66405i, 1i, 2147483647i), vec4<i32>(-1i, -16299i, 1i, 0i)), i32(-1i) * -25545i, select(0i, -29832i, var_0))), select(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(61471i, -14311i, 53939i), vec3<i32>(-1i, 1i, 43535i))), ~vec3<i32>(1i, -26546i, 5533i), func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-142f, _wgslsmith_div_f32(-1767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)))));
}

