struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: Struct_3;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = global1.a;
    global1 = Struct_3(reverseBits(global1.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1498f, global1.b.x))))))), -1000f);
    var var_1 = Struct_2(vec3<i32>(-global1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a, _wgslsmith_mult_i32(u_input.a, -24481i)), _wgslsmith_div_vec2_i32(vec2<i32>(-9214i, global1.a), vec2<i32>(global1.a, -2716i))), global1.a), ~((1u & countOneBits(arg_0.a)) ^ 1u), -428f);
    var var_2 = Struct_2(firstLeadingBit(-abs(~var_1.a)), u_input.b, var_1.c);
    var_1 = Struct_2(firstLeadingBit(var_1.a), reverseBits(arg_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1146f)), global1.c));
    return -firstLeadingBit(var_2.a.yz);
}

fn func_2() -> Struct_3 {
    var var_0 = any(vec3<bool>(false, true, !(global1.b.x != global1.c)));
    var var_1 = 1u;
    let var_2 = Struct_4(global0.xy, _wgslsmith_add_i32(abs(1i) | ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -15424i, global1.a), vec3<i32>(global1.a, u_input.a, global1.a)), -(23115i >> (~u_input.b % 32u))));
    var var_3 = firstLeadingBit(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, ~u_input.b)), _wgslsmith_mod_vec2_u32(min(vec2<u32>(u_input.b, 19172u), vec2<u32>(u_input.b, 72889u)) << (firstTrailingBit(vec2<u32>(u_input.b, 1u)) % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(1u, 1u)))));
    let var_4 = max(-max(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, -45229i, 2147483647i), vec3<i32>(u_input.a, -2147483647i, -75515i)), _wgslsmith_sub_i32(var_2.b, u_input.a)), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, -178i), ~(~vec2<i32>(var_2.b, u_input.a)), vec2<i32>(firstTrailingBit(global1.a), _wgslsmith_clamp_i32(-1i, 6366i, var_2.b))), _wgslsmith_add_vec2_i32(abs(func_3(Struct_1(2686u))), vec2<i32>(global1.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_2.b, u_input.a), vec3<i32>(u_input.a, -1i, 1i))))));
    return Struct_3(_wgslsmith_mult_i32(-var_2.b, ~(~min(-5000i, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-344f, global1.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2265f, 251f)), select(var_2.a, global0.yx, false)))))), -978f);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = func_2();
    var var_0 = u_input.a;
    let var_1 = u_input.b;
    var var_2 = Struct_4(select(!vec2<bool>(2147483647i < global1.a, false), select(select(!vec2<bool>(arg_0, true), global0.yx, global1.c > -161f), select(!vec2<bool>(arg_0, arg_0), !global0.yx, arg_0), !arg_0), global0.yx), ~0i);
    let var_3 = Struct_4(select(select(select(var_2.a, global0.yz, !global0.xy), select(!global0.xy, vec2<bool>(arg_0, true), true), global0.zz), var_2.a, global0.zz), global1.a);
    return Struct_1(var_1 << (_wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.b, 1u), var_1) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>) -> i32 {
    var var_0 = !(!(!vec3<bool>(1190f == global1.b.x, all(vec4<bool>(true, true, global0.x, global0.x)), true)));
    var_0 = !(!select(select(vec3<bool>(false, var_0.x, global0.x), select(vec3<bool>(true, false, false), vec3<bool>(false, global0.x, false), vec3<bool>(true, false, true)), false), select(vec3<bool>(true, global0.x, true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, true, var_0.x)), true), vec3<bool>(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), global1.a > -336i, !global0.x)));
    let var_1 = Struct_4(!select(var_0.xz, var_0.xx, vec2<bool>(u_input.b > 0u, -589i < global1.a)), global1.a);
    let var_2 = vec4<bool>(any(vec2<bool>(true, true)), 711f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) * _wgslsmith_f_op_f32(f32(-1f) * -198f)), (32064u & _wgslsmith_add_u32(u_input.b, arg_1)) < 42331u, false);
    global0 = var_2.xxy;
    return max(func_2().a, ~(-firstLeadingBit(~(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~_wgslsmith_mod_vec3_i32(~(vec3<i32>(-22695i, -54018i, -43736i) << (vec3<u32>(71986u, u_input.b, u_input.b) % vec3<u32>(32u))), vec3<i32>(-global1.a, u_input.a, _wgslsmith_sub_i32(global1.a, 22986i))), ~firstTrailingBit(~(4294967295u ^ u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + global1.b.x), global1.c));
    var var_1 = -1000f;
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(func_4(func_1(true && global0.x), (var_0.b | 50695u) | var_0.b, global1.b), abs(_wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(2186i, u_input.a, -43865i)))), abs(vec2<i32>(~_wgslsmith_add_i32(u_input.a, 0i), i32(-1i) * -global1.a)));
    let var_3 = ~func_4(Struct_1(~4294967295u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(74344u, 4294967295u, var_0.b, 2428u), vec4<u32>(var_0.b, var_0.b, 19898u, var_0.b)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, var_0.b, 13132u, var_0.b), vec4<u32>(36322u, u_input.b, var_0.b, u_input.b) << (vec4<u32>(0u, 60167u, u_input.b, var_0.b) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), -903f));
    let var_4 = (abs(vec2<i32>(~2147483647i, -1i >> (u_input.b % 32u))) & var_2) ^ firstTrailingBit(vec2<i32>(2147483647i, reverseBits(_wgslsmith_mod_i32(-11863i, 54385i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c, var_0.c, var_0.c, -1807f) * vec4<f32>(929f, var_0.c, 750f, global1.c))))))), ~u_input.b, 1300f, vec3<i32>(-2147483647i, var_4.x, global1.a));
}

