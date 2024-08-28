struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 32> = array<bool, 32>(true, false, false, true, true, false, true, false, true, false, false, false, false, false, false, true, false, true, true, true, false, true, true, true, false, true, true, false, true, true, false, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<bool> {
    global1 = array<bool, 32>();
    return select(!select(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), vec2<bool>(true, global1[_wgslsmith_index_u32(16663u, 32u)])), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, u_input.c >= u_input.c)), !(!(!vec2<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 32u)]))), any(vec4<bool>(global0.x, true, global0.x, true)) != !(!(global1[_wgslsmith_index_u32(u_input.c, 32u)] && global0.x)));
}

fn func_2() -> vec2<f32> {
    global0 = !func_3();
    var var_0 = _wgslsmith_mod_u32(1u, ~u_input.c) << (abs(u_input.c) % 32u);
    global1 = array<bool, 32>();
    var var_1 = vec4<bool>(!all(select(select(vec2<bool>(false, true), vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], true), true)), true, !any(!select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(0u, 32u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 32u)], false), true)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, ~u_input.c, max(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 12321u)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(0u, u_input.c)), ~vec2<u32>(1u, u_input.c)))), 32u)]);
    var var_2 = i32(-1i) * -1i;
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, 1f), 667f, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -460f))));
}

fn func_1() -> Struct_2 {
    var var_0 = select(vec4<i32>(~(-6756i), _wgslsmith_add_i32(~_wgslsmith_sub_i32(0i, 2147483647i), u_input.a), u_input.a, ~u_input.a), _wgslsmith_mult_vec4_i32(firstTrailingBit((vec4<i32>(0i, 5411i, u_input.a, -2147483647i) | vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.a)) << (vec4<u32>(u_input.c, 4294967295u, u_input.c, 4294967295u) % vec4<u32>(32u))), -(~(~vec4<i32>(u_input.b.x, 35183i, u_input.b.x, 22873i)))), !all(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 32u)]))));
    var_0 = ~_wgslsmith_clamp_vec4_i32(countOneBits(reverseBits(vec4<i32>(2147483647i, var_0.x, 1i, u_input.a)) | firstTrailingBit(vec4<i32>(-39142i, 1i, -1i, 1i))), ~vec4<i32>(-u_input.b.x, var_0.x, var_0.x ^ 0i, u_input.a), countOneBits(vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(u_input.b.x, 12834i, 1i), 14190i, var_0.x)));
    var var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1090f, -1180f)), _wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1365f, 1019f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1000f - 518f), _wgslsmith_f_op_f32(floor(552f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-323f, _wgslsmith_f_op_f32(step(1650f, 157f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1011f, -1370f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1456f, 1456f)))) + vec2<f32>(1f, 1f)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - _wgslsmith_f_op_f32(sign(1148f))), var_2.x, _wgslsmith_f_op_f32(sign(var_2.x)), var_2.x)), Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(global0.x, true), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, global0.x), false), true), _wgslsmith_mod_vec3_i32(u_input.b, u_input.b)), Struct_1(select(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(44123u, 32u)])), !select(vec2<bool>(false, false), vec2<bool>(global0.x, global0.x), false), global0.x), u_input.b));
    return Struct_2(vec3<bool>(true, (-315f < _wgslsmith_f_op_f32(min(var_2.x, var_2.x))) && var_3.b.a.x, var_3.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.x, 1048f))), -2195f)), Struct_1(!var_3.c.a, _wgslsmith_mult_vec3_i32(~abs(var_0.yzx), -select(vec3<i32>(u_input.a, 1i, var_3.b.b.x), var_3.c.b, true))), 539f, _wgslsmith_mod_u32(u_input.c, 65381u));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    global1 = array<bool, 32>();
    var var_0 = Struct_2(vec3<bool>(~min(arg_2.e, 98174u) >= min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 1172u, 6291u), vec4<u32>(4294967295u, 1u, 58099u, u_input.c)), ~arg_2.e), arg_0.a.x, true), arg_1.x, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * 1483f), -185f))), _wgslsmith_dot_vec3_u32(vec3<u32>(69570u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.e, 34639u, 4294967295u, 0u), ~vec4<u32>(30866u, u_input.c, u_input.c, u_input.c)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.e, u_input.c, u_input.c), abs(vec4<u32>(arg_2.e, 0u, 1u, 2879u)))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.e, 0u, 4294967295u), ~vec3<u32>(arg_2.e, u_input.c, arg_2.e)), u_input.c, ~1u)));
    var var_1 = func_1().c;
    var var_2 = Struct_2(!select(vec3<bool>(arg_0.a.x, true, select(true, true, global1[_wgslsmith_index_u32(4294967295u, 32u)])), !var_0.a, false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.b))))), Struct_1(func_1().c.a, vec3<i32>(arg_0.b.x, u_input.b.x, firstTrailingBit(~var_1.b.x))), _wgslsmith_f_op_f32(1000f * -322f), _wgslsmith_add_u32(firstTrailingBit(~abs(arg_2.e)), arg_2.e));
    var_0 = arg_2;
    return _wgslsmith_f_op_vec2_f32(func_2()).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(867f - _wgslsmith_f_op_f32(step(-1363f, -264f))))));
    let var_2 = _wgslsmith_sub_i32(u_input.b.x, u_input.a);
    var_0 = var_2;
    let var_3 = Struct_1(!select(select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 32u)]), vec2<bool>(global0.x, global0.x)), !select(vec2<bool>(global1[_wgslsmith_index_u32(108408u, 32u)], false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 32u)], false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec3<i32>(2147483647i, var_2, -4404i ^ (max(1664i, 33924i) ^ u_input.a)));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -814f), _wgslsmith_f_op_f32(f32(-1f) * -1016f), _wgslsmith_f_op_f32(func_4(var_3, _wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, 470f, 1000f)), func_1(), _wgslsmith_div_vec2_f32(vec2<f32>(-286f, -693f), vec2<f32>(589f, 1164f)))), _wgslsmith_f_op_f32(f32(-1f) * -1638f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(247f, 908f, 1032f, 755f) - vec4<f32>(1000f, -570f, -1149f, -319f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2083f, 571f, 876f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(393f, 689f, -1519f, -713f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1334f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1073f, 1078f) + -925f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(var_3, _wgslsmith_f_op_vec3_f32(vec3<f32>(779f, 852f, -2070f) - vec3<f32>(2584f, -813f, 527f)), func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(-117f, 594f) + vec2<f32>(620f, 101f)))) - func_1().b), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -378f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(~(~1u), u_input.c, _wgslsmith_clamp_u32(1u, ~u_input.c, 4294967295u))), ~(~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(u_input.c, u_input.c, 127836u)), vec3<u32>(u_input.c, 50171u, 0u) << (vec3<u32>(51344u, u_input.c, u_input.c) % vec3<u32>(32u)))), _wgslsmith_clamp_vec4_i32(select(-vec4<i32>(u_input.b.x, -2147483647i, var_2, 43603i), -vec4<i32>(var_3.b.x, var_3.b.x, var_2, u_input.a), !select(false, true, global1[_wgslsmith_index_u32(45241u, 32u)])), max(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, var_2, -3724i, u_input.b.x)), ~vec4<i32>(var_2, -15765i, -2147483647i, u_input.a)), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(1335i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(63132i, u_input.b.x, var_3.b.x, -1i), vec4<i32>(var_3.b.x, var_2, -1i, u_input.a)), min(vec4<i32>(u_input.a, 0i, 36368i, var_3.b.x), vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, 0i)))), -(abs(vec4<i32>(0i, -2147483647i, u_input.a, 1i)) >> (abs(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c)) % vec4<u32>(32u)))), ~vec4<i32>(firstTrailingBit(-2147483647i) & (-2870i << (u_input.c % 32u)), 0i, 0i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_2, 2147483647i, -7965i, var_3.b.x), ~vec4<i32>(var_3.b.x, var_2, var_3.b.x, -1i))));
}

