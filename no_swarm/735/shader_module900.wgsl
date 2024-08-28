struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<u32, 10> = array<u32, 10>(21136u, 4294967295u, 48548u, 0u, 1u, 18175u, 1u, 10446u, 16093u, 88990u);

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: u32) -> vec4<i32> {
    var var_0 = arg_0;
    global2 = Struct_1(var_0.a, ~_wgslsmith_mod_u32(min(u_input.a, u_input.a), global0.x), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(max(firstLeadingBit(vec4<i32>(arg_0.a.x, 1i, var_0.a.x, 1073i)), min(vec4<i32>(var_0.c, var_0.c, -32593i, -36494i), vec4<i32>(-15413i, arg_0.c, 2147483647i, global2.a.x))), -_wgslsmith_div_vec4_i32(vec4<i32>(53757i, -1168i, -2147483647i, arg_0.a.x), vec4<i32>(2147483647i, arg_0.a.x, -2147483647i, arg_0.c))), 2147483647i, i32(-1i) * -19090i), arg_0.d);
    var var_1 = global2.a.x;
    let var_2 = vec4<f32>(_wgslsmith_div_f32(439f, -623f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(943f)), _wgslsmith_f_op_f32(min(1131f, -937f))) + 1893f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -982f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)))), -1626f);
    var var_3 = arg_0;
    return vec4<i32>(max(0i, 0i), -(~_wgslsmith_mult_i32(var_3.a.x, -1i & var_3.a.x)), 1i, -1i);
}

