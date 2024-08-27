struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_2 = Struct_2(356f, vec2<f32>(-1000f, 788f), vec3<u32>(48179u, 1u, 0u), Struct_1(true, 67647i), Struct_1(true, -31027i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> bool {
    var var_0 = Struct_2(global0.b, _wgslsmith_f_op_vec2_f32(global1.b * _wgslsmith_f_op_vec2_f32(-global1.b)), select(min(vec3<u32>(global1.c.x, firstLeadingBit(26357u), 1u), vec3<u32>(global1.c.x, _wgslsmith_mult_u32(global1.c.x, global1.c.x), 122843u)), global1.c, true), global1.e, global1.d);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global1.a, 298f, var_0.b.x) - vec4<f32>(112f, 135f, 679f, global0.b))))), vec4<f32>(684f, global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + global0.b) + _wgslsmith_f_op_f32(global0.b + var_0.b.x)), _wgslsmith_f_op_f32(-global0.b)))), Struct_1(false, 1i));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(var_0.a + var_1.a.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1255f - var_1.a.x) - _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.b, global1.b))))), var_0.c, Struct_1(any(select(global0.a.zz, vec2<bool>(var_0.d.a, true), select(global0.a.yy, vec2<bool>(false, false), vec2<bool>(global1.e.a, false)))), _wgslsmith_add_i32(-2147483647i >> (var_0.c.x % 32u), reverseBits(~(-11883i)))), Struct_1(any(global0.a.xzy), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.b.b, var_1.b.b, -42501i, u_input.a), vec4<i32>(-25244i, 62947i, u_input.a, global1.e.b), global0.a), ~vec4<i32>(3779i, -6235i, -35415i, 0i)), _wgslsmith_dot_vec2_i32(min(vec2<i32>(global1.d.b, var_1.b.b), vec2<i32>(u_input.a, global1.d.b)), vec2<i32>(global1.d.b, var_0.e.b) | vec2<i32>(u_input.a, var_0.d.b)))));
    global0 = Struct_4(vec4<bool>(false, !(false && !var_0.d.a), false, var_0.e.b > _wgslsmith_add_i32(~var_1.b.b, -u_input.a)), -1318f);
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.b.x, 134f, -212f) * _wgslsmith_div_vec4_f32(vec4<f32>(121f, global0.b, global0.b, 1226f), var_1.a)), vec4<f32>(_wgslsmith_f_op_f32(global0.b * var_0.a), -253f, _wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(step(var_0.a, 1434f))))), Struct_1(any(global0.a.yy), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 0i), vec2<i32>(-32968i, -2147483647i) | vec2<i32>(36997i, global1.e.b))));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = Struct_4(vec4<bool>(global1.d.a, !any(select(vec4<bool>(false, true, global0.a.x, true), global0.a, global1.d.a)), all(select(!global0.a.zw, vec2<bool>(false, arg_0.a), !vec2<bool>(true, arg_0.a))), global0.a.x), global1.a);
    global0 = Struct_4(vec4<bool>(!all(global0.a), func_3(), !all(global0.a.xx), global0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b.x * 1753f))));
    let var_0 = vec3<bool>(select(true, true, false), global1.d.a, !(true || all(global0.a)));
    global0 = Struct_4(!(!(!(!global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - 523f));
    global0 = Struct_4(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-275f))), _wgslsmith_f_op_f32(f32(-1f) * -267f)))));
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec4<bool>) -> vec4<bool> {
    let var_0 = select(vec3<bool>(any(vec3<bool>(true, true, true)), func_2(Struct_1(any(vec4<bool>(global1.e.a, true, global1.e.a, global0.a.x)), arg_1), min(u_input.a << (global1.c.x % 32u), u_input.a | -1i)), arg_2.x == !func_2(Struct_1(false, u_input.a), 17664i)), !select(vec3<bool>(all(vec2<bool>(true, global1.e.a)), arg_2.x & arg_2.x, all(arg_2.xzw)), !global0.a.yyw, select(vec3<bool>(arg_2.x, true, true), arg_2.xyw, true)), true);
    global1 = Struct_2(arg_0, _wgslsmith_f_op_vec2_f32(-global1.b), global1.c, Struct_1(!var_0.x, ~(-41297i)), Struct_1(global1.d.a, u_input.a));
    global1 = Struct_2(162f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1578f * global0.b), 956f)), -1024f)), vec3<u32>(global1.c.x >> (abs(global1.c.x) % 32u), _wgslsmith_div_u32(~global1.c.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, global1.c.x, 78186u, 1u), vec4<u32>(global1.c.x, 4294967295u, 0u, global1.c.x))), global1.c.x), Struct_1(1u >= ~(~global1.c.x), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-32839i, 1i, arg_1), vec3<i32>(arg_1, 94363i, u_input.a)), vec3<i32>(arg_1, global1.d.b, arg_1)) & arg_1), global1.d);
    let var_1 = _wgslsmith_mod_u32(4294967295u, global1.c.x) > _wgslsmith_sub_u32(~countOneBits(global1.c.x) & (~global1.c.x >> (4294967295u % 32u)), global1.c.x);
    var var_2 = -_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(arg_1, arg_1, arg_1), 1i, global1.d.b), select(~vec3<i32>(-2329i, 43094i, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 0i, global1.d.b), vec3<i32>(-2147483647i, -2147483647i, global1.e.b)), true)), ~vec3<i32>(global1.e.b << (0u % 32u), firstTrailingBit(u_input.a), _wgslsmith_div_i32(arg_1, 20184i)));
    return arg_2;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = vec4<bool>(~global1.c.x > global1.c.x, !arg_0.a.x, global1.e.a, select(true, global0.a.x, arg_0.a.x));
    global0 = arg_0;
    var var_1 = 29576i;
    let var_2 = global1.e;
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(global1.b));
    return Struct_2(-220f, global1.b, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(abs(global1.c.x), ~global1.c.x), max(global1.c.xz, vec2<u32>(820u, global1.c.x))), _wgslsmith_mult_u32(abs(global1.c.x & 62318u), 0u), min(0u, ~global1.c.x ^ global1.c.x)), global1.d, global1.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_4(select(!vec4<bool>(true, true, global0.a.x, global1.e.a), select(select(global0.a, global0.a, global0.a), func_1(global1.a, -2973i, vec4<bool>(global0.a.x, global1.d.a, true, false)), vec4<bool>(global1.d.a, global1.d.a, true, false)), global0.a.x & global0.a.x), _wgslsmith_f_op_f32(global1.b.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(global0.b, -106f))))));
    global0 = Struct_4(vec4<bool>(_wgslsmith_mod_u32(0u, global1.c.x) < _wgslsmith_mod_u32(global1.c.x, firstLeadingBit(50533u)), true, ~_wgslsmith_div_u32(global1.c.x, global1.c.x) == 26979u, !global1.d.a), 514f);
    let var_0 = Struct_4(func_1(_wgslsmith_f_op_f32(-global1.a), max(u_input.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.b, -2147483647i, -53484i), vec3<i32>(1i, 22206i, global1.e.b))), vec4<bool>(!func_4(Struct_4(vec4<bool>(false, global0.a.x, global0.a.x, false), -784f)).e.a, !global1.d.a, global0.a.x, !global1.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)));
    let var_1 = vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(sign(global1.a)), global1.b.x);
    var var_2 = abs(~_wgslsmith_add_i32(2147483647i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, u_input.a), vec4<i32>(-45504i, u_input.a, -45649i, global1.e.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(55717i, global1.e.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(-(vec3<i32>(0i, -68048i, global1.e.b) | vec3<i32>(u_input.a, global1.e.b, 1i)), min(vec3<i32>(global1.d.b, 2108i, -1i), vec3<i32>(1i, global1.e.b, -2147483647i)) | vec3<i32>(-24326i, 1i, u_input.a)), -(~min(vec4<i32>(global1.d.b, -9475i, global1.e.b, 2147483647i) ^ vec4<i32>(-6071i, 11247i, u_input.a, 7318i), ~vec4<i32>(global1.e.b, 2147483647i, global1.e.b, 0i))), vec2<u32>(global1.c.x, 65585u), global1.c);
}

