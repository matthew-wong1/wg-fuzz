struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<bool>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = ~u_input.d.wzz;
    let var_1 = vec4<bool>(false, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.a.x, global2.a.x, false)), _wgslsmith_f_op_f32(-1000f - -426f))), global0[_wgslsmith_index_u32(1u, 20u)], any(!select(select(vec2<bool>(true, true), vec2<bool>(true, global2.c), vec2<bool>(false, false)), vec2<bool>(true, false), global2.c)));
    var var_2 = ~(~var_0.x) & (var_0.x | 78813u);
    return Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1000f + 1053f), _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a.x), -1178f))))), 12991u, all(vec2<bool>(all(!var_1), true && all(var_1.zyx))), vec2<i32>(-2147483647i, _wgslsmith_add_i32(global2.d.x, 55781i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = global2.b >= max(~min(abs(1220u), 5080u), _wgslsmith_mult_u32(~27508u, _wgslsmith_dot_vec2_u32(arg_2.b.a.yx, u_input.d.wx)) << ((reverseBits(0u) ^ _wgslsmith_clamp_u32(16826u, arg_1.a.x, 39837u)) % 32u));
    global1 = !(_wgslsmith_clamp_i32(40368i, _wgslsmith_div_i32(12386i, ~(-23635i)), max(func_1(vec3<f32>(-319f, arg_2.d.b.a.x, -1377f), u_input.d.x).d.x, arg_1.b.d.x >> (arg_1.a.x % 32u))) <= abs(countOneBits(arg_2.d.b.d.x)));
    let var_1 = 0i | -arg_2.d.b.d.x;
    var_0 = any(!vec2<bool>(any(vec2<bool>(false, true)), true));
    let var_2 = true;
    return arg_1.a;
}

fn func_2(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = ~_wgslsmith_mult_u32(global2.b, u_input.b);
    let var_1 = min(func_3(vec2<f32>(_wgslsmith_f_op_f32(-1937f * _wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -847f)), Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, var_0, 40977u, 1u), u_input.d), Struct_1(_wgslsmith_f_op_vec3_f32(global2.a * global2.a), 18149u, global2.c & arg_0.x, global2.d >> (u_input.d.wx % vec2<u32>(32u)))), Struct_3(!(!vec3<bool>(arg_0.x, true, true)), Struct_2(countOneBits(vec4<u32>(0u, 2823u, u_input.a, 11743u)), func_1(vec3<f32>(421f, global2.a.x, -736f), global2.b)), vec4<bool>(global2.a.x <= 1682f, true, global2.c, all(vec2<bool>(global2.c, global0[_wgslsmith_index_u32(2905u, 20u)]))), Struct_2(max(u_input.d, u_input.d), Struct_1(global2.a, global2.b, true, vec2<i32>(global2.d.x, 32729i))), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, global2.d.x, 1783i, global2.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global2.d.x, -2147483647i, -2147483647i, 4857i), vec4<i32>(0i, global2.d.x, global2.d.x, global2.d.x))))), ~firstLeadingBit(~(~u_input.d)));
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-1780f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1572f))), _wgslsmith_f_op_f32(max(global2.a.x, _wgslsmith_div_f32(global2.a.x, -606f)))), 16191u, true || global0[_wgslsmith_index_u32(1u, 20u)], -vec2<i32>(_wgslsmith_mult_i32(~(-2147483647i), global2.d.x), -2147483647i ^ max(global2.d.x, global2.d.x)));
    global0 = array<bool, 20>();
    var var_2 = Struct_2(u_input.d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1268f, global2.a.x, 2010f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-225f, global2.a.x, global2.a.x))))), 40675u, arg_0.x, global2.d));
    return select(_wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.d.x, 39173i, -2288i, -2416i), vec4<i32>(2147483647i, global2.d.x, global2.d.x, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(var_2.b.d.x, -14968i, -2006i, 0i), vec4<i32>(var_2.b.d.x, global2.d.x, var_2.b.d.x, var_2.b.d.x))), abs(~vec4<i32>(var_2.b.d.x, 799i, global2.d.x, 78818i)) >> (abs(~u_input.d) % vec4<u32>(32u))), abs(abs(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.d.x, -2147483647i, 38119i, 2147483647i), vec4<i32>(1i, global2.d.x, -40273i, -2147483647i))))), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-142f + global2.a.x), _wgslsmith_f_op_f32(global2.a.x * 747f), 374f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.x, global2.a.x, global2.a.x), vec3<f32>(2383f, 1725f, global2.a.x))))), ~reverseBits(~0u));
    global0 = array<bool, 20>();
    let var_1 = !var_0.c;
    let var_2 = _wgslsmith_f_op_f32(-global2.a.x);
    var var_3 = -(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.d.x, var_0.d.x, 0i, global2.d.x), vec4<i32>(global2.d.x, var_0.d.x, -1i, var_0.d.x)) & -vec4<i32>(global2.d.x, var_0.d.x, 2147483647i, global2.d.x), _wgslsmith_div_vec4_i32(func_2(vec3<bool>(var_1, false, true)), reverseBits(vec4<i32>(global2.d.x, -65270i, 0i, global2.d.x)))) << ((func_3(vec2<f32>(-586f, 1671f), Struct_2(u_input.d, Struct_1(var_0.a, 21491u, false, global2.d)), Struct_3(vec3<bool>(false, var_0.c, var_0.c), Struct_2(vec4<u32>(1u, 21669u, 20014u, 13934u), Struct_1(global2.a, 38064u, global2.c, vec2<i32>(0i, -1i))), vec4<bool>(false, true, true, true), Struct_2(u_input.d, Struct_1(vec3<f32>(global2.a.x, var_2, global2.a.x), u_input.b, global0[_wgslsmith_index_u32(1u, 20u)], var_0.d)), global2.d.x)) | (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 22722u, var_0.b), u_input.d) >> (u_input.d % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global0 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(select(u_input.d.wy, vec2<u32>(1u, 80745u), vec2<bool>(global0[_wgslsmith_index_u32(25128u, 20u)], global2.c)), ~vec2<u32>(4294967295u, global2.b)), 0u, var_0.b ^ global2.b), ~vec3<u32>(94468u, countOneBits(u_input.b), 70663u), ~_wgslsmith_sub_vec3_u32(u_input.d.yyx, ~u_input.d.xyx)), 0i);
}

