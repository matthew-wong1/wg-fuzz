struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7>;

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> vec3<f32> {
    var var_0 = global1.b;
    var var_1 = Struct_5(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), !(!any(vec4<bool>(false, false, true, false)))), arg_0.b.c.b, u_input.a.x);
    global1 = arg_0.b.c;
    let var_2 = arg_0;
    let var_3 = Struct_4(min(firstLeadingBit(arg_1), _wgslsmith_sub_u32(arg_0.a, abs(0u))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.a)), _wgslsmith_f_op_f32(-189f - -672f)), _wgslsmith_add_i32(firstLeadingBit(-39886i) & var_2.b.c.d.x, 0i << (var_2.b.c.b % 32u)), var_2.b.c), reverseBits(4294967295u), arg_0.b.c.e);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, global1.a, var_3.d.b)) - _wgslsmith_f_op_vec3_f32(floor(arg_0.b.c.e.c)))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d.c) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-562f, -709f, var_2.d.b) - vec3<f32>(-576f, -404f, var_3.b.c.e.c.x))))));
}

fn func_2() -> Struct_2 {
    let var_0 = !vec3<bool>(true, (u_input.b.x << (global1.b % 32u)) > u_input.a.x, true);
    return Struct_2(-330f, ~global1.b << (84005u % 32u), ~0i, _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(-2147483647i, u_input.a.x, -16207i, global1.d.x)), select(vec4<i32>(u_input.a.x, global1.c, u_input.b.x, -1i), global1.d, vec4<bool>(var_0.x, var_0.x, true, var_0.x)) ^ (vec4<i32>(global1.d.x, 37114i, 1i, global1.c) >> (vec4<u32>(4294967295u, global1.b, 52567u, 15998u) % vec4<u32>(32u)))) << (~firstTrailingBit(vec4<u32>(33932u, global1.b, global1.b, global1.b)) % vec4<u32>(32u)), Struct_1(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~1u), 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(48535u, 7u)])) - 959f)), global1.a, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(global1.b, Struct_3(global1.e.c.yx, u_input.b.x, Struct_2(348f, 29514u, global1.c, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), global1.e)), 33402u, Struct_1(579f, -977f, vec3<f32>(global1.a, global1.a, -738f))), ~global1.b))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_5 {
    var var_0 = func_2();
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(21069u, Struct_3(vec2<f32>(1000f, var_0.a), ~var_0.d.x, Struct_2(1714f, global1.b, 1i, global1.d, Struct_1(global0[_wgslsmith_index_u32(arg_0.x, 7u)], 247f, var_0.e.c))), 1u, var_0.e), ~firstLeadingBit(global1.b) & 44667u)).x, ~arg_0.x, countOneBits(-22605i), select(_wgslsmith_add_vec4_i32(var_0.d, -vec4<i32>(0i, 1141i, var_0.d.x, 2147483647i)) | abs(_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(19854i, u_input.a.x, var_0.c, 2147483647i))), -u_input.b << (_wgslsmith_add_vec4_u32(~vec4<u32>(39146u, arg_0.x, arg_0.x, 7995u), vec4<u32>(global1.b, 1u, var_0.b, 0u)) % vec4<u32>(32u)), true), global1.e);
    global0 = array<f32, 7>();
    var var_1 = Struct_3(global1.e.c.xy, ~u_input.b.x, func_2());
    let var_2 = countOneBits(abs(global1.c));
    return Struct_5(vec3<bool>(true, true, true), var_1.c.b, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.x, var_0.c), abs(var_0.d.wz)));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: i32) -> u32 {
    global0 = array<f32, 7>();
    global1 = func_2();
    var var_0 = Struct_3(global1.e.c.xy, _wgslsmith_clamp_i32(0i, min(arg_2, u_input.b.x), _wgslsmith_div_i32((global1.d.x ^ 2147483647i) >> (~38450u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.c, 2147483647i, global1.d.x), select(global1.d.zyx, vec3<i32>(u_input.b.x, global1.c, -21886i), true)))), Struct_2(1865f, ~global1.b, -2147483647i, _wgslsmith_mult_vec4_i32(u_input.b, global1.d), global1.e));
    let var_1 = select(vec2<bool>(_wgslsmith_div_u32(var_0.c.b, 23274u & var_0.c.b) != (0u << (global1.b % 32u)), !(!(!arg_0.a.x))), func_1(~vec3<u32>(min(32731u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.b, 0u, var_0.c.b), vec3<u32>(4294967295u, 27236u, var_0.c.b)), 26805u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_2().e.c.xy))).a.yx, !(!arg_0.a.x));
    global1 = var_0.c;
    return select(abs(arg_0.b >> (1u % 32u)), countOneBits(abs(global1.b)) | 73344u, false);
}

fn func_5(arg_0: vec4<u32>, arg_1: f32, arg_2: u32) -> Struct_2 {
    let var_0 = arg_0.x < ~max(_wgslsmith_div_u32(~arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(31751u, 56275u, arg_2), vec3<u32>(9410u, arg_0.x, 0u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b, 4294967295u, arg_0.x), _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, global1.b, global1.b), arg_0.xxx)));
    var var_1 = u_input.b;
    global0 = array<f32, 7>();
    global0 = array<f32, 7>();
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-func_2().e.c.xx), u_input.b.x, func_2());
    return Struct_2(1029f, abs(~1u >> (~4294967295u % 32u)), -2147483647i, firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, 0i, var_2.c.d.x), vec4<i32>(var_1.x, var_1.x, 35514i, -2147483647i)) << (arg_0 % vec4<u32>(32u))) | var_2.c.d, Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(289f * 548f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.e.c - global1.e.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(vec4<u32>(24225u, ~func_4(func_1(vec3<u32>(global1.b, global1.b, 1u), global1.e.c.yy), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.b, 7u)]), 0i), ~global1.b, global1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(563f - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] - global0[_wgslsmith_index_u32(global1.b, 7u)]))))), ~1u);
    var var_0 = global1.d.x;
    var_0 = -_wgslsmith_mod_i32(16599i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a << (vec2<u32>(global1.b, global1.b) % vec2<u32>(32u)), vec2<i32>(2147483647i, u_input.b.x)), func_2().c));
    var var_1 = vec2<bool>(false, false);
    let var_2 = Struct_4(_wgslsmith_div_u32(global1.b, reverseBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 33834u, 73160u), _wgslsmith_add_vec3_u32(vec3<u32>(global1.b, global1.b, global1.b), vec3<u32>(4294967295u, global1.b, global1.b))))), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f + 645f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-937f)) + _wgslsmith_f_op_f32(f32(-1f) * -1324f))), -(~20325i), func_2()), ~(global1.b << (~(~global1.b) % 32u)), func_5(~vec4<u32>(global1.b, ~global1.b, global1.b, ~global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().e.a) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-486f))))), 4294967295u).e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.e.a, -1441f, -1092f, -154f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 7u)], -1732f, 1566f, -1274f))))), var_2.b.c.d.x);
}

