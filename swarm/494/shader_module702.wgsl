struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-9072i, 763f, vec4<i32>(-1604i, 23553i, 1i, -40881i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    var var_0 = vec3<u32>(firstTrailingBit(4294967295u & _wgslsmith_add_u32(u_input.b.x, min(46046u, 4294967295u))), u_input.a.x, u_input.a.x);
    let var_1 = vec4<f32>(-763f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.b, -1265f, true))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))))), -928f);
    var var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(~(-global0.c.xz), vec2<i32>(global0.a, 0i)), firstLeadingBit(-global0.a));
    var var_3 = vec2<bool>(false, true);
    var var_4 = Struct_1(global0.c.x, global0.b, vec4<i32>(global0.c.x, -_wgslsmith_dot_vec3_i32(firstLeadingBit(global0.c.zxw), vec3<i32>(global0.a, var_2.x, -1i)), _wgslsmith_mult_i32(0i, 1i >> (1u % 32u)), (abs(global0.a) >> (firstTrailingBit(var_0.x) % 32u)) >> (_wgslsmith_add_u32(~var_0.x, ~u_input.b.x) % 32u)));
    return -16975i;
}

fn func_2() -> Struct_1 {
    let var_0 = 1u;
    var var_1 = Struct_1((1681i << (var_0 % 32u)) | 2147483647i, 719f, _wgslsmith_clamp_vec4_i32(~global0.c, -vec4<i32>(-1i >> (var_0 % 32u), global0.a, -global0.a, func_3()), global0.c));
    let var_2 = Struct_1(global0.a, -437f, _wgslsmith_mod_vec4_i32(min(~global0.c, var_1.c), ~vec4<i32>(~var_1.a, min(var_1.c.x, 2147483647i), -519i, global0.a & var_1.c.x)));
    var var_3 = !vec3<bool>(!(false & any(vec3<bool>(true, true, true))), true || any(vec4<bool>(true, true, true, true)), true);
    var var_4 = vec3<bool>(true, var_2.b > _wgslsmith_f_op_f32(abs(var_1.b)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)) && ((true & any(vec3<bool>(var_3.x, false, var_3.x))) & true));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var_0 = func_2();
    var var_2 = ~(~(~4294967295u));
    var_2 = _wgslsmith_add_u32(abs(~u_input.a.x), ~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~25680u, firstLeadingBit(u_input.a.x), firstLeadingBit(64815u)), 4294967295u, u_input.b.x << (abs(0u) % 32u)));
    return _wgslsmith_f_op_f32(select(-251f, arg_2.b, any(vec4<bool>(true, false, true, true))));
}

fn func_5(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(arg_0 * -348f))), global0.b, 673f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global0.b, global0.b)))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0)), vec3<f32>(-1565f, arg_0, global0.b)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(631f, var_0.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-584f, -590f), _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(ceil(global0.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1125f, 653f, global0.b), vec3<f32>(-491f, var_0.x, -404f)))))));
    global0 = func_2();
    var var_1 = Struct_1(global0.a, -2306f, global0.c);
    let var_2 = global0.c.x;
    return Struct_1(1i, arg_0, vec4<i32>(i32(-1i) * -13061i, var_1.a ^ func_3(), -38572i, 1i));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(-865f, arg_0);
    global0 = func_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * arg_1) - _wgslsmith_f_op_f32(func_4(func_2(), vec2<i32>(global0.c.x, arg_2.c.x), arg_2))))), vec3<u32>(~73744u, abs(1u), 23587u));
    global0 = Struct_1(max(-2147483647i, _wgslsmith_clamp_i32(arg_2.a, arg_2.c.x, func_5(-690f, vec3<u32>(u_input.b.x, 80698u, u_input.b.x)).c.x) >> (4894u % 32u)), _wgslsmith_f_op_f32(var_0 * arg_0), firstTrailingBit(arg_2.c));
    global0 = arg_2;
    let var_1 = func_2();
    return func_2();
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    global0 = arg_2;
    let var_0 = arg_2.c.zzx;
    global0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -114f)), u_input.b.yxw);
    var var_1 = _wgslsmith_mod_i32(abs(-1i), -1i);
    global0 = func_2();
    return Struct_1(2147483647i, arg_1.b, ~(~vec4<i32>(var_0.x, func_2().a, func_1(-1998f, arg_3, Struct_1(global0.c.x, 769f, vec4<i32>(global0.c.x, 1i, 2147483647i, arg_2.c.x))).c.x, i32(-1i) * -1i)));
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = vec2<f32>(arg_1.b, 501f);
    var var_1 = vec4<u32>(abs(55052u), 11498u, ~_wgslsmith_dot_vec2_u32(~arg_0, _wgslsmith_mult_vec2_u32(arg_0, arg_0)) << (~15564u % 32u), arg_0.x << (46262u % 32u));
    global0 = Struct_1(9093i, -260f, -vec4<i32>(1i, _wgslsmith_mod_i32(arg_2, _wgslsmith_mult_i32(-1i, global0.c.x)), i32(-1i) * -11374i, -1243i));
    var var_2 = var_1.xyw;
    var_0 = vec2<f32>(-463f, global0.b);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 64426u;
    var var_1 = func_7(u_input.b.zy, func_6(10539i << (abs(var_0 ^ u_input.a.x) % 32u), Struct_1(_wgslsmith_dot_vec2_i32(global0.c.xw, global0.c.zw) ^ 56661i, 109f, global0.c), func_1(_wgslsmith_f_op_f32(-1453f * _wgslsmith_f_op_f32(step(global0.b, global0.b))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, -387f) + _wgslsmith_f_op_f32(sign(-109f))), Struct_1(1i, _wgslsmith_div_f32(global0.b, -597f), global0.c)), global0.b), _wgslsmith_add_i32(reverseBits(select(-1i, global0.a, false)), ~global0.a) << (var_0 % 32u));
    var_1 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(func_7(vec2<u32>(0u, 4294967295u), Struct_1(var_1.c.x, global0.b, global0.c), -13602i).a, global0.a, 2147483647i), var_1.c.yxw), func_2().c.zxz), _wgslsmith_f_op_f32(max(global0.b, var_1.b)), _wgslsmith_add_vec4_i32(-(var_1.c << (_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(1u, var_0, 4294967295u, 0u)) % vec4<u32>(32u))), func_6(-func_5(var_1.b, vec3<u32>(4492u, var_0, 0u)).c.x, Struct_1(~31223i, _wgslsmith_f_op_f32(global0.b - 257f), -var_1.c), Struct_1(func_1(-1000f, -333f, Struct_1(-3053i, var_1.b, var_1.c)).c.x, global0.b, vec4<i32>(40244i, 35493i, -38999i, var_1.a)), var_1.b).c));
    let var_2 = -31125i;
    var_1 = Struct_1(-2147483647i, global0.b, ~vec4<i32>(select(~var_1.c.x, func_6(-38431i, Struct_1(var_2, 1185f, vec4<i32>(-65782i, 0i, global0.c.x, -52i)), Struct_1(global0.a, 141f, vec4<i32>(global0.c.x, -22945i, -1i, -2147483647i)), global0.b).c.x, true), (var_2 & 57368i) << ((var_0 & 41411u) % 32u), ~global0.a, var_1.c.x));
    let var_3 = all(!(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(false, false, false, true), any(vec3<bool>(false, true, false)))));
    var var_4 = _wgslsmith_f_op_f32(-global0.b);
    var var_5 = vec2<bool>(false, !var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_0, u_input.a.x);
}

