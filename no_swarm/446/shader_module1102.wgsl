struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec4<u32>(~firstTrailingBit(_wgslsmith_mod_u32(9955u, 1u) | _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 10471u, 0u))), reverseBits(~(~(~55798u))), ~_wgslsmith_div_u32(1756u, 1u), _wgslsmith_dot_vec4_u32(abs(~firstTrailingBit(vec4<u32>(0u, 0u, 10419u, 30215u))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(11067u, 6927u, 4294967295u, 0u)), abs(~vec4<u32>(4294967295u, 22842u, 60930u, 0u)))));
    let var_1 = !all(!vec4<bool>(true, arg_1.x, false, arg_0)) && true;
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(698f, -1291f, global0.b))))), vec3<f32>(global0.b, _wgslsmith_div_f32(-553f, -1451f), _wgslsmith_f_op_f32(global0.b - global0.b))))));
    let var_3 = global0.b;
    let var_4 = _wgslsmith_mult_vec3_i32(vec3<i32>(-(-1i >> (var_0.x % 32u)), global0.c.x, -24877i) & ~_wgslsmith_add_vec3_i32(min(global0.c, vec3<i32>(global0.c.x, -1i, global0.c.x)), -u_input.b.xyx), vec3<i32>(global0.c.x, _wgslsmith_mod_i32(0i, -u_input.a), _wgslsmith_div_i32(~global0.c.x, -_wgslsmith_mult_i32(-1i, u_input.b.x))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -851f) + global0.b)));
}

fn func_2() -> Struct_1 {
    global0 = Struct_4(!global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - global0.b) * _wgslsmith_f_op_f32(func_3(global0.a, vec3<bool>(global0.a, global0.a, global0.a)))), global0.b)))), u_input.b.zzz);
    let var_0 = min(_wgslsmith_dot_vec3_u32(~(~firstLeadingBit(vec3<u32>(0u, 26085u, 0u))), vec3<u32>(20069u, _wgslsmith_div_u32(~42721u, ~1u), 1u)), _wgslsmith_mult_u32(81775u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 1u, 0u), select(vec3<bool>(global0.a, false, true), vec3<bool>(true, global0.a, global0.a), false)), vec3<u32>(1u, ~82611u, 4294967295u))));
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    let var_1 = !select(global0.a, true, true);
    return Struct_1(~_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0, reverseBits(var_0)), var_0), !select(!(!vec3<bool>(false, var_1, global0.a)), vec3<bool>(true, !var_1, true), 58107u > abs(var_0)), vec2<f32>(-381f, global0.b));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> vec3<bool> {
    global0 = Struct_4(select(select(48496u, arg_1, arg_0.b.x) <= 0u, true, false) & true, _wgslsmith_f_op_f32(sign(global0.b)), -_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(global0.c, firstTrailingBit(u_input.b.yxy)), u_input.b.wxy));
    let var_0 = -_wgslsmith_div_i32(countOneBits(u_input.b.x), 18447i);
    global0 = Struct_4(global0.a, -1096f, global0.c);
    var var_1 = Struct_2(func_2());
    global0 = Struct_4(!arg_2, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-670f + var_1.a.c.x) * arg_0.c.x), _wgslsmith_f_op_f32(arg_0.c.x - global0.b)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.c.x)) - arg_0.c.x)))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(reverseBits(-28884i), 49382i << (arg_3.x % 32u)), _wgslsmith_add_i32(2147483647i, u_input.c) & (global0.c.x | u_input.b.x), reverseBits(12674i) | _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(global0.c.x, 51820i, -42894i, var_0))), abs(u_input.b.yyx) & vec3<i32>(-27398i, _wgslsmith_mod_i32(u_input.c, var_0), _wgslsmith_add_i32(-48715i, -1i))));
    return !func_2().b;
}

