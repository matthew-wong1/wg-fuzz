struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = vec2<f32>(-266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1438f))));
    let var_1 = Struct_2(arg_0, ~u_input.d.zyw, vec3<i32>(-1964i, -73112i, _wgslsmith_mult_i32(1i, _wgslsmith_mod_i32(~25993i, u_input.e.x))), Struct_1(-1077f, _wgslsmith_dot_vec4_i32(select(u_input.e, select(u_input.e, u_input.e, true), var_0.x <= var_0.x), u_input.e)));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1746f, var_0.x) * vec2<f32>(var_1.d.a, var_1.d.a)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2349f, var_1.d.a)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1170f, var_1.d.a))))) - vec2<f32>(_wgslsmith_f_op_f32(-var_1.d.a), -668f)))));
    var var_2 = u_input.e;
    let var_3 = var_1;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.a, -1000f, var_3.d.a, -348f) - vec4<f32>(-1743f, var_0.x, 1000f, var_0.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_mult_vec4_u32(u_input.d, _wgslsmith_mod_vec4_u32(u_input.d, u_input.d)) << ((~(~vec4<u32>(u_input.c, u_input.a, 29554u, u_input.c)) << (vec4<u32>(countOneBits(4294967295u), 17224u, ~30096u ^ _wgslsmith_sub_u32(u_input.d.x, u_input.a), u_input.a << (62655u % 32u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = Struct_1(arg_0.a, 1i);
    var var_2 = var_1;
    var_2 = var_1;
    var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -992f), -56299i);
    return ~_wgslsmith_sub_i32(~abs(24789i), 0i);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_2(~(~1u), u_input.d.zxx, vec3<i32>(-u_input.e.x << (u_input.c % 32u), u_input.e.x, -reverseBits(1i)) | u_input.e.ywy, Struct_1(346f, -1i));
    var var_1 = 46533u;
    let var_2 = u_input.e;
    let var_3 = select(vec2<bool>(u_input.b > _wgslsmith_clamp_i32(u_input.e.x, firstLeadingBit(var_0.c.x), -var_2.x), true), select(vec2<bool>(!(u_input.b <= -26204i), !select(true, true, true)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, true), vec2<bool>(false, true)), !(any(vec3<bool>(true, true, true)) & all(vec4<bool>(true, true, false, true)))), all(vec2<bool>(true, true)));
    let var_4 = 0u;
    return ~func_4(var_0.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a, -1293f, 663f, var_0.d.a) - vec4<f32>(-1030f, var_0.d.a, -260f, var_0.d.a)), vec4<f32>(-295f, var_0.d.a, var_0.d.a, var_0.d.a)) + vec4<f32>(1005f, -2173f, var_0.d.a, 675f)), _wgslsmith_f_op_vec4_f32(func_3(firstLeadingBit(u_input.a))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(700f, var_0.d.a, var_0.d.a, var_0.d.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.a, var_0.d.a, var_0.d.a, var_0.d.a) - vec4<f32>(var_0.d.a, 915f, -903f, var_0.d.a)))))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = arg_0;
    let var_1 = Struct_2(~(~firstTrailingBit(firstTrailingBit(u_input.d.x))), u_input.d.wxw, _wgslsmith_div_vec3_i32(-u_input.e.yzx, ~(-(u_input.e.zzw & vec3<i32>(u_input.e.x, u_input.b, -2147483647i)))), Struct_1(106f, abs(-2415i)));
    var var_2 = _wgslsmith_f_op_f32(-var_1.d.a);
    var_0 = false;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -2777f), firstTrailingBit(2147483647i) ^ _wgslsmith_div_i32(firstTrailingBit(u_input.e.x), u_input.b));
    return _wgslsmith_f_op_f32(step(var_1.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -609f))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.e.x, -1i), vec3<i32>(u_input.b, 2147483647i, -1i)) >= func_2(73359u, u_input.d), _wgslsmith_f_op_vec4_f32(func_3(firstLeadingBit(4294967295u))).x, 13157u))));
    var var_1 = arg_1;
    var var_2 = -19404i;
    var var_3 = 0i;
    var_0 = _wgslsmith_f_op_f32(sign(-211f));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(236f, _wgslsmith_f_op_f32(777f * _wgslsmith_f_op_f32(step(-635f, 527f))))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(748f, -1120f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1729f, -1975f))))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(max(-711f, _wgslsmith_div_f32(-619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f))))));
    var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-192f)), -1000f) * -1181f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.b, i32(-1i) * -27559i, _wgslsmith_sub_i32(u_input.b, u_input.b)), min(-u_input.e.wwz, u_input.e.wzy & vec3<i32>(3006i, -19583i, 16793i))), true)));
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(696f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, -1000f)))), _wgslsmith_f_op_f32(-var_1.x)), u_input.b);
    let var_3 = true;
    let var_4 = Struct_2(~u_input.a, vec3<u32>(min(u_input.a, firstLeadingBit(max(0u, u_input.c))), min(_wgslsmith_dot_vec3_u32(u_input.d.xwz, ~u_input.d.yxy), 4294967295u), u_input.a), ~u_input.e.xyy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(482f)))), u_input.e.x));
    var var_5 = vec3<u32>(select(~(~min(var_4.a, 22949u)), ~(~abs(u_input.a)), any(select(vec3<bool>(true, true, var_3), !vec3<bool>(true, false, var_3), any(vec3<bool>(var_3, false, var_3))))), select(u_input.c, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, 1u), var_4.a), false), max(select(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(13274u, 42815u, var_4.a, 76664u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), u_input.d.wxz), var_3) & (_wgslsmith_dot_vec4_u32(u_input.d, u_input.d) & ~1u), _wgslsmith_add_u32(43338u, 1u)));
    let var_6 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1371f, _wgslsmith_f_op_f32(-1105f + var_1.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a + 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) - _wgslsmith_f_op_f32(-2518f + 386f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -368f), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_vec4_f32(func_3(u_input.c)).x));
    var var_7 = Struct_1(109f, abs((min(var_2.b, var_2.b) | 0i) & -1i));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, var_5.x), var_5.zy))), ~(-var_4.c | ~u_input.e.wyw), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.a)), _wgslsmith_f_op_f32(step(-1420f, _wgslsmith_f_op_f32(round(-2370f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(856f)) * _wgslsmith_f_op_f32(floor(var_6.x))), _wgslsmith_f_op_f32(-var_7.a))));
}

