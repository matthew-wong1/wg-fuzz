struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 214f;

var<private> global2: f32 = 599f;

var<private> global3: array<i32, 13> = array<i32, 13>(8589i, 2147483647i, -2171i, -2261i, 0i, 2147483647i, -27673i, -53454i, -1i, -1i, 1i, 2147483647i, 67142i);

var<private> global4: Struct_1 = Struct_1(4294967295u, true, 4294967295u, vec3<u32>(5490u, 20933u, 23653u), 9391i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.x))))));
    global2 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1559f, arg_0.x));
    let var_2 = Struct_1(abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2.c), global4.d.xx)), true, max(~17351u, _wgslsmith_clamp_u32(1u, ~reverseBits(1u), u_input.a)), vec3<u32>(31165u, u_input.a, 1u) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(arg_2.d, firstTrailingBit(vec3<u32>(0u, global4.c, arg_2.a))), ~(~vec3<u32>(u_input.a, 0u, arg_2.d.x)), ~(~arg_2.d)) % vec3<u32>(32u)), _wgslsmith_div_i32(~(-38960i), 885i));
    var var_3 = _wgslsmith_sub_i32(abs(-1i), select(~max(~23906i, ~956i), var_2.e, global4.b));
    return global4.d.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1194f))), -2696f));
    let var_0 = Struct_1(arg_0, !select(arg_1, !all(vec3<bool>(global4.b, global4.b, false)), true), ~reverseBits(60490u ^ global4.a), _wgslsmith_add_vec3_u32(~vec3<u32>(func_3(vec3<f32>(-582f, 631f, -468f), 1643f, Struct_1(5762u, false, 28047u, vec3<u32>(63537u, arg_0, 20007u), -54423i)), 58268u, ~arg_0), vec3<u32>(~reverseBits(0u), global4.c, 0u)), ~(-790i));
    let var_1 = _wgslsmith_mult_vec4_u32(abs(select(countOneBits(vec4<u32>(0u, arg_0, 66568u, 943u)) << (~vec4<u32>(var_0.a, 25650u, var_0.c, arg_0) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(u_input.a, var_0.d.x, global4.c, var_0.c)), select(!vec4<bool>(false, arg_1, var_0.b, var_0.b), !vec4<bool>(arg_1, global4.b, arg_1, true), true))), ~_wgslsmith_mod_vec4_u32(max(~vec4<u32>(63225u, arg_0, u_input.a, global4.c), firstTrailingBit(vec4<u32>(106712u, 18796u, arg_0, u_input.a))), select(min(vec4<u32>(11106u, global4.d.x, var_0.a, u_input.a), vec4<u32>(u_input.a, var_0.a, u_input.a, global4.d.x)), vec4<u32>(1u, 85264u, 54287u, 93327u), global4.b)));
    let var_2 = var_0;
    let var_3 = Struct_2(var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(abs(0u), arg_1, ~var_1.x, vec3<u32>(var_2.a, 59648u, ~(~4294967295u)), ~1i), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(vec3<f32>(-340f, -1000f, 375f), -259f, var_2), u_input.a & 52157u, global4.a), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(global4.d, vec3<u32>(u_input.a, 24634u, 0u)), var_2.d)), select(true, !all(vec2<bool>(global4.b, arg_1)), all(vec2<bool>(true, var_0.b))), select(_wgslsmith_dot_vec4_u32(var_1, var_1), 1u >> (var_0.c % 32u), var_2.b) & (1u | u_input.a), ~var_0.d, global4.e), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(733f, 113f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-300f + 2105f), 1151f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -211f))))));
    return var_2;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_1(abs(min(global4.c >> (u_input.a % 32u), u_input.a) | select(~1u, 1u, arg_1.b)), true, global4.a, vec3<u32>(19161u, arg_1.c, ~_wgslsmith_mult_u32(global4.d.x, ~30374u)), max(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(2147483647i, global4.e, u_input.c.x, global4.e)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.xx, vec2<i32>(-24655i, arg_1.e)), abs(u_input.c.x), reverseBits(u_input.c.x), -2147483647i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(25129i, arg_1.e) >> (8740u % 32u), 1i)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-823f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1522f, -634f) * _wgslsmith_f_op_f32(f32(-1f) * -568f)), 1000f)));
    var var_2 = select(-(~u_input.b), u_input.b, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(2127f, 819f, 122f, 2040f) * vec4<f32>(-387f, 1698f, 1071f, -702f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1008f, 366f, 255f, -1428f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, 1132f, -1361f, 1264f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1508f, 1000f, 352f, -960f))))));
    return var_3.x;
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32) -> f32 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(select(select(vec3<bool>(global4.b, true, arg_0), vec3<bool>(global4.b, global4.b, false), arg_0), select(vec3<bool>(false, arg_0, global4.b), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, global4.b)), !vec3<bool>(true, global4.b, arg_0)), func_2(~0u, true, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global4.d.x, u_input.a), 13u)]))))));
    let var_0 = -468f;
    var var_1 = global4.b;
    var var_2 = _wgslsmith_div_vec3_u32(~(~vec3<u32>(global4.a, arg_1, arg_1)), reverseBits(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 0u, 4294967295u) << (abs(vec3<u32>(4294967295u, 54594u, 4294967295u)) % vec3<u32>(32u)), vec3<u32>(13144u, 8709u, _wgslsmith_mod_u32(1963u, arg_1)))));
    let var_3 = vec4<u32>(~(~(~1u)), 4294967295u >> (_wgslsmith_dot_vec2_u32(var_2.yx, ~(~global4.d.xz)) % 32u), ~(~reverseBits(2696u)), ~(firstLeadingBit(abs(0u)) >> (1u % 32u)));
    return -1402f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 13>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, ~(~0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2181f - 1098f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(173f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(996f - -1272f) * _wgslsmith_f_op_f32(func_4(vec3<bool>(global4.b, global4.b, true), Struct_1(0u, false, 5809u, global4.d, u_input.b.x)))), global4.b))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_clamp_u32(2550u, (0u & global4.a) & _wgslsmith_add_u32(38170u, u_input.a), global4.c), !(44920u <= u_input.a), u_input.a, abs(vec3<u32>(_wgslsmith_sub_u32(18033u, 7332u), ~5695u, u_input.a)), global4.e), _wgslsmith_f_op_f32(abs(-1000f)), Struct_1(23474u, false, _wgslsmith_add_u32(~17551u, ~u_input.a) & 22588u, vec3<u32>(_wgslsmith_sub_u32(func_3(vec3<f32>(2413f, -478f, -947f), -1170f, Struct_1(global4.c, global4.b, global4.c, vec3<u32>(21406u, 4294967295u, u_input.a), global4.e)), ~0u), ~_wgslsmith_clamp_u32(0u, u_input.a, 4294967295u), _wgslsmith_div_u32(u_input.a ^ global4.c, 0u)), u_input.b.x), Struct_1(func_2(max(1u, _wgslsmith_sub_u32(1u, global4.d.x)), func_2(global4.c, true, 0i).b, -2147483647i).d.x, !(!global4.b || false), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global4.d, global4.d), ~u_input.a), ~global4.d, ~global3[_wgslsmith_index_u32(~18921u, 13u)] ^ -1i), -359f);
    let var_2 = !select(!vec2<bool>(all(vec2<bool>(true, true)), true), select(vec2<bool>(true, all(vec4<bool>(false, true, true, var_1.c.b))), select(select(vec2<bool>(var_1.d.b, global4.b), vec2<bool>(false, false), false), select(vec2<bool>(var_1.a.b, false), vec2<bool>(var_1.c.b, var_1.c.b), global4.b), true), !select(vec2<bool>(global4.b, true), vec2<bool>(global4.b, global4.b), vec2<bool>(true, false))), !vec2<bool>(var_1.e > var_1.e, all(vec2<bool>(true, var_1.a.b))));
    global0 = ~45431i;
    let var_3 = !(abs(firstTrailingBit(~u_input.b.x)) < abs(reverseBits(abs(u_input.c.x))));
    global4 = var_1.d;
    let var_4 = ~0u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(129290u)), _wgslsmith_f_op_f32(func_1(true, ~_wgslsmith_div_u32(34809u, global4.d.x ^ 10290u), _wgslsmith_f_op_f32(-724f - _wgslsmith_f_op_f32(func_1(true, global4.a, _wgslsmith_f_op_f32(floor(var_1.e))))))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1875f)) + 1000f)), vec2<i32>(i32(-1i) * -firstTrailingBit(global3[_wgslsmith_index_u32(2877u, 13u)]), _wgslsmith_add_i32(global4.e, -1i)));
}

