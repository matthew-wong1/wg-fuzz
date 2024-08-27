struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: Struct_2,
    e: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: bool,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(14430i, 1i, -51409i);

var<private> global1: i32 = 12390i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_5(arg_0.a, 1i, arg_1.x, _wgslsmith_f_op_f32(-arg_0.c) <= _wgslsmith_div_f32(-213f, -980f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(trunc(arg_0.d.x))) * _wgslsmith_f_op_f32(select(arg_0.c, arg_0.c, arg_1.x))))));
    global0 = vec3<i32>(-87692i, 0i, _wgslsmith_dot_vec3_i32(~(vec3<i32>(-2147483647i, -23705i, -40232i) | ~vec3<i32>(arg_2.x, -1i, 2147483647i)), vec3<i32>(-1i) * -arg_0.b.yww));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -398f))), arg_0.d.x))) + arg_0.d.ww);
    var var_2 = ~reverseBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0.a), vec2<u32>(var_0.a, u_input.a))) ^ _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(29795u, 0u), ~vec2<u32>(46392u, 1u)), select(vec2<u32>(1u, var_0.a), vec2<u32>(15493u, 31486u), arg_1) << (~vec2<u32>(4294967295u, arg_0.a) % vec2<u32>(32u))), vec2<u32>(u_input.a, 4294967295u));
    global0 = -_wgslsmith_div_vec3_i32(-min(arg_2, vec3<i32>(arg_3.x, -7082i, arg_3.x) >> (vec3<u32>(var_2.x, 1u, 0u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_add_i32(var_0.b, 0i | global0.x), firstTrailingBit(-2147483647i), _wgslsmith_clamp_i32(arg_0.b.x, arg_3.x, -9457i) & -1i));
    return vec4<f32>(-135f, _wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0.c)))) * _wgslsmith_f_op_f32(-830f - _wgslsmith_f_op_f32(sign(-534f)))))), var_0.e);
}

fn func_2(arg_0: bool) -> Struct_5 {
    let var_0 = false;
    var var_1 = Struct_2(_wgslsmith_mod_u32(30700u, firstLeadingBit(u_input.a)), vec4<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(30661i, global0.x), min(-9009i, 0i)) >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(15940u, u_input.a), countOneBits(u_input.a)) % 32u), ~(~global0.x), global0.x), 106f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(countOneBits(u_input.a), vec4<i32>(global0.x, 7036i, -29267i, global0.x) >> (vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) % vec4<u32>(32u)), -727f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1995f, -1371f, 523f, -224f) + vec4<f32>(-663f, -548f, -411f, -779f)), -global0.x), vec2<bool>(var_0, all(vec4<bool>(arg_0, false, false, true))), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 28509i, -47964i), vec3<i32>(global0.x, 0i, global0.x)), vec3<i32>(-52884i, 3325i, global0.x)), global0.xy & (vec2<i32>(-2147483647i, global0.x) & vec2<i32>(global0.x, 2147483647i)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1237f, -102f, 1845f, 1000f) * _wgslsmith_div_vec4_f32(vec4<f32>(501f, 666f, 200f, -1462f), vec4<f32>(547f, 127f, 735f, -689f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(2191f, -322f, -1095f, -1143f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -558f, 902f, 522f))))), 0i);
    var var_2 = _wgslsmith_f_op_f32(trunc(var_1.c));
    global0 = -max(select(min(~vec3<i32>(69090i, var_1.b.x, -2147483647i), var_1.b.yyx), abs(var_1.b.xzw), select(vec3<bool>(true, var_0, var_0), vec3<bool>(true, arg_0, true), vec3<bool>(var_0, false, false))), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -var_1.b.zxw, var_1.b.wwz));
    global1 = global0.x;
    return Struct_5(select(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, 11912u, u_input.a, 1u), vec4<u32>(var_1.a, 15055u, 40688u, 4139u)), 448u) | ~max(var_1.a, u_input.a), 90518u, false), -_wgslsmith_div_i32(~(22378i | global0.x), _wgslsmith_add_i32(~var_1.b.x, firstLeadingBit(42927i))), all(vec4<bool>(false, false, true, arg_0)), all(select(select(!vec4<bool>(var_0, arg_0, arg_0, var_0), !vec4<bool>(false, false, var_0, false), vec4<bool>(arg_0, false, arg_0, var_0)), select(!vec4<bool>(var_0, var_0, arg_0, arg_0), select(vec4<bool>(true, var_0, arg_0, var_0), vec4<bool>(false, arg_0, var_0, arg_0), false), !var_0), !(!vec4<bool>(arg_0, true, var_0, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - var_1.c))) + _wgslsmith_f_op_f32(-var_1.d.x)));
}

