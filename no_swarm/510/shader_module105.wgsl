struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 28>;

var<private> global1: vec2<u32> = vec2<u32>(7731u, 0u);

var<private> global2: i32 = 11158i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: u32) -> bool {
    global2 = ~(29026i | ~u_input.b.x);
    var var_0 = -773i;
    var var_1 = !vec4<bool>((select(17702i, u_input.b.x, false) >> (~36733u % 32u)) > ~_wgslsmith_clamp_i32(u_input.b.x, 1i, arg_0), true & select(any(vec4<bool>(false, false, false, false)), all(vec2<bool>(false, true)), all(vec4<bool>(true, true, true, true))), false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))));
    global1 = firstTrailingBit(~(arg_1 << (abs(vec2<u32>(global1.x, 0u)) % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(arg_1, vec2<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, arg_1.x, 34635u), vec4<u32>(arg_2, 0u, 8036u, global1.x)))) % vec2<u32>(32u)));
    var var_2 = vec4<bool>(false, select(true, !(true != var_1.x), all(var_1.zwx)), !select(var_1.x, var_1.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1416f, -481f, true))))) >= _wgslsmith_f_op_f32(min(187f, _wgslsmith_f_op_f32(trunc(960f)))));
    return var_2.x;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    global0 = array<vec3<i32>, 28>();
    var var_0 = abs(countOneBits(~firstTrailingBit(~vec4<u32>(arg_0, u_input.a.x, u_input.a.x, 4294967295u))));
    let var_1 = vec3<bool>(!(!((arg_0 << (arg_0 % 32u)) > 74239u)), true && !func_3(u_input.b.x, vec2<u32>(global1.x, var_0.x), global1.x), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), true), vec3<bool>(true, true, true))));
    let var_2 = true;
    let var_3 = ~u_input.a & vec3<u32>(1u, arg_0, var_0.x);
    return ~vec3<u32>(firstTrailingBit(~_wgslsmith_mult_u32(27338u, arg_0)), _wgslsmith_div_u32(reverseBits(11822u) | abs(var_0.x), arg_0), var_3.x & _wgslsmith_sub_u32(~1749u, u_input.a.x));
}

fn func_1() -> Struct_1 {
    var var_0 = ~(-_wgslsmith_dot_vec3_i32(select(-vec3<i32>(u_input.b.x, 0i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -1i), true), ~(~global0[_wgslsmith_index_u32(19940u, 28u)])));
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(func_2(u_input.a.x), ~u_input.a), vec4<bool>(false | any(vec3<bool>(true, true, true)), true, true, select(any(vec3<bool>(true, true, true)), true, true)), -(-_wgslsmith_sub_i32(u_input.b.x, u_input.b.x) | select(-u_input.b.x, ~u_input.b.x, global1.x < u_input.a.x)), 607f, ((~u_input.a.x ^ ~u_input.a.x) != min(u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 39458u))) | true);
    global1 = u_input.a.xx;
    global0 = array<vec3<i32>, 28>();
    let var_2 = Struct_1(func_2(4294967295u).x, !var_1.b, u_input.b.x, -680f, false);
    return var_2;
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_i32(u_input.b.wz, u_input.b.yy);
    global0 = array<vec3<i32>, 28>();
    global1 = vec2<u32>(arg_1.b.c.x, arg_3.x);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b.a.x, arg_2.x))))), Struct_1(~(~_wgslsmith_clamp_u32(0u, arg_1.b.c.x, 4294967295u)), vec4<bool>(any(func_1().b.wz), !arg_0, func_3(-2147483647i, vec2<u32>(4294967295u, 62668u), 4294967295u) || !arg_1.b.b.e, !any(vec4<bool>(arg_1.b.b.b.x, arg_0, false, false))), 2147483647i, _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(1000f + -393f))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-arg_1.b.a.x), true)) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b.a.x)))), vec3<u32>(reverseBits(1u), _wgslsmith_mult_u32(~arg_1.b.b.a, ~0u) ^ _wgslsmith_sub_u32(_wgslsmith_sub_u32(45825u, 22649u), arg_1.b.c.x), arg_1.b.c.x), ~arg_1.b.d);
    var_0 = abs(~abs(countOneBits(arg_1.b.d.zz)));
    return Struct_1(var_1.b.a, !vec4<bool>(_wgslsmith_f_op_f32(-arg_1.b.a.x) > _wgslsmith_f_op_f32(-arg_1.b.a.x), var_1.b.d >= -532f, all(func_1().b.zz), arg_1.b.b.b.x), -1i, _wgslsmith_f_op_f32(-arg_2.x), arg_1.b.b.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1i;
    let var_0 = func_4(any(vec2<bool>(true, true)), Struct_4(~(~_wgslsmith_div_i32(u_input.b.x, u_input.b.x)), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1037f, 965f) - vec2<f32>(810f, 1188f))), func_1(), u_input.a, u_input.b.zwy | u_input.b.xxx)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-func_1().d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -633f), -327f)), _wgslsmith_f_op_f32(sign(-1000f)), -369f), vec4<f32>(_wgslsmith_f_op_f32(ceil(-300f)), -696f, 922f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(459f, -557f)) * _wgslsmith_f_op_f32(select(-747f, 484f, false))))), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 41571u, 0u, u_input.a.x), firstLeadingBit(vec4<u32>(global1.x, u_input.a.x, global1.x, 4294967295u))) >> ((~vec4<u32>(global1.x, 0u, 23383u, u_input.a.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a.x, 41189u), vec4<u32>(16131u, u_input.a.x, 0u, global1.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(16988u, ~38158u & func_1().a, _wgslsmith_mult_u32(1u, global1.x), ~(~36630u))));
    let var_1 = true;
    var var_2 = ~(~func_2(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), 1u)).zx);
    global2 = -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 52474i >> (global1.x % 32u), _wgslsmith_div_i32(~1i, i32(-1i) * -1i), u_input.b.x), vec4<i32>(26874i, u_input.b.x, -var_0.c >> (25108u % 32u), _wgslsmith_sub_i32(var_0.c, abs(u_input.b.x))));
    var_2 = vec2<u32>(0u, _wgslsmith_add_u32(~var_0.a, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d))), ~52902u, var_0.c << ((17983u | ~var_2.x) % 32u), var_0.a, ~(_wgslsmith_mod_vec4_i32(u_input.b, u_input.b) | _wgslsmith_div_vec4_i32(u_input.b, u_input.b)) & _wgslsmith_add_vec4_i32(u_input.b << (vec4<u32>(58069u, u_input.a.x, 48253u, 27386u) % vec4<u32>(32u)), u_input.b << (~vec4<u32>(global1.x, 1u, u_input.a.x, 10585u) % vec4<u32>(32u))));
}

