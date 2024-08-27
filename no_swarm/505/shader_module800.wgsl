struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(true, Struct_2(vec2<i32>(3598i, i32(-2147483648)), vec3<f32>(-1452f, -450f, -1079f), Struct_1(true, vec4<i32>(-24203i, 54151i, 52310i, i32(-2147483648)), true, false, vec3<u32>(6843u, 15002u, 1u)), Struct_1(false, vec4<i32>(46970i, 50574i, 1i, 0i), false, false, vec3<u32>(1u, 3017u, 1u))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3.c.b.xxw;
    return arg_1.x;
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(~(u_input.a.x ^ u_input.a.x), ~(~421u)), u_input.a.x, u_input.a.x, 60104u));
    global0 = Struct_3(_wgslsmith_div_i32(-5794i, -(u_input.b.x | global0.b.d.b.x)) <= ~countOneBits(~0i), global0.b);
    var var_1 = firstLeadingBit(firstLeadingBit(-28157i));
    global0 = Struct_3(all(select(select(select(vec4<bool>(false, global0.b.c.c, false, global0.a), vec4<bool>(false, global0.a, false, global0.a), vec4<bool>(global0.b.c.d, global0.b.d.a, global0.a, global0.b.d.c)), vec4<bool>(true, true, false, global0.b.d.d), vec4<bool>(global0.a, false, global0.b.c.a, false)), !vec4<bool>(false, true, true, global0.b.c.a), any(select(vec3<bool>(true, global0.b.d.a, global0.a), vec3<bool>(global0.a, false, false), vec3<bool>(false, global0.b.c.c, global0.a))))), Struct_2(countOneBits(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_0, u_input.b.x), ~vec2<i32>(u_input.b.x, 0i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b.b.x, arg_1.x, 579f), _wgslsmith_f_op_vec3_f32(-global0.b.b)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.x, arg_1.x, 843f)), global0.b.b)), Struct_1(global0.a, vec4<i32>(5799i, ~global0.b.c.b.x, firstLeadingBit(arg_0), -u_input.b.x), true, false, vec3<u32>(~u_input.a.x, global0.b.d.e.x, 0u)), global0.b.c));
    var var_2 = Struct_1(global0.a, -vec4<i32>(54755i, ~97711i & _wgslsmith_add_i32(-34176i, arg_0), abs(global0.b.d.b.x) << (4294967295u % 32u), global0.b.d.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))) <= -2515f, false, _wgslsmith_mult_vec3_u32(vec3<u32>(27472u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 4294967295u) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(var_0.zxx, vec3<u32>(1u, global0.b.c.e.x, var_0.x)), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), var_0.x), ~u_input.a.ywz));
    return vec3<bool>(true, any(vec3<bool>(!(false && global0.a), true, any(vec2<bool>(false, false)) && any(vec3<bool>(var_2.d, global0.a, false)))), true);
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_4(u_input.a, vec3<i32>(min(func_2(arg_1, arg_2, u_input.b.yy, global0.b) << ((global0.b.d.e.x << (global0.b.d.e.x % 32u)) % 32u), -1i), countOneBits(2147483647i), global0.b.c.b.x), Struct_3(any(func_3(1i, vec2<f32>(932f, arg_3))), Struct_2(arg_2, _wgslsmith_f_op_vec3_f32(-global0.b.b), Struct_1(u_input.a.x != 4294967295u, _wgslsmith_mod_vec4_i32(vec4<i32>(41992i, arg_2.x, arg_2.x, global0.b.d.b.x), u_input.b), true, true, reverseBits(vec3<u32>(global0.b.c.e.x, u_input.a.x, 0u))), global0.b.c)));
    var var_1 = _wgslsmith_f_op_f32(trunc(-360f));
    let var_2 = Struct_1(any(select(!select(vec3<bool>(true, false, arg_0.x), vec3<bool>(false, global0.b.d.d, global0.b.d.c), var_0.c.a), select(select(vec3<bool>(global0.b.c.d, false, arg_0.x), vec3<bool>(true, var_0.c.a, var_0.c.b.d.c), true), vec3<bool>(var_0.c.a, false, false), all(vec2<bool>(false, global0.b.c.a))), vec3<bool>(true, !var_0.c.b.c.d, global0.b.c.a))), -(~vec4<i32>(countOneBits(2147483647i), ~(-1i), _wgslsmith_sub_i32(2147483647i, 10900i), ~(-2925i))), true, !all(func_3(var_0.b.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.b.b.x, 238f))))), select(_wgslsmith_sub_vec3_u32(reverseBits(u_input.a.wzw), vec3<u32>(~var_0.c.b.c.e.x, 6627u, firstLeadingBit(var_0.c.b.c.e.x))), ~(global0.b.c.e | vec3<u32>(28799u, 0u, 19104u)) | vec3<u32>(29888u, ~global0.b.d.e.x, ~global0.b.d.e.x), select(vec3<bool>(true, false, global0.b.c.e.x > var_0.a.x), select(!vec3<bool>(global0.a, arg_0.x, true), !vec3<bool>(true, arg_0.x, false), vec3<bool>(true, global0.b.d.d, false)), vec3<bool>(var_0.c.b.d.c, true, true))));
    global0 = var_0.c;
    let var_3 = _wgslsmith_f_op_f32(round(global0.b.b.x));
    return Struct_2(~vec2<i32>(arg_1, ~abs(var_2.b.x)), global0.b.b, var_2, Struct_1(!(!arg_0.x), ~_wgslsmith_div_vec4_i32(var_2.b, var_2.b) & countOneBits(~vec4<i32>(-27671i, arg_1, var_2.b.x, -1i)), true, select(_wgslsmith_div_f32(-1321f, 103f) >= _wgslsmith_f_op_f32(arg_3 + -260f), true, var_0.c.a), vec3<u32>(84151u, 0u, ~_wgslsmith_mod_u32(global0.b.c.e.x, 4294967295u))));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(countOneBits(-2147483647i), u_input.b.x), ~(~global0.b.a.x)) >> (~0u % 32u), u_input.b.x, -2147483647i, -2147483647i);
    var_0 = reverseBits(_wgslsmith_mult_vec4_i32(firstTrailingBit(-reverseBits(global0.b.d.b)), _wgslsmith_add_vec4_i32(u_input.b, countOneBits(-global0.b.d.b))));
    let var_1 = -_wgslsmith_mod_i32(_wgslsmith_mod_i32(firstTrailingBit(u_input.b.x), ~arg_3.a.x >> (116800u % 32u)), -firstTrailingBit(var_0.x));
    var var_2 = vec4<u32>(~0u, global0.b.c.e.x, _wgslsmith_sub_u32(27660u, arg_0), global0.b.c.e.x);
    var var_3 = Struct_3(false, arg_3);
    return arg_3.c.e.x << (~_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(10474u, 43689u), _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 60163u), ~var_2.x), var_2.x) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var_0 = ~_wgslsmith_div_i32(firstLeadingBit(reverseBits(u_input.b.x) >> (1u % 32u)), _wgslsmith_mod_i32(-41548i, global0.b.d.b.x));
    var var_1 = global0.b;
    var_1 = global0.b;
    let var_2 = (~(~1u) ^ _wgslsmith_clamp_u32(~4294967295u, func_4(firstTrailingBit(51546u), false, !vec2<bool>(true, var_1.d.d), func_1(vec2<bool>(global0.a, false), 31851i, global0.b.d.b.xz, -738f)), ~var_1.c.e.x)) << (func_1(!select(!vec2<bool>(true, var_1.d.d), !vec2<bool>(var_1.c.a, true), true), reverseBits(var_1.d.b.x), ~(vec2<i32>(-1i) * -vec2<i32>(global0.b.a.x, 2147483647i)), var_1.b.x).c.e.x % 32u);
    let var_3 = vec2<bool>(_wgslsmith_f_op_f32(step(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x))) < 280f, !(true | (_wgslsmith_div_f32(760f, global0.b.b.x) < _wgslsmith_f_op_f32(1325f - 314f))));
    var_0 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, global0.b.b.x, 643f)), _wgslsmith_f_op_vec3_f32(var_1.b - vec3<f32>(1034f, var_1.b.x, 1000f)))), global0.b.b, !vec3<bool>(-912f <= global0.b.b.x, var_1.d.d, true))), -var_1.a.x, _wgslsmith_div_f32(func_1(var_3, 1i, u_input.b.zx >> (u_input.a.yw % vec2<u32>(32u)), _wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(f32(-1f) * -1404f))).b.x, -1000f), -6140i >> (_wgslsmith_sub_u32(global0.b.c.e.x, func_1(vec2<bool>(var_3.x, true), ~(-14761i), u_input.b.zy, -1700f).d.e.x) % 32u));
}

