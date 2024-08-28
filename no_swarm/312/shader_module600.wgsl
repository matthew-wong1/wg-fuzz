struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<u32> {
    var var_0 = -346f;
    var var_1 = all(select(vec4<bool>(true, false, true, any(vec3<bool>(true, true, true))), select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false)), any(vec2<bool>(false, false))), vec4<bool>(true, true, true, all(vec4<bool>(false, true, true, false))), (u_input.b.x & 1i) == reverseBits(-23108i)), true));
    let var_2 = vec2<u32>(min(6252u, u_input.d.x << (1u % 32u)), abs(1u & _wgslsmith_mult_u32(76366u, u_input.d.x)) << (_wgslsmith_add_u32(~(~u_input.c.x), u_input.d.x) % 32u));
    global0 = array<Struct_4, 1>();
    let var_3 = max(vec3<i32>(u_input.b.x, -83714i, u_input.b.x), ~vec3<i32>(-reverseBits(0i), 17837i, u_input.b.x));
    return select(~vec4<u32>(var_2.x, var_2.x, firstLeadingBit(~51682u), var_2.x), max(vec4<u32>(~min(var_2.x, u_input.a.x), var_2.x | 1u, 4294967295u, _wgslsmith_div_u32(u_input.d.x, max(4294967295u, u_input.c.x))), ~(~vec4<u32>(var_2.x, u_input.d.x, var_2.x, u_input.a.x))), vec4<bool>(!(!(var_2.x != var_2.x)), any(vec2<bool>(true, true)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)) & any(vec3<bool>(false, true, false)), !(var_3.x >= -var_3.x)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> f32 {
    global0 = array<Struct_4, 1>();
    let var_0 = _wgslsmith_mult_vec4_u32(select(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 92777u, u_input.c.x, 96100u), vec4<u32>(u_input.a.x, 18192u, u_input.d.x, 0u)), vec4<u32>(u_input.d.x, 4294967295u, u_input.a.x, u_input.a.x)) << (reverseBits(~vec4<u32>(47809u, u_input.d.x, u_input.c.x, 0u)) % vec4<u32>(32u)), vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(1u, 0u, u_input.d.x)), _wgslsmith_add_u32(~1091u, u_input.a.x), ~firstLeadingBit(42823u)), !any(vec2<bool>(arg_3.x, false))), func_3());
    var var_1 = u_input.a;
    let var_2 = Struct_1(-u_input.b.x);
    let var_3 = -6375i < (var_2.a & (_wgslsmith_div_i32(firstLeadingBit(-2147483647i), abs(-2147483647i)) ^ arg_1));
    return 534f;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> i32 {
    let var_0 = false;
    var var_1 = Struct_1(~(u_input.b.x >> (11870u % 32u)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 1u)];
    let var_3 = ~u_input.b.x;
    let var_4 = -1176f;
    return _wgslsmith_clamp_i32(-var_2.d.c.a, (abs(u_input.b.x) ^ u_input.b.x) & u_input.b.x, -2147483647i);
}

fn func_1() -> i32 {
    global0 = array<Struct_4, 1>();
    var var_0 = firstTrailingBit(abs(vec3<i32>(max(u_input.b.x, u_input.b.x) & -u_input.b.x, -1413i, _wgslsmith_div_i32(u_input.b.x, -u_input.b.x))));
    let var_1 = Struct_1(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(Struct_1(u_input.b.x), -19627i, u_input.b.x, vec4<bool>(true, false, false, false))), _wgslsmith_f_op_f32(round(-399f)), -1773f) * vec3<f32>(969f, _wgslsmith_f_op_f32(f32(-1f) * -463f), -684f)), select(false, select(true, false, true), true) && (_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.b.x, 10458i), vec3<i32>(-37771i, -28246i, 0i)) != var_0.x)));
    var var_2 = vec2<bool>(true, !(firstLeadingBit(2147483647i) >= var_0.x));
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(0i, ~var_0.x & _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, var_0.x, -35239i, u_input.b.x), vec4<i32>(var_0.x, var_1.a, var_1.a, var_1.a)), firstTrailingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32((vec3<i32>(18917i, 3805i, var_0.x) << (u_input.c % vec3<u32>(32u))) << (~u_input.c % vec3<u32>(32u)), vec3<i32>(var_0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(1i, -50455i)), 2147483647i)), ~(-vec3<i32>(var_1.a, var_0.x, u_input.b.x))));
    return -10933i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -293f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-971f + -180f), _wgslsmith_f_op_f32(select(1631f, -1107f, true))), -929f)));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(max(~vec4<i32>(u_input.b.x, -39814i, 0i, -45095i), vec4<i32>(1i, -12705i, -6403i, u_input.b.x) ^ vec4<i32>(-24607i, -46215i, u_input.b.x, u_input.b.x)), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -7764i, u_input.b.x, u_input.b.x), vec4<i32>(0i, u_input.b.x, 11456i, -6282i), vec4<i32>(u_input.b.x, u_input.b.x, -13601i, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 28964i, u_input.b.x), vec4<i32>(-44312i, u_input.b.x, 86224i, u_input.b.x)), all(vec4<bool>(false, false, false, true)))), vec4<i32>(~u_input.b.x & func_1(), _wgslsmith_mod_i32(12830i, u_input.b.x), ~func_4(vec3<f32>(247f, -473f, -751f), false), firstLeadingBit(9516i))), vec4<i32>(reverseBits(-1i), 31446i, -(~(u_input.b.x & 26842i)), firstLeadingBit(1i)));
    let var_2 = vec3<f32>(-953f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))))), var_0);
    var var_3 = !(!select(vec3<bool>(any(vec2<bool>(false, false)), true, u_input.b.x != -1368i), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), true), false));
    var_3 = !(!select(!vec3<bool>(var_3.x, false, false), !select(vec3<bool>(var_3.x, true, var_3.x), vec3<bool>(false, var_3.x, var_3.x), var_3.x), !(!var_3.x)));
    let var_4 = Struct_3(abs(_wgslsmith_sub_u32(u_input.c.x, u_input.d.x << (4294967295u % 32u))), ~countOneBits(4294967295u), Struct_1(-15623i), var_2.x < var_0);
    let var_5 = Struct_1(~_wgslsmith_dot_vec2_i32(u_input.b, countOneBits(vec2<i32>(var_4.c.a, var_1))));
    var var_6 = any(!(!(!vec3<bool>(false, var_3.x, false))));
    var var_7 = Struct_2(Struct_1(_wgslsmith_sub_i32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, var_0, -514f)), !var_3.x), _wgslsmith_add_i32(var_4.c.a, func_4(var_2, false)))), -2017f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(717f, 1068f, var_2.x, 587f)))), vec4<f32>(-229f, var_2.x, var_7.b, var_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1096f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - var_7.b), _wgslsmith_f_op_f32(func_2(Struct_1(var_7.a.a), var_1, var_7.a.a, vec4<bool>(var_3.x, false, false, var_4.d)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-291f))))))));
}

