struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: u32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<i32>,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 4294967295u, 65828u);

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec2<f32>) -> bool {
    global0 = ~min(vec4<u32>(u_input.e, _wgslsmith_clamp_u32(abs(global0.x), 3035u, ~0u), 11425u, global0.x), max(_wgslsmith_div_vec4_u32(max(vec4<u32>(global0.x, u_input.d, 11421u, u_input.d), vec4<u32>(u_input.e, global0.x, u_input.e, global0.x)), ~vec4<u32>(global0.x, 7535u, u_input.e, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.x, 4294967295u, 1u), ~vec4<u32>(4294967295u, u_input.d, u_input.e, global0.x))));
    global2 = vec4<bool>(arg_2.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-989f + _wgslsmith_f_op_f32(sign(-265f)))), false, _wgslsmith_mult_u32(abs(global0.x), _wgslsmith_clamp_u32(~0u, _wgslsmith_mult_u32(u_input.e, 39726u), 78779u)) >= 36861u, true);
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(arg_2.x * arg_2.x), _wgslsmith_f_op_f32(exp2(arg_1))), vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))), arg_2.x, arg_1), select(vec4<bool>(select(global2.x, true, global2.x), all(vec2<bool>(true, false)), all(vec2<bool>(true, false)), !global2.x), select(select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(true, false, true, global2.x), false), vec4<bool>(true, global2.x, true, global2.x), false & global2.x), true))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(3790f, 1686f, arg_1, -1183f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, 884f) - vec4<f32>(arg_1, arg_1, 624f, arg_2.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-931f, arg_2.x, 418f, arg_2.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(sign(arg_2.x)), -498f, 1000f))));
    var var_1 = Struct_3(arg_1, 0i, ~global0.x, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f * arg_1))), Struct_1(~1u, 0i)), vec3<u32>(~_wgslsmith_dot_vec3_u32(global0.ywx ^ global0.www, vec3<u32>(u_input.d, 0u, global0.x)), firstTrailingBit(firstLeadingBit(1u)), _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(global0.xwx, vec3<u32>(global0.x, u_input.e, 64316u)), _wgslsmith_mod_u32(~u_input.d, ~1u))));
    let var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(47349u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e, 0u, 4294967295u), global0.xyy), _wgslsmith_add_u32(1u, global0.x)), vec3<u32>(1u, countOneBits(var_1.e.x), ~(~1u)), _wgslsmith_div_vec3_u32(select(var_1.e, _wgslsmith_sub_vec3_u32(var_1.e, vec3<u32>(1u, 57520u, 0u) & var_1.e), any(select(global2.xyw, global2.yyy, vec3<bool>(global2.x, global2.x, true)))), ~(~var_1.e)));
    return var_1.c <= var_2.x;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>) -> Struct_3 {
    global2 = select(vec4<bool>(true, global2.x, any(!vec2<bool>(false, global2.x)), func_3(0i, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_0)))))), select(!vec4<bool>(true, all(global2.xy), global2.x, global2.x), vec4<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -752f) < arg_0, global2.x), vec4<bool>(!(!global2.x), all(global2.wy), false, true || !global2.x)), select(vec4<bool>(global2.x, true | global2.x, false, _wgslsmith_mod_u32(arg_1.x, 0u) == ~1u), select(select(select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, global2.x, global2.x), true), vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(global2.x, global2.x, false, global2.x)), select(select(vec4<bool>(false, true, true, false), vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, true, false, global2.x)), vec4<bool>(true, global2.x, true, global2.x), select(vec4<bool>(true, true, false, global2.x), vec4<bool>(false, true, global2.x, true), false)), false), !(!select(vec4<bool>(true, false, false, global2.x), vec4<bool>(false, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, false)))));
    let var_0 = Struct_5(1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1702f, _wgslsmith_div_f32(-1212f, arg_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(503f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-592f, arg_0))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(780f)) * arg_0), -911f)), max(u_input.e, max(0u, arg_1.x) ^ abs(17572u)) << (arg_1.x % 32u), u_input.a);
    let var_1 = Struct_2(1304f, Struct_1(u_input.d << (var_0.a % 32u), i32(-1i) * -2147483647i));
    let var_2 = global2.wzz;
    global0 = vec4<u32>(~(~(~4294967295u)), global0.x, min(_wgslsmith_dot_vec2_u32(global0.yx >> (global0.yw % vec2<u32>(32u)), vec2<u32>(u_input.d, u_input.d) >> (global0.xx % vec2<u32>(32u))), select(1u, 10291u, all(vec4<bool>(global2.x, global2.x, true, var_2.x)))), u_input.e) | countOneBits(vec4<u32>(~47690u, 1u ^ global0.x, arg_1.x, 41487u) & ~firstLeadingBit(vec4<u32>(u_input.e, 66323u, 32850u, var_1.b.a)));
    return Struct_3(_wgslsmith_f_op_f32(var_1.a * arg_0), firstTrailingBit(var_1.b.b | -countOneBits(0i)), var_1.b.a, Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * var_1.a) * _wgslsmith_f_op_f32(-var_1.a)), Struct_1(4294967295u, 1i)), vec3<u32>(firstLeadingBit(1u), 4294967295u, abs(var_0.a)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1.d;
    var var_1 = 230f;
    var var_2 = arg_1.b.d.b.a;
    global1 = array<vec2<i32>, 26>();
    var_2 = 4294967295u;
    return Struct_1(firstLeadingBit(min(1u, min(abs(global0.x), min(59546u, 118308u)))), u_input.c);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> bool {
    let var_0 = func_4(func_2(-245f, reverseBits(~countOneBits(vec2<u32>(u_input.d, u_input.d)))), Struct_4(-1000f, func_2(_wgslsmith_div_f32(-1027f, _wgslsmith_f_op_f32(abs(-183f))), vec2<u32>(_wgslsmith_clamp_u32(0u, global0.x, global0.x), ~3464u)), vec3<i32>(-u_input.c, u_input.b, 0i), true, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(u_input.a), -vec4<i32>(20563i, u_input.a.x, u_input.c, 0i)), vec4<i32>(_wgslsmith_div_i32(0i, 10865i), u_input.b, u_input.b, -31018i))), 1i);
    global2 = vec4<bool>(!all(!vec3<bool>(arg_1.x, global2.x, true)), arg_0 > ~((4294967295u >> (var_0.a % 32u)) & ~arg_0), !arg_1.x, all(select(!(!vec4<bool>(arg_1.x, global2.x, global2.x, arg_1.x)), !select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(true, arg_1.x, false, arg_1.x), false), arg_1.x)));
    global1 = array<vec2<i32>, 26>();
    global2 = vec4<bool>(all(vec4<bool>(arg_1.x, false, func_3(_wgslsmith_clamp_i32(var_0.b, u_input.b, -1i), _wgslsmith_f_op_f32(step(1000f, 232f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1501f) + vec2<f32>(1000f, -891f))), true)), true, false, arg_1.x);
    var var_1 = select(global2.wzz, select(vec3<bool>(select(arg_1.x, true, true), false, global2.x), vec3<bool>(true, -2147483647i == ~var_0.b, arg_1.x), select(global2.zyx, select(arg_1, vec3<bool>(true, global2.x, false), arg_1), select(select(arg_1, arg_1, arg_1.x), !vec3<bool>(false, true, global2.x), select(vec3<bool>(true, global2.x, false), vec3<bool>(global2.x, false, arg_1.x), vec3<bool>(arg_1.x, global2.x, true))))), func_3(func_4(Struct_3(_wgslsmith_f_op_f32(abs(351f)), var_0.b, arg_0, Struct_2(1248f, Struct_1(global0.x, u_input.c)), ~global0.yxz), Struct_4(_wgslsmith_f_op_f32(sign(-200f)), func_2(-1590f, global0.wx), -vec3<i32>(u_input.a.x, var_0.b, u_input.b), arg_1.x, -19902i), i32(-1i) * -var_0.b).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1363f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-160f, -519f, arg_1.x))))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1551f + 393f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f + 113f)))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(vec4<bool>(~u_input.d != global0.x, all(select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, false), true)), func_1(select(global0.x, 45823u, global2.x), vec3<bool>(global2.x, global2.x, true)), ~35310u != select(0u, 0u, global2.x)), !vec4<bool>(false, true, all(vec2<bool>(true, global2.x)), global2.x), select(!vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(true, global2.x, !global2.x, true), vec4<bool>(true, true, true, true)));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(777f)), _wgslsmith_f_op_f32(min(-666f, 1266f)), _wgslsmith_div_f32(969f, 1658f), _wgslsmith_div_f32(320f, -480f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1442f, -1648f, -1000f, 1117f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1077f, 254f, -138f, -957f)))));
    let x = u_input.a;
    s_output = StorageBuffer(45149i, global0.yz, var_0.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 402f, var_0.x) + vec3<f32>(1000f, 323f, var_0.x)))) + _wgslsmith_f_op_vec3_f32(sign(var_0.yxw))), var_0.wzz)));
}

