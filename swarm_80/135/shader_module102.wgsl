struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(4294967295u, 69744u, 0u, 1u, 0u, 4294967295u, 4294967295u, 1u, 4790u, 4294967295u, 0u, 19137u, 0u, 25496u, 7693u, 0u, 0u, 16912u, 0u, 101831u, 35624u, 55482u, 1u, 30459u, 4294967295u, 75194u, 8716u, 29743u, 0u, 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = vec2<bool>(any(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -420f) != _wgslsmith_f_op_f32(-arg_3.b.d), true)), ~(-1i) == min(_wgslsmith_dot_vec2_i32(vec2<i32>(-5158i, arg_2), vec2<i32>(arg_2, -2147483647i)) >> (global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, arg_0), 30u)] % 32u), min(-arg_1.x, min(1i, -37411i))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(arg_3.a.a)), _wgslsmith_f_op_vec4_f32(floor(arg_3.a.a)))) * arg_3.a.a) * arg_3.a.a), vec2<u32>(countOneBits(firstLeadingBit(firstLeadingBit(19582u))), 14785u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.a.d)))), _wgslsmith_f_op_f32(f32(-1f) * -419f), var_0.x | false)), _wgslsmith_f_op_f32(select(arg_3.a.d, _wgslsmith_f_op_f32(ceil(arg_3.a.c)), true)), -_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.zz, vec2<i32>(2375i, arg_1.x)), arg_3.b.e), firstTrailingBit(vec2<i32>(arg_3.b.e.x, 2147483647i))));
    var var_2 = var_1;
    var var_3 = vec2<i32>(var_2.e.x, -_wgslsmith_mod_i32(1i, ~var_2.e.x));
    var var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3.a.c, var_2.d, var_1.d, 295f), vec4<f32>(var_2.a.x, arg_3.b.a.x, 1027f, -133f), var_0.x))))), _wgslsmith_div_vec2_u32(arg_3.b.b, countOneBits(~vec2<u32>(10174u, 72327u))), _wgslsmith_f_op_f32(exp2(var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-836f, arg_3.b.c, false))))), _wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.e.x, var_2.e.x), vec2<i32>(arg_3.b.e.x, arg_3.a.e.x))), _wgslsmith_add_vec2_i32(arg_3.a.e, var_2.e) >> (min(arg_3.a.b, var_1.b) % vec2<u32>(32u)))), arg_3.a);
    return var_4.b.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) >= _wgslsmith_clamp_u32(abs(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 45341u))), (~2382u ^ u_input.a.x) | ~u_input.a.x, arg_0.b.x);
    global0 = array<u32, 30>();
    let var_1 = vec2<f32>(arg_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(399f))) - 1000f));
    global0 = array<u32, 30>();
    var var_2 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(~u_input.a.x, ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, arg_0.e.x, arg_2, arg_2), vec4<i32>(arg_0.e.x, 0i, 0i, 11473i)), 1i, Struct_2(Struct_1(arg_0.a, var_2.b, -1000f, -463f, arg_0.e), arg_0))))), arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(725f - -175f)), -1590f, select(max(vec2<i32>(24301i, 10114i), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.e.x, 2147483647i), vec2<i32>(-12037i, arg_0.e.x), arg_0.e))), _wgslsmith_mult_vec2_i32(var_2.e, _wgslsmith_mod_vec2_i32(var_2.e, var_2.e >> (u_input.a % vec2<u32>(32u)))), var_0 || all(!vec4<bool>(var_0, var_0, var_0, var_0))));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = ~(~0u);
    var_0 = 1u;
    var var_2 = true;
    let var_3 = 2147483647i;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_0.a), vec4<f32>(arg_0.c, arg_0.d, -666f, arg_0.d)))), arg_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-274f + _wgslsmith_f_op_f32(ceil(1267f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c - arg_0.c)))), arg_0.e), func_2(func_2(Struct_1(vec4<f32>(arg_0.a.x, arg_0.d, 1506f, 874f), ~vec2<u32>(54849u, 481u), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(sign(arg_0.c)), countOneBits(vec2<i32>(-2147483647i, 47317i))), vec2<f32>(arg_0.d, arg_0.d), i32(-1i) * -7239i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.d, arg_0.a.x), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.d, -505f)))))), 1i));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1.a;
    var var_1 = var_0.e;
    var var_2 = arg_1.b;
    let var_3 = true;
    let var_4 = Struct_2(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-1172f, var_2.a.x, arg_1.b.d, arg_1.b.c))), arg_1.a.b, _wgslsmith_f_op_f32(-arg_1.b.c), -431f, var_2.e)).a, arg_1.a);
    return _wgslsmith_div_f32(arg_1.b.a.x, _wgslsmith_f_op_f32(min(var_2.a.x, 1000f)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: f32) -> bool {
    global0 = array<u32, 30>();
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3)))), _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_f_op_f32(func_5(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), func_4(func_2(Struct_1(vec4<f32>(-540f, -1151f, arg_3, arg_3), vec2<u32>(0u, 46109u), arg_3, 1000f, arg_2.xw), vec2<f32>(-242f, 410f), arg_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1296f)), vec2<u32>(1u, ~arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3 - 381f), _wgslsmith_f_op_f32(floor(-1992f))))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_3)), max(max(vec2<i32>(arg_2.x, abs(arg_2.x)), arg_2.wz), select(_wgslsmith_mod_vec2_i32(arg_2.xy, vec2<i32>(arg_2.x, arg_2.x)), vec2<i32>(2147483647i, arg_2.x) >> (reverseBits(u_input.a) % vec2<u32>(32u)), any(vec2<bool>(true, false)))));
    var var_1 = true;
    var_1 = true | (arg_0 > u_input.a.x);
    var var_2 = countOneBits(vec2<u32>(arg_0, var_0.b.x));
    return !all(vec4<bool>(all(vec4<bool>(false, false, false, true)), all(vec4<bool>(false, true, true, false)), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(!func_1(u_input.a.x, ~vec4<u32>(u_input.a.x, 0u, 15391u, global0[_wgslsmith_index_u32(u_input.a.x, 30u)]), max(vec4<i32>(0i, 2147483647i, 0i, 21430i), vec4<i32>(59322i, 76517i, 0i, -3238i)), 1243f), true, _wgslsmith_sub_i32(-1i, select(-1i, 65109i, false)) <= -1i);
    let var_1 = vec3<i32>(func_4(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(func_2(Struct_1(vec4<f32>(-383f, -938f, -892f, -279f), vec2<u32>(u_input.a.x, 4294967295u), 1621f, 1741f, vec2<i32>(2147483647i, 2147483647i)), vec2<f32>(-559f, -528f), -8599i).a)), max(abs(vec2<u32>(4294967295u, 44180u)), vec2<u32>(u_input.a.x, 102917u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(106f * -603f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1174f, 460f), _wgslsmith_f_op_f32(382f * -1196f))), vec2<i32>(1i, 1i))).a.e.x, _wgslsmith_div_i32(i32(-1i) * -(18000i >> (u_input.a.x % 32u)), 1i), 1i);
    var var_2 = u_input.a;
    let var_3 = ~(~u_input.a.x);
    var_2 = _wgslsmith_sub_vec2_u32(u_input.a, ~func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-376f, 138f, -2441f, 297f)), ~vec2<u32>(56148u, 4294967295u), _wgslsmith_f_op_f32(floor(952f)), _wgslsmith_f_op_f32(1723f * 1397f), _wgslsmith_mod_vec2_i32(var_1.yx, var_1.yx))).b.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(351f, -474f), vec2<f32>(-439f, 307f), var_0.yx)))))), _wgslsmith_mult_i32(var_1.x, ~(-24295i)));
}

