struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-355f, 2147f), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -31927i), 1042f), Struct_1(vec3<i32>(-1i, -9253i, 24409i), -1012f), vec2<u32>(1u, 33310u));

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec3<i32> {
    let var_0 = arg_1 >> (global2.x % 32u);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -389f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-178f - 175f) - _wgslsmith_div_f32(-1000f, 1210f)) - _wgslsmith_f_op_f32(floor(-210f)))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, global1.b.b))) + vec2<f32>(var_2.x, -744f))) + global1.a), global1.c, global1.b, vec2<u32>(reverseBits(_wgslsmith_sub_u32(~global2.x, ~39001u)), arg_0));
    var var_4 = vec2<f32>(650f, 1423f);
    return select(vec3<i32>(1i, var_0, -2147483647i), ~global1.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(769f)) - _wgslsmith_f_op_f32(962f * 719f)) + _wgslsmith_f_op_f32(max(var_3.a.x, -391f))) <= _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-102f, var_2.x)))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec2<i32>(global1.c.a.x, u_input.a.x);
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(global1.a, vec2<f32>(-231f, _wgslsmith_f_op_f32(-global1.a.x)))))), global1.c, Struct_1(select(func_3(57388u, ~global1.b.a.x), -select(global1.b.a, vec3<i32>(2147483647i, u_input.a.x, global1.c.a.x), vec3<bool>(false, true, true)), vec3<bool>(false, any(vec2<bool>(true, true)), arg_1.x)), -808f), u_input.e.yx);
    var var_1 = i32(-1i) * -1i;
    var var_2 = global1.b;
    let var_3 = global1.b;
    return global1.b;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = 1u;
    let var_1 = func_2(-797f, vec3<bool>(arg_1.x, (u_input.a.x >= 1i) | !arg_1.x, arg_1.x));
    var var_2 = global1.c.a;
    var var_3 = vec2<u32>(_wgslsmith_sub_u32(arg_0, _wgslsmith_sub_u32(~abs(0u), _wgslsmith_clamp_u32(~0u, global1.d.x, var_0))), _wgslsmith_clamp_u32(~var_0, arg_0, _wgslsmith_add_u32(u_input.d, u_input.d)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global1.a)));
    return Struct_2(global1.a, Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(var_2.x, var_2.x), 1i, global1.c.a.x), global1.b.a), 871f), func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(470f, _wgslsmith_f_op_f32(min(267f, var_1.b))))), select(!select(vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(false, false, true)), select(!arg_1.x, arg_1.x, true))), ~vec2<u32>(~_wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(4294967295u, var_3.x)), abs(1u)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(arg_2.b.b * arg_2.a.x)));
    let var_2 = ~max(global1.d.x, 92027u);
    return !vec3<bool>(!all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), !(-1098i == arg_2.c.a.x) & true, true);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-541f)))), -338f, _wgslsmith_f_op_f32(exp2(arg_2.a.x)) != arg_2.a.x)));
    var var_1 = ~_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(arg_2.c.a, _wgslsmith_add_vec3_i32(arg_1.b.a, global1.c.a))), _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -22975i, -1i), arg_1.c.a) ^ -vec3<i32>(arg_2.c.a.x, arg_1.c.a.x, u_input.c), vec3<i32>(u_input.c, _wgslsmith_add_i32(arg_1.c.a.x, 37647i), arg_2.b.a.x << (u_input.b % 32u))));
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~(0u | global2.x), ~(~4294967295u), 1u, arg_2.d.x), ~vec4<u32>(_wgslsmith_mult_u32(arg_1.d.x, arg_1.d.x), firstLeadingBit(4294967295u), 1u, u_input.b & 1u)), select(min(reverseBits(vec4<u32>(4294967295u, 0u, 0u, 67041u)), ~vec4<u32>(global1.d.x, 65580u, u_input.b, arg_1.d.x)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.d.x, u_input.d, 115826u, 1u), vec4<u32>(arg_1.d.x, arg_1.d.x, 1977u, 1u))), !select(vec4<bool>(arg_3, arg_0.x, true, true), vec4<bool>(true, true, true, false), vec4<bool>(arg_0.x, false, false, arg_0.x))) ^ (~firstLeadingBit(vec4<u32>(0u, global1.d.x, arg_1.d.x, 4294967295u)) >> ((vec4<u32>(arg_1.d.x, 57662u, arg_2.d.x, 4294967295u) >> ((vec4<u32>(u_input.d, arg_1.d.x, 1u, arg_2.d.x) & vec4<u32>(4294967295u, 21274u, 1u, 77223u)) % vec4<u32>(32u))) % vec4<u32>(32u))));
    return arg_2.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_5(select(!vec3<bool>(false, var_0.x, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), func_4(global1.a.x, vec4<f32>(global1.a.x, -270f, 291f, 615f), func_1(0u, var_0), Struct_2(global1.a, global1.b, Struct_1(vec3<i32>(global1.c.a.x, 10201i, 25619i), global1.b.b), vec2<u32>(global1.d.x, global1.d.x)))), Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(878f, global1.c.b))), Struct_1(vec3<i32>(0i, -7002i, -6044i), _wgslsmith_f_op_f32(103f * 2848f)), Struct_1(firstLeadingBit(vec3<i32>(global1.c.a.x, 1i, global1.b.a.x)), _wgslsmith_div_f32(global1.a.x, -547f)), min(reverseBits(u_input.e.yx), ~vec2<u32>(0u, 0u))), Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(-global1.a))), Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -1i), vec3<i32>(global1.b.a.x, global1.b.a.x, -78279i)), -1550f), global1.c, vec2<u32>(u_input.b, u_input.e.x)), true == ((-1i != global1.b.a.x) == false))), _wgslsmith_f_op_f32(abs(-905f)), 725f, func_1(1u, vec2<bool>(any(vec2<bool>(false, false)), false)).c.b);
    let var_2 = global1.a;
    var var_3 = !all(!select(!vec3<bool>(true, var_0.x, false), !vec3<bool>(var_0.x, false, var_0.x), true));
    global2 = _wgslsmith_div_vec2_u32(~global1.d & u_input.e.xy, select(~vec2<u32>(1u, 1u), max(vec2<u32>(38063u, global1.d.x), vec2<u32>(global1.d.x, global2.x) & global1.d), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x))) & ~_wgslsmith_clamp_vec2_u32(global1.d, u_input.e.zz, min(~vec2<u32>(global2.x, global1.d.x), ~vec2<u32>(0u, global1.d.x)));
    let var_4 = select(vec4<bool>(var_0.x == true, var_0.x, any(!(!vec2<bool>(true, var_0.x))), false == all(vec2<bool>(true, true))), select(select(select(!vec4<bool>(true, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), select(select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), vec4<bool>(true, var_0.x, true, var_0.x), true), var_0.x), vec4<bool>(select(true, !var_0.x, var_0.x), false, var_0.x, !(0u > global1.d.x)), select(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(true, var_0.x, false, var_0.x), true), select(vec4<bool>(false, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, false, false), true), !var_0.x), !(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))), var_0.x);
    var var_5 = func_1(global1.d.x, func_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_f32(-var_2.x), select(!var_4.x, all(vec3<bool>(var_0.x, var_0.x, var_4.x)), !var_4.x))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -124f)), var_1.x, 816f, _wgslsmith_f_op_f32(f32(-1f) * -1145f)), Struct_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-152f, -318f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-212f, 348f)))), global1.b, global1.b, min(vec2<u32>(global1.d.x, u_input.b), u_input.e.zz)), func_1(min(func_1(11535u, vec2<bool>(false, var_4.x)).d.x, _wgslsmith_dot_vec2_u32(global1.d, vec2<u32>(4294967295u, global2.x))), !var_4.yx)).xx).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x, ~vec4<i32>(var_5.a.x, u_input.a.x, _wgslsmith_div_i32(var_5.a.x | global1.c.a.x, u_input.c), u_input.c), -98350i);
}

