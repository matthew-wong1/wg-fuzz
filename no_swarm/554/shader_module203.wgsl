struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = global0.a;
    var var_1 = firstLeadingBit(_wgslsmith_div_i32(abs(-2147483647i), -2147483647i));
    var_1 = 1i;
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.x, select(u_input.a, u_input.a, arg_0.x == -2147483647i), firstTrailingBit(0u) | (~u_input.a | ~18335u), _wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 43179u, u_input.a, 6961u), vec4<u32>(88002u, 4294967295u, 55515u, 2043u) << (vec4<u32>(u_input.a, 1u, u_input.a, 22595u) % vec4<u32>(32u))))), _wgslsmith_sub_vec4_u32(select(select(vec4<u32>(0u, 27723u, 13179u, u_input.a) >> (vec4<u32>(37774u, 0u, 24163u, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 4294967295u, 82288u, global0.b.x), vec4<bool>(false, global0.c, global0.c, global0.c)), ~(vec4<u32>(u_input.a, 0u, 38407u, global0.b.x) << (vec4<u32>(4294967295u, 4294967295u, 19102u, 1u) % vec4<u32>(32u))), true), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, 1u, u_input.a), vec4<u32>(132990u, u_input.a, u_input.a, 79350u)))));
    var var_3 = true;
    return global0.c && true;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_3(Struct_1(619f, _wgslsmith_mod_vec3_u32(select(~vec3<u32>(7975u, 1u, 4294967295u), arg_0.c.b, select(vec3<bool>(false, true, true), vec3<bool>(global0.c, true, true), true)), _wgslsmith_sub_vec3_u32(~arg_0.c.b, _wgslsmith_clamp_vec3_u32(arg_0.c.b, global0.b, arg_0.c.b))), arg_0.c.c, 448f, countOneBits(-global0.e ^ ~global0.e)), !select(vec2<bool>(any(vec3<bool>(arg_0.c.c, global0.c, false)), true), select(vec2<bool>(arg_0.c.c, true), !vec2<bool>(arg_0.c.c, global0.c), false), true), Struct_1(514f, global0.b, !any(vec4<bool>(arg_0.c.c, true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -491f), vec4<i32>(max(_wgslsmith_add_i32(arg_0.a.x, 1i), 1i), 1i, ~(-global0.e.x), _wgslsmith_dot_vec3_i32(arg_0.a.wzz, vec3<i32>(u_input.b, -1i, u_input.b)))), arg_0, select(select(!(!vec4<bool>(false, arg_0.c.c, arg_0.c.c, global0.c)), vec4<bool>(arg_0.c.c, arg_0.c.c, true, all(vec4<bool>(arg_0.c.c, arg_0.c.c, true, true))), func_3(max(global0.e.yy, global0.e.xx))), select(!select(vec4<bool>(arg_0.c.c, false, true, global0.c), vec4<bool>(false, true, global0.c, global0.c), vec4<bool>(true, arg_0.c.c, true, false)), !vec4<bool>(global0.c, true, true, false), !(!arg_0.c.c)), select(!select(vec4<bool>(true, false, arg_0.c.c, arg_0.c.c), vec4<bool>(arg_0.c.c, arg_0.c.c, global0.c, false), global0.c), select(!vec4<bool>(global0.c, global0.c, true, false), !vec4<bool>(global0.c, true, true, false), vec4<bool>(false, global0.c, arg_0.c.c, true)), true)));
    global0 = Struct_1(arg_1.x, var_0.c.b, u_input.a <= arg_0.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(ceil(647f)))))), select(var_0.a.e, -global0.e, var_0.e));
    var_0 = Struct_3(var_0.c, var_0.b, arg_0.c, arg_0, vec4<bool>(!all(var_0.e.yz), -461f <= global0.d, var_0.c.b.x < 59776u, var_0.c.c));
    var var_1 = var_0.c;
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), vec3<u32>(reverseBits(select(var_0.c.b.x, var_0.a.b.x, false)), min(reverseBits(72502u), _wgslsmith_dot_vec3_u32(global0.b, arg_0.c.b)), _wgslsmith_mult_u32(~global0.b.x, global0.b.x)), false, 1000f, var_0.c.e), !(!select(var_0.e.ww, vec2<bool>(true, arg_0.c.c), select(var_0.e.wx, vec2<bool>(false, var_1.c), vec2<bool>(var_0.d.c.c, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f + _wgslsmith_f_op_f32(arg_0.c.a + var_1.d)) - arg_0.d.x), vec3<u32>(u_input.a, ~var_1.b.x, abs(u_input.a)) >> ((_wgslsmith_mod_vec3_u32(var_1.b, arg_0.c.b) ^ vec3<u32>(arg_0.c.b.x, 86490u, var_1.b.x)) % vec3<u32>(32u)), false, _wgslsmith_f_op_f32(global0.d - _wgslsmith_f_op_f32(min(-361f, -1000f))), vec4<i32>(-_wgslsmith_clamp_i32(6757i, var_0.d.a.x, 35450i), ~var_1.e.x << (abs(1u) % 32u), ~_wgslsmith_mult_i32(-2147483647i, u_input.b), -arg_0.c.e.x)), var_0.d, select(vec4<bool>(any(vec3<bool>(true, var_0.e.x, true)), func_3(firstLeadingBit(vec2<i32>(global0.e.x, -2147483647i))), true, select(var_1.c != global0.c, var_0.e.x, var_0.e.x)), select(!vec4<bool>(var_0.a.c, var_1.c, true, var_1.c), !var_0.e, var_0.e), select(!select(var_0.e, vec4<bool>(false, true, true, var_0.b.x), vec4<bool>(true, true, true, var_0.c.c)), select(!vec4<bool>(arg_0.c.c, global0.c, false, true), !var_0.e, select(vec4<bool>(true, var_0.c.c, false, global0.c), var_0.e, false)), vec4<bool>(any(vec2<bool>(false, var_1.c)), arg_0.c.c & arg_0.c.c, true, !var_1.c))));
    return u_input.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<f32>) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1103f, 338f)))), 1339f), countOneBits((~global0.b >> (global0.b % vec3<u32>(32u))) >> (vec3<u32>(func_2(Struct_2(global0.e, global0.d, Struct_1(-186f, vec3<u32>(global0.b.x, global0.b.x, 1u), false, 237f, vec4<i32>(global0.e.x, u_input.b, -71211i, -53481i)), vec4<f32>(global0.a, arg_2.x, global0.a, arg_2.x)), vec2<f32>(global0.a, 1491f)), ~1u, 456u) % vec3<u32>(32u))), false && (_wgslsmith_mod_i32(-u_input.b, global0.e.x >> (25053u % 32u)) == global0.e.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(379f))))))), global0.e);
    let var_0 = min(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, arg_1, -37626i, global0.e.x), vec4<i32>(-1i, 2147483647i, -20849i, u_input.b), global0.e), _wgslsmith_mult_vec4_i32(-vec4<i32>(global0.e.x, -249i, 15536i, -4467i), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.e.x, u_input.b, -9691i, -1i), vec4<i32>(global0.e.x, 60462i, 0i, -37074i)))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, global0.e.x, -10303i, -2416i), ~global0.e)), ~vec4<i32>(firstTrailingBit(global0.e.x), select(_wgslsmith_sub_i32(-13971i, arg_1), 1i, true), -u_input.b ^ ~(-2147483647i), _wgslsmith_div_i32(-2147483647i >> (global0.b.x % 32u), 1i)));
    let var_1 = Struct_1(arg_2.x, ~(~vec3<u32>(~4294967295u, 19752u, _wgslsmith_dot_vec2_u32(arg_0, global0.b.xx))), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global0.d), vec4<i32>(firstTrailingBit(var_0.x) & 1i, 1i, arg_1, -2147483647i) ^ max(global0.e ^ (vec4<i32>(var_0.x, arg_1, 12357i, 2147483647i) ^ vec4<i32>(u_input.b, global0.e.x, -4717i, var_0.x)), firstTrailingBit(var_0)));
    global0 = Struct_1(global0.d, vec3<u32>(0u, var_1.b.x, 90012u ^ firstLeadingBit(69915u << (arg_0.x % 32u))), !all(vec2<bool>(var_1.c, true & global0.c)), _wgslsmith_f_op_f32(max(-1106f, -660f)), ~var_0 & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(53829i, 33515i), select(vec2<i32>(-16608i, var_1.e.x), global0.e.wy, global0.c)), (arg_1 | var_0.x) ^ ~var_0.x, u_input.b & ~21599i, 1i));
    global0 = var_1;
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-740f, -1230f, global0.a, -477f), vec4<f32>(global0.a, -2691f, 2082f, -304f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(693f, 1392f, 347f, 1416f) - vec4<f32>(var_1.a, global0.a, -445f, 348f)), select(vec4<bool>(global0.c, false, global0.c, false), vec4<bool>(var_1.c, false, false, true), true))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global0.b.xz, _wgslsmith_dot_vec3_i32(-global0.e.xxz, -_wgslsmith_div_vec3_i32(global0.e.wyx, vec3<i32>(2880i, 23372i, u_input.b))), vec2<f32>(global0.a, -358f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-908f, -1611f, -2013f, 533f), vec4<f32>(global0.a, -1196f, -323f, -685f))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2751f, -664f, global0.a, global0.d))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1409f, global0.d)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1951f, global0.d)))), global0.d, global0.a), !(!select(vec4<bool>(global0.c, true, global0.c, true), vec4<bool>(false, global0.c, global0.c, false), vec4<bool>(false, false, global0.c, false))))));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_1(~abs(global0.b.zy), ~_wgslsmith_clamp_i32(u_input.b, global0.e.x, u_input.b) ^ -13469i, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))).x, global0.b, all(vec3<bool>(global0.c, global0.c, !global0.c)), global0.a, _wgslsmith_mod_vec4_i32(-vec4<i32>(-34570i, -1i, _wgslsmith_dot_vec3_i32(global0.e.wzz, global0.e.wzw), ~7184i), vec4<i32>(u_input.b | ~(-2147483647i), ~0i, ~u_input.b, ~(~global0.e.x))));
    let var_1 = Struct_1(1000f, abs(~vec3<u32>(u_input.a, abs(global0.b.x), ~global0.b.x)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(global0.b.xy, _wgslsmith_dot_vec2_i32(global0.e.wy, vec2<i32>(-1i, 2147483647i)), var_0.xx)).x)), select(vec4<i32>(_wgslsmith_sub_i32(u_input.b, -9308i), reverseBits(11430i), -global0.e.x, 0i) | _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(global0.e, global0.e), vec4<i32>(51163i, u_input.b, u_input.b, u_input.b)), -_wgslsmith_add_vec4_i32(vec4<i32>(-24022i, u_input.b, 3005i, 1i), ~global0.e), select(vec4<bool>(true, true, false, global0.c), !(!vec4<bool>(global0.c, global0.c, false, global0.c)), !all(vec3<bool>(global0.c, global0.c, global0.c)))));
    global0 = Struct_1(-271f, ~(~min(global0.b >> (vec3<u32>(22129u, global0.b.x, var_1.b.x) % vec3<u32>(32u)), ~var_1.b)), var_1.c, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, var_1.d)))), var_1.e);
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(-var_1.d))), firstTrailingBit(vec3<u32>(~u_input.a, min(u_input.a, 54969u), ~u_input.a)) >> (var_1.b % vec3<u32>(32u)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1832f)) == _wgslsmith_f_op_f32(max(global0.d, var_1.d))) != !global0.c, 1116f, var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(523f, var_0.x, -366f) * var_0.zzw))) * vec3<f32>(_wgslsmith_f_op_f32(min(global0.d, -328f)), global0.a, _wgslsmith_f_op_f32(-global0.d))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, 1000f, 1000f)) - vec3<f32>(_wgslsmith_f_op_f32(floor(global0.d)), var_0.x, _wgslsmith_f_op_f32(-global0.a)))), _wgslsmith_mult_vec3_u32(global0.b, ~(~global0.b)) >> (~global0.b % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x * -228f))), var_1.d, -586f, 707f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0)), vec4<f32>(global0.a, var_0.x, 814f, 346f)))));
}

