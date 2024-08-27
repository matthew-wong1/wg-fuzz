struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1431f, -1695f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: u32) -> bool {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(-1305f - global0.x)), global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, -1161f))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(trunc(global0.x))))), !vec2<bool>(!arg_0, arg_1))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -684f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + _wgslsmith_f_op_f32(-global0.x))))));
    let var_0 = _wgslsmith_mult_vec3_u32((vec3<u32>(1u, 1u, 1u) >> (~(~vec3<u32>(arg_2, arg_2, 1u)) % vec3<u32>(32u))) & vec3<u32>(~countOneBits(4294967295u), 4294967295u, ~arg_2), ~firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(148456u, 30162u, arg_2), vec3<u32>(20377u, 0u, 1u))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, -1227f), vec2<f32>(-989f, global0.x)))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, -579f), vec2<f32>(global0.x, -1011f), false)), vec2<f32>(global0.x, global0.x), !vec2<bool>(false, arg_1))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x))) - vec2<f32>(global0.x, -896f)))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * -1059f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) * vec2<f32>(global0.x, 799f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(366f, global0.x)) - vec2<f32>(461f, -562f)))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1598f, global0.x)))) + vec2<f32>(924f, _wgslsmith_f_op_f32(-global0.x))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(606f, -297f) * _wgslsmith_f_op_f32(max(1374f, global0.x))), -1000f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(trunc(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-690f, 395f) * 683f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, global0.x), vec2<f32>(940f, global0.x)))))), !arg_1)));
    return true;
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    var var_0 = ~12494i;
    let var_1 = _wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(~arg_0.e), 1u, arg_0.e, ~arg_0.e), countOneBits(vec4<u32>(min(abs(7411u), arg_0.e), _wgslsmith_div_u32(1u, _wgslsmith_sub_u32(arg_0.e, 8327u)), 0u, ~arg_0.e)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(1070f, -1029f, false)), -930f, arg_0.b);
    var var_3 = vec3<bool>(false, arg_0.a, arg_0.c.x);
    var_3 = !vec3<bool>(any(!select(arg_0.d.a, vec3<bool>(arg_0.c.x, var_3.x, arg_0.a), vec3<bool>(arg_0.a, var_3.x, true))), func_3(var_3.x, _wgslsmith_f_op_f32(step(arg_0.b, 410f)) <= _wgslsmith_f_op_f32(exp2(global0.x)), 0u), var_3.x);
    return Struct_4(vec4<i32>(-84i, i32(-1i) * -47874i, 56681i, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2147483647i), vec2<i32>(-56206i, u_input.a)))) ^ (select(vec4<i32>(u_input.b, u_input.b, u_input.a, -1i), vec4<i32>(u_input.b, u_input.a, 32339i, u_input.a) >> (vec4<u32>(arg_0.e, arg_0.e, var_1, arg_0.e) % vec4<u32>(32u)), any(vec4<bool>(var_3.x, false, true, var_3.x))) ^ abs(~vec4<i32>(-58827i, -12532i, u_input.a, u_input.b))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: f32, arg_3: vec2<i32>) -> vec2<f32> {
    var var_0 = Struct_3(false, _wgslsmith_f_op_f32(-arg_2), !vec2<bool>(_wgslsmith_f_op_f32(select(arg_2, arg_2, true)) >= _wgslsmith_f_op_f32(ceil(arg_2)), true | (u_input.a >= arg_0.a.x)), Struct_1(vec3<bool>(all(vec2<bool>(true, true)), true, false), vec4<bool>(all(vec3<bool>(false, true, true)), true, true, func_3(all(vec2<bool>(true, false)), true, arg_1.x))), _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(arg_1.x, 12711u), arg_1.x ^ 4294967295u, 1u, arg_1.x), ~select(vec4<u32>(arg_1.x, 46180u, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, arg_1.x), vec4<bool>(true, true, true, true))));
    var var_1 = ~(_wgslsmith_clamp_vec3_i32(arg_0.a.wwy, arg_0.a.xyw, vec3<i32>(u_input.a, 1133i, u_input.a) | vec3<i32>(21296i, -20364i, arg_3.x)) ^ -vec3<i32>(_wgslsmith_mod_i32(-1945i, u_input.a), -3662i, arg_3.x));
    let var_2 = Struct_3(!((true & (arg_1.x < arg_1.x)) || any(!vec3<bool>(true, var_0.d.b.x, true))), -1255f, !select(select(vec2<bool>(true, var_0.d.a.x), var_0.d.a.xz, vec2<bool>(false, var_0.a)), vec2<bool>(var_0.d.b.x, true), !(!vec2<bool>(var_0.d.a.x, false))), Struct_1(!select(select(vec3<bool>(var_0.d.a.x, var_0.c.x, true), vec3<bool>(false, var_0.a, false), var_0.d.b.x), var_0.d.a, select(var_0.d.b.yxy, vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<bool>(false, var_0.c.x, var_0.d.a.x))), vec4<bool>(any(vec3<bool>(var_0.c.x, var_0.a, var_0.c.x)), var_0.a, true, true)), _wgslsmith_sub_u32(var_0.e, ~(~reverseBits(arg_1.x))));
    var var_3 = !(true | (_wgslsmith_sub_i32(arg_0.a.x, _wgslsmith_dot_vec4_i32(arg_0.a, arg_0.a)) != reverseBits(abs(-2147483647i))));
    let var_4 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(~arg_1.x << (8759u % 32u), var_0.e, var_0.e), 1u), 23132u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1190f, arg_2) * vec2<f32>(arg_2, -844f)), vec2<f32>(_wgslsmith_f_op_f32(281f - 650f), -1794f)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1264f, 784f) - vec2<f32>(-950f, _wgslsmith_f_op_f32(select(-1618f, arg_0.b, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-394f, arg_0.b)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b)), vec2<f32>(_wgslsmith_f_op_f32(global0.x + arg_0.b), _wgslsmith_div_f32(-433f, global0.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(arg_0.b, -1860f), _wgslsmith_f_op_f32(round(1000f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -1249f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2491f, global0.x))))));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_2(arg_0), firstLeadingBit(~vec2<u32>(0u, 4294967295u)), _wgslsmith_div_f32(2968f, -1000f), vec2<i32>(u_input.a >> (69538u % 32u), _wgslsmith_add_i32(3576i, u_input.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1295f, global0.x), vec2<f32>(global0.x, 1551f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2534f, 278f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, global0.x))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, arg_0.b) + vec2<f32>(arg_0.b, -1553f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(897f, global0.x), vec2<f32>(-1439f, -1553f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1786f, global0.x) + vec2<f32>(global0.x, arg_0.b)))), (true & select(true, arg_0.d.b.x, arg_1.b.x)) || false)), true));
    let var_0 = all(vec2<bool>(~arg_0.e >= 40854u, arg_1.a.x));
    var var_1 = func_2(arg_0);
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x + arg_0.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.b, arg_0.b)) - -217f))))), global0.x);
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-669f, -537f) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-499f, global0.x), vec2<f32>(arg_1.b, -1032f), arg_0.b.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, 444f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1188f, arg_1.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_2.b))))));
    let var_0 = abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, countOneBits(~arg_1.e)), vec2<u32>(1u, firstLeadingBit(select(2058u, 37789u, arg_2.d.a.x))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.e, 26616u, 43217u, 1u), vec4<u32>(arg_2.e, 28022u, arg_1.e, arg_2.e)), arg_1.e) << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.e, 30113u), vec2<u32>(arg_2.e, arg_2.e) << (vec2<u32>(29477u, arg_2.e) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_1 = !(_wgslsmith_f_op_f32(arg_2.b * 408f) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_2.b)), _wgslsmith_f_op_f32(round(-1192f)), arg_2.c.x)));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, arg_1.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(520f, -1350f))))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, -343f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.b, -176f))))))));
    let var_2 = var_0.x;
    return ~vec4<i32>(u_input.a, -1i, _wgslsmith_mult_i32(-1i ^ (-46481i & u_input.b), _wgslsmith_sub_i32(u_input.a, u_input.a)), _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(u_input.a, u_input.a))), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(41752i, 58392i), vec2<i32>(0i, 2147483647i), vec2<i32>(-57180i, 2147483647i)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec3<bool>) -> u32 {
    let var_0 = u_input.b;
    let var_1 = func_2(func_1(func_1(func_1(Struct_3(arg_3.x, global0.x, vec2<bool>(arg_3.x, arg_3.x), Struct_1(arg_3, vec4<bool>(arg_3.x, true, arg_3.x, true)), 4294967295u), func_1(Struct_3(true, -2856f, vec2<bool>(arg_3.x, arg_3.x), Struct_1(arg_3, vec4<bool>(arg_3.x, arg_3.x, false, false)), 0u), Struct_1(arg_3, vec4<bool>(arg_3.x, false, false, true))).d), Struct_1(!arg_3, select(vec4<bool>(arg_3.x, true, false, false), vec4<bool>(true, arg_3.x, false, false), vec4<bool>(arg_3.x, false, true, true)))), Struct_1(!vec3<bool>(arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, !arg_3.x, !arg_3.x, true))));
    var var_2 = Struct_1(vec3<bool>((global0.x != _wgslsmith_f_op_f32(610f + arg_0.x)) || (var_1.a.x > 1i), !any(arg_3), arg_3.x), select(select(!vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x), !vec4<bool>(arg_3.x, false, false, arg_3.x), true), vec4<bool>(false, !any(vec2<bool>(arg_3.x, arg_3.x)), false, arg_3.x), !vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true)));
    var_2 = func_1(func_1(func_1(Struct_3(var_2.a.x, 1677f, !var_2.a.zy, func_1(Struct_3(arg_3.x, 518f, var_2.a.xy, Struct_1(vec3<bool>(arg_3.x, arg_3.x, arg_3.x), var_2.b), 0u), Struct_1(var_2.b.yzx, vec4<bool>(true, var_2.b.x, arg_3.x, true))).d, select(0u, 4294967295u, true)), Struct_1(select(vec3<bool>(arg_3.x, true, false), vec3<bool>(var_2.b.x, true, false), arg_3.x), func_1(Struct_3(true, -868f, vec2<bool>(arg_3.x, true), Struct_1(arg_3, var_2.b), 0u), Struct_1(arg_3, var_2.b)).d.b)), Struct_1(vec3<bool>(any(vec3<bool>(var_2.b.x, var_2.b.x, true)), true, !var_2.a.x), var_2.b)), func_1(func_1(func_1(Struct_3(false, -812f, vec2<bool>(arg_3.x, false), Struct_1(vec3<bool>(true, arg_3.x, true), var_2.b), 21135u), func_1(Struct_3(arg_3.x, global0.x, vec2<bool>(arg_3.x, false), Struct_1(arg_3, vec4<bool>(var_2.b.x, true, var_2.b.x, false)), 4294967295u), Struct_1(var_2.a, vec4<bool>(arg_3.x, arg_3.x, true, var_2.a.x))).d), func_1(Struct_3(true, arg_0.x, var_2.b.xx, Struct_1(vec3<bool>(var_2.a.x, false, true), vec4<bool>(arg_3.x, arg_3.x, true, false)), 0u), func_1(Struct_3(true, -1043f, var_2.a.zx, Struct_1(vec3<bool>(true, false, var_2.a.x), var_2.b), 59149u), Struct_1(var_2.b.xwy, var_2.b)).d).d), Struct_1(select(vec3<bool>(false, false, false), var_2.a, true), select(!vec4<bool>(var_2.a.x, arg_3.x, true, var_2.a.x), vec4<bool>(var_2.b.x, false, arg_3.x, false), vec4<bool>(false, true, arg_3.x, false)))).d).d;
    var var_3 = func_2(func_1(Struct_3(!(arg_3.x && false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f * arg_0.x)), vec2<bool>(all(vec3<bool>(arg_3.x, false, arg_3.x)), false), Struct_1(vec3<bool>(var_2.a.x, var_2.a.x, var_2.b.x), var_2.b), 4294967295u), func_1(Struct_3(global0.x == arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -372f), vec2<bool>(var_2.a.x, true), func_1(Struct_3(false, global0.x, var_2.a.xy, Struct_1(var_2.a, vec4<bool>(true, false, false, arg_3.x)), 1u), Struct_1(vec3<bool>(true, false, true), var_2.b)).d, 0u), Struct_1(!var_2.a, var_2.b)).d));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 1347f) + _wgslsmith_f_op_f32(f32(-1f) * -854f)), -996f))), -(~vec4<i32>(_wgslsmith_mult_i32(u_input.a, -2147483647i), _wgslsmith_sub_i32(u_input.b, u_input.b), 0i, -33116i)), Struct_4(countOneBits(func_5(Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, false, true, true)), Struct_3(true, global0.x, vec2<bool>(false, true), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, true, true, false)), 70658u), func_1(Struct_3(false, global0.x, vec2<bool>(false, false), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, false, false)), 24691u), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, true, true)))))), select(vec3<bool>(all(func_1(Struct_3(false, 158f, vec2<bool>(false, true), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, false, true, false)), 0u), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, false, false, false))).d.b), any(vec4<bool>(false, false, false, true)) | all(vec3<bool>(true, true, false)), true || any(vec4<bool>(false, true, true, true))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, any(vec3<bool>(false, false, false)), true), vec3<bool>(true, global0.x < global0.x, select(false, true, true))), vec3<bool>(all(func_1(Struct_3(true, global0.x, vec2<bool>(false, false), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, false)), 44003u), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, true))).d.b.zyy), true, true)));
    global0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, 1242f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-2152f, global0.x) * vec2<f32>(-1472f, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1649f, -1313f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1179f, global0.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1339f, -1000f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-210f, -304f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1248f, -681f) - vec2<f32>(1000f, global0.x))))))));
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(1u)), ~max(firstTrailingBit(~vec4<u32>(20708u, 98630u, 13843u, 51902u)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 21865u, 51774u, 1u), vec4<u32>(4294967295u, 28657u, 67233u, 4294967295u), vec4<u32>(64733u, 90764u, 5962u, 4294967295u)), ~vec4<u32>(19088u, 0u, 15911u, 4895u))), ~vec3<i32>(_wgslsmith_mult_i32(u_input.b ^ 18797i, -2147483647i), (u_input.b & u_input.a) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-45743i, u_input.a, -30451i), vec3<i32>(u_input.b, 1i, u_input.b)), 45065i));
}

