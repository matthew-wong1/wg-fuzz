struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: Struct_4,
    d: bool,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 0i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    let var_0 = -21263i ^ _wgslsmith_add_i32(~27053i, firstTrailingBit(abs(_wgslsmith_div_i32(global0.x, 2147483647i))));
    global0 = firstTrailingBit(-reverseBits(u_input.b.yz));
    global0 = vec2<i32>(global0.x, var_0);
    var var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -419f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(361f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1075f), -249f)))));
    global0 = ~u_input.b.zy & _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_div_i32(~u_input.b.x, _wgslsmith_sub_i32(-5289i, global0.x)), firstTrailingBit(global0.x) << (67108u % 32u)), u_input.b.xy, ~u_input.b.yz);
    return ~abs(0u);
}

fn func_2(arg_0: Struct_5, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = (vec2<u32>(~_wgslsmith_dot_vec3_u32(arg_2.a.wzy, vec3<u32>(u_input.a, u_input.a, arg_2.a.x)), ~(~u_input.a)) | max(arg_2.a.yy, _wgslsmith_add_vec2_u32(~arg_2.a.xw, vec2<u32>(1u, 41457u)))) ^ ~vec2<u32>(41048u, _wgslsmith_mod_u32(arg_2.b.x, arg_2.b.x) >> (abs(u_input.a) % 32u));
    var var_1 = arg_2.c;
    global0 = arg_0.e.yz;
    var var_2 = _wgslsmith_dot_vec4_u32(countOneBits(max(~(~arg_2.a), vec4<u32>(~u_input.a, func_3(), ~var_0.x, 0u))), select(_wgslsmith_add_vec4_u32(abs(arg_2.a), vec4<u32>(4294967295u, u_input.a, arg_2.b.x, 5039u) << (vec4<u32>(4294967295u, var_0.x, 4294967295u, 30553u) % vec4<u32>(32u))), arg_2.a, all(vec4<bool>(arg_1, false, arg_2.c.x, arg_1)) || (2147483647i == global0.x)) ^ ~arg_2.a);
    var var_3 = Struct_4(vec3<f32>(-494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.c.a.x * 240f)))), -961f));
    return arg_2.a.x;
}

