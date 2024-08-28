struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec3<u32>(4294967295u, 12309u, 4294967295u), i32(-2147483648), Struct_1(false, i32(-2147483648)), false, Struct_1(true, 1714i));

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> vec2<bool> {
    var var_0 = firstTrailingBit(abs(vec2<i32>(global0.e.b, 0i) >> (u_input.b.yx % vec2<u32>(32u))));
    let var_1 = global0.c;
    var_0 = u_input.a.xx;
    let var_2 = -vec2<i32>(1i, -4574i);
    let var_3 = Struct_1(!(!global0.d), select(~_wgslsmith_clamp_i32(-1i, u_input.a.x, var_2.x), ~arg_0.b, false) << (0u % 32u));
    return !vec2<bool>(any(!select(vec3<bool>(true, global1.d, global0.d), vec3<bool>(arg_0.a, false, true), vec3<bool>(var_1.a, true, var_3.a))), all(!vec4<bool>(true, true, true, var_3.a)) || false);
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(global0.e.b, -_wgslsmith_div_i32(12635i, 3982i)));
    let var_1 = select(!func_3(Struct_1(true, abs(1i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, global2.x, global2.x, global2.x))), vec4<f32>(global2.x, global2.x, global2.x, global2.x))), vec2<bool>(select(global1.e.b, 1i, global1.d | global1.e.a) >= var_0, !global1.c.a), abs(1u) >= global1.a.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x)))), _wgslsmith_f_op_f32(round(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), -990f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x), -876f)), _wgslsmith_f_op_vec3_f32(-global2.wxx))));
    let var_3 = -vec3<i32>(-(global0.e.b & 2147483647i), global0.b, _wgslsmith_add_i32(_wgslsmith_clamp_i32(~u_input.a.x, 1i, var_0), _wgslsmith_mult_i32(-1i, u_input.a.x)));
    var var_4 = 1u;
    return -_wgslsmith_mod_i32(-_wgslsmith_add_i32(var_3.x, ~(-22568i)), global1.b);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    let var_0 = vec2<bool>(true, any(!vec4<bool>(true, true, true, global0.e.a)));
    var var_1 = Struct_2(~(~(~(~global0.a))), 2147483647i, arg_1, !global1.e.a, arg_1);
    var var_2 = _wgslsmith_sub_vec2_u32(select(~global0.a.yx, countOneBits(vec2<u32>(0u, arg_2)) & var_1.a.zz, vec2<bool>(global1.d, arg_3.x != _wgslsmith_f_op_f32(global2.x + arg_3.x))), var_1.a.zx);
    var var_3 = global1.c;
    var var_4 = Struct_1((global1.a.x > (firstLeadingBit(0u) >> (_wgslsmith_mult_u32(u_input.b.x, global0.a.x) % 32u))) && (1i >= -u_input.a.x), ~func_2());
    return _wgslsmith_f_op_f32(-880f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1065f), _wgslsmith_f_op_f32(sign(1170f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(func_1(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(31599i, 0i, -2147483647i, global1.e.b) >> (vec4<u32>(4294967295u, global0.a.x, 117041u, u_input.c) % vec4<u32>(32u)), vec4<i32>(-1i, -1i, firstLeadingBit(global0.b), 1i)), _wgslsmith_mod_i32(-global1.e.b, global0.e.b)), global1.e, ~0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.wyz - _wgslsmith_f_op_vec3_f32(-global2.yyx)) + global2.yzz)));
    var var_1 = Struct_2(vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(11998u, 1u), global0.a.xx), vec2<u32>(firstTrailingBit(global0.a.x), 74936u)), ~_wgslsmith_add_u32(u_input.c, 12139u), 4294967295u), u_input.a.x, Struct_1(!(global1.e.a || true), -1i), select(false, !global0.d, any(!select(vec4<bool>(global1.e.a, global0.d, false, true), vec4<bool>(true, global1.d, true, global1.c.a), vec4<bool>(true, false, global1.c.a, true)))), Struct_1(!global0.e.a & false, _wgslsmith_dot_vec3_i32(u_input.a.xww, u_input.a.zwx)));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, 1596f, 644f, var_0), vec4<f32>(global2.x, 167f, -1000f, -1400f), global1.c.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 133f, -820f, var_0)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1254f, var_0, 263f, var_0)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, global2.x, var_0, -661f), vec4<f32>(var_0, var_0, 1393f, global2.x), var_1.d)))))));
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(firstLeadingBit(u_input.b), global1.a ^ ~vec3<u32>(u_input.c, var_1.a.x, 0u)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 0u), vec3<u32>(var_1.a.x, u_input.b.x, u_input.b.x), vec3<u32>(13447u, var_1.a.x, u_input.b.x)) << (~vec3<u32>(1u, 4294967295u, global1.a.x) % vec3<u32>(32u)), var_1.a) % vec3<u32>(32u)), i32(-1i) * -2147483647i, global0.e, all(vec2<bool>(true, !global1.e.a)) & true, Struct_1(false, var_1.e.b));
    let var_3 = -global1.c.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wwx, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -48804i, u_input.a.x & var_2.e.b), max(-2147483647i, min(-11746i, var_1.b))), _wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 9447u, 15170u, global0.a.x), vec4<u32>(4294967295u, 1u, 64910u, 56871u) | vec4<u32>(4294967295u, 22743u, 4294967295u, global1.a.x)), ~abs(vec4<u32>(0u, 15548u, var_1.a.x, 1u)) & select(firstLeadingBit(vec4<u32>(1u, global0.a.x, 81889u, 1u)), ~vec4<u32>(4294967295u, u_input.c, 1u, 21344u), var_0 == 1404f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))) - -541f), select(vec2<u32>(26923u, 40482u), var_1.a.xy, select(vec2<bool>(false, global2.x == global2.x), vec2<bool>(any(vec3<bool>(global1.c.a, false, var_2.e.a)), true), vec2<bool>(-1438f <= var_0, all(vec3<bool>(global0.c.a, global0.e.a, false))))));
}

