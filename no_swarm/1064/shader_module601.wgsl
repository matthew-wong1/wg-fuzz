struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = vec4<i32>(countOneBits(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, 0i), -2515i)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.x, u_input.a.x, -2147483647i), select(vec4<i32>(u_input.a.x, -79074i, 14452i, -2147483647i), vec4<i32>(arg_0.x, 109881i, 0i, -512i), vec4<bool>(false, arg_2.b, arg_1, arg_2.b))) ^ -21734i, -2147483647i) ^ ~(-u_input.a);
    let var_1 = _wgslsmith_clamp_u32(~1u, ~(~firstTrailingBit(u_input.b.x)), u_input.d.x);
    let var_2 = u_input.d.zw;
    let var_3 = arg_2;
    let var_4 = 0u;
    return _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(min(u_input.a.xzy, _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, 2147483647i) ^ u_input.a.yzz, -vec3<i32>(0i, -1i, 2147483647i))), reverseBits(-u_input.a.zzz)), u_input.a.zzz);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(-830f, _wgslsmith_f_op_f32(f32(-1f) * -639f), select(vec4<bool>(select(true, all(arg_1.c), any(arg_1.c)), true, (u_input.c | 3117u) >= 4294967295u, true), select(select(vec4<bool>(true, false, arg_1.c.x, arg_1.c.x), arg_1.c, select(vec4<bool>(arg_1.c.x, false, arg_1.c.x, true), arg_1.c, true)), !arg_1.c, vec4<bool>(arg_0.x <= -24842i, arg_1.c.x, true, !arg_1.c.x)), all(!global0[_wgslsmith_index_u32(0u, 32u)])));
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    var var_1 = Struct_2(_wgslsmith_mod_u32(max(~firstTrailingBit(u_input.c), 1u), _wgslsmith_dot_vec4_u32(u_input.d, ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.b.x, 1u), u_input.d))), !any(!var_0.c.zwz));
    var var_2 = false;
    return false;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = u_input.a.ww;
    var var_1 = func_4(firstTrailingBit(func_3(var_0, true, Struct_2(1u, true)) >> (~u_input.d.wwz % vec3<u32>(32u))) & (select(u_input.a.zyx | u_input.a.wzz, max(vec3<i32>(-27646i, 0i, -2147483647i), u_input.a.yzx), vec3<bool>(true, false, false)) & vec3<i32>(_wgslsmith_div_i32(-2147483647i, arg_0), -4940i, u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -122f))) - _wgslsmith_f_op_f32(-768f + _wgslsmith_f_op_f32(abs(-1000f)))), 1126f, vec4<bool>(true, true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), true)), true)));
    global0 = array<vec3<bool>, 32>();
    var_1 = false;
    var var_2 = vec2<bool>(any(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), any(select(global0[_wgslsmith_index_u32(u_input.d.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)])))), var_0.x != _wgslsmith_dot_vec2_i32(vec2<i32>(1i, ~(-56738i)), firstLeadingBit(var_0)));
    return any(vec2<bool>(all(!global0[_wgslsmith_index_u32(156273u, 32u)]), _wgslsmith_f_op_f32(ceil(117f)) == _wgslsmith_f_op_f32(select(-1251f, -924f, true)))) || var_2.x;
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> f32 {
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    let var_0 = !vec3<bool>(!func_2(arg_0), arg_1.b, !(!(!arg_1.b)));
    global0 = array<vec3<bool>, 32>();
    var var_1 = 1i;
    return _wgslsmith_f_op_f32(f32(-1f) * -812f);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -1054f, 1065f, arg_1.x) - vec4<f32>(1000f, arg_0.a, 2058f, -480f)) + vec4<f32>(arg_3.x, arg_1.x, 1108f, 2106f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 248f, arg_1.x, -244f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1958f, arg_3.x, arg_1.x, arg_3.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, -975f, arg_3.x, -665f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(918f * 491f) + arg_1.x) * -1492f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x))), arg_0.a, !arg_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.b), -675f), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(arg_3.x - arg_1.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_3.x)) - var_0.yy);
    let var_3 = vec4<i32>(~firstLeadingBit(-2147483647i), u_input.a.x, 1i, ~(((0i << (arg_2.a % 32u)) << (~arg_2.a % 32u)) >> ((abs(arg_2.a) >> (countOneBits(arg_2.a) % 32u)) % 32u)));
    let var_4 = arg_0;
    return Struct_1(arg_0.a, var_2.x, vec4<bool>(true, select(1i, -var_3.x, false) >= 1i, all(!(!global0[_wgslsmith_index_u32(4294967295u, 32u)])), all(!vec3<bool>(arg_2.b, var_4.c.x, var_4.c.x))));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = max((u_input.d.zy << (u_input.b % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.d.xz, u_input.d.yw), select(firstTrailingBit(u_input.b), ~vec2<u32>(arg_3.a, arg_3.a), !arg_1.c.wy)) % vec2<u32>(32u)), u_input.b);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b * arg_1.b) + _wgslsmith_f_op_f32(arg_1.a - arg_1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b, 953f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -529f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, arg_1.b))) - 1881f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(step(arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(-442f * 696f), _wgslsmith_f_op_f32(-arg_1.b)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, arg_1.b, 1091f, arg_1.b))), vec4<f32>(arg_1.a, 1486f, 1010f, arg_1.b))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-598f, arg_1.b, arg_1.b, arg_1.b) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_1.b, 632f, arg_1.a) - vec4<f32>(arg_1.b, arg_1.a, 687f, arg_1.a))))))), arg_1.c));
    global0 = array<vec3<bool>, 32>();
    let var_2 = Struct_2(~49489u, true);
    let var_3 = Struct_2(~countOneBits(_wgslsmith_add_u32(arg_3.a, 5498u)) | ~(~_wgslsmith_mult_u32(var_2.a, 1u)), arg_0);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.xz)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, _wgslsmith_f_op_f32(-1336f - 2075f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.wy, var_1.xy) - var_1.zy) + var_1.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(40831u, 1u), 1u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_6(countOneBits(i32(-1i) * -1i) <= (_wgslsmith_dot_vec2_i32(u_input.a.xw, _wgslsmith_div_vec2_i32(vec2<i32>(-26594i, u_input.a.x), u_input.a.yz)) << ((firstTrailingBit(110051u) ^ ~u_input.d.x) % 32u)), func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-322f + 154f)), _wgslsmith_f_op_f32(func_1(-1i << (u_input.b.x % 32u), Struct_2(0u, true))), vec4<bool>(all(vec3<bool>(false, false, false)), any(vec4<bool>(false, true, true, false)), func_4(vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), Struct_1(-1214f, 102f, vec4<bool>(false, true, true, false))), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-852f, 471f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-558f, 211f) * vec2<f32>(1285f, 802f)))), Struct_2(var_0 >> (4294967295u % 32u), true), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1274f, -474f) * vec2<f32>(-1655f, 692f)))))), _wgslsmith_add_u32(countOneBits(u_input.d.x), firstTrailingBit(~(u_input.d.x << (61503u % 32u)))), Struct_2(_wgslsmith_sub_u32(var_0, 13164u) << (var_0 % 32u), !func_5(func_5(Struct_1(-1010f, -676f, vec4<bool>(true, false, false, false)), vec2<f32>(-101f, -540f), Struct_2(1u, true), vec2<f32>(-900f, 222f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(111f, -1227f)), Struct_2(u_input.b.x, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1035f, 1000f) * vec2<f32>(1173f, 687f))).c.x)));
    global0 = array<vec3<bool>, 32>();
    let var_2 = Struct_2(_wgslsmith_mod_u32(~(~(var_0 | u_input.b.x)), ~var_0 | min(_wgslsmith_sub_u32(7931u, u_input.c), ~u_input.d.x)), any(vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.b.x, 24509u), vec3<u32>(var_0, var_0, 0u)) < firstLeadingBit(var_0), false, func_4(vec3<i32>(u_input.a.x, 17102i, 1i), Struct_1(var_1.x, var_1.x, vec4<bool>(false, false, true, false))), false)));
    global0 = array<vec3<bool>, 32>();
    global0 = array<vec3<bool>, 32>();
    let var_3 = u_input.a.wz;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}

