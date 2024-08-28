struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 13>;

var<private> global1: array<f32, 22> = array<f32, 22>(894f, 1000f, 1122f, 2392f, -1494f, -428f, -1456f, -1353f, -948f, -262f, 222f, 1732f, -1000f, -1005f, -401f, 726f, -357f, 1127f, 1053f, 1000f, -295f, 1599f);

var<private> global2: array<vec3<f32>, 20>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_3 {
    global1 = array<f32, 22>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(15875u, 20u)]);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~18965u), abs(34416u)), 13u)];
    var var_2 = Struct_3(reverseBits(0u));
    global0 = array<Struct_5, 13>();
    return var_1.b;
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global1 = array<f32, 22>();
    return select(vec3<bool>(true, select(true, true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), true), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), true);
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: vec3<f32>) -> f32 {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-969f))))))));
    let var_2 = arg_2.xy;
    global0 = array<Struct_5, 13>();
    let var_3 = Struct_1(-687f, all(func_3(-557f).xy));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.b.a, 22u)] - -1692f)), arg_3.x))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: i32) -> Struct_5 {
    let var_0 = vec4<bool>(true, true, true, true);
    var var_1 = Struct_5(false, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, arg_1.x) * 369f) + _wgslsmith_f_op_f32(-1000f * arg_1.x)), !all(!vec2<bool>(true, var_0.x))), 40808i);
    var var_2 = 588f == _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(9923u, 22u)] + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_4(Struct_5(false, var_1.b, u_input.b), func_3(arg_1.x), !vec3<bool>(var_1.a, true, true), _wgslsmith_div_vec3_f32(arg_1, vec3<f32>(arg_1.x, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)])))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-117f, arg_1.x)));
    var_2 = true;
    return global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_0), u_input.c) | _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.e.x, 0u), var_1.b.a)) >> (~52550u % 32u), 13u)];
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1) -> Struct_2 {
    var var_0 = select(u_input.e, vec4<u32>(abs(~select(4294967295u, 0u, arg_1.b)), arg_0.b.a, ~(~1u), 1u), !(!arg_0.a));
    var_0 = vec4<u32>(~(~u_input.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(u_input.c & u_input.c, firstTrailingBit(vec2<u32>(1u, 8575u)), all(vec4<bool>(arg_1.b, true, true, arg_0.a))), _wgslsmith_div_vec2_u32(~u_input.e.zx, _wgslsmith_sub_vec2_u32(var_0.xz, u_input.e.ww))), max(var_0.yz, vec2<u32>(_wgslsmith_div_u32(4294967295u, var_0.x), _wgslsmith_sub_u32(u_input.a, u_input.e.x)))), var_0.x, arg_0.b.a);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(36926u, 22u)]))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(229f, global1[_wgslsmith_index_u32(arg_0.b.a, 22u)]), vec2<f32>(-124f, 638f))), vec2<bool>(arg_0.a, arg_1.b)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, arg_1.a)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a, global1[_wgslsmith_index_u32(0u, 22u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-506f, arg_1.a) * vec2<f32>(arg_1.a, arg_1.a)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 22u)])))), global1[_wgslsmith_index_u32(4294967295u, 22u)])), !func_3(_wgslsmith_f_op_f32(f32(-1f) * -532f)).zx));
    let var_2 = Struct_3(func_1(arg_0.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(sign(1417f)), _wgslsmith_f_op_f32(720f - -1033f)) * vec3<f32>(-438f, _wgslsmith_f_op_f32(350f * global1[_wgslsmith_index_u32(arg_0.b.a, 22u)]), _wgslsmith_f_op_f32(170f * arg_1.a))), 1i).b.a);
    global0 = array<Struct_5, 13>();
    return Struct_2(Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1063f)), _wgslsmith_f_op_f32(var_1.x * -299f)))), !any(!vec3<bool>(arg_1.b, false, true))));
}

