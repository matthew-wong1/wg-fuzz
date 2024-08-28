struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: i32) -> u32 {
    global0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, u_input.d.x, ~u_input.d.x, 45301u) << ((_wgslsmith_add_vec4_u32(vec4<u32>(7416u, 0u, 18376u, 49541u), vec4<u32>(36335u, 10509u, global0.x, 1u)) | firstLeadingBit(vec4<u32>(u_input.d.x, global0.x, 18108u, 4294967295u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(18110u, u_input.d.x, u_input.d.x, 72505u) | vec4<u32>(u_input.d.x, 0u, u_input.d.x, global0.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.d.x), vec4<u32>(u_input.d.x, 1u, 14267u, 71553u)), global0.x ^ u_input.d.x, u_input.d.x, ~u_input.d.x), firstLeadingBit(~vec4<u32>(6699u, u_input.d.x, global0.x, u_input.d.x))));
    var var_0 = _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(i32(-1i) * -31606i, arg_2));
    return 17043u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_3) -> vec3<u32> {
    var var_0 = ~arg_2.c.a.yy;
    var var_1 = Struct_2(-53328i, vec2<i32>(0i, _wgslsmith_mod_i32(i32(-1i) * -65592i, 25366i)), vec2<f32>(_wgslsmith_f_op_f32(-1f), -2163f), -1i);
    let var_2 = ~(~vec3<u32>(4294967295u, global0.x, max(func_3(arg_2.c.a, var_1.c.x, u_input.b), 1u)));
    var var_3 = any(!vec4<bool>(any(vec3<bool>(true, true, true)), any(vec2<bool>(true, true)), !arg_0.x, false | arg_2.c.b.x));
    let var_4 = Struct_2(min(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(arg_2.c.a.xz, ~vec2<i32>(arg_2.b, -1i)), -arg_2.d), var_1.a), var_1.b >> (abs(vec2<u32>(~53213u, abs(1u))) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(var_1.b.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2133i, var_0.x), var_1.b)), select(abs(arg_2.b | 0i), firstTrailingBit(0i), (global0.x > 45971u) | arg_0.x)));
    return firstTrailingBit(countOneBits(~firstLeadingBit(global0.zyw)));
}

