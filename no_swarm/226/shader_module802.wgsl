struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false));

var<private> global3: vec3<f32> = vec3<f32>(-1383f, -433f, -413f);

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))), -504f, !(!any(!global2[_wgslsmith_index_u32(4294967295u, 3u)]))));
    var var_1 = arg_1;
    global3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.b.wwz)));
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(sign(var_1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f), -1917f))), _wgslsmith_f_op_vec4_f32(arg_2.a.b - vec4<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x - -833f), _wgslsmith_f_op_f32(sign(1520f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + global3.x)))), 31069i, global1.d, _wgslsmith_mod_vec4_u32(vec4<u32>(global1.e.x, _wgslsmith_div_u32(~5373u, u_input.c.x), _wgslsmith_add_u32(arg_2.b.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global1.e.yy)), _wgslsmith_mult_u32(~arg_1.e.x, abs(arg_3))), ~vec4<u32>(arg_1.e.x, ~62165u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(66927u, u_input.d, 26589u, 4294967295u), u_input.c))));
    global1 = arg_2.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2126f * var_1.b.x)))));
}

fn func_3(arg_0: vec3<f32>) -> vec2<i32> {
    var var_0 = arg_0.yy;
    global1 = Struct_1(138f, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-351f, _wgslsmith_f_op_f32(f32(-1f) * -756f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-334f, global1.b.x, false))), var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(-537f, _wgslsmith_f_op_f32(global1.b.x + global1.a), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, true)), -182f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 223f, -1362f, -1843f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 1539f, 1370f, 200f))))))), _wgslsmith_mult_i32(~(-54267i), _wgslsmith_dot_vec2_i32(firstLeadingBit(global1.d.yy), abs(-global1.d.yy))), -_wgslsmith_clamp_vec3_i32(firstLeadingBit(~global1.d), min(-vec3<i32>(-22377i, global1.c, 2591i), _wgslsmith_div_vec3_i32(global1.d, global1.d)), -firstTrailingBit(global1.d)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(~6053u, abs(60559u), ~global1.e.x, 73625u), _wgslsmith_mult_vec4_u32(~u_input.c, global1.e))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-arg_0.x), vec4<f32>(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-994f, var_0.x) * -434f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.x)) * _wgslsmith_div_f32(-214f, 1000f)) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1670f, arg_0.x, true)))) - _wgslsmith_f_op_f32(-arg_0.x))), u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(~(1i >> (global1.e.x % 32u)), -global1.c, u_input.b), global1.d), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(global1.e), vec4<u32>(26181u, global1.e.x, 4294967295u, 29367u)), global1.e) << (vec4<u32>(u_input.c.x, select(~59212u, 4294967295u, true), ~_wgslsmith_mod_u32(0u, global1.e.x), 18354u) % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_f32(min(-1663f, arg_0.x));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) * global1.b.wyy))), _wgslsmith_f_op_vec3_f32(abs(global1.b.yyz)))));
    return vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-32860i, 60290i), vec2<i32>(75726i, global1.c)), global1.d.yy), ~vec2<i32>(u_input.b, u_input.a) ^ vec2<i32>(5790i, -1i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    global4 = arg_0.b.x;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.x - -421f)))), all(global2[_wgslsmith_index_u32(8188u, 3u)]))), arg_0.b, global1.c, _wgslsmith_sub_vec3_i32(vec3<i32>(select(1i, -2147483647i | u_input.a, true), arg_1.a.x, ~(-1i)), abs(vec3<i32>(u_input.a, arg_0.c, arg_0.d.x)) & (-vec3<i32>(23917i, 2147483647i, global1.c) << (vec3<u32>(u_input.c.x, 96140u, 45515u) % vec3<u32>(32u)))), ~arg_0.e);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.b.x + -320f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a, -1209f, global3.x, global3.x), _wgslsmith_f_op_vec4_f32(floor(var_0.b))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b))))), 2147483647i, _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_0.d.x, 27617i), 1i, arg_0.c), -(global1.d ^ vec3<i32>(arg_1.a.x, -26015i, 66046i))), ~(vec4<u32>(arg_0.e.x, 4294967295u, var_0.e.x, 1u) << (abs(arg_0.e) % vec4<u32>(32u)))), arg_0, -336f);
    let var_2 = firstTrailingBit(var_0.e.xxw);
    let var_3 = !(!select(vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(true, var_1.c >= global3.x), select(false, false, true) & select(true, true, true)));
    return 1046f;
}

