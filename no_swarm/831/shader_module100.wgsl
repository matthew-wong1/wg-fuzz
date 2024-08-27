struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: bool = true;

var<private> global2: array<vec2<i32>, 4>;

var<private> global3: array<Struct_3, 17>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<bool> {
    let var_0 = ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.x, 59807u, arg_1.x), ~vec4<u32>(2635u, arg_1.x, arg_1.x, arg_1.x)), vec4<u32>(81035u, ~50741u, _wgslsmith_div_u32(arg_1.x, 0u), arg_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, 0u, arg_1.x), vec4<u32>(4294967295u, arg_1.x, 3820u, arg_1.x)) << (vec4<u32>(0u, 1u, arg_1.x, arg_1.x) % vec4<u32>(32u))));
    var var_1 = global3[_wgslsmith_index_u32(var_0.x, 17u)];
    let var_2 = var_0.x;
    var var_3 = true;
    var var_4 = select(vec2<bool>(_wgslsmith_f_op_f32(max(519f, _wgslsmith_f_op_f32(f32(-1f) * -397f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(536f, 976f)))), !(!all(vec2<bool>(false, false)))), !vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), true);
    return !(!select(select(select(vec4<bool>(true, true, var_4.x, var_4.x), vec4<bool>(var_4.x, false, true, var_4.x), vec4<bool>(false, var_4.x, var_4.x, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, var_4.x, var_4.x, var_4.x)), vec4<bool>(true, all(vec2<bool>(var_4.x, false)), var_4.x | var_4.x, all(vec4<bool>(true, var_4.x, var_4.x, var_4.x))), any(select(vec2<bool>(true, var_4.x), vec2<bool>(false, true), vec2<bool>(true, false)))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    global1 = !(!(~_wgslsmith_sub_u32(90104u, 1u) >= select(1u, ~0u, true)));
    var var_0 = true;
    let var_1 = vec3<bool>(true, all(select(vec4<bool>(true, false, true, true), func_3(Struct_2(339f, vec2<f32>(-974f, -1239f), global2[_wgslsmith_index_u32(1u, 4u)]), ~vec2<u32>(61631u, 0u)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), any(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), func_3(Struct_2(-1467f, vec2<f32>(-1380f, -1750f), vec2<i32>(30424i, arg_0.x)), vec2<u32>(0u, 0u)).ywz, vec3<bool>(true, true, true))));
    let var_2 = Struct_4(Struct_1(vec2<bool>(all(select(vec3<bool>(var_1.x, var_1.x, false), var_1, true)), !(arg_0.x < arg_0.x)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-2147483647i, u_input.a.x, arg_0.x), vec3<i32>(arg_0.x, u_input.a.x, u_input.a.x)) | arg_0, select(vec4<bool>(arg_0.x > arg_0.x, any(var_1), any(vec2<bool>(true, var_1.x)), var_1.x), !vec4<bool>(true, false, var_1.x, false), !func_3(Struct_2(-1400f, vec2<f32>(243f, 1000f), global2[_wgslsmith_index_u32(59336u, 4u)]), vec2<u32>(8408u, 1u)))));
    let var_3 = abs(u_input.a.x);
    return global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(22135u, abs(12863u)), _wgslsmith_mult_u32(~4294967295u, ~4294967295u), ~(~1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(21976u, 4294967295u, 61053u), vec3<u32>(14426u, 42851u, 4294967295u))), vec4<u32>(1u << (max(1u, 0u) % 32u), ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 134u, 21983u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(~1u))), (1u << (max(~1u, _wgslsmith_clamp_u32(48678u, 6146u, 21136u)) % 32u)) >> (47857u % 32u), (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(29744u, 0u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 29478u)), firstTrailingBit(vec4<u32>(47162u, 4294967295u, 14994u, 4294967295u))) <= ~(~23334u)) || select(!select(true, false, var_1.x), false == var_2.a.c.x, !(!var_2.a.a.x))), 17u)];
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = !(!any(!(!arg_2.c)));
    var var_1 = firstLeadingBit(4294967295u);
    var var_2 = func_2((arg_2.b ^ ~vec3<i32>(-1i, 2147483647i, arg_1)) >> (~max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(1u, arg_0, arg_0)), abs(vec3<u32>(arg_0, arg_0, 49733u))) % vec3<u32>(32u)));
    global0 = all(vec4<bool>(!any(!vec4<bool>(false, var_0, true, true)), var_0, !var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, arg_2.b.x, arg_2.b.x) ^ vec4<i32>(var_2.a.c.x, arg_1, 2147483647i, 1i), vec4<i32>(-1i, -1i, arg_1, -9347i)) <= _wgslsmith_add_i32(max(1i, arg_2.b.x), ~arg_1)));
    global0 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 17>();
    let var_0 = _wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(1934i, -39136i, u_input.a.x, 14108i))), _wgslsmith_div_vec4_i32(u_input.a, firstTrailingBit(vec4<i32>(53729i, 0i, 1i, u_input.a.x))))), vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, -_wgslsmith_div_i32(-31373i, u_input.a.x)), 0i, abs(firstTrailingBit(_wgslsmith_div_i32(-30123i, u_input.a.x))), _wgslsmith_sub_i32((59076i ^ u_input.a.x) >> (select(11568u, 20082u, false) % 32u), _wgslsmith_clamp_i32(1i, -2147483647i, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))))));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(115276u, _wgslsmith_div_u32(31592u, ~abs(85334u))), select(~(func_1(1u, -7822i, Struct_1(vec2<bool>(false, false), vec3<i32>(-1i, 0i, var_0.x), vec4<bool>(true, true, false, false))) << (_wgslsmith_mod_u32(1u, 71789u) % 32u)), _wgslsmith_div_u32(1u, ~1u), all(vec4<bool>(true, true, true, true))), min(0u, max(countOneBits(1u), countOneBits(~39497u))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(188f, 1094f, false)))))) + _wgslsmith_f_op_f32(floor(432f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-224f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1617f, -792f)), -1167f, any(vec2<bool>(false, false))))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(833f, -886f)), 484f))));
    global1 = func_3(func_2(firstTrailingBit(var_0.yyw)).a, ~(~(~var_1.xz >> (firstLeadingBit(vec2<u32>(1u, 41241u)) % vec2<u32>(32u))))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2, 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), var_1, var_1.x, _wgslsmith_div_vec2_f32(vec2<f32>(-1686f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_2)), _wgslsmith_f_op_f32(-273f * 1374f), any(vec3<bool>(false, true, true))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, -427f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2, -297f), vec2<f32>(-1000f, 1000f), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, var_2)))));
}

