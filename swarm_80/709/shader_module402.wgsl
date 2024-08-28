struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(21886i, -15843i, 2147483647i, -58472i), vec4<i32>(2147483647i, 8237i, -1i, i32(-2147483648)), 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(-2024f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -544f))));
    let var_2 = arg_0;
    let var_3 = 2147483647i == _wgslsmith_mod_i32(21845i, abs(~min(0i, global0.a.x)));
    global0 = Struct_2(firstTrailingBit(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(-2147483647i, -arg_0.d, 1i, arg_0.d >> (arg_1 % 32u)))), u_input.b, ~arg_2.a.x);
    return _wgslsmith_add_u32(arg_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.x, 23479u, arg_0.b.x, u_input.c), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_2.a.x, 0u), vec4<u32>(arg_2.a.x, u_input.c, arg_2.a.x, 1u))) << (~max(vec4<u32>(global0.c, arg_2.a.x, 0u, var_2.e.a.x), vec4<u32>(arg_2.a.x, arg_2.a.x, var_2.b.x, 4294967295u)) % vec4<u32>(32u))));
}

fn func_2() -> vec2<u32> {
    global0 = Struct_2(global0.a, _wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.b.x), u_input.b.zxz), u_input.d.x, -2147483647i, abs(-2147483647i)), reverseBits(global0.a)), _wgslsmith_mult_u32(u_input.c, ~70906u));
    global0 = Struct_2(-abs(vec4<i32>(global0.a.x, ~global0.a.x, 39451i, -1i)), global0.b, _wgslsmith_clamp_u32(u_input.c, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.c, 10756u), vec2<u32>(global0.c, global0.c)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, global0.c), vec2<u32>(13092u, u_input.c))) >> (_wgslsmith_div_u32(max(u_input.c, u_input.c), 4839u) % 32u), global0.c));
    var var_0 = vec2<bool>(!(!all(vec4<bool>(true, true, true, true))), all(vec2<bool>(!(1i != global0.b.x), (global0.a.x < 0i) & true)));
    var_0 = vec2<bool>(func_3(Struct_3(~u_input.c, abs(vec2<u32>(4294967295u, global0.c)), vec3<f32>(1328f, -888f, -1118f), global0.a.x, Struct_1(vec2<u32>(4822u, global0.c))), u_input.c, Struct_1(~vec2<u32>(8658u, u_input.c)), 34149i) != ~abs(global0.c), true);
    let var_1 = 1i;
    return vec2<u32>(abs(~(~global0.c)) & 1u, global0.c);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: u32, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_3(arg_2, reverseBits(func_2()), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_3.yyw, arg_3.zyw, true)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_3.x, arg_3.x, -434f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_3.wyz, arg_3.wzz)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_3.yzw)) - _wgslsmith_f_op_vec3_f32(max(arg_3.wwz, vec3<f32>(-447f, arg_3.x, arg_3.x)))))))), -(select(reverseBits(global0.b.x), ~global0.b.x, true) >> (22060u % 32u)), Struct_1(reverseBits(vec2<u32>(abs(arg_0), 1u))));
    var var_1 = vec2<u32>(4294967295u, 55196u);
    global0 = Struct_2(-vec4<i32>(max(_wgslsmith_add_i32(global0.b.x, 2147483647i), i32(-1i) * -15993i), -1i, global0.b.x, var_0.d), global0.a, ~_wgslsmith_mult_u32(u_input.c, ~8628u >> (arg_2 % 32u)));
    let var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-155f)), 485f)))));
    return Struct_2(~abs(global0.b), vec4<i32>(global0.a.x, _wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(u_input.d.x, arg_1, -2147483647i, 0i))), _wgslsmith_clamp_i32(global0.a.x, -27784i, 2147483647i)), -32734i, ~44118i), 46272u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_add_vec4_i32(-(~(~u_input.b)), vec4<i32>(~2147483647i, -1i >> (_wgslsmith_sub_u32(u_input.c, u_input.c) % 32u), abs(18674i << (u_input.c % 32u)), _wgslsmith_div_i32(global0.a.x, u_input.a.x))), vec4<i32>(abs(~u_input.b.x), global0.b.x, global0.b.x, 13753i), 0u);
    var var_1 = !vec2<bool>(_wgslsmith_f_op_f32(floor(516f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -321f)), true);
    let var_2 = Struct_3(var_0.c, ~vec2<u32>(abs(var_0.c), countOneBits(~u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -699f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2025f, _wgslsmith_f_op_f32(abs(-701f)))) - _wgslsmith_f_op_f32(-545f * -1475f)), -1000f), u_input.a.x, Struct_1(vec2<u32>(var_0.c, ~(u_input.c >> (14363u % 32u)))));
    let var_3 = -1i;
    global0 = func_1(33629u, 1078i, ~(var_0.c & global0.c), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1748f, 554f, _wgslsmith_f_op_f32(-var_2.c.x), -490f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-978f, 718f)), _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(ceil(var_2.c.x)), _wgslsmith_f_op_f32(trunc(-576f))))))));
    var_1 = !(!select(vec2<bool>(false, false || var_1.x), vec2<bool>(!var_1.x, true), var_1.x));
    let var_4 = vec4<bool>(true, true, all(select(!select(vec2<bool>(true, false), vec2<bool>(var_1.x, true), var_1.x), select(!vec2<bool>(var_1.x, true), vec2<bool>(true, true), vec2<bool>(var_1.x, var_1.x)), false)), var_1.x);
    let var_5 = !(!var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, 1029f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.c.x, var_2.c.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1752f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.x) + var_2.c.x)));
}

