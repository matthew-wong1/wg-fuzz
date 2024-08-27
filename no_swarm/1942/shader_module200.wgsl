struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec3<u32>(92290u, 51468u, abs(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_u32(1u, 32794u)))));
    let var_1 = vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(reverseBits(var_0 << (var_0 % vec3<u32>(32u))), ~(~var_0)), var_0), _wgslsmith_sub_u32(40252u, global0.a), reverseBits(44154u));
    let var_2 = reverseBits(~vec3<u32>(~45070u | ~var_0.x, ~var_0.x, countOneBits(~4294967295u)));
    var var_3 = all(select(vec4<bool>(true, global0.d.d.x, any(!vec4<bool>(global0.d.d.x, global0.d.d.x, global0.d.d.x, true)), !global0.d.d.x), vec4<bool>(global0.d.d.x, any(!vec3<bool>(true, global0.d.d.x, global0.d.d.x)), false | select(global0.d.d.x, global0.d.d.x, global0.d.d.x), false), vec4<bool>(false, (u_input.b.x & -21774i) <= -2147483647i, _wgslsmith_f_op_f32(ceil(-240f)) > 248f, global0.d.d.x)));
    global0 = Struct_3(0u, _wgslsmith_sub_vec4_i32(-vec4<i32>(abs(global0.b.x), 48557i, i32(-1i) * -2147483647i, ~(-2147483647i)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, global0.d.c.d, 8259i, u_input.d.x), global0.b) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(19453i, 10019i, -2147483647i, u_input.b.x), ~vec4<i32>(u_input.b.x, 2147483647i, u_input.d.x, u_input.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-603f, -1242f)), global0.d.c.c.x)))), Struct_2(66784u, _wgslsmith_sub_i32(~(-1i), select(38656i, global0.b.x, true)) & 1i, Struct_1(~_wgslsmith_mod_vec2_u32(global0.d.c.a, vec2<u32>(u_input.e, var_2.x)), _wgslsmith_f_op_vec3_f32(global0.d.c.c.yxw - global0.d.c.b), global0.d.c.c, abs(-38788i)), !(!(!vec3<bool>(global0.d.d.x, global0.d.d.x, global0.d.d.x)))));
    return var_0.yx;
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.d.c.c.x, _wgslsmith_f_op_f32(-global0.d.c.c.x), global0.a == 4056u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1908f)) - 1632f)));
    var var_1 = firstTrailingBit(_wgslsmith_div_vec3_u32(~vec3<u32>(reverseBits(0u), 1u, ~global0.d.a), ~(~vec3<u32>(26812u, 113540u, 9226u) | ~vec3<u32>(17344u, 28603u, global0.d.a))));
    let var_2 = u_input.a.x;
    var var_3 = -56765i;
    let var_4 = min(vec2<i32>(~20027i | global0.b.x, ~global0.d.b) | (vec2<i32>(-1i) * -u_input.d.zz), vec2<i32>(abs(global0.b.x), global0.b.x));
    return Struct_1(_wgslsmith_clamp_vec2_u32(~(~_wgslsmith_div_vec2_u32(global0.d.c.a, u_input.a)), func_3(), ~var_1.yz), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(162f, 625f, global0.c) * vec3<f32>(var_0.x, global0.c, -603f)), vec3<f32>(-259f, global0.c, global0.c)))))), vec4<f32>(_wgslsmith_f_op_f32(-310f * -932f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(select(global0.d.c.c.x, global0.c, global0.d.d.x))), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-183f)) - var_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2476f))), _wgslsmith_f_op_f32(min(-380f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + global0.c) * _wgslsmith_f_op_f32(-global0.c))))), var_4.x);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_3 {
    global0 = Struct_3(1u, global0.b, _wgslsmith_f_op_f32(-arg_1), Struct_2(_wgslsmith_sub_u32(countOneBits(u_input.c) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 61817u), global0.d.c.a), ~(~global0.a)), countOneBits(0i), func_2(), global0.d.d));
    global0 = Struct_3(1u, ~(~select(global0.b, global0.b << (vec4<u32>(71395u, global0.d.c.a.x, u_input.c, 4294967295u) % vec4<u32>(32u)), global0.d.d.x)), 765f, Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(global0.d.c.a, vec2<u32>(4294967295u, 0u)), u_input.a.x) | ~1u, 0i, global0.d.c, global0.d.d));
    global0 = Struct_3(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global0.a, global0.a)), reverseBits(firstTrailingBit(u_input.a))) & _wgslsmith_mult_u32(0u, ~global0.a), min(-_wgslsmith_add_vec4_i32(global0.b, global0.b), global0.b) >> (vec4<u32>(reverseBits(_wgslsmith_clamp_u32(u_input.a.x, 1u, global0.d.a)), global0.d.a, u_input.c, global0.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-245f - 2166f), global0.d);
    var var_0 = !vec4<bool>(true, global0.d.d.x, all(!select(global0.d.d, vec3<bool>(global0.d.d.x, global0.d.d.x, global0.d.d.x), global0.d.d.x)), true);
    var var_1 = arg_1;
    return Struct_3(reverseBits(1u), ~vec4<i32>(_wgslsmith_mult_i32(-arg_0, -42648i), reverseBits(-2147483647i), select(19926i, select(u_input.d.x, arg_0, false), any(vec3<bool>(false, true, global0.d.d.x))), ~arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global0.c)), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -183f)))), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(~(-1i), _wgslsmith_f_op_f32(global0.d.c.c.x - global0.c));
    var var_0 = func_1(~47023i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2().b.x - -1492f)))).b.zwy;
    global0 = func_1(1i, global0.c);
    let var_1 = vec2<bool>(!(8670i < global0.b.x), !func_1(abs(select(1i, 0i, global0.d.d.x)), global0.d.c.b.x).d.d.x);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -627f);
    let var_3 = select(func_1(1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1233f)), func_1(36656i, 404f).c)).d.d, vec3<bool>(false, true, true), vec3<bool>(true, !var_1.x, any(!select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(global0.d.d.x, global0.d.d.x, global0.d.d.x, true), vec4<bool>(false, var_1.x, var_1.x, true)))));
    var var_4 = Struct_5(1869f, Struct_1(~(~vec2<u32>(35959u, 4070u)) >> (countOneBits(func_3()) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.d.c.b.x - 339f), 706f, _wgslsmith_f_op_f32(-global0.c))), vec4<f32>(_wgslsmith_f_op_f32(global0.d.c.b.x - global0.c), _wgslsmith_f_op_f32(f32(-1f) * -1140f), 1561f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(global0.c * global0.c))), ~((var_0.x ^ 70726i) | u_input.b.x)));
    let var_5 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.x, 7103i, -27970i & var_4.b.d), vec3<i32>(var_4.b.d, _wgslsmith_dot_vec4_i32(global0.b, vec4<i32>(global0.d.c.d, 0i, var_0.x, var_0.x)), global0.b.x << (var_4.b.a.x % 32u))) | u_input.b.x, u_input.d.x);
    let var_6 = vec4<f32>(668f, _wgslsmith_f_op_f32(floor(var_4.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1859f)), _wgslsmith_f_op_f32(-var_4.a), true))) * 1527f), -1250f);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(firstLeadingBit(1i), -1i ^ _wgslsmith_dot_vec4_i32(global0.b, global0.b), var_0.x, u_input.d.x)), vec3<u32>(func_1(_wgslsmith_add_i32(var_4.b.d, global0.b.x), _wgslsmith_f_op_f32(round(var_4.a))).d.a, 1u, ~0u));
}

