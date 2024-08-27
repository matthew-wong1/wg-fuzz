struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec4<f32>(310f, -243f, -1710f, 1000f), vec2<i32>(2147483647i, -1i), Struct_2(vec2<f32>(-461f, 2073f), Struct_1(false), Struct_1(true)), false);

var<private> global1: vec3<u32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = select(vec4<u32>(countOneBits(4294967295u), global1.x, _wgslsmith_add_u32(~firstTrailingBit(23844u), u_input.c.x), 40367u), vec4<u32>(64120u, ~u_input.a.x, u_input.c.x, global1.x & u_input.a.x), select(select(select(!vec4<bool>(global0.a, true, false, false), !vec4<bool>(true, false, global0.e, global0.e), !vec4<bool>(global0.a, global0.e, global0.a, global0.e)), select(!vec4<bool>(global0.d.c.a, global0.d.c.a, global0.a, global0.e), !vec4<bool>(global0.a, global0.d.c.a, true, false), select(vec4<bool>(global0.e, global0.e, global0.d.b.a, true), vec4<bool>(false, global0.d.c.a, true, false), vec4<bool>(global0.e, false, global0.e, false))), select(vec4<bool>(false, global0.d.b.a, global0.a, true), vec4<bool>(global0.a, global0.a, global0.a, false), all(vec2<bool>(global0.d.c.a, false)))), select(vec4<bool>(global0.a, global0.e, all(vec3<bool>(global0.a, global0.a, global0.d.b.a)), true), !select(vec4<bool>(global0.e, true, false, true), vec4<bool>(global0.e, global0.e, global0.a, global0.d.b.a), global0.d.b.a), !(u_input.a.x >= u_input.a.x)), vec4<bool>(global0.a, u_input.c.x < 0u, !any(vec2<bool>(global0.a, global0.d.b.a)), false)));
    let var_1 = Struct_3(!(73776u != ~global1.x) | all(vec4<bool>(global0.a, global0.a, false, global0.e)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)))), min(-global0.c | vec2<i32>(2147483647i, ~arg_0), abs(select(vec2<i32>(u_input.e.x, 41946i), -u_input.e.zz, !global0.a))), Struct_2(global0.d.a, Struct_1(!global0.a), Struct_1(false)), true);
    let var_2 = u_input.d >> (global1.x % 32u);
    let var_3 = all(select(vec3<bool>(true, true, true), !vec3<bool>(global0.d.c.a | global0.e, false, global0.e), !(!vec3<bool>(global0.e, var_1.d.c.a, false))));
    var var_4 = vec4<u32>(1u, 63616u | (_wgslsmith_clamp_u32(35085u, u_input.a.x, 8801u) << ((0u & global1.x) % 32u)), ~var_0.x, u_input.a.x) << (var_0 % vec4<u32>(32u));
    return ~(17262u >> (global1.x % 32u));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = 1000f;
    let var_1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(abs(u_input.c), _wgslsmith_clamp_vec4_u32(u_input.c ^ u_input.c, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 39044u, 13925u, arg_0), u_input.c), _wgslsmith_mod_vec4_u32(u_input.c, u_input.c))), ~u_input.c);
    global1 = vec3<u32>(~(~func_3(~global0.c.x)), 1u, ~(max(u_input.c.x, arg_0) & u_input.b.x));
    global1 = ~select(_wgslsmith_clamp_vec3_u32(var_1.zyy, vec3<u32>(u_input.c.x, 73275u, 1u), vec3<u32>(arg_0, 1u, u_input.a.x)) ^ vec3<u32>(1u, arg_0, u_input.c.x), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), ~u_input.b), true) << (vec3<u32>(~(~func_3(-29785i)), ~(~(~global1.x)), select(global1.x << (_wgslsmith_mod_u32(var_1.x, u_input.c.x) % 32u), 68911u, true | (global1.x >= 50285u))) % vec3<u32>(32u));
    global0 = Struct_3(select(!global0.a, !(!(global0.a | global0.a)), global0.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-global0.b.x), global0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b.x, 591f), -886f))))), ~select(vec2<i32>(abs(global0.c.x), -1i), global0.c, true), Struct_2(global0.b.xy, global0.d.c, Struct_1(all(vec3<bool>(global0.d.c.a, true, true)))), any(select(select(select(vec4<bool>(true, global0.d.b.a, false, global0.e), vec4<bool>(true, global0.e, false, false), global0.a), !vec4<bool>(true, false, global0.a, true), !vec4<bool>(global0.a, true, global0.a, false)), vec4<bool>(global0.d.c.a, !global0.e, !global0.d.c.a, true), all(select(vec3<bool>(true, true, global0.e), vec3<bool>(true, true, global0.a), global0.d.b.a)))));
    return countOneBits(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, -37360i, -699i), vec4<i32>(2147483647i, 2147483647i, u_input.e.x, -14540i)), -21039i, -23935i >> (global1.x % 32u)), (vec4<i32>(14457i, global0.c.x, u_input.e.x, global0.c.x) ^ vec4<i32>(1i, u_input.e.x, -33889i, 6637i)) ^ ~vec4<i32>(2147483647i, u_input.d, 71830i, -22520i)), u_input.e.x));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = vec2<bool>(arg_0 == firstLeadingBit(9895i), global0.e || !(u_input.d != -2147483647i));
    var var_1 = Struct_3(false, vec4<f32>(-1000f, 1205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -621f)), global0.d.a.x), reverseBits(firstLeadingBit(vec2<i32>(u_input.d, func_2(1u)))), global0.d, var_0.x);
    var var_2 = true || (select(all(vec3<bool>(false, false, global0.d.b.a)) & var_1.a, var_0.x, false) || global0.e);
    var var_3 = var_1.d;
    global0 = Struct_3(var_3.c.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(496f + -1008f), _wgslsmith_f_op_f32(-497f * var_1.b.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 1366f, -366f, -1000f)), _wgslsmith_f_op_vec4_f32(-global0.b)), _wgslsmith_f_op_vec4_f32(-var_1.b))))), _wgslsmith_clamp_vec2_i32(~(~(~vec2<i32>(u_input.d, -1i))), vec2<i32>(0i, 5057i), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 55943i, 14977i) ^ u_input.e, u_input.e >> (vec3<u32>(4294967295u, 4294967295u, u_input.b.x) % vec3<u32>(32u))), 2147483647i)), global0.d, var_0.x);
    return _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_mod_i32(_wgslsmith_add_i32(i32(-1i) * -33038i, firstTrailingBit(~(-2147483647i))), func_2(reverseBits(~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    var var_0 = Struct_4(global0.d.c, 4294967295u, 58842i, vec2<f32>(125f, global0.d.a.x));
    var var_1 = -2147483647i;
    global1 = u_input.c.xyz;
    var var_2 = global0.d;
    let var_3 = Struct_4(global0.d.c, abs(_wgslsmith_sub_u32(select(~u_input.c.x, abs(1u), var_2.b.a), firstLeadingBit(select(u_input.b.x, 28690u, false)))), max(~_wgslsmith_div_i32(-9564i, 1i), func_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0.c, u_input.e.yz), global0.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.d.x - 1000f), _wgslsmith_f_op_f32(-var_0.d.x))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(var_2.a)), _wgslsmith_f_op_vec2_f32(min(var_2.a, vec2<f32>(var_0.d.x, -891f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.d, var_2.a)), var_0.d), vec2<bool>(!global0.e, false || var_2.c.a)))));
    var var_4 = 1u;
    var var_5 = Struct_3(var_2.c.a | var_2.c.a, global0.b, min(max(vec2<i32>(2147483647i, -1i), u_input.e.zz), select(firstTrailingBit(u_input.e.zy), vec2<i32>(-33136i, u_input.e.x), !vec2<bool>(var_2.b.a, global0.d.b.a))) | global0.c, Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(max(-413f, var_2.a.x)), -154f))), Struct_1(true), var_2.c), 0u < var_3.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-34386i, firstTrailingBit(var_0.c)));
}

