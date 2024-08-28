struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(1u, 81861u, 0u, 45985u), 1i, vec3<bool>(false, false, false));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = Struct_2(global0.a, -22918i, vec3<bool>(true, -(i32(-1i) * -2147483647i) != -u_input.a, true));
    let var_1 = ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(var_0.a.yxz, ~firstTrailingBit(global0.a.xwx)), _wgslsmith_mult_vec3_u32(abs(~vec3<u32>(0u, 0u, global0.a.x)), abs(~vec3<u32>(4294967295u, global0.a.x, global0.a.x))));
    global0 = Struct_2(select(vec4<u32>(~(~global0.a.x), ~(var_0.a.x << (1u % 32u)), var_1.x, 53027u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, max(77501u, 21549u), ~19135u, 22913u), abs(vec4<u32>(var_0.a.x, var_1.x, 43294u, 1u))), select(!(!vec4<bool>(true, false, true, global0.c.x)), !select(vec4<bool>(global0.c.x, global0.c.x, false, var_0.c.x), vec4<bool>(global0.c.x, global0.c.x, var_0.c.x, true), vec4<bool>(true, false, var_0.c.x, global0.c.x)), ~var_0.b < ~u_input.a)), ~(-19018i), !vec3<bool>(!(arg_0.x >= arg_0.x), _wgslsmith_clamp_i32(-2147483647i, u_input.a, var_0.b) != max(u_input.a, -52130i), var_0.b <= var_0.b));
    global0 = Struct_2(_wgslsmith_clamp_vec4_u32(firstLeadingBit(var_0.a), abs(vec4<u32>(global0.a.x, global0.a.x, var_0.a.x, ~14542u)), ~((vec4<u32>(var_0.a.x, 3483u, var_1.x, 0u) << (vec4<u32>(0u, var_1.x, 1u, var_0.a.x) % vec4<u32>(32u))) >> (~vec4<u32>(var_0.a.x, 18183u, 34938u, 4294967295u) % vec4<u32>(32u)))), global0.b ^ ~abs(~var_0.b), var_0.c);
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~68115u), global0.a.yy ^ reverseBits(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 13931u), var_1.yy))), ~vec2<u32>(global0.a.x, 4294967295u));
    return select(select(!vec3<bool>(var_0.c.x, !global0.c.x, global0.c.x), global0.c, !(!vec3<bool>(true, true, global0.c.x))), var_0.c, false);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(~_wgslsmith_div_u32(abs(7453u), _wgslsmith_div_u32(global0.a.x, ~global0.a.x)), !select(!global0.c.zx, global0.c.yy, select(vec2<bool>(global0.c.x, global0.c.x), vec2<bool>(global0.c.x, global0.c.x), !global0.c.x)));
    var var_1 = var_0.a;
    var var_2 = !(!vec4<bool>(true, all(!vec4<bool>(true, global0.c.x, var_0.b.x, var_0.b.x)), abs(4294967295u) >= global0.a.x, !global0.c.x));
    let var_3 = func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-140f, 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(354f, 204f))), -765f));
    var var_4 = countOneBits(u_input.a);
    return Struct_2(global0.a, global0.b, vec3<bool>(all(select(select(vec4<bool>(true, var_3.x, var_0.b.x, false), vec4<bool>(var_0.b.x, false, var_2.x, true), var_0.b.x), vec4<bool>(global0.c.x, false, var_2.x, var_0.b.x), var_3.x)), -1i <= u_input.a, var_3.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> Struct_2 {
    var var_0 = 1i;
    var var_1 = arg_0.c;
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-251f, -881f)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-476f, -1088f)))), vec2<f32>(-843f, _wgslsmith_f_op_f32(739f * -155f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1277f, 391f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(462f, -935f) + vec2<f32>(189f, -997f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -409f), vec2<f32>(-641f, -1082f))))));
    let var_3 = true;
    var var_4 = vec2<bool>(true, true);
    return Struct_2(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 4294967295u, global0.a.x, global0.a.x) | ~global0.a, reverseBits(~arg_1.a), min(vec4<u32>(arg_1.a.x, global0.a.x, arg_0.a.x, 4294967295u), arg_0.a) | vec4<u32>(4294967295u, 4953u, 143621u, arg_1.a.x)), _wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(-vec2<i32>(-1i, 0i))), firstTrailingBit(firstTrailingBit(vec2<i32>(arg_0.b, arg_0.b)))), !arg_1.c);
}

fn func_1(arg_0: u32) -> vec4<u32> {
    var var_0 = true;
    let var_1 = global0.a;
    var_0 = 1i > _wgslsmith_add_i32(-global0.b, global0.b);
    let var_2 = !any(select(global0.c, vec3<bool>(var_1.x == var_1.x, false, global0.c.x), select(global0.c, global0.c, true)));
    global0 = func_4(func_2(), func_2(), false, ~1i);
    return ~vec4<u32>(global0.a.x, ~_wgslsmith_add_u32(func_4(Struct_2(vec4<u32>(42097u, global0.a.x, 105685u, var_1.x), u_input.a, vec3<bool>(true, true, var_2)), Struct_2(vec4<u32>(var_1.x, var_1.x, 8891u, arg_0), u_input.a, global0.c), true, u_input.a).a.x, global0.a.x), min(4294967295u & ~global0.a.x, var_1.x), 1928u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = -148f;
    global0 = Struct_2(_wgslsmith_add_vec4_u32(func_1(0u), ~global0.a), 0i >> (1u % 32u), global0.c);
    global0 = func_4(func_4(func_2(), Struct_2(_wgslsmith_mod_vec4_u32(global0.a, global0.a) ^ global0.a, countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(-32393i, -21763i))), !vec3<bool>(global0.c.x, global0.c.x, global0.c.x)), true, ~var_0), Struct_2(firstTrailingBit(~vec4<u32>(23044u, global0.a.x, 10384u, 45766u) & ~vec4<u32>(4294967295u, 104195u, 77604u, global0.a.x)), -1i, global0.c), global0.c.x, i32(-1i) * -(select(26587i, u_input.a, global0.c.x) >> ((844u ^ global0.a.x) % 32u)));
    var var_2 = Struct_2(func_2().a, max(~var_0, ~(~(~u_input.a))), vec3<bool>(true, _wgslsmith_clamp_u32(65780u, 1u, 62377u << (global0.a.x % 32u)) <= 2019u, global0.c.x || global0.c.x));
    var_2 = Struct_2(global0.a, _wgslsmith_dot_vec4_i32(reverseBits(abs(vec4<i32>(u_input.a, -2147483647i, 1i, 0i))), -firstTrailingBit(vec4<i32>(-1i, -1i, 1280i, global0.b))) | -43612i, !global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(119f);
}

