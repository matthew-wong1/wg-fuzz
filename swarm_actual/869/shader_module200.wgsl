struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648));

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    return vec3<i32>(max(firstLeadingBit(~(-2147483647i)), 1i) << ((u_input.d.x | (0u >> (0u % 32u))) % 32u), _wgslsmith_clamp_i32(17636i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(46987i, global1.a, u_input.a), ~vec3<i32>(u_input.b.x, 30761i, global1.a), abs(u_input.b.yyy)), ~vec3<i32>(global1.a, global1.a, -2147483647i) << (select(vec3<u32>(27096u, 15212u, 4294967295u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), true) % vec3<u32>(32u))), u_input.c), -1i);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: vec3<i32>) -> u32 {
    return abs(u_input.d.x >> (countOneBits(_wgslsmith_clamp_u32(13023u, u_input.d.x, reverseBits(u_input.d.x))) % 32u));
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_2(vec4<u32>(4294967295u, u_input.d.x, _wgslsmith_mult_u32(~firstTrailingBit(1u), 0u), func_4(!(u_input.a >= u_input.a), vec3<bool>(true, u_input.d.x >= u_input.d.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -993f)), func_3())));
    var var_1 = -31994i;
    global2 = min(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), 10608u);
    let var_2 = Struct_2(vec4<u32>(var_0.a.x, 4294967295u >> (var_0.a.x % 32u), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, var_0.a.x, 0u, 1u)), var_0.a), u_input.d.x));
    var var_3 = _wgslsmith_sub_vec4_i32(-select(u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(1313i, -12504i, 15104i, u_input.b.x), u_input.b), true), vec4<i32>(global1.a, -40554i, 1i, countOneBits(~(u_input.c | -41903i))));
    return select(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(13015u), 33370u, func_4(select(false, false, true), vec3<bool>(true, true, true), vec2<f32>(-1507f, 792f), min(vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-2147483647i, global1.a, var_3.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(23001u, 0u, 1u, 67446u), vec4<u32>(var_0.a.x, 4294967295u, var_2.a.x, 0u))), ~var_0.a), vec4<u32>(var_0.a.x, var_2.a.x, 1u, 1u) >> (vec4<u32>(var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, u_input.d.x, var_0.a.x), abs(vec3<u32>(8128u, 21853u, 1u))), var_0.a.x, func_4(true, select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1228f, 532f)), select(vec3<i32>(1i, 0i, u_input.c), var_3.yzx, true))) % vec4<u32>(32u)), false);
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = 0u & ~_wgslsmith_dot_vec4_u32(func_2(), ~(~vec4<u32>(u_input.d.x, 61979u, 4294967295u, 4294967295u)));
    global0 = 1u;
    let var_0 = 714f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -321f)), _wgslsmith_f_op_f32(min(-2460f, _wgslsmith_f_op_f32(f32(-1f) * -562f))))), _wgslsmith_f_op_f32(round(1659f)), all(vec3<bool>(true, true, true))));
    let var_1 = 720i;
    var var_2 = -3013f;
    return Struct_2(~vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(1u, 0u)), u_input.d), firstLeadingBit(1u), u_input.d.x, ~_wgslsmith_sub_u32(u_input.d.x, u_input.d.x)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = ~select(~vec2<u32>(1u, u_input.d.x), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, 4294967295u, u_input.d.x), arg_0.a)), firstTrailingBit(vec2<u32>(u_input.d.x, u_input.d.x)) >> ((vec2<u32>(arg_0.a.x, arg_0.a.x) | arg_0.a.xw) % vec2<u32>(32u))), !vec2<bool>(arg_2, true));
    global0 = var_0.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-957f, -1034f)), -576f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-898f)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1341f * _wgslsmith_f_op_f32(f32(-1f) * -335f)), 765f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(494f - 989f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(f32(-1f) * -1508f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1169f, 794f, true)) * _wgslsmith_f_op_f32(f32(-1f) * -1653f)), -483f, 920f)));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(-arg_3, min(arg_3, firstLeadingBit(-u_input.b))), vec4<i32>(-1i, 29057i, ~countOneBits(0i), countOneBits(abs(global1.a))) & arg_3);
    let var_3 = arg_2;
    return !(!(!(!select(vec2<bool>(false, false), vec2<bool>(arg_2, false), vec2<bool>(arg_2, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mod_u32(0u, max(1u, 2540u));
    global0 = countOneBits(32510u);
    let var_0 = Struct_2(select(select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 33629u, 10754u, 4294967295u) >> (vec4<u32>(0u, 4294967295u, 83623u, u_input.d.x) % vec4<u32>(32u)), vec4<u32>(0u, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<u32>(abs(u_input.d.x), u_input.d.x & 46874u, 1u, 0u), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))), countOneBits(max(~vec4<u32>(u_input.d.x, u_input.d.x, 1u, 1u), select(vec4<u32>(4294967295u, 90303u, u_input.d.x, 1u), vec4<u32>(4294967295u, u_input.d.x, 1489u, u_input.d.x), true))), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))));
    var var_1 = func_5(func_1(firstTrailingBit(0i)), Struct_1(-45079i), true, vec4<i32>(global1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, -1i, 2147483647i, 2147483647i) ^ vec4<i32>(-8773i, global1.a, global1.a, u_input.b.x), vec4<i32>(_wgslsmith_div_i32(u_input.c, global1.a), 1i ^ global1.a, -global1.a, select(10710i, 35608i, true))), 1i, 1i));
    let var_2 = var_0;
    global0 = 10542u;
    var var_3 = vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, func_4(var_1.x, vec3<bool>(false, var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-485f, -1000f) - vec2<f32>(1055f, 1000f)), vec3<i32>(u_input.b.x, 39445i, u_input.c)), 8778u), 1u), min(u_input.d.x, 46803u), var_0.a.x);
    let var_4 = (i32(-1i) * -(~(-17837i))) & u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1316f, 1386f)), 157f, true)), -257f), -1870f);
}