fn func_1() -> Struct_1 {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-565f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(486f, global3.x))), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_f32(global1.b.xy, global1.b.xx), Struct_1(global1.a, vec4<f32>(-275f, 232f, 1448f, global3.x), global1.c, global1.d, vec4<u32>(global1.e.x, global1.e.x, 1u, u_input.d)), Struct_2(Struct_1(global3.x, vec4<f32>(1022f, -493f, global1.b.x, 405f), -2147483647i, global1.d, global1.e), Struct_1(global3.x, global1.b, global1.d.x, vec3<i32>(u_input.a, -32157i, -365i), vec4<u32>(global1.e.x, u_input.d, global1.e.x, 0u)), global1.a), _wgslsmith_sub_u32(108037u, global1.e.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, global3.x, _wgslsmith_f_op_f32(select(-1060f, global3.x, false)))))));
    return Struct_1(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(global1.b.wz, Struct_1(1538f, global1.b, global1.c, vec3<i32>(u_input.a, 47436i, 2147483647i), vec4<u32>(u_input.c.x, 7341u, global1.e.x, global1.e.x)), Struct_2(Struct_1(global1.b.x, vec4<f32>(global3.x, global3.x, global3.x, -824f), u_input.a, vec3<i32>(35815i, 2147483647i, u_input.a), vec4<u32>(21300u, 32086u, u_input.c.x, u_input.d)), Struct_1(1007f, vec4<f32>(-1511f, 1481f, global3.x, -607f), -13564i, vec3<i32>(-2147483647i, u_input.b, u_input.b), vec4<u32>(26829u, u_input.d, 46487u, 0u)), global1.b.x), 20286u)), _wgslsmith_f_op_f32(ceil(-2078f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(555f, global1.a, -820f, global1.a))), _wgslsmith_f_op_vec4_f32(sign(global1.b)))), global1.c, -vec3<i32>(3493i, global1.c, u_input.a), vec4<u32>(global1.e.x, firstTrailingBit(0u), 1u, ~50706u)), Struct_3(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-360f, -1408f, global3.x)))))), _wgslsmith_f_op_vec4_f32(min(global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(global3.x, global1.b.x)), _wgslsmith_f_op_f32(floor(622f)), global1.b.x, global3.x) * vec4<f32>(_wgslsmith_f_op_f32(abs(166f)), _wgslsmith_f_op_f32(select(global3.x, global1.b.x, true)), -673f, global1.a)))), _wgslsmith_mult_i32(u_input.b, (i32(-1i) * -67599i) << (1u % 32u)), ~_wgslsmith_clamp_vec3_i32(select(~global1.d, vec3<i32>(42977i, 1i, 12842i), vec3<bool>(true, true, true)), -vec3<i32>(26920i, -1i, u_input.a), _wgslsmith_mod_vec3_i32(global1.d >> (u_input.c.yxw % vec3<u32>(32u)), global1.d)), vec4<u32>(98853u, ~1u, ~4294967295u, _wgslsmith_div_u32(1u, _wgslsmith_div_u32(1u, global1.e.x | 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(), func_1(), _wgslsmith_f_op_f32(-248f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * -1360f)))));
    let var_1 = vec4<i32>(-var_0.a.c, 2147483647i, global1.d.x, _wgslsmith_div_i32(~(~firstLeadingBit(15756i)), _wgslsmith_sub_i32(global1.d.x, 24106i)));
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_div_f32(global1.b.x, var_2.b.x);
    global0 = global3.x;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_2, Struct_3(vec2<i32>(-30139i, global1.d.x))))))), _wgslsmith_div_f32(1047f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)))));
    global2 = array<vec4<bool>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 657f, -651f)))), ~select(select(vec3<u32>(13924u, 4294967295u, 119036u), global1.e.wyx, false), ~vec3<u32>(4294967295u, 7855u, 0u) & (vec3<u32>(global1.e.x, 76587u, var_2.e.x) & u_input.c.ywy), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.b, var_0.a.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1172f, global3.x, var_2.b.x, 692f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(368f, -2105f, var_3, var_2.a)), _wgslsmith_div_vec4_f32(var_2.b, vec4<f32>(-1000f, -2942f, -1425f, 322f)))), _wgslsmith_f_op_vec4_f32(-var_0.a.b))));
}