fn func_4(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_u32(select(select(abs(vec2<u32>(4294967295u, arg_0)), ~vec2<u32>(4087u, u_input.a), select(true, false, true)), select(vec2<u32>(57086u, 51679u), vec2<u32>(arg_0, arg_0), false), _wgslsmith_clamp_i32(u_input.b.x, 1159i, 1i) < u_input.b.x) ^ ~firstTrailingBit(~vec2<u32>(u_input.a, 0u)), countOneBits(_wgslsmith_add_vec2_u32(select(vec2<u32>(u_input.a, 29871u), vec2<u32>(arg_0, 17165u), false) << (vec2<u32>(0u, arg_0) % vec2<u32>(32u)), vec2<u32>(u_input.a, 0u) & (vec2<u32>(u_input.a, arg_0) | vec2<u32>(u_input.a, 4294967295u)))));
    var var_1 = ~(0u | (u_input.a & ~(~u_input.a)));
    var var_2 = u_input.b.x;
    var var_3 = Struct_5(!any(vec3<bool>(true, true, true)), min(-(~(-2147483647i)), global0.x), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1000f, -1368f), vec3<f32>(1918f, 536f, -1406f))))), global0.x > u_input.b.x, vec4<i32>(countOneBits(global0.x), _wgslsmith_add_i32(u_input.b.x, reverseBits(u_input.b.x)), countOneBits(select(u_input.b.x, ~u_input.b.x, 5428i >= u_input.b.x)), -2147483647i & ~u_input.b.x));
    let var_4 = abs(max(vec4<u32>(u_input.a | ~var_0.x, firstTrailingBit(firstTrailingBit(u_input.a)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(arg_0, 4294967295u), countOneBits(arg_0)), ~(~arg_0)), select(reverseBits(~vec4<u32>(87561u, 13047u, u_input.a, 62022u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, arg_0, 4868u, arg_0), min(vec4<u32>(1u, 12829u, arg_0, var_0.x), vec4<u32>(1u, 13118u, 1u, 0u))), select(select(vec4<bool>(var_3.d, false, var_3.a, true), vec4<bool>(true, var_3.a, var_3.d, var_3.a), false), !vec4<bool>(var_3.a, true, false, var_3.d), vec4<bool>(true, true, var_3.a, true)))));
    return Struct_1(min(~(var_4 & (var_4 >> (vec4<u32>(arg_0, var_4.x, 1u, arg_0) % vec4<u32>(32u)))), var_4), var_4.wz, select(!select(select(vec2<bool>(true, var_3.a), vec2<bool>(true, true), var_3.d), vec2<bool>(var_3.d, false), 2611u <= var_4.x), vec2<bool>(any(vec2<bool>(var_3.d, false)), var_3.a), !vec2<bool>(var_3.d || var_3.d, var_3.d)), _wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(var_3.e, var_3.e), vec4<i32>(27243i, 1i, u_input.b.x, 1i) & var_3.e), var_3.e));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_3(373f, -273f);
    var var_1 = vec3<u32>(func_2(Struct_5(true, global0.x, Struct_4(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, -804f, var_0.b)))), false, vec4<i32>(reverseBits(-12214i), arg_1.d >> (arg_1.b.x % 32u), ~2147483647i, 1i)), arg_1.a.x < _wgslsmith_add_u32(~u_input.a, 4294967295u), func_4(~(~arg_1.a.x))), _wgslsmith_add_u32(_wgslsmith_mult_u32(func_4(114132u).a.x, 3481u), func_4(4294967295u).b.x), _wgslsmith_dot_vec3_u32(arg_1.a.zxz, ~(vec3<u32>(arg_1.b.x, 32535u, arg_1.a.x) << ((arg_0.a.xwz & vec3<u32>(u_input.a, arg_0.b.x, arg_0.b.x)) % vec3<u32>(32u)))));
    var var_2 = func_4(arg_0.b.x).a.x;
    let var_3 = arg_0.c;
    var_2 = max(_wgslsmith_div_u32(_wgslsmith_mult_u32(func_4(abs(arg_0.a.x)).a.x, ~4294967295u), u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_mod_u32(~u_input.a, 0u << (arg_0.b.x % 32u)), 3467u), arg_0.a.yyz));
    return u_input.b.x;
}

fn func_1() -> i32 {
    let var_0 = ~(~u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(sign(566f))));
    let var_2 = vec3<i32>(44449i, ~global0.x, u_input.b.x);
    var var_3 = Struct_3(var_1, var_1);
    global0 = ~vec2<i32>(func_5(Struct_1(vec4<u32>(16912u, u_input.a, 0u, 55684u), vec2<u32>(9861u, 1u), select(vec2<bool>(true, true), vec2<bool>(true, true), true), 46885i), func_4(func_2(Struct_5(true, 2147483647i, Struct_4(vec3<f32>(var_3.a, -335f, 877f)), false, vec4<i32>(33680i, u_input.b.x, var_2.x, global0.x)), false, Struct_1(vec4<u32>(1u, u_input.a, u_input.a, 0u), vec2<u32>(23197u, u_input.a), vec2<bool>(false, true), 2147483647i)))), _wgslsmith_clamp_i32(u_input.b.x, firstTrailingBit(u_input.b.x | global0.x), -1i));
    return _wgslsmith_sub_i32(-5345i, -(u_input.b.x << (var_0 % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-13264i, 506f, vec4<i32>(~(_wgslsmith_div_i32(1i, u_input.b.x) >> (u_input.a % 32u)), func_1(), _wgslsmith_div_i32(-1i, global0.x), u_input.b.x), 1055f, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(421f, -1224f) + vec2<f32>(-870f, 1948f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, 658f))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(2090f, -176f), vec2<f32>(-1522f, -561f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1348f, -900f))))))));
}