fn func_1(arg_0: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec3_u32(~(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, u_input.a)) << (vec3<u32>(~u_input.a, 1u, _wgslsmith_mod_u32(u_input.a, arg_0.a)) % vec3<u32>(32u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a) ^ reverseBits(vec3<u32>(4569u, arg_0.a, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 29508u) ^ vec3<u32>(u_input.a, arg_0.a, 14804u), ~vec3<u32>(arg_0.a, u_input.a, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.e) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.e)) - _wgslsmith_f_op_f32(f32(-1f) * -677f)));
    let var_2 = func_2(arg_0.a != u_input.a);
    global1 = global0.x;
    let var_3 = Struct_3(select(any(select(!vec3<bool>(arg_0.d, arg_0.d, arg_0.c), !vec3<bool>(var_2.d, false, var_2.d), vec3<bool>(true, false, true))), true, !(!(0i != arg_0.b))), Struct_2(arg_0.a, vec4<i32>(global0.x, countOneBits(~2147483647i), arg_0.b, _wgslsmith_mult_i32(global0.x, _wgslsmith_sub_i32(-1i, var_2.b))), _wgslsmith_f_op_f32(-1160f + -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, 315f, arg_0.e, 673f) + vec4<f32>(-731f, arg_0.e, 1187f, 1055f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(180f, arg_0.e, var_2.e, 1557f) * vec4<f32>(arg_0.e, var_2.e, 921f, -2542f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e, arg_0.e, arg_0.e, 251f), vec4<f32>(-1176f, arg_0.e, var_2.e, 1105f)))), global0.x));
    return Struct_3(true, var_3.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    global0 = min(min(vec3<i32>(1i, -32141i, max(~(-8388i), -arg_0.b.b.x)), min(~vec3<i32>(arg_2.b.b.x, arg_0.b.e, arg_2.b.b.x), -arg_2.b.b.yzx)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(0i, global0.x, global0.x), vec3<i32>(arg_2.b.b.x, 44923i, 0i)), firstTrailingBit(reverseBits(arg_0.b.b.zww))));
    let var_0 = vec3<bool>(any(vec3<bool>(all(select(vec3<bool>(arg_2.a, true, true), vec3<bool>(false, arg_2.a, true), arg_2.a)), arg_2.a | all(vec2<bool>(false, arg_0.a)), arg_2.b.d.x <= _wgslsmith_f_op_f32(f32(-1f) * -533f))), false, all(select(vec3<bool>(any(vec4<bool>(true, false, arg_0.a, arg_2.a)), true, arg_2.a), select(select(vec3<bool>(false, arg_2.a, true), vec3<bool>(false, arg_0.a, arg_2.a), arg_2.a), vec3<bool>(false, false, arg_2.a), !arg_0.a), true != !arg_0.a)));
    global0 = vec3<i32>(arg_2.b.e, ~(~1i), arg_0.b.e);
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(0u, u_input.a, 4294967295u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 4294967295u, 0u), vec4<u32>(18057u, 10190u, 40436u, 0u)) << (func_4(Struct_3(true, Struct_2(0u, vec4<i32>(1i, 0i, global0.x, global0.x), -113f, vec4<f32>(-1927f, -729f, 934f, 569f), 2147483647i)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-311f, -239f))), func_1(Struct_5(u_input.a, global0.x, false, true, -593f))) % 32u)));
    global1 = global0.x;
    var var_1 = Struct_1(!select(true, func_2(false).d, true), _wgslsmith_f_op_f32(283f * _wgslsmith_f_op_f32(max(1208f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-931f + -775f)))))), vec3<i32>(~global0.x, _wgslsmith_mult_i32(~0i, 21867i), func_2(true).b) >> (abs(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_0.x, 1570u), vec3<u32>(var_0.x, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, var_0.x), vec3<u32>(48707u, 4294967295u, 1u)))) % vec3<u32>(32u)), _wgslsmith_sub_i32(global0.x, func_1(Struct_5(func_1(Struct_5(var_0.x, 14711i, true, false, -203f)).b.a, abs(global0.x), any(vec4<bool>(true, true, true, false)), true, 516f)).b.b.x), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(global0.x, -55333i, 99941i, global0.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(0i, global0.x, global0.x, global0.x), func_1(Struct_5(4294967295u, global0.x, false, true, 1453f)).b.b)), vec4<i32>(_wgslsmith_clamp_i32(global0.x, 2147483647i, -38434i), ~global0.x, global0.x, 2147483647i) & (vec4<i32>(-1i) * -vec4<i32>(0i, global0.x, 1i, global0.x))));
    let var_2 = countOneBits(4294967295u);
    global0 = var_1.e.zww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(func_1(func_2(var_1.a)).b.d.xyy, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_1.b, var_1.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(-445f, -1000f, var_1.b) - vec3<f32>(var_1.b, -783f, var_1.b)))), vec3<f32>(_wgslsmith_f_op_f32(var_1.b + 3096f), var_1.b, var_1.b))), var_1.d, var_2, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.b))), i32(-1i) * -global0.x);
}

