struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1804f, vec3<f32>(-1000f, -1284f, 781f), -20124i, vec4<u32>(23501u, 41632u, 4294967295u, 42725u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = select(select(select(!select(vec4<bool>(false, arg_0.b, false, false), vec4<bool>(arg_0.d, arg_0.b, false, arg_0.b), arg_0.b), vec4<bool>(true, arg_0.b || true, true, all(vec3<bool>(arg_0.b, true, arg_0.d))), !select(vec4<bool>(arg_0.d, true, false, true), vec4<bool>(true, arg_0.b, true, true), arg_0.b)), !vec4<bool>(false, arg_0.c.x == u_input.a, any(vec3<bool>(arg_0.b, arg_0.b, false)), any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), !vec4<bool>(arg_0.b && true, any(vec2<bool>(arg_0.b, false)), select(arg_0.d, true, false), !arg_0.b)), vec4<bool>(any(!vec4<bool>(arg_0.b, arg_0.d, arg_0.b, true)), true, false, false), select(!(!select(vec4<bool>(true, true, arg_0.b, arg_0.d), vec4<bool>(false, arg_0.b, false, arg_0.d), arg_0.b)), vec4<bool>(true, true, false, arg_0.d), !(!select(vec4<bool>(false, false, arg_0.d, arg_0.d), vec4<bool>(arg_0.b, arg_0.b, arg_0.d, false), arg_0.b))));
    let var_1 = Struct_2(arg_0.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)) * _wgslsmith_f_op_f32(arg_0.a.x + 1191f)), _wgslsmith_f_op_f32(f32(-1f) * -239f), -262f)), -55846i, global0.d);
    var var_2 = !vec4<bool>(all(var_0.yz), 5032u < ~u_input.b, arg_0.d, var_0.x);
    var_0 = select(select(select(!vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(true, var_0.x & false, false, true), !any(vec2<bool>(false, var_0.x))), vec4<bool>(var_0.x, all(select(var_2.xy, vec2<bool>(arg_0.b, false), var_2.xx)), true, true), (_wgslsmith_f_op_f32(-var_1.a) != 1f) & var_2.x), !vec4<bool>(arg_0.d, all(vec2<bool>(true, false)), true, _wgslsmith_mod_i32(arg_0.c.x, -13838i) > reverseBits(u_input.a)), true);
    let var_3 = _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.d.x, 875u, 3519u, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(global0.d.x, 52678u, 0u, var_1.d.x), global0.d) | var_1.d), ~countOneBits(global0.d)), countOneBits(var_1.d));
    return var_2.xzx;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-344f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)))), global0.a) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b + global0.b)));
    let var_1 = select(vec3<bool>(true, !((u_input.a <= global0.c) && true), true), !select(vec3<bool>(true, true, true), select(func_3(Struct_1(var_0.yy, false, vec4<i32>(1002i, global0.c, global0.c, 2147483647i), true)), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))), true);
    var var_2 = var_0.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-654f))) * 542f);
    var var_4 = _wgslsmith_dot_vec4_i32(~vec4<i32>(15093i, 39428i, global0.c, 21479i), reverseBits(vec4<i32>(~2147483647i >> (0u % 32u), abs(-5807i), -u_input.a, 46149i)));
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xy) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.x))), var_0.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.x, -821f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a, -939f))))), select(var_1.yx, var_1.zz, any(!vec4<bool>(false, var_1.x, var_1.x, var_1.x))))), false, min(-(min(vec4<i32>(-22702i, 39095i, global0.c, -2147483647i), vec4<i32>(18088i, -44145i, 42018i, global0.c)) >> (firstTrailingBit(global0.d) % vec4<u32>(32u))), vec4<i32>(u_input.a, ~3548i, -2147483647i, -(-13902i >> (global0.d.x % 32u)))), false);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<bool>) -> vec3<f32> {
    var var_0 = reverseBits(global0.d & _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.x, 1u, 7765u, 23563u), global0.d << (vec4<u32>(u_input.b, 4294967295u, global0.d.x, 21754u) % vec4<u32>(32u)), arg_1 & vec4<u32>(60099u, arg_2, global0.d.x, 0u)), _wgslsmith_mult_vec4_u32(global0.d, _wgslsmith_mod_vec4_u32(global0.d, arg_1))));
    var var_1 = ~(~(~(~2147483647i)));
    var var_2 = func_2();
    var_1 = u_input.a;
    let var_3 = (arg_3.x | !any(vec4<bool>(false, false, false, var_2.b))) != func_2().d;
    return _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(180f)), var_2.a.x, 524f), vec3<f32>(_wgslsmith_f_op_f32(select(-983f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), arg_3.x)), 1f, _wgslsmith_f_op_f32(sign(205f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_vec3_f32(max(global0.b, _wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(-612f, -335f, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.b.x * global0.a)), vec4<u32>(~85605u, global0.d.x, u_input.b, select(global0.d.x, 20955u, false)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, global0.d.x), ~global0.d.x), vec4<bool>(false, false, true, true))))), global0.c, _wgslsmith_div_vec4_u32(global0.d, global0.d));
    let var_0 = _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec4_u32(select(global0.d, vec4<u32>(88273u, global0.d.x, global0.d.x, 40586u), vec4<bool>(true, true, true, false)), global0.d ^ global0.d), (u_input.b >> (22103u % 32u)) >> (4294967295u % 32u), 4039u >> (~u_input.b % 32u))), ~global0.d.wzw);
    var var_1 = func_2();
    var var_2 = -u_input.a;
    var var_3 = 4294967295u;
    let var_4 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * -545f))), 1000f), global0.b, -2147483647i, vec4<u32>(var_0.x, global0.d.x, 4294967295u, ~global0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, 2462i, _wgslsmith_mod_i32(-2147483647i, var_1.c.x));
}

