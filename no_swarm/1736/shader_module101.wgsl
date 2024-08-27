struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.b))));
    global1 = any(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), false)));
    var var_1 = global0.c;
    global1 = false;
    return vec2<u32>(~max(global0.a.a.x, 1u), ~(~(~u_input.d >> (~4294967295u % 32u))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: u32) -> vec4<f32> {
    global0 = Struct_3(Struct_1(~select(global0.a.a, vec2<u32>(arg_2, u_input.a), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(583f - global0.b))))), arg_1), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0)) - global0.c)))));
    global0 = Struct_3(Struct_1(func_3()), _wgslsmith_f_op_f32(arg_1 + -1236f), _wgslsmith_f_op_vec4_f32(arg_0 - arg_0));
    let var_0 = select(_wgslsmith_sub_u32(abs(11993u), ~u_input.a << (0u % 32u)), abs(func_3().x), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, all(vec4<bool>(false, true, false, false)), all(vec3<bool>(false, true, true)), true), vec4<bool>(true, true, -465f >= arg_0.x, all(vec3<bool>(true, true, false))))));
    let var_1 = _wgslsmith_sub_u32(countOneBits(18610u), global0.a.a.x & reverseBits(firstLeadingBit(22259u)));
    var var_2 = Struct_1(vec2<u32>(~(~(~7149u)), min(firstTrailingBit(_wgslsmith_div_u32(u_input.d, var_0)), var_0)));
    return global0.c;
}

fn func_1(arg_0: f32) -> Struct_3 {
    return Struct_3(Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global0.a.a, vec2<u32>(53190u, 60511u)), global0.a.a)), global0.c.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 538f, -1485f, global0.c.x)), _wgslsmith_f_op_f32(2098f * 3012f), ~1u)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b, _wgslsmith_f_op_f32(floor(143f)), -405f, _wgslsmith_f_op_f32(-142f + arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(983f, -1264f, -702f, -915f) * global0.c))))));
}

fn func_4(arg_0: Struct_3) -> vec3<u32> {
    var var_0 = global0.c;
    var var_1 = countOneBits(_wgslsmith_sub_i32(-((i32(-1i) * -7482i) << (_wgslsmith_mult_u32(arg_0.a.a.x, global0.a.a.x) % 32u)), 9323i));
    var var_2 = 20963i & _wgslsmith_mod_i32(u_input.b, 0i);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-2138f, _wgslsmith_f_op_f32(f32(-1f) * -320f)))));
    let var_4 = -426f;
    return vec3<u32>(abs(4294967295u), ~1u, min(max(52950u >> (abs(global0.a.a.x) % 32u), global0.a.a.x), 18582u));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_3 {
    var var_0 = -vec2<i32>(2147483647i, min(countOneBits(-2147483647i), min(1i, _wgslsmith_add_i32(arg_2, 2147483647i))));
    global0 = Struct_3(func_1(314f).a, arg_1.x, _wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global0.b, _wgslsmith_f_op_f32(global0.c.x + func_1(-1531f).c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b + arg_1.x))), -1189f)));
    let var_1 = global0.c.x;
    let var_2 = global0.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(global0.c.x * -1725f), _wgslsmith_f_op_f32(-global0.b))), global0.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - arg_1.x))), _wgslsmith_f_op_f32(floor(-2123f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 1090f)))))));
    return Struct_3(Struct_1(func_1(_wgslsmith_f_op_f32(floor(263f))).a.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(416f * _wgslsmith_f_op_f32(max(arg_1.x, 1069f)))))), vec4<f32>(1000f, var_3.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.x)) + -1000f))), -1414f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    let var_0 = global0.b;
    global1 = _wgslsmith_dot_vec2_u32(global0.a.a, ~global0.a.a) > ~5967u;
    global0 = func_5(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(50018u, global0.a.a.x, global0.a.a.x) ^ max(vec3<u32>(global0.a.a.x, u_input.d, 42286u), vec3<u32>(15492u, u_input.d, 1u))), abs(func_4(func_1(global0.b)))), _wgslsmith_f_op_vec2_f32(global0.c.zy - global0.c.wy), reverseBits(~(~u_input.c)));
    var var_1 = global0.b;
    let var_2 = select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(true, false))), vec2<bool>(true, global0.c.x >= global0.c.x)), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(false, any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))))), reverseBits(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.b, u_input.b, 0i, u_input.c), -vec4<i32>(-33704i, u_input.b, 1i, 0i))) < -14598i);
    let var_3 = select(u_input.c, _wgslsmith_sub_i32(~firstLeadingBit(~u_input.c), ~reverseBits(_wgslsmith_mod_i32(u_input.b, 0i))), global0.c.x < global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(global0.c.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.yw)), select(var_2, var_2, vec2<bool>(u_input.b != u_input.c, true)))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.c, u_input.c, u_input.c) << (vec4<u32>(u_input.d, 1u, 1u, 4294967295u) % vec4<u32>(32u)), -vec4<i32>(-9235i, -1i, u_input.b, var_3)), min(reverseBits(vec4<i32>(u_input.b, u_input.b, -1i, var_3)), vec4<i32>(var_3, -34385i, -1i, 1i)) ^ select(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -16716i, var_3), vec4<i32>(var_3, u_input.c, 17687i, var_3)), vec4<i32>(25324i, 0i, -40498i, u_input.c) | vec4<i32>(-1i, u_input.c, 1i, var_3), false), select(vec4<i32>(var_3, -var_3, 38871i >> (0u % 32u), ~(-2147483647i)), vec4<i32>(u_input.b, _wgslsmith_mult_i32(u_input.c, u_input.b), ~u_input.b, ~u_input.b), select(select(vec4<bool>(false, true, false, var_2.x), vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(false, false, var_2.x, false)), !vec4<bool>(var_2.x, true, var_2.x, var_2.x), false))), 0i >> (((u_input.a >> (1u % 32u)) & 44899u) % 32u), -1126f, ~14351u);
}

