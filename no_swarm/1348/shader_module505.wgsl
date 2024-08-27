struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(54278u, 4294967295u, 61805u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, 2147483647i, -1i), vec3<i32>(-11650i, -12360i, i32(-2147483648)), false, vec3<i32>(0i, -978i, 1i));

var<private> global1: vec4<f32> = vec4<f32>(750f, -678f, -1084f, 223f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_add_u32(~global0.a.x, 0u);
    var var_1 = ~arg_1.c.a.yyw;
    let var_2 = !vec3<bool>(arg_1.b.x, !arg_1.d, global0.d);
    return 55509u;
}

fn func_2() -> vec4<f32> {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(6996u >> (global0.a.x % 32u), 1u), _wgslsmith_mult_u32(global0.a.x, global0.a.x), u_input.d), min(_wgslsmith_add_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(global0.a.x, global0.a.x), max(u_input.c, global0.a.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.d, u_input.d), global0.a.zyw, abs(vec3<u32>(u_input.c, global0.a.x, 0u)))), ~vec3<u32>(func_3(u_input.c, Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, global0.a.x, 4294967295u), vec4<i32>(global0.e.x, 20114i, -325i, 0i), global0.c, global0.d, global0.c), vec4<bool>(global0.d, global0.d, global0.d, global0.d), Struct_1(global0.a, vec4<i32>(23619i, u_input.b, -10275i, 58640i), vec3<i32>(u_input.a, 2147483647i, -7722i), true, global0.c), true)), abs(0u), u_input.d)));
    let var_1 = global0.b.yzw;
    let var_2 = ~var_1.x;
    var var_3 = all(!vec3<bool>(!(global0.d == global0.d), !(false && global0.d), true));
    var var_4 = ~select(~global0.a.x, firstTrailingBit(_wgslsmith_sub_u32(global0.a.x, u_input.d)) << (_wgslsmith_mult_u32(~1u, global0.a.x) % 32u), true);
    return vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(-global1.x))), 342f);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, global1.x, 709f, global1.x) - vec4<f32>(1000f, 1282f, global1.x, -1316f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, 968f, 2217f, global1.x) + vec4<f32>(1242f, global1.x, global1.x, global1.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global1.x)), -767f, _wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_vec4_f32(func_2()).x), !select(select(vec4<bool>(true, global0.d, false, false), vec4<bool>(true, global0.d, false, global0.d), false), select(vec4<bool>(true, global0.d, false, false), vec4<bool>(global0.d, true, false, true), vec4<bool>(global0.d, false, global0.d, global0.d)), global0.d))));
    let var_0 = select(select(!select(!vec3<bool>(true, global0.d, true), select(vec3<bool>(global0.d, true, global0.d), vec3<bool>(global0.d, global0.d, false), global0.d), select(vec3<bool>(global0.d, true, global0.d), vec3<bool>(global0.d, global0.d, false), false)), vec3<bool>(select(false, !global0.d, true), true & (global1.x >= -196f), !(!global0.d)), select(select(!vec3<bool>(global0.d, false, global0.d), vec3<bool>(global0.d, global0.d, global0.d), false), !select(vec3<bool>(global0.d, true, global0.d), vec3<bool>(false, global0.d, global0.d), vec3<bool>(true, true, true)), vec3<bool>(false, false, !global0.d))), select(!select(select(vec3<bool>(false, true, global0.d), vec3<bool>(false, global0.d, false), true), !vec3<bool>(global0.d, global0.d, false), select(vec3<bool>(true, global0.d, true), vec3<bool>(false, global0.d, global0.d), vec3<bool>(false, true, global0.d))), select(select(vec3<bool>(false, true, false), select(vec3<bool>(global0.d, true, false), vec3<bool>(global0.d, global0.d, global0.d), vec3<bool>(true, global0.d, global0.d)), all(vec2<bool>(global0.d, global0.d))), !(!vec3<bool>(true, global0.d, global0.d)), global0.d), !(!vec3<bool>(global0.d, false, false))), select(!select(select(vec3<bool>(global0.d, global0.d, false), vec3<bool>(global0.d, global0.d, global0.d), false), vec3<bool>(false, true, global0.d), !vec3<bool>(global0.d, true, false)), vec3<bool>(true, global0.d, global0.d), !(!(!vec3<bool>(global0.d, global0.d, global0.d)))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-535f * -2292f), -1000f) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -387f), _wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), global1.x, _wgslsmith_f_op_f32(floor(1505f)), _wgslsmith_f_op_f32(floor(global1.x))) - vec4<f32>(global1.x, _wgslsmith_f_op_f32(select(-911f, global1.x, true)), global1.x, global1.x)))));
    global0 = Struct_1(global0.a, min(_wgslsmith_div_vec4_i32(-(~global0.b), abs(select(global0.b, vec4<i32>(u_input.a, u_input.b, global0.c.x, u_input.a), false))), firstLeadingBit(global0.b)), global0.b.yyz, true, vec3<i32>(global0.b.x, global0.e.x, countOneBits(45267i)));
    let var_1 = Struct_1(~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(24586u, 27708u, global0.a.x, 1u) & vec4<u32>(4294967295u, global0.a.x, 1u, u_input.d), global0.a)), ~countOneBits(global0.b), vec3<i32>(_wgslsmith_div_i32(-1i, _wgslsmith_div_i32(arg_0.x >> (u_input.c % 32u), 0i)), arg_0.x, u_input.b), (select(false, true, all(vec4<bool>(true, false, var_0.x, global0.d))) || ((global0.d != var_0.x) && (global0.a.x >= 74475u))) || global0.d, vec3<i32>(u_input.a, _wgslsmith_mod_i32(arg_0.x, global0.b.x >> (76965u % 32u)) << (abs(u_input.d) % 32u), global0.c.x));
    return Struct_2(Struct_1(vec4<u32>(_wgslsmith_add_u32(0u, ~0u), ~global0.a.x, firstLeadingBit(0u), ~firstLeadingBit(u_input.d)), select(var_1.b, var_1.b, !any(vec3<bool>(var_0.x, true, var_1.d))), global0.c, 1i > arg_0.x, -firstTrailingBit(vec3<i32>(var_1.c.x, arg_0.x, arg_0.x) << (global0.a.yyy % vec3<u32>(32u)))), vec4<bool>((~arg_0.x << (1u % 32u)) <= -1i, global0.d, false, any(!(!var_0.zx))), Struct_1(global0.a | _wgslsmith_mod_vec4_u32(~vec4<u32>(var_1.a.x, u_input.d, 1429u, 38985u), vec4<u32>(33245u, var_1.a.x, global0.a.x, global0.a.x)), -global0.b, _wgslsmith_clamp_vec3_i32(-var_1.c, global0.c, ~vec3<i32>(var_1.c.x, u_input.b, u_input.a)) & -vec3<i32>(u_input.a, -30329i, 0i), var_1.d, firstTrailingBit(firstTrailingBit(-global0.e))), true);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec3_i32(arg_1.a.b.xwz, arg_1.c.b.ywz);
    let var_1 = func_1(var_0.zz | global0.b.xx).a;
    var var_2 = arg_1;
    var var_3 = global1.x;
    let var_4 = true;
    return func_1(var_1.c.xz).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, -705f, global0.d)), global1.x), _wgslsmith_f_op_vec2_f32(global1.wy + global1.wy))) + global1.wz)));
    var var_1 = func_4(4294967295u, func_1(vec2<i32>(i32(-1i) * -1i, 0i)));
    let var_2 = -104i;
    let x = u_input.a;
    s_output = StorageBuffer(16662u, global1.ww, u_input.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(983f, 707f, var_0.x, global1.x), vec4<f32>(-155f, -119f, -436f, 607f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -656f, global1.x, 404f), vec4<f32>(-1016f, var_0.x, -663f, var_0.x))))), vec4<f32>(809f, -804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global1.x))))))), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1.x)), -237f, all(vec3<bool>(false, global0.d, var_1.d)))))), any(vec3<bool>(global0.d | var_1.d, var_1.d, -1146f < var_0.x)))));
}

