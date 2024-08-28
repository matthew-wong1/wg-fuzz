struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_2) -> bool {
    let var_0 = ~reverseBits(abs(select(vec2<i32>(-27228i, -21356i), vec2<i32>(arg_2.a.c, arg_2.a.c), vec2<bool>(false, arg_0.x)))) >> (_wgslsmith_add_vec2_u32(arg_2.b.a.xy >> (~vec2<u32>(arg_2.a.a.x, 24713u) % vec2<u32>(32u)), vec2<u32>(1u, firstLeadingBit(1u | arg_2.b.a.x))) % vec2<u32>(32u));
    let var_1 = arg_0.x;
    return true;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> vec3<bool> {
    var var_0 = !vec2<bool>(!func_3(vec3<bool>(true, false, false), 1u, Struct_2(Struct_1(vec3<u32>(0u, 0u, 0u), arg_0, u_input.a), Struct_1(vec3<u32>(23877u, 1u, 0u), arg_1, u_input.a), vec3<u32>(0u, 28281u, 0u))), true);
    return vec3<bool>(true, true, true);
}

fn func_4(arg_0: bool) -> Struct_3 {
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    var var_0 = _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~1u, 29u)], vec4<u32>(1u, 1u, 1u, 1u));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 59316u), vec2<u32>(1u, 0u)), 0u), 79384u), _wgslsmith_mod_u32(~4395u, ~(~54348u)));
    var var_1 = 636f;
    return Struct_3(Struct_1(vec3<u32>(_wgslsmith_sub_u32(abs(23281u), firstLeadingBit(67162u)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(25412u, 1u, 0u), vec3<u32>(28211u, 67666u, 0u)), 1u, func_2(-2083f, -1790f, vec4<f32>(-1000f, 1489f, 1717f, -490f)).x), 4294967295u), _wgslsmith_f_op_f32(-1561f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2105f)))), 1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(24676u, 34200u), vec2<u32>(59655u, 1u)) % 32u)), select(u_input.a, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a, 58300i, -1i, -1i)), vec4<i32>(31600i, -25711i, -1i, -47773i)), arg_0 | arg_0));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    var var_0 = func_4(any(select(select(vec3<bool>(true, true, true), func_2(arg_1, -1099f, vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))));
    var var_1 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), -1i <= arg_3.x), vec4<bool>(true, arg_2 > u_input.a, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-721f * arg_1))) <= var_0.a.b, _wgslsmith_div_f32(arg_0.x, -768f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(-arg_0.x))), !(!(any(vec4<bool>(true, true, true, false)) | all(vec3<bool>(false, true, true)))));
    return func_4(any(vec2<bool>(all(!vec4<bool>(var_1.x, var_1.x, true, false)), false))).a;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> i32 {
    var var_0 = func_2(arg_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(795f, -138f), _wgslsmith_f_op_f32(ceil(arg_0.b))), 999f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b))), _wgslsmith_f_op_f32(func_1(vec2<f32>(arg_0.b, arg_0.b), arg_0.b, arg_0.c, vec4<i32>(5913i, arg_0.c, arg_0.c, arg_0.c)).b - -1687f), arg_0.b), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.b)), arg_0.b)), arg_0.b, arg_0.b, func_1(vec2<f32>(-158f, -1709f), arg_0.b, -1i, -vec4<i32>(-2421i, 5367i, u_input.a, arg_0.c)).b))).zy;
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    var_0 = vec2<bool>(var_0.x, var_0.x);
    global0 = array<vec4<u32>, 29>();
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec3<u32>(1u, 1u, 1u), -3208f, func_5(func_1(vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 6692i, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 4940i, 0i), vec4<i32>(-1i, 23230i, u_input.a, u_input.a))), countOneBits(~vec2<u32>(0u, 0u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 87942u), vec3<u32>(128741u, 172u, 2766u)) >> (1u % 32u))), func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-361f, _wgslsmith_f_op_f32(floor(968f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2160f, 1029f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1157f) * vec2<f32>(-565f, -1642f))), select(func_2(609f, -1858f, vec4<f32>(-480f, 723f, 139f, 1183f)).xz, vec2<bool>(false, false), true))), func_4(50102i >= u_input.a).a.b, -u_input.a, -(~(~vec4<i32>(u_input.a, 613i, u_input.a, u_input.a)))), min(~abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(64622u, 7752u), 1u), 61862u, ~_wgslsmith_mult_u32(7489u, 21490u))));
    let var_1 = min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.a.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.b.c, var_0.b.c, u_input.a, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.c, var_0.b.c, -12123i, -60601i), vec4<i32>(u_input.a, 0i, var_0.b.c, u_input.a))), -65852i), vec4<i32>(u_input.a, 1i << (var_0.b.a.x % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b.c, 9234i, u_input.a, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -12949i, var_0.b.c, 0i), vec4<i32>(var_0.a.c, 2147483647i, 2147483647i, 16126i))), ~(-20695i))), _wgslsmith_div_vec4_i32(firstTrailingBit(max(vec4<i32>(55135i, var_0.a.c, 3519i, u_input.a), abs(vec4<i32>(var_0.a.c, 7248i, 65792i, u_input.a)))), ~(~select(vec4<i32>(-23178i, var_0.a.c, var_0.b.c, var_0.b.c), vec4<i32>(u_input.a, 2147483647i, u_input.a, 1i), vec4<bool>(true, true, false, false)))));
    var_0 = Struct_2(Struct_1(~(~var_0.b.a), _wgslsmith_f_op_f32(var_0.a.b + -846f), 1i), Struct_1(vec3<u32>(_wgslsmith_div_u32(abs(20924u), 1u), 33997u, ~func_1(vec2<f32>(var_0.b.b, var_0.b.b), var_0.b.b, 1i, vec4<i32>(56168i, 2147483647i, u_input.a, 1i)).a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(var_0.a.b, var_0.b.b), -433f, u_input.a, vec4<i32>(u_input.a, var_0.a.c, -1i, var_1.x)).b - var_0.b.b)), 18152i), vec3<u32>(var_0.a.a.x, ~(~0u ^ _wgslsmith_dot_vec2_u32(var_0.a.a.yy, vec2<u32>(46352u, var_0.b.a.x))), ~firstLeadingBit(0u) ^ func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-843f, var_0.a.b)), var_0.a.b, abs(1i), vec4<i32>(var_0.b.c, var_0.b.c, u_input.a, 1i)).a.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(func_4(false).a.b, var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(494f + -335f) + _wgslsmith_f_op_f32(var_0.a.b - -1006f)) * var_0.a.b), var_0.b.b));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(abs(-193f)), _wgslsmith_f_op_f32(sign(var_2.x)));
    let var_4 = Struct_2(func_4(all(vec4<bool>(false, all(vec4<bool>(true, false, true, true)), true, func_2(723f, var_0.a.b, vec4<f32>(310f, 2826f, var_2.x, var_2.x)).x))).a, func_4((true && select(true, true, true)) | true).a, var_0.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(-var_1.xxy)), (min(~26798i, -4043i) << (_wgslsmith_sub_u32(var_4.a.a.x, var_0.b.a.x) % 32u)) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(var_1.wyw, _wgslsmith_add_vec3_i32(var_1.zzx, vec3<i32>(-15049i, var_1.x, var_1.x))), var_4.b.c), reverseBits(var_4.c.x) >> (1u % 32u), 1u);
}