fn func_2() -> bool {
    var var_0 = 2147483647i;
    let var_1 = vec3<i32>((i32(-1i) * -66448i) << (firstLeadingBit(reverseBits(4294967295u)) % 32u), 16866i, _wgslsmith_dot_vec4_i32(abs(~(-vec4<i32>(global2.a.x, -2147483647i, global2.c, 1i))), _wgslsmith_mult_vec4_i32(func_3(Struct_1(vec3<i32>(global2.c, global2.a.x, 8490i), 127815u, 0i, global2.d), true, ~global0.xyw, 1u), (vec4<i32>(global2.c, global2.c, global2.a.x, 29693i) << (vec4<u32>(0u, 8186u, u_input.a, global1[_wgslsmith_index_u32(global0.x, 10u)]) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.x, global2.c, global2.a.x, global2.a.x), vec4<i32>(-2147483647i, global2.a.x, 15015i, -41361i)))));
    let var_2 = select(~firstLeadingBit(global1[_wgslsmith_index_u32(71743u, 10u)]) > 13110u, any(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), -20813i <= ~(~var_1.x)) | false;
    global2 = Struct_1(vec3<i32>(-(~global2.a.x) ^ select(_wgslsmith_mult_i32(-2147483647i, -1i), 0i, global2.b != 31599u), ~var_1.x, ~(-2147483647i)), 1u, global2.c & _wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(-30846i, 12260i)), ~var_1.zx & var_1.zx), countOneBits(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, global0.x, 1u), vec3<u32>(u_input.a, 1u, global2.d.x))), 24166u)));
    let var_3 = vec2<bool>(true, !(!var_2));
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = vec3<u32>(135953u, firstTrailingBit(_wgslsmith_dot_vec3_u32(~global0.yzx, ~vec3<u32>(arg_1.b, 51522u, u_input.a))), _wgslsmith_sub_u32(58540u, 24818u) ^ global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.d.x, global0.x), 10u)]) >> (_wgslsmith_clamp_vec3_u32(global0.zyy, vec3<u32>(0u, ~_wgslsmith_clamp_u32(1u, 5516u, global1[_wgslsmith_index_u32(arg_1.b, 10u)]), _wgslsmith_div_u32(_wgslsmith_div_u32(1u, 4294967295u), abs(4294967295u))), ~global0.wzw) % vec3<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, ~1i, _wgslsmith_div_i32(1i, arg_1.c)) << (~countOneBits(global0.yzx) % vec3<u32>(32u)), arg_1.a, countOneBits(reverseBits(arg_2.a))), countOneBits(~(~abs(12300u))), _wgslsmith_sub_i32(-2147483647i, arg_2.a.x | (-global2.a.x & -38898i)), vec2<u32>(var_0.x, 56421u));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -326f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f - 433f)), _wgslsmith_div_f32(-1687f, 1f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1741f, -1000f, -1136f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-849f, 642f, -140f), vec3<f32>(159f, -695f, 1000f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, -2945f, 322f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(887f, 1170f, -451f))))));
    var var_3 = !any(select(arg_0.xx, vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, arg_0.x))) || true;
    var var_4 = Struct_1(_wgslsmith_div_vec3_i32(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.a.x, -37786i, 0i), firstTrailingBit(vec3<i32>(arg_2.a.x, -109666i, arg_1.c)))), (select(global2.a, vec3<i32>(arg_2.c, global2.c, arg_1.c), vec3<bool>(false, true, true)) ^ var_1.a) ^ global2.a), arg_1.d.x, ~(global2.a.x << (~global2.b % 32u)) | -9473i, global2.d);
    return vec4<u32>(1519u, arg_1.d.x, ~(~101817u), select(~(~_wgslsmith_add_u32(arg_2.d.x, 1u)), global2.b, !all(select(arg_0.zx, vec2<bool>(true, true), vec2<bool>(arg_0.x, arg_0.x)))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    global0 = vec4<u32>(abs(global1[_wgslsmith_index_u32(0u, 10u)]), u_input.a, _wgslsmith_div_u32(_wgslsmith_mod_u32(global0.x, _wgslsmith_mult_u32(44993u, 0u & global2.d.x)), _wgslsmith_dot_vec2_u32(global2.d, firstLeadingBit(vec2<u32>(global2.d.x, 46186u)))), ~(_wgslsmith_add_u32(79599u & global2.d.x, arg_1.d.x | u_input.a) | arg_3));
    global0 = countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~4294967295u, _wgslsmith_mult_u32(1u | arg_3, ~0u), global0.x), func_4(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), func_2()), arg_1, arg_1)));
    let var_0 = _wgslsmith_f_op_f32(floor(1545f));
    var var_1 = Struct_1(vec3<i32>(-arg_2.x, 20990i, -2147483647i), 16638u << (0u % 32u), arg_1.c, max(vec2<u32>(arg_1.b, 1u), _wgslsmith_sub_vec2_u32(global2.d, vec2<u32>(1u, 1u))));
    var_1 = Struct_1(_wgslsmith_add_vec3_i32(arg_2, ~_wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, arg_1.c, arg_2.x), vec3<i32>(arg_1.c, arg_1.c, 0i))), select(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b, 4294967295u, global0.x, arg_3), vec4<u32>(global2.b, 25102u, var_1.d.x, 50420u)), select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 45177u, arg_1.b, global1[_wgslsmith_index_u32(4294967295u, 10u)]), vec4<u32>(arg_3, global1[_wgslsmith_index_u32(global0.x, 10u)], global2.b, var_1.b)), arg_3, true), all(vec4<bool>(true, true, true, true))) | ~(~(~global2.d.x)), 0i, vec2<u32>(~max(19058u, u_input.a), 0u));
    return _wgslsmith_mod_i32(select(_wgslsmith_clamp_i32(i32(-1i) * -2055i, 1i, arg_0), _wgslsmith_add_i32(1i, ~arg_1.a.x), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))), 1i ^ (max(-2147483647i, arg_1.a.x) >> (global0.x % 32u))) | -45972i;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> StorageBuffer {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(global2.a.x, 17230i, global2.c), global2.c), -arg_1.a.x ^ -45357i, arg_1.c), ~min(~0u, ~11438u) >> (~abs(~arg_3) % 32u), -(global2.a.x ^ _wgslsmith_div_i32(global2.a.x ^ -2147483647i, -43375i)), ~arg_1.d);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, -810f, 401f)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-906f, -1000f, 557f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1311f))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-723f - -1399f)))))));
    global0 = ~max(~_wgslsmith_div_vec4_u32(vec4<u32>(11011u, u_input.a, 1u, arg_3), vec4<u32>(0u, global2.b, 44889u, 4294967295u)) | ~abs(vec4<u32>(global0.x, arg_1.b, 75382u, 4294967295u)), ~vec4<u32>(~u_input.a, ~11445u, 0u, abs(24648u)));
    let var_2 = ~countOneBits(_wgslsmith_sub_vec2_u32(~var_0.d, ~vec2<u32>(arg_3, global0.x)));
    return StorageBuffer(2147483647i | (arg_0.x << (56023u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(-1f), true))), 1u << (reverseBits(var_2.x) % 32u), var_1.x, ~vec3<i32>(var_0.a.x, ~(-7163i), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec4<i32>(0i, global2.c, _wgslsmith_mult_i32(func_1(global2.c & global2.a.x, Struct_1(global2.a, global1[_wgslsmith_index_u32(4294967295u, 10u)], global2.c, global2.d), vec3<i32>(global2.c, 1i, -24474i), _wgslsmith_clamp_u32(0u, global0.x, 4294967295u)), _wgslsmith_sub_i32(global2.a.x, _wgslsmith_mod_i32(-2147483647i, 2147483647i))), global2.c), Struct_1(vec3<i32>(-reverseBits(global2.c), global2.a.x, global2.a.x), 4294967295u, abs(22967i), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(global1[_wgslsmith_index_u32(25873u, 10u)], 1u)), global0.zw ^ vec2<u32>(u_input.a, u_input.a)) | vec2<u32>(global0.x, 32957u >> (u_input.a % 32u))), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), vec3<bool>(false, func_2(), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true))), ~_wgslsmith_dot_vec2_u32(~global0.zw, countOneBits(~global2.d)));
}

