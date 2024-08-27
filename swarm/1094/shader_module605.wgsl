struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec4<f32> {
    var var_0 = ~(select(~vec3<u32>(u_input.b.x, 0u, u_input.a) | ~vec3<u32>(u_input.a, u_input.a, u_input.b.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 49721u, 25077u), ~vec3<u32>(1u, 121162u, u_input.a)), vec3<bool>(false, all(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, true)))) << ((firstLeadingBit(vec3<u32>(1u, u_input.b.x, 40285u)) | ~(vec3<u32>(u_input.b.x, 25123u, u_input.a) >> (vec3<u32>(4294967295u, 10659u, u_input.b.x) % vec3<u32>(32u)))) % vec3<u32>(32u)));
    let var_1 = Struct_1(global0.a, 2147483647i, max(min(global0.c, global0.c), countOneBits(_wgslsmith_mult_i32(1i, -1i))));
    global0 = var_1;
    let var_2 = select(~vec3<u32>(u_input.b.x, 67762u >> (var_0.x % 32u), var_0.x ^ 24524u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(31145u, 56155u, 80458u) & vec3<u32>(var_0.x, var_0.x, u_input.b.x), vec3<u32>(var_0.x, 34210u, 41715u)), true || all(vec2<bool>(true, true))) & vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a, ~(~66232u)), var_0.x);
    let var_3 = var_1.a.x;
    return var_1.a;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_mod_u32(max(4294967295u, ~0u | (u_input.a & 8212u)) ^ u_input.b.x, 4294967295u);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-13990i, global0.c, u_input.c), max(~vec3<i32>(u_input.e, -2147483647i, global0.c), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, u_input.e, -1136i), vec3<i32>(global0.b, u_input.e, global0.b)))), 2147483647i), ~(global0.c | -36568i));
    let var_1 = global0.a;
    var var_2 = (u_input.d & _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.c, global0.b), abs(114425i), _wgslsmith_clamp_i32(54370i, 19275i, 23821i), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c, global0.c, u_input.d, 24509i), vec4<i32>(2147483647i, -1i, global0.b, global0.c))), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, 2147483647i, 0i, 37040i) | vec4<i32>(-101532i, global0.b, global0.b, -26716i), max(vec4<i32>(-50573i, 9132i, 2147483647i, u_input.e), vec4<i32>(-1i, 1i, global0.b, u_input.e))))) | -1i;
    var var_3 = !(!(-1070f <= _wgslsmith_div_f32(_wgslsmith_div_f32(-591f, 474f), _wgslsmith_div_f32(var_1.x, 335f))));
    return firstLeadingBit(-(~global0.c));
}

fn func_1() -> bool {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f + 812f))), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(global0.a.x + global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x))))), ~u_input.e, 11462i >> (u_input.a % 32u));
    let var_1 = _wgslsmith_add_i32((~u_input.c << (0u % 32u)) >> ((firstLeadingBit(u_input.a) ^ ~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)) % 32u), 2147483647i);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(~(i32(-1i) * -2147483647i), 32851i), _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -2147483647i, -2147483647i), vec3<i32>(global0.b, var_1, var_1)), _wgslsmith_dot_vec2_i32(vec2<i32>(24321i, var_1) ^ vec2<i32>(-48567i, u_input.c), select(vec2<i32>(global0.c, 9480i), vec2<i32>(-26384i, u_input.e), true)))), abs(func_2()));
    var var_2 = ~(-56329i);
    var var_3 = _wgslsmith_mod_vec4_u32(~(_wgslsmith_sub_vec4_u32(~vec4<u32>(97890u, 35823u, 4294967295u, 101464u), reverseBits(vec4<u32>(u_input.a, u_input.a, 26731u, u_input.a))) | vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x, select(15188u, u_input.b.x, false), 0u)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 24121u, u_input.a, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.a, u_input.a) & vec4<u32>(u_input.b.x, 11440u, 20011u, 29823u)) ^ countOneBits(vec4<u32>(u_input.b.x, u_input.a, 57606u, u_input.b.x))));
    return select(true, true, (u_input.b.x <= min(1u, ~4294967295u)) && false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>((_wgslsmith_f_op_f32(select(-1251f, global0.a.x, false)) >= _wgslsmith_f_op_f32(max(1175f, 757f))) || true, func_1(), !(1f > global0.a.x), true || !(global0.a.x > -856f)), select(select(vec4<bool>(true, any(vec2<bool>(true, false)), true, true), vec4<bool>(u_input.a < u_input.b.x, all(vec3<bool>(true, false, false)), global0.b <= 39452i, true), all(vec2<bool>(true, false))), !vec4<bool>(true, 43734i != u_input.c, true, true), !select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), select(select(vec4<bool>(true, u_input.d <= -26161i, any(vec3<bool>(false, false, true)), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), all(vec3<bool>(false, false, true))), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), select(vec4<bool>(true, 0i != global0.b, global0.a.x < 1875f, all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), !(u_input.b.x <= 1u)), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false))));
    let var_1 = ~vec4<i32>(0i, ~0i, -24621i, 24741i);
    let var_2 = Struct_1(global0.a, var_1.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-27449i, 43690i), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x)))))), u_input.b, _wgslsmith_f_op_f32(min(var_2.a.x, var_2.a.x)), var_2.a.x);
}