fn func_6(arg_0: Struct_5, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = max(vec3<i32>(arg_0.c << (arg_0.b.a % 32u), 0i, -arg_0.c), vec3<i32>(-1i) * -(_wgslsmith_clamp_vec3_i32(vec3<i32>(-16529i, arg_0.c, -32593i), vec3<i32>(0i, -2147483647i, arg_0.c), vec3<i32>(arg_0.c, arg_0.c, -3007i)) << (min(vec3<u32>(0u, u_input.c.x, 4294967295u), u_input.e.wzw) % vec3<u32>(32u))));
    let var_1 = true;
    global0 = array<Struct_5, 13>();
    var var_2 = max(vec3<i32>(_wgslsmith_mult_i32(u_input.b, 0i) ^ 1i, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, 2147483647i, -1i, 35934i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.c, 77374i, var_0.x, -6437i), vec4<i32>(var_0.x, u_input.b, var_0.x, u_input.b))), 0i), -max(-vec3<i32>(-11905i, 10546i, u_input.b), -vec3<i32>(23173i, 0i, -16107i))) >> (vec3<u32>(u_input.a, arg_2.x, ~arg_0.b.a) % vec3<u32>(32u));
    var var_3 = select(~(-73581i), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(~1i, _wgslsmith_add_i32(var_2.x, var_0.x))), !any(select(vec2<bool>(arg_0.a, false), vec2<bool>(false, var_1), vec2<bool>(arg_0.a, true)))) >> (~(~(~u_input.a) << (56971u % 32u)) % 32u);
    return arg_0.b;
}

fn func_7(arg_0: f32, arg_1: Struct_3, arg_2: vec2<u32>) -> Struct_1 {
    global2 = array<vec3<f32>, 20>();
    let var_0 = ~_wgslsmith_mult_vec4_i32(-_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(0i, -2147483647i, 2147483647i, u_input.b)), firstTrailingBit(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(9461i, u_input.b, u_input.b, 0i), vec4<i32>(u_input.b, u_input.b, -9364i, u_input.b)), countOneBits(vec4<i32>(-26241i, u_input.b, -2147483647i, -55939i)))));
    global1 = array<f32, 22>();
    global2 = array<vec3<f32>, 20>();
    global1 = array<f32, 22>();
    return func_5(global0[_wgslsmith_index_u32(func_2(192f, true).a, 13u)], func_5(global0[_wgslsmith_index_u32(~arg_1.a, 13u)], func_5(func_1(arg_2.x, _wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(0u, 20u)] * global2[_wgslsmith_index_u32(33476u, 20u)]), -1i), func_5(Struct_5(true, Struct_3(4294967295u), var_0.x), Struct_1(global1[_wgslsmith_index_u32(arg_2.x, 22u)], true)).a).a).a).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_7(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(11705u, 22u)] * global1[_wgslsmith_index_u32(firstTrailingBit(0u), 22u)]))), func_6(global0[_wgslsmith_index_u32(~u_input.c.x, 13u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(44500u, 22u)] + -1000f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 22u)] * -1000f), true)), u_input.e.wxz ^ reverseBits(vec3<u32>(1u, u_input.d, u_input.d)), func_5(func_1(1u, vec3<f32>(global1[_wgslsmith_index_u32(86935u, 22u)], -667f, global1[_wgslsmith_index_u32(u_input.c.x, 22u)]), 11797i), Struct_1(142f, false))), max(vec2<u32>(67001u, 7064u), vec2<u32>(max(0u, 24906u), u_input.d ^ u_input.d))));
    var var_1 = 4291i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.a, global1[_wgslsmith_index_u32(u_input.c.x, 22u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(1035f, 1218f) + vec2<f32>(-676f, var_0.a.a)))))))));
    let var_3 = vec2<bool>(false | !var_0.a.b, any(vec2<bool>(true, true)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(157f)) + -600f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-484f, global1[_wgslsmith_index_u32(77053u, 22u)]) * 1181f)) * _wgslsmith_f_op_f32(-var_0.a.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_0.a.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-555f - var_4)))) * 637f));
}

