struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: i32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32> = vec4<i32>(-20342i, 2147483647i, 20870i, -1i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(false, 701f);
    let var_1 = all(!arg_0.yx);
    return Struct_1(true, 980f);
}

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    var var_0 = vec4<u32>(30307u, ~(~890u), min(4294967295u, 1u), firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(u_input.a, u_input.a), u_input.b), u_input.b) | u_input.c));
    let var_1 = vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(global1.xyz, ~_wgslsmith_div_vec3_i32(global1.yyw, global1.xxy))), max(global1.x, _wgslsmith_div_i32(-1i, 5736i) >> (1u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, global1.x, 1i, u_input.d), vec4<i32>(u_input.d, 1i, u_input.d, 33262i)), u_input.d, ~(-u_input.d)), reverseBits(_wgslsmith_sub_vec4_i32(max(vec4<i32>(-15190i, -23542i, -56405i, 0i), vec4<i32>(-2147483647i, global1.x, global1.x, u_input.d)), vec4<i32>(-2147483647i, 27621i, 3831i, global1.x)))), global1.x);
    let var_2 = Struct_4(Struct_1(any(!select(arg_0, vec3<bool>(global0.a, arg_0.x, global0.a), vec3<bool>(global0.a, true, arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -660f)), any(!(!vec4<bool>(false, global0.a, global0.a, arg_0.x))), -var_1.x, _wgslsmith_add_i32(u_input.d, global1.x), vec2<f32>(-365f, _wgslsmith_f_op_f32(max(735f, global0.b))));
    let var_3 = var_2.e.x;
    let var_4 = u_input.c;
    return ~min(vec2<u32>(50920u, 4294967295u), u_input.b);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> bool {
    let var_0 = Struct_3(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b, u_input.b), ~vec2<u32>(1u, u_input.c) | vec2<u32>(7714u, 9851u), ~vec2<u32>(u_input.b.x, u_input.c)), ~func_3(vec3<bool>(global0.a, true, arg_0.a)) >> (_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(4294967295u, 24417u), vec2<u32>(u_input.c, u_input.b.x)) % vec2<u32>(32u))), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, u_input.d, u_input.d, 0i), vec4<i32>(global1.x, u_input.d, global1.x, u_input.d)) & vec4<i32>(5159i, 32850i, global1.x, u_input.d), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 42805i, u_input.d, global1.x), vec4<i32>(-2147483647i, global1.x, u_input.d, -39851i)), -vec4<i32>(u_input.d, u_input.d, u_input.d, 0i))), 1i), Struct_2(_wgslsmith_f_op_f32(-arg_0.b), max(u_input.b.x, min(~u_input.a, max(4294967295u, 17338u))), vec2<bool>(!arg_0.a, true)), firstTrailingBit(2147483647i));
    let var_1 = var_0.c;
    let var_2 = func_1(vec3<bool>(all(!vec4<bool>(global0.a, arg_0.a, arg_0.a, false)), ~_wgslsmith_div_u32(var_1.b, 1u) != _wgslsmith_mod_u32(_wgslsmith_clamp_u32(8605u, 1u, var_1.b), abs(41485u)), true & !all(vec3<bool>(arg_0.a, false, false))), var_0.c.b).b;
    var var_3 = Struct_4(func_1(vec3<bool>(all(var_1.c), !(false || var_0.c.c.x), true), var_1.b), any(!(!select(var_1.c, var_1.c, true))), 0i, ~var_0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.c.a, -300f), vec2<f32>(arg_0.b, global0.b))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2, var_1.a)))) * vec2<f32>(-574f, _wgslsmith_f_op_f32(arg_0.b - arg_0.b))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, global0.b) * vec2<f32>(arg_0.b, global0.b)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.a, 1055f)))))))));
    global1 = vec4<i32>(min(abs(global1.x | u_input.d), ~(global1.x >> (var_1.b % 32u))), var_0.b, var_3.c, u_input.d) & _wgslsmith_clamp_vec4_i32(~min(vec4<i32>(var_3.d, var_0.b, -30049i, -69004i) << (vec4<u32>(68501u, var_1.b, 4294967295u, var_0.c.b) % vec4<u32>(32u)), vec4<i32>(4444i, var_0.d, global1.x, -2147483647i) >> (vec4<u32>(4294967295u, u_input.b.x, var_0.a, u_input.c) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, u_input.d, 1i, 1i), vec4<i32>(31573i, -2147483647i, var_3.d, u_input.d)), vec4<i32>(var_0.d, u_input.d, var_3.d, 2147483647i)) ^ -vec4<i32>(-1i, var_0.d, 3385i, var_0.d), -vec4<i32>(firstLeadingBit(-2541i), var_0.d, ~var_3.d, var_0.d));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(func_2(func_1(select(vec3<bool>(false, global0.a, global0.a), vec3<bool>(true, false, true), vec3<bool>(false, global0.a, true)), u_input.b.x), global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1274f) * 1000f)), global0.a, global1.x >> (abs(~u_input.b.x) % 32u), global1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(round(867f))));
    let var_1 = func_1(!(!(!select(vec3<bool>(false, global0.a, var_0.b), vec3<bool>(var_0.a.a, false, true), global0.a))), u_input.a);
    global1 = _wgslsmith_mod_vec4_i32(vec4<i32>(1i, ~global1.x, u_input.d ^ -18173i, 0i), ~(~(-vec4<i32>(7029i, u_input.d, -1i, 2147483647i)) ^ (~vec4<i32>(var_0.d, -27005i, global1.x, global1.x) << ((vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.b.x) & vec4<u32>(u_input.a, 93665u, u_input.a, 1u)) % vec4<u32>(32u)))));
    let var_2 = Struct_3(u_input.b.x, _wgslsmith_add_i32(global1.x, reverseBits(~global1.x) >> ((_wgslsmith_mult_u32(u_input.c, 4294967295u) ^ u_input.b.x) % 32u)), Struct_2(var_1.b, ~u_input.b.x, vec2<bool>(max(u_input.a, u_input.b.x) >= abs(0u), false)), global1.x);
    global0 = func_1(select(!select(vec3<bool>(global0.a, false, false), select(vec3<bool>(var_2.c.c.x, global0.a, true), vec3<bool>(global0.a, var_2.c.c.x, true), vec3<bool>(global0.a, false, var_2.c.c.x)), !var_1.a), !select(!vec3<bool>(global0.a, var_1.a, global0.a), vec3<bool>(var_1.a, false, var_0.a.a), all(var_2.c.c)), vec3<bool>(!global0.a, true, !all(vec2<bool>(false, true)))), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(-1670i, min(countOneBits(~(u_input.b >> (u_input.b % vec2<u32>(32u)))), vec2<u32>(~(1u << (var_2.a % 32u)), 1092u | _wgslsmith_add_u32(43834u, var_2.a))), ~(_wgslsmith_div_u32(16983u, _wgslsmith_div_u32(u_input.c, 29126u)) ^ u_input.b.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-1156f - 564f), var_2.c.a), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.e)) + var_0.e))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1382f - var_0.a.b) + _wgslsmith_f_op_f32(-var_0.a.b)), _wgslsmith_f_op_f32(-global0.b))));
}