fn func_4(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = ~u_input.c.x;
    let var_1 = -firstTrailingBit(vec4<i32>(-1i, ~(var_0 ^ var_0), _wgslsmith_clamp_i32(abs(2956i), 25710i, u_input.a.x | -49260i), abs(select(1i, u_input.b, false))));
    let var_2 = select(~_wgslsmith_mod_vec4_u32(vec4<u32>(~global0.x, arg_0.x, ~4294967295u, arg_0.x), firstLeadingBit(vec4<u32>(1u, arg_0.x, 55314u, 38470u))), firstLeadingBit(vec4<u32>(19656u, 18319u, u_input.d.x, 0u)), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), true), false)));
    return Struct_2(_wgslsmith_mult_i32(-1i, -2147483647i), _wgslsmith_div_vec2_i32(max(var_1.wz ^ vec2<i32>(var_1.x, 54079i), vec2<i32>(0i << (global0.x % 32u), _wgslsmith_sub_i32(var_1.x, var_1.x))), u_input.a.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(760f, 1049f) - vec2<f32>(506f, -118f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(757f, -673f)))))), _wgslsmith_clamp_i32(u_input.b, -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 62599i, u_input.c.x), abs(var_1)), u_input.a.x));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(740f, 2475f, -626f, 1000f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-655f, -301f, -1017f, 1143f))))));
    let var_1 = func_4(select((func_2(vec2<bool>(false, false), vec2<u32>(u_input.d.x, global0.x), Struct_3(true, -6305i, Struct_1(vec4<i32>(0i, -41661i, -1i, u_input.a.x), vec3<bool>(false, true, false)), 2147483647i, u_input.d.x)) >> (~vec3<u32>(global0.x, 0u, 51575u) % vec3<u32>(32u))) >> (vec3<u32>(func_2(vec2<bool>(false, false), vec2<u32>(global0.x, global0.x), Struct_3(true, u_input.c.x, Struct_1(vec4<i32>(2147483647i, u_input.e, 0i, -55363i), vec3<bool>(false, false, true)), 1i, 78895u)).x, ~0u, 0u) % vec3<u32>(32u)), global0.xzz, !vec3<bool>(false, all(vec4<bool>(true, true, true, false)), true)));
    global0 = vec4<u32>(u_input.d.x, func_2(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<u32>(~1u, ~0u), Struct_3(false, _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.e, -27818i, u_input.b), 54526i), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.a, 35803i, 66385i, var_1.d), vec4<i32>(14543i, var_1.b.x, 0i, 2147483647i)), vec3<bool>(true, true, true)), 2147483647i, 4294967295u)).x, _wgslsmith_mult_u32(~(func_3(vec4<i32>(10049i, u_input.b, 5321i, var_1.b.x), 600f, u_input.a.x) | (global0.x << (global0.x % 32u))), max(u_input.d.x, ~108055u)), global0.x);
    let var_2 = Struct_2(abs(var_1.d), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)), _wgslsmith_div_i32(-91141i, 1894i << (global0.x % 32u))) >> (global0.yw % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1171f, -313f, false)), -1399f) + var_0.xz))), var_1.a);
    var var_3 = vec3<bool>(true, true, true);
    return Struct_1(~max(_wgslsmith_div_vec4_i32(vec4<i32>(-24722i, -1i, u_input.a.x, var_2.a), vec4<i32>(11295i, -60369i, 1i, var_2.d)), -vec4<i32>(var_2.d, u_input.b, var_1.d, 2147483647i)) >> (_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(1u, global0.x, 1u, 4294967295u) & vec4<u32>(u_input.d.x, 40437u, u_input.d.x, global0.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 1u, global0.x, 10948u), vec4<u32>(30401u, 0u, u_input.d.x, 0u))) % vec4<u32>(32u)), select(vec3<bool>((1u != u_input.d.x) & false, true, false), select(vec3<bool>(!var_3.x, var_3.x, false | var_3.x), select(select(vec3<bool>(true, var_3.x, var_3.x), vec3<bool>(var_3.x, false, true), vec3<bool>(false, true, false)), !vec3<bool>(var_3.x, false, true), false), vec3<bool>(!var_3.x, false, -336f >= var_2.c.x)), any(select(!var_3.yy, vec2<bool>(false, var_3.x), var_3.x))));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = vec2<bool>(select((arg_1.a && true) | !any(arg_2), any(vec2<bool>(arg_0 && arg_2.x, true)), !all(arg_2)), arg_2.x);
    global0 = vec4<u32>(1u, ~global0.x, (arg_1.e ^ ~(~global0.x)) ^ _wgslsmith_sub_u32(u_input.d.x, max(firstTrailingBit(global0.x), u_input.d.x)), arg_1.e);
    global0 = ~_wgslsmith_add_vec4_u32(~abs(vec4<u32>(1u, arg_1.e, arg_1.e, u_input.d.x)), vec4<u32>(1u >> (arg_1.e % 32u), _wgslsmith_clamp_u32(0u, 1u, arg_1.e), 0u, ~arg_1.e)) ^ ~(~(~vec4<u32>(arg_1.e, 71074u, 0u, global0.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-205f - 2904f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(280f, 672f) - _wgslsmith_f_op_f32(f32(-1f) * -227f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1115f, -947f))))), _wgslsmith_div_f32(-645f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-622f)) * _wgslsmith_f_op_f32(f32(-1f) * -1016f))), 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-332f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -926f), -224f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-691f)), _wgslsmith_f_op_f32(step(335f, 1412f)))), -539f) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1136f, -2309f, -1682f, 1306f) - vec4<f32>(-398f, -146f, -428f, -303f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1478f, -1325f, 435f, -863f))), arg_1.e > ~4294967295u))));
    var var_2 = firstTrailingBit(vec3<i32>(min(-_wgslsmith_mod_i32(1i, 29175i), 1i), 2147483647i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(-64175i, u_input.b), ~u_input.c.x), 47801i)));
    return Struct_1(vec4<i32>(firstTrailingBit(10896i), var_2.x, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(max(arg_1.c.a.xwx, arg_1.c.a.wwx), u_input.a), vec3<i32>(~0i, ~u_input.b, -36031i)), firstLeadingBit(arg_1.b) ^ 0i), vec3<bool>(arg_2.x, false, arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(false, Struct_3((true & any(vec4<bool>(false, true, true, false))) & true, 22920i, func_1(), ~(~(-u_input.e)), 1u), !select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true)) & false));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.ww, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1117f, func_4(~vec3<u32>(u_input.d.x, u_input.d.x, global0.x)).c.x)), u_input.d.x, -var_0.a.x, countOneBits(~vec4<u32>(global0.x, ~1u, func_3(var_0.a, -606f, 38210i), ~0u)));
}

