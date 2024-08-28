struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: Struct_2 = Struct_2(-1111f, vec3<u32>(11482u, 0u, 1u), true, vec2<u32>(34910u, 30348u), Struct_1(i32(-2147483648), vec4<u32>(12526u, 4294967295u, 14276u, 0u), vec4<f32>(1000f, 931f, -165f, -609f), vec2<i32>(20245i, 0i), vec2<u32>(1u, 4294967295u)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32) -> vec3<f32> {
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_4(1i, -(~(~global1.e.d.x)));
    return _wgslsmith_f_op_vec3_f32(-global1.e.c.wyy);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = select(vec4<bool>(false & global1.c, true, global1.c, global1.c), !vec4<bool>(global1.c, global1.c == !global1.c, select(arg_3.x >= 254f, global1.c, global1.c), true), any(!(!select(vec4<bool>(global1.c, global1.c, false, false), vec4<bool>(global1.c, global1.c, true, false), vec4<bool>(global1.c, false, true, global1.c)))));
    var var_1 = var_0.wy;
    var_0 = select(select(select(vec4<bool>(any(vec2<bool>(var_1.x, var_0.x)), u_input.a < global1.e.b.x, true, true), select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, true, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true)), vec4<bool>(global1.c, false, var_1.x, true), true), arg_0.e.x < (arg_0.e.x ^ 55963u)), vec4<bool>(true, !any(var_0.xz), select(select(false, false, false), false, !global1.c), false), any(select(!vec2<bool>(false, var_1.x), vec2<bool>(false, false), true))), vec4<bool>(all(vec4<bool>(any(vec4<bool>(global1.c, false, false, true)), all(var_0.yxw), false, true)), !(abs(arg_0.a) != _wgslsmith_mult_i32(arg_0.d.x, -2147483647i)), !any(!var_0.zz), arg_0.b.x == (_wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 1u) | arg_0.e.x)), true);
    global0 = array<Struct_1, 26>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.c.xw)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.x, arg_3.x), global1.e.c.ww)))) * vec2<f32>(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_2)), arg_2, true))), arg_0.c.x));
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global1 = Struct_2(-386f, _wgslsmith_add_vec3_u32(~reverseBits(min(global1.e.b.xyw, vec3<u32>(arg_0.b.x, global1.b.x, arg_0.e.x))), vec3<u32>(countOneBits(13784u), ~(~39500u), u_input.a)), global1.c, abs(_wgslsmith_mod_vec2_u32(arg_0.b.wz, vec2<u32>(reverseBits(arg_0.b.x), _wgslsmith_mult_u32(global1.b.x, u_input.a)))), func_3(func_3(arg_0, _wgslsmith_dot_vec2_u32(u_input.b.zw, firstTrailingBit(arg_0.b.yw)), 458f, _wgslsmith_f_op_vec3_f32(ceil(global1.e.c.wxw))), ~(global1.d.x ^ firstTrailingBit(9823u)), global1.e.c.x, global1.e.c.yzy));
    var var_0 = vec4<bool>(global1.c, !(!(global1.c || true) || global1.c), !(!(!any(vec2<bool>(global1.c, true)))), any(select(!(!vec3<bool>(global1.c, global1.c, true)), !(!vec3<bool>(true, true, global1.c)), global1.c)));
    var var_1 = func_3(Struct_1(global1.e.a, _wgslsmith_div_vec4_u32(~(u_input.b | global1.e.b), max(~u_input.b, global1.e.b)), vec4<f32>(-777f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1629f * global1.e.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x))), _wgslsmith_f_op_f32(-121f * -945f)), _wgslsmith_sub_vec2_i32(max(vec2<i32>(arg_0.a, 5685i), arg_0.d), vec2<i32>(2137i, arg_0.d.x) ^ global1.e.d) >> (~vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), select(abs(vec2<u32>(59007u, u_input.b.x)) | ~vec2<u32>(4294967295u, global1.e.e.x), ~global1.d, _wgslsmith_f_op_f32(select(1000f, -1654f, var_0.x)) > 736f)), arg_0.e.x | global1.d.x, arg_0.c.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.wyz) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.c.x, arg_0.c.x, 2153f) - vec3<f32>(arg_0.c.x, 915f, global1.e.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1425f, arg_0.c.x, 892f) - vec3<f32>(global1.a, -115f, -762f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e.c.zww - _wgslsmith_f_op_vec3_f32(-arg_0.c.ywy)) + global1.e.c.yyz)));
    var var_2 = ~0i <= _wgslsmith_add_i32(~min(var_1.a, 42531i) ^ _wgslsmith_div_i32(arg_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(34747i, 2147483647i, arg_0.a, var_1.a), vec4<i32>(2147483647i, 2147483647i, global1.e.d.x, -19809i))), _wgslsmith_mult_i32(0i, 2147483647i));
    var var_3 = -arg_0.d;
    return _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_sub_vec3_u32(u_input.b.xxx, vec3<u32>(_wgslsmith_add_u32(arg_0.b.x, arg_0.b.x), _wgslsmith_mod_u32(4294967295u, arg_0.e.x), ~5702u))), vec3<u32>(abs(4294967295u), global1.d.x, 2949u));
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(reverseBits(-16952i), 1i);
    let var_1 = min(max(func_4(func_3(Struct_1(-2147483647i, vec4<u32>(global1.b.x, global1.d.x, 1u, 79274u), arg_0, vec2<i32>(-4428i, var_0), global1.b.zy), ~u_input.b.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_vec3_f32(func_2(u_input.b.x)))), vec3<u32>(4294967295u, ~_wgslsmith_add_u32(u_input.a, 30173u), 0u)), ~vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yz, vec2<u32>(u_input.a, 0u)), vec2<u32>(global1.d.x, 80717u)), _wgslsmith_dot_vec2_u32(global1.e.e, u_input.b.xw), global1.d.x));
    global0 = array<Struct_1, 26>();
    var var_2 = Struct_1(~(33593i & _wgslsmith_mod_i32(var_0, firstLeadingBit(-30217i))), ~u_input.b ^ countOneBits(u_input.b), global1.e.c, max(~_wgslsmith_sub_vec2_i32(global1.e.d, global1.e.d) >> (~(~vec2<u32>(global1.d.x, var_1.x)) % vec2<u32>(32u)), vec2<i32>(30236i, abs(~1i))), u_input.b.zy);
    var var_3 = Struct_3(-64884i, -(~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, var_0, 13220i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, 1i, global1.e.d.x), vec3<i32>(var_2.d.x, global1.e.d.x, 55937i), vec3<i32>(21848i, var_0, global1.e.d.x)))), ~var_2.b.ywy ^ ~abs(var_2.b.xyz), Struct_2(global1.a, ~u_input.b.wwx, true, ~(~vec2<u32>(global1.d.x, 46993u)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_2.b.x, global1.b.x), 26u)]));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1402f)), _wgslsmith_clamp_vec3_u32(~(_wgslsmith_add_vec3_u32(u_input.b.xwx, vec3<u32>(4294967295u, 2451u, var_1.x)) >> (~vec3<u32>(global1.b.x, u_input.b.x, 38668u) % vec3<u32>(32u))), vec3<u32>(0u, reverseBits(~var_2.b.x), u_input.a), ~abs(u_input.b.wzz)), any(vec4<bool>(false, var_3.d.c | true, all(vec3<bool>(true, var_3.d.c, false)), var_3.d.c == var_3.d.c)) & !global1.c, ~vec2<u32>(_wgslsmith_add_u32(select(var_1.x, global1.d.x, true), 4294967295u), u_input.a ^ (95771u & var_1.x)), var_3.d.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-521f, -135f, -1498f, global1.e.c.x))))))));
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, func_3(Struct_1(global1.e.a, global1.e.b, vec4<f32>(global1.e.c.x, global1.e.c.x, -1000f, global1.e.c.x), vec2<i32>(2147483647i, 1i), u_input.b.zw), 82724u, _wgslsmith_f_op_f32(select(global1.a, global1.a, global1.c)), global1.e.c.yzy).c.x, global1.a, _wgslsmith_f_op_f32(-456f * _wgslsmith_div_f32(-189f, global1.e.c.x)))));
    var var_1 = !(var_0.d.x >= 4294967295u) != !(var_0.e.d.x >= max(-var_0.e.a, ~global1.e.a));
    let var_2 = vec2<i32>(-global1.e.d.x, _wgslsmith_add_i32(max(30978i, _wgslsmith_div_i32(1i, i32(-1i) * -1i)), countOneBits(34854i)));
    let var_3 = ~vec3<i32>(max(global1.e.d.x, firstTrailingBit(1i)), _wgslsmith_mult_i32(~(-41020i), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-40515i, var_2.x, var_0.e.d.x), vec3<i32>(global1.e.d.x, global1.e.d.x, -22388i)), reverseBits(vec3<i32>(-13597i, var_0.e.d.x, 0i)))), var_2.x);
    var var_4 = func_1(var_0.e.c).a;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.e.d.x, -6611i, var_2.x), vec4<i32>(global1.e.d.x, 2147483647i, var_0.e.d.x, -2147483647i)))), var_0.b, _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, 2147483647i, 19906i, 0i) ^ firstLeadingBit(vec4<i32>(2147483647i, var_0.e.d.x, 48828i, global1.e.a)), (vec4<i32>(var_0.e.d.x, 4683i, 2147483647i, var_0.e.d.x) ^ vec4<i32>(6381i, var_3.x, -28161i, global1.e.d.x)) ^ -vec4<i32>(var_3.x, -20185i, var_2.x, -1i)), vec4<i32>(-_wgslsmith_div_i32(var_2.x, 12190i), -(~var_3.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_2.x), vec2<i32>(22037i, 1i)), global1.e.d.x), -1i), ~(firstTrailingBit(vec4<i32>(var_2.x, var_2.x, 23364i, 0i)) << (global1.e.b % vec4<u32>(32u)))), vec3<i32>(var_0.e.a, _wgslsmith_dot_vec3_i32(-var_3, vec3<i32>(-29713i, var_0.e.a, ~global1.e.a)), select(-min(3920i, global1.e.d.x), 0i, global1.c)));
}