fn func_1() -> Struct_1 {
    global0 = Struct_4(any(select(vec4<bool>(true, global0.a, select(false, global0.a, global0.a), all(vec4<bool>(global0.a, global0.a, false, global0.a))), vec4<bool>(true, true, true, global0.b >= global0.b), select(vec4<bool>(true, global0.a, true, false), !vec4<bool>(false, global0.a, false, global0.a), vec4<bool>(global0.a, global0.a, global0.a, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1406f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(687f * 1000f))))), vec3<i32>(_wgslsmith_mult_i32(~global0.c.x, u_input.b.x), -2599i, _wgslsmith_div_i32(global0.c.x, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(1i, u_input.b.x, u_input.c), -1i, ~2147483647i))));
    var var_0 = u_input.b.x;
    global0 = Struct_4(global0.a, 320f, vec3<i32>(u_input.b.x, -global0.c.x, 0i));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(145f, _wgslsmith_f_op_f32(-global0.b), global0.b) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b, global0.b, global0.b), vec3<f32>(-220f, global0.b, global0.b)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(536f, 119f, 151f)))))));
    let var_2 = func_4(func_2(), 62351u & _wgslsmith_clamp_u32(abs(1u), 85955u, 36120u), true, vec3<u32>(2124u, 1u, select(24141u, func_2().a, global0.a) & ~(~4294967295u)));
    return global1[_wgslsmith_index_u32(~(~1u), 9u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(arg_0.c, vec2<f32>(-1261f, -237f)))), func_1().c))));
    global0 = Struct_4(any(vec3<bool>(false, true, func_1().b.x)), arg_0.c.x, vec3<i32>(-(~_wgslsmith_sub_i32(u_input.c, u_input.a)), _wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(global0.c.xy, u_input.b.wx, vec2<i32>(0i, 0i))), -vec2<i32>(-1i, u_input.a) >> (_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(0u, 6867u)) % vec2<u32>(32u))), ~(-2147483647i)));
    global0 = Struct_4(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x + global0.b) * _wgslsmith_f_op_f32(min(-1642f, 657f)))) * 1000f), _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(28280i, 12807i, u_input.a), vec3<i32>(u_input.a, u_input.c, global0.c.x), true), select(vec3<i32>(5418i, -5772i, 1i), vec3<i32>(-2147483647i, -25457i, u_input.c), true), global0.c), vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 26280i, 0i), firstTrailingBit(u_input.b.x), 1i & u_input.c)) ^ max(vec3<i32>(select(global0.c.x, -2147483647i, arg_0.b.x), 20651i ^ u_input.b.x, 0i), vec3<i32>(0i, global0.c.x, global0.c.x) ^ global0.c));
    return Struct_4(true & any(!vec3<bool>(global0.a, arg_0.b.x, true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - global0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_div_vec3_i32(select(vec3<i32>(firstTrailingBit(1i), -58862i, u_input.c), reverseBits(countOneBits(u_input.b.wyw)), global0.a), _wgslsmith_div_vec3_i32(-(global0.c << (vec3<u32>(8136u, arg_0.a, arg_0.a) % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(global0.c.x, global0.c.x, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(false, -1789f, firstTrailingBit(select(select(u_input.b.xwy, -global0.c, !vec3<bool>(false, global0.a, global0.a)), vec3<i32>(-33545i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, -32653i, -2031i, 37930i), u_input.b)), global0.a)));
    global1 = array<Struct_1, 9>();
    global0 = func_5(func_1(), !vec3<bool>(all(select(vec4<bool>(true, false, true, global0.a), vec4<bool>(false, false, true, false), vec4<bool>(true, global0.a, true, true))), !func_4(Struct_1(0u, vec3<bool>(false, true, global0.a), vec2<f32>(580f, 1334f)), 4294967295u, true, vec3<u32>(0u, 0u, 22372u)).x, global0.a));
    global0 = Struct_4(199f != _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1093f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), global0.b, global0.a)))), _wgslsmith_add_vec3_i32(~vec3<i32>(global0.c.x, _wgslsmith_mod_i32(-59102i, 14036i), _wgslsmith_mod_i32(-7499i, -9148i)), countOneBits(vec3<i32>(u_input.c, reverseBits(1i), countOneBits(45271i)))));
    let var_0 = Struct_1(~56889u, select(func_4(func_2(), func_2().a, true, select(vec3<u32>(36632u, 1u, 0u), ~vec3<u32>(1u, 29481u, 60499u), !vec3<bool>(false, global0.a, true))), select(func_4(func_1(), 1u, func_1().b.x, vec3<u32>(1u, 321u, 87688u)), vec3<bool>(global0.a, any(vec2<bool>(global0.a, global0.a)), all(vec4<bool>(global0.a, true, false, false))), global0.a), !all(vec3<bool>(false, false, false)) == false), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-904f + global0.b)), 1518f)));
    let var_1 = _wgslsmith_f_op_f32(-func_2().c.x);
    global0 = Struct_4(_wgslsmith_div_i32(select(2147483647i, u_input.c, false), _wgslsmith_add_i32(1i, min(-55379i, u_input.a))) != _wgslsmith_div_i32(-_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(2147483647i, -2147483647i, global0.c.x, 1i)), min(-1234i, -1i) << (max(1u, var_0.a) % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.x))))), 122f)), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, 2147483647i, ~u_input.a), u_input.b.zxz)));
    global1 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(var_1 * var_1))), var_1, _wgslsmith_f_op_f32(var_1 * -766f), _wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1731f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) + func_5(global1[_wgslsmith_index_u32(var_0.a, 9u)], vec3<bool>(var_0.b.x, false, var_0.b.x)).b), var_0.c.x) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1008f, 441f, var_1)))), vec3<f32>(var_1, 1099f, var_0.c.x), vec3<bool>(true, true, true)))), var_0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-643f, global0.b, -493f, 668f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-201f, var_0.c.x, var_1, var_0.c.x), vec4<f32>(var_1, var_0.c.x, var_1, var_0.c.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, global0.b) * vec4<f32>(var_0.c.x, 535f, -417f, 1996f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, global0.b, 149f, global0.b))))));
}

