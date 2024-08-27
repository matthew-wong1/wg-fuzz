struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
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

var<private> global0: array<Struct_1, 2>;

var<private> global1: bool = false;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32) -> bool {
    var var_0 = Struct_2(firstTrailingBit(vec4<i32>(arg_2, ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 25711i, arg_2, arg_2), vec4<i32>(2147483647i, u_input.e.x, 1i, arg_2)), 2147483647i, ~arg_2)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(788f, -1360f))) * _wgslsmith_f_op_f32(115f * _wgslsmith_f_op_f32(ceil(-177f))))));
    global0 = array<Struct_1, 2>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-776f, -524f, 1007f) - vec3<f32>(-1846f, var_1, var_1)) * vec3<f32>(var_1, var_1, -648f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2447f, -422f, 150f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1, var_1, -719f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1068f, var_1, var_1))))), 958f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f) + _wgslsmith_f_op_f32(-var_1)))));
    let var_3 = u_input.b;
    return !all(vec2<bool>(true, true));
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = u_input.b;
    let var_1 = !(!vec2<bool>(all(vec2<bool>(true, true)), !func_3(vec2<u32>(u_input.c, 4294967295u), vec3<u32>(1u, 4686u, u_input.a), 2147483647i)));
    var var_2 = Struct_2(~min(~(~vec4<i32>(-60604i, var_0, 1i, 0i)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, u_input.e.x, u_input.b), vec4<i32>(2147483647i, -30185i, 1i, 1i)), ~vec4<i32>(var_0, 1i, -28708i, u_input.e.x))));
    let var_3 = select(0u, abs(u_input.c), false);
    let var_4 = _wgslsmith_add_vec4_u32(~vec4<u32>(~var_3, firstTrailingBit(1u), 1u >> (u_input.c % 32u), ~var_3), ~(~reverseBits(vec4<u32>(var_3, 4294967295u, 26590u, u_input.d)))) | ~countOneBits(vec4<u32>(u_input.d, var_3, ~u_input.c, ~u_input.d));
    return var_2.a.x;
}

