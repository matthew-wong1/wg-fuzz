struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_3;

var<private> global2: vec4<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec2<i32>) -> bool {
    global1 = Struct_3(arg_2.x > (-arg_2.x | ((i32(-1i) * -1i) >> (abs(u_input.a) % 32u))), global1.b, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -206f)))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(41527i, arg_2.x), global1.e.c.zy), max(vec2<i32>(2147483647i, -2147483647i) & global2.wz, arg_2)) > 0i, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1128f)))), global1.c.a, -2442f, global1.c.a), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f + global1.c.a))), _wgslsmith_mod_vec3_i32(global2.yyy >> (firstLeadingBit(vec3<u32>(u_input.a, 49656u, u_input.a)) % vec3<u32>(32u)), global2.ywy), global1.e.d, Struct_1(global1.c.a)));
    global1 = Struct_3(all(vec3<bool>(global1.d, -1000f == _wgslsmith_f_op_f32(floor(global1.e.e.a)), !global1.a)), global1.e.a, global1.e.b, true, Struct_2(_wgslsmith_f_op_vec4_f32(ceil(global1.b)), global1.c, -_wgslsmith_mult_vec3_i32(global1.e.c, -vec3<i32>(-21192i, 50380i, 2147483647i)), vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(abs(global1.e.a.x)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(global1.c.a * -281f), 196f, global1.e.b.a, 1f)));
    let var_1 = vec2<i32>(~1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(1i, select(arg_0, global1.e.c.x, false)), countOneBits(2147483647i) & arg_2.x, global1.e.c.x) | -15013i);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-global1.c.a));
    return firstTrailingBit(var_1.x) < ~(-firstLeadingBit(firstTrailingBit(-4696i)));
}

fn func_2(arg_0: vec3<f32>) -> vec2<i32> {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(u_input.b.wy, u_input.b.xx) | u_input.b.x), ~72255u << (~(_wgslsmith_dot_vec2_u32(vec2<u32>(45784u, 4294967295u), u_input.b.yw) ^ ~18173u) % 32u));
    let var_1 = vec2<f32>(811f, -101f);
    let var_2 = true & global1.e.d.x;
    global1 = Struct_3(func_3(1i, true && !any(vec4<bool>(var_2, global1.d, var_2, var_2)), global2.xy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global1.e.a)) * global1.e.a), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -918f))))), !global1.a, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1178f, 705f, 114f, global1.e.e.a) - vec4<f32>(471f, -888f, -717f, -924f)))), Struct_1(-752f), global2.yyx, !global1.e.d, global1.c));
    let var_3 = !vec2<bool>(!all(!vec3<bool>(global1.d, var_2, true)), false);
    return vec2<i32>(2147483647i, ~global2.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: vec4<u32>) -> i32 {
    var var_0 = global1.e.e;
    let var_1 = Struct_3(~_wgslsmith_div_i32(-66259i, -18195i) != min(_wgslsmith_sub_i32(reverseBits(arg_1.x), global2.x), countOneBits(arg_1.x)), _wgslsmith_f_op_vec4_f32(-global1.e.a), global1.e.b, global1.c.a > global1.c.a, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global1.b, vec4<f32>(-968f, -355f, global1.b.x, -232f)) * global1.e.a), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global1.c.a)), -1286f))), vec3<i32>(-2147483647i, global2.x, -4273i), !select(arg_2.xz, global1.e.d, select(vec2<bool>(global1.a, true), global1.e.d, vec2<bool>(arg_2.x, arg_2.x))), global1.c));
    var_0 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(select(567f, global1.e.a.x, !any(vec3<bool>(arg_2.x, true, true)))), false)));
    let var_2 = global1.e.e;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.e.a, 565f)))), 719f)));
    return _wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(0i, 0i)) | ((i32(-1i) * -10014i) | -_wgslsmith_mult_i32(arg_1.x, 0i)), abs(global2.x), 0i);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(global2.x, func_4(u_input.b.wxx, func_2(global1.e.a.xyx), vec4<bool>(global1.d | arg_0, true, 1u >= arg_1.x, 1399f >= global1.b.x), vec4<u32>(countOneBits(6026u), max(u_input.a, 60636u), abs(1u), ~50612u)), select(-2147483647i, global1.e.c.x, true), -7643i), -select(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global1.e.c.x, 1i, -2147483647i, 2147483647i), vec4<i32>(global2.x, 1i, global1.e.c.x, -6726i))), _wgslsmith_mult_vec4_i32(vec4<i32>(-12607i, global1.e.c.x, global2.x, 2147483647i) & vec4<i32>(global2.x, 2147483647i, -2147483647i, global1.e.c.x), -vec4<i32>(1i, global2.x, global2.x, global2.x)), true));
    var var_1 = var_0.wz;
    var var_2 = ~vec4<u32>(1u, arg_1.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.a), abs(_wgslsmith_sub_vec2_u32(vec2<u32>(58055u, arg_1.x), u_input.b.wx))), ~(~_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(u_input.b.x, 24386u, arg_1.x, u_input.b.x))));
    global2 = var_0;
    global2 = vec4<i32>(_wgslsmith_sub_i32(2147483647i, reverseBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.ww, global2.wy), vec2<i32>(-22125i, global1.e.c.x)))), _wgslsmith_div_i32(-(~var_1.x), ~(~_wgslsmith_mod_i32(var_0.x, global2.x))), _wgslsmith_clamp_i32(var_1.x, global1.e.c.x, -27183i), -4405i);
    return var_0.xxx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.d, u_input.b);
    var_0 = vec3<i32>(2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-123i, -2147483647i, ~global2.x, _wgslsmith_mod_i32(global2.x, -235i)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -4309i, 2147483647i, global1.e.c.x), vec4<i32>(-46434i, -3764i, 46723i, var_0.x)))), var_0.x), var_0.x);
    let var_1 = !(!(!vec3<bool>(any(vec4<bool>(false, true, global1.e.d.x, false)), false, 6862i >= var_0.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.a, _wgslsmith_f_op_f32(1000f * -591f), global1.c.a, _wgslsmith_div_f32(1087f, global1.c.a)) * vec4<f32>(_wgslsmith_f_op_f32(global1.b.x - global1.b.x), _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(abs(1814f)), -466f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1583f)), _wgslsmith_div_f32(global1.c.a, -1508f))))), vec3<i32>(func_1(any(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, global1.a, false, global1.d), var_1.x)), _wgslsmith_add_vec4_u32(u_input.b, u_input.b) | ~vec4<u32>(1u, u_input.a, u_input.a, u_input.b.x)).x, 0i >> (u_input.a % 32u), global2.x), var_1.yy, global1.e.b);
    var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 1i, 59821i & var_0.x), global2.wxz);
    var var_3 = global1.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(firstLeadingBit(4294967295u)) & u_input.b.x, u_input.b.yz, global1.e.c.x, vec4<i32>(-1i) * -firstLeadingBit(-vec4<i32>(var_0.x, -2147483647i, var_2.c.x, 2147483647i)));
}

