struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<f32>, 2>;

var<private> global2: array<i32, 14>;

var<private> global3: array<vec4<u32>, 2> = array<vec4<u32>, 2>(vec4<u32>(22435u, 14923u, 61710u, 41025u), vec4<u32>(35743u, 0u, 19660u, 92673u));

var<private> global4: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(42484i, -1i), Struct_1(2147483647i, -24171i), Struct_1(5812i, 0i), Struct_1(1i, -31286i), Struct_1(1i, i32(-2147483648)), Struct_1(21732i, -47095i), Struct_1(-6373i, 2147483647i), Struct_1(19244i, 1i), Struct_1(15062i, 65801i), Struct_1(i32(-2147483648), i32(-2147483648)), Struct_1(-5996i, i32(-2147483648)), Struct_1(-1i, -240i), Struct_1(25566i, 12263i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    var var_0 = Struct_1(global2[_wgslsmith_index_u32(~(~(~1u)), 14u)], _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, 0i), -vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(arg_1, 14u)], 16338i), vec3<i32>(0i, global2[_wgslsmith_index_u32(arg_1, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), ~72767i, abs(-15912i))));
    var var_1 = ~u_input.a.x;
    var var_2 = ~vec4<i32>(max(-7595i, -49584i), var_0.b, ~(~_wgslsmith_clamp_i32(10291i, var_0.b, var_0.b)), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 1i, 2964i) >> (firstTrailingBit(vec3<u32>(14684u, u_input.a.x, 1u)) % vec3<u32>(32u)), select(vec3<i32>(-31635i, var_0.a, 12429i), max(vec3<i32>(1i, 21817i, 0i), vec3<i32>(13431i, 1i, var_0.b)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))));
    var_0 = global4[_wgslsmith_index_u32(14019u, 13u)];
    var var_3 = !vec3<bool>(~_wgslsmith_mult_i32(var_2.x, 0i) != -1i, false, !all(vec2<bool>(true, true)) | true);
    return Struct_1(-44474i, var_0.a);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec4<f32> {
    var var_0 = Struct_1(1i, 2147483647i);
    var var_1 = func_2(_wgslsmith_mult_u32(4294967295u, arg_0), ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_clamp_u32(0u, arg_0, arg_2)));
    let var_2 = ~reverseBits(arg_0);
    let var_3 = select(global3[_wgslsmith_index_u32(var_2, 2u)], _wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(~1u >> ((~arg_0 | select(u_input.a.x, 4294967295u, false)) % 32u), 2u)], ~_wgslsmith_mult_vec4_u32(max(global3[_wgslsmith_index_u32(11819u, 2u)], vec4<u32>(0u, 34155u, 86203u, var_2)), abs(global3[_wgslsmith_index_u32(46134u, 2u)]))), all(vec2<bool>(any(vec4<bool>(false, false, false, false)), true)));
    var var_4 = arg_0;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1642f, 140f, 1381f, -1106f)) * _wgslsmith_div_vec4_f32(vec4<f32>(1217f, 1290f, -1288f, -1580f), vec4<f32>(496f, 1000f, -334f, 933f))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -769f, -341f, 632f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-202f, -197f, 102f, -1000f) - vec4<f32>(-1380f, -680f, -1053f, -700f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1280f, 980f, 412f) - vec4<f32>(531f, -1628f, 342f, 706f)))))));
}

fn func_4(arg_0: vec4<f32>) -> bool {
    let var_0 = vec2<i32>(i32(-1i) * -38287i, -global2[_wgslsmith_index_u32(u_input.a.x, 14u)]);
    var var_1 = func_2(5826u, 27486u);
    global4 = array<Struct_1, 13>();
    var_1 = func_2(~abs(u_input.a.x), ~72659u);
    global4 = array<Struct_1, 13>();
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    global1 = array<vec2<f32>, 2>();
    global1 = array<vec2<f32>, 2>();
    let var_0 = !func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), func_2(1u, 4294967295u), u_input.a.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1686f, 676f, 526f, -1000f))), vec4<f32>(arg_1, arg_1, arg_1, arg_1), true))));
    let var_1 = arg_0;
    var var_2 = arg_2.zz ^ max(_wgslsmith_mult_vec2_i32(min(arg_2.xz, firstTrailingBit(arg_2.zw)), _wgslsmith_div_vec2_i32(arg_2.ww, vec2<i32>(var_1.a, -12782i))), arg_2.xx);
    return u_input.a.x;
}

fn func_5(arg_0: Struct_1) -> u32 {
    var var_0 = -firstLeadingBit(abs(vec2<i32>(32565i, 37331i) & (vec2<i32>(arg_0.b, arg_0.b) & vec2<i32>(arg_0.b, arg_0.b))));
    let var_1 = func_1(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], -1603f, select(vec4<i32>(min(arg_0.a, -26622i) ^ 28789i, ~(~22632i), 1i, ~1i), vec4<i32>(0i, arg_0.b, 6636i, ~(-4861i)), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1417f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) * _wgslsmith_f_op_f32(min(472f, -160f))))));
    let var_3 = vec3<bool>(true, any(!select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(545f, 342f, var_2.x, 1324f))))));
    var_0 = vec2<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, ~(~(-1i))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a.x, 0u) & _wgslsmith_mult_u32(~0u, var_1), 14u)]));
    return reverseBits(_wgslsmith_div_u32(var_1, 16077u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(any(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))), true);
    let var_1 = global4[_wgslsmith_index_u32(0u ^ (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), firstTrailingBit(vec2<u32>(0u, 38828u))) ^ func_5(global4[_wgslsmith_index_u32(func_1(global4[_wgslsmith_index_u32(abs(u_input.a.x), 13u)], _wgslsmith_f_op_f32(-1000f * 686f), _wgslsmith_mod_vec4_i32(vec4<i32>(29025i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 2147483647i), vec4<i32>(-23804i, -14153i, global2[_wgslsmith_index_u32(u_input.a.x, 14u)], 1i))), 13u)])), 13u)];
    var var_2 = func_2(2320u, func_1(func_2(~4294967295u, func_1(global4[_wgslsmith_index_u32(u_input.a.x, 13u)], -1000f, vec4<i32>(var_1.b, 40393i, 11581i, -48565i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f) * 1f), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], -30795i, var_1.b, global2[_wgslsmith_index_u32(u_input.a.x, 14u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(1u, 14u)], 2147483647i))) << (4294967295u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, select(vec3<i32>(var_1.b, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], var_1.a), func_2(21825u, u_input.a.x).b) ^ ~_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, global2[_wgslsmith_index_u32(38848u, 14u)]), vec3<i32>(35736i, var_1.a, 0i)), -(~abs(vec3<i32>(var_2.b, global2[_wgslsmith_index_u32(65177u, 14u)], 77349i))), any(vec4<bool>(false, true, !var_0.x, true))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_f32(min(-1455f, 2041f)), 461f), vec3<f32>(_wgslsmith_f_op_f32(trunc(-299f)), 954f, -1000f))))), ~(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(26554u, u_input.a.x), 2u)]));
}