fn func_4(arg_0: u32, arg_1: i32) -> f32 {
    var var_0 = true;
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(34963u, 0u), vec2<bool>(true, true)), vec2<u32>(u_input.d, 12137u << (_wgslsmith_sub_u32(1u, u_input.d) % 32u))), firstLeadingBit(select(vec2<u32>(u_input.a, u_input.c), _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 20480u), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 20932u), vec2<u32>(2985u, 4294967295u))), true)));
    var var_2 = ~(-2147483647i);
    let var_3 = _wgslsmith_dot_vec3_u32(abs(~select(select(vec3<u32>(0u, 1u, 83292u), vec3<u32>(var_1.x, 4294967295u, 18481u), vec3<bool>(false, true, true)), vec3<u32>(var_1.x, 42012u, 54665u), vec3<bool>(true, true, true))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(_wgslsmith_mult_u32(38709u, arg_0), _wgslsmith_div_u32(u_input.a, 0u), u_input.c)), ~countOneBits(countOneBits(vec3<u32>(u_input.c, var_1.x, 0u)))));
    var var_4 = u_input.e.x << (max(_wgslsmith_clamp_u32(_wgslsmith_add_u32(5387u, var_1.x) & ~var_3, max(~u_input.d, _wgslsmith_div_u32(4294967295u, 4294967295u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, 1u), 8961u)), min(~4294967295u, ~(~var_3))) % 32u);
    return -694f;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: f32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(func_4(0u, min(func_2(_wgslsmith_f_op_f32(abs(arg_0.x))), 4967i << (u_input.c % 32u))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.d, 2u)];
    global1 = func_3(abs(vec2<u32>(98602u, ~4294967295u)), ~firstLeadingBit(vec3<u32>(var_1.b, u_input.c, var_1.b) << (~vec3<u32>(var_1.b, var_1.b, var_1.b) % vec3<u32>(32u))), _wgslsmith_mult_i32(2147483647i, u_input.e.x));
    let var_2 = (~select(vec3<u32>(var_1.b, var_1.b, 1u) >> (vec3<u32>(19158u, var_1.b, 0u) % vec3<u32>(32u)), vec3<u32>(4294967295u, 37592u, 21972u) >> (vec3<u32>(var_1.b, 49078u, u_input.c) % vec3<u32>(32u)), var_1.c.xww) | ~abs(~vec3<u32>(u_input.d, 1u, var_1.b))) << (vec3<u32>(1u, var_1.b, ~1u ^ _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.a, var_1.b)), _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_1.b), vec2<u32>(u_input.a, u_input.a)))) % vec3<u32>(32u));
    global1 = var_1.c.x;
    return Struct_2(~(-vec4<i32>(-1i, ~(-2147483647i), u_input.b, 2131i)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) + _wgslsmith_f_op_f32(-arg_1.x)) * -628f))), 30425u, select(!(!(!vec4<bool>(arg_2.x, true, true, false))), select(select(select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, false), vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x)), vec4<bool>(arg_2.x, false, false, true), true), !vec4<bool>(true, true, arg_2.x, false), u_input.b == 2147483647i), vec4<bool>(false, false, arg_2.x, true)));
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32((vec4<u32>(36632u, u_input.d, var_0.b, u_input.d) << (vec4<u32>(var_0.b, 4294967295u, u_input.c, u_input.a) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(0u, 0u, 46891u, 4294967295u)) % vec4<u32>(32u)), reverseBits(min(vec4<u32>(u_input.a, 43396u, 90033u, u_input.c), vec4<u32>(36854u, u_input.c, 20786u, u_input.d)))), _wgslsmith_add_vec4_u32(~(~vec4<u32>(var_0.b, u_input.c, 84766u, var_0.b)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, var_0.b, 22714u, u_input.d), vec4<u32>(40677u, var_0.b, var_0.b, 1u)))) & reverseBits(_wgslsmith_mult_vec4_u32((vec4<u32>(1u, 15040u, 54917u, u_input.a) >> (vec4<u32>(var_0.b, 1u, 0u, u_input.a) % vec4<u32>(32u))) ^ vec4<u32>(u_input.c, 1u, var_0.b, u_input.c), ~reverseBits(vec4<u32>(var_0.b, 3671u, u_input.d, var_0.b))));
    let var_2 = max(0i, 22685i);
    global0 = array<Struct_1, 2>();
    let var_3 = Struct_1(268f, u_input.a, var_0.c);
    return Struct_2(arg_0.a);
}

fn func_6(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = true | all(!vec4<bool>(true, any(vec4<bool>(false, false, true, false)), all(vec4<bool>(false, true, false, false)), all(vec4<bool>(true, true, false, false))));
    let var_1 = global0[_wgslsmith_index_u32(~select(firstLeadingBit(~20717u), firstLeadingBit(reverseBits(~63813u)), true), 2u)];
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d, u_input.d), 2u)];
    var var_3 = firstLeadingBit(~arg_1.a);
    let var_4 = max(vec2<i32>(u_input.b, u_input.b) | vec2<i32>(-20834i, -(~arg_1.a.x)), countOneBits(u_input.e));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_u32(func_6(_wgslsmith_f_op_f32(-244f - _wgslsmith_f_op_f32(trunc(215f))), func_5(func_1(vec4<f32>(-188f, -230f, 203f, -1351f), vec3<bool>(false, true, false), 1526f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, -2906f, -170f), vec3<f32>(-669f, 1000f, -489f))), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), ~(~firstLeadingBit(u_input.c)));
    global1 = false;
    var var_1 = global0[_wgslsmith_index_u32(min(~(~(~var_0)), 1u), 2u)];
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f - _wgslsmith_f_op_f32(select(-109f, _wgslsmith_f_op_f32(max(-378f, var_1.a)), !var_1.c.x)))), 2035f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), -165f)));
    var var_3 = global0[_wgslsmith_index_u32(64898u, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.a)) * _wgslsmith_f_op_f32(min(var_1.a, var_1.a))))), -246f, min(_wgslsmith_dot_vec3_u32(vec3<u32>(123653u, 4294967295u, var_0), vec3<u32>(8239u, 99565u, var_0)) | 92522u, ~abs(114990u)), vec2<f32>(-658f, var_2.x), _wgslsmith_f_op_f32(max(-1497f, var_2.x)));
}

