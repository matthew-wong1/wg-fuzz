struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<i32>) -> vec4<u32> {
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global1.x, true)) - _wgslsmith_f_op_f32(select(159f, 349f, true)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global1.x, global1.x) + vec3<f32>(global1.x, -1164f, global0.x))) - vec3<f32>(860f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 428f, global1.x))))))));
    global0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, 1307f))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1244f, global0.x), vec2<f32>(global0.x, 257f))), global1.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xx)) + global1.xx))));
    let var_0 = _wgslsmith_clamp_i32(arg_1.x & 1i, u_input.c.x, abs(44468i));
    var var_1 = Struct_3(vec4<bool>(any(vec3<bool>(false, false, true)) | (425f >= _wgslsmith_f_op_f32(ceil(331f))), true, select(true, true, true) | any(vec2<bool>(true, true)), false || (_wgslsmith_f_op_f32(-global0.x) > global1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.zx - vec2<f32>(_wgslsmith_f_op_f32(max(1306f, global1.x)), _wgslsmith_f_op_f32(abs(global1.x)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, global0.x), vec2<f32>(629f, global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1000f) * vec2<f32>(global1.x, -508f)))))), Struct_1(vec2<u32>(53892u, u_input.e), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 36061u, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.d, u_input.e)), firstTrailingBit(1u)), 1u)));
    var var_2 = u_input.e;
    return firstLeadingBit(select(select(~vec4<u32>(0u, 1u, 1u, 38927u), ~vec4<u32>(1u, var_1.c.a.x, u_input.a, 709u), false), abs(abs(vec4<u32>(u_input.e, 40106u, u_input.b, 1u) << (vec4<u32>(4294967295u, 74617u, u_input.d, 24666u) % vec4<u32>(32u)))), vec4<bool>(var_1.a.x, !var_1.a.x, var_1.a.x, all(!var_1.a))));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = true;
    global0 = arg_2.yx;
    let var_2 = Struct_4(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(arg_0.a.x, arg_0.a.x, 26128u, u_input.d)), func_3(12585i, vec4<i32>(2147483647i, -41129i, u_input.c.x, -44051i), vec3<i32>(u_input.c.x, u_input.c.x, -13855i)), select(vec4<u32>(4730u, var_0.a.x, u_input.e, arg_0.a.x), vec4<u32>(var_0.a.x, 48687u, 0u, arg_0.a.x), false)), _wgslsmith_sub_vec4_u32(arg_0.a, var_0.a) | (vec4<u32>(78623u, 0u, u_input.a, var_0.a.x) & vec4<u32>(arg_0.a.x, var_0.a.x, 1u, 0u))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.e, var_0.a.x, 86045u, var_0.a.x), arg_0.a) >> (firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 15814u, 0u, arg_0.a.x), vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, 4294967295u))) % vec4<u32>(32u))));
    var_1 = !(!(28027u >= (~u_input.b ^ 3477u)));
    return Struct_1(~_wgslsmith_mod_vec2_u32(vec2<u32>(~0u, ~var_2.a.x), var_0.a.wx), min(select(~_wgslsmith_add_vec2_u32(var_0.a.wz, var_2.a.yx), ~abs(vec2<u32>(8757u, arg_0.a.x)), vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, u_input.b), var_0.a.xz)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(165f, 280f, arg_2.x) + arg_1.ywy)) - arg_1.zyz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(1625f)), global1.x, arg_0.x), arg_1.wxw, vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -724f), -1000f, arg_2.x))));
    let var_1 = func_2(Struct_4(vec4<u32>(58107u & u_input.d, _wgslsmith_sub_u32(~0u, 0u), 36834u, u_input.e)), -1000f, _wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(arg_2.zwy * vec3<f32>(arg_3, var_0.x, arg_0.x))));
    global1 = _wgslsmith_f_op_vec3_f32(-var_0);
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(max(-176f, _wgslsmith_f_op_f32(floor(551f))))), arg_0.xz)) * arg_2.yz);
    let var_2 = func_2(Struct_4(vec4<u32>(0u, u_input.d, min(_wgslsmith_mult_u32(var_1.b.x, var_1.a.x), u_input.e), 1u)), _wgslsmith_f_op_f32(global1.x - -198f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, var_0.x)), var_0))));
    return !(!select(vec3<bool>(false, true, all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<u32>) -> vec2<f32> {
    global0 = _wgslsmith_f_op_vec2_f32(global1.zy - vec2<f32>(_wgslsmith_f_op_f32(638f * global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-319f - 806f) + _wgslsmith_f_op_f32(-global0.x)), 443f)));
    var var_0 = vec4<u32>(0u, firstTrailingBit(1u), 25463u, ~firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.x, 1u), _wgslsmith_mult_u32(arg_2.x, u_input.e))));
    var var_1 = arg_1.xz;
    var_1 = vec2<bool>(var_1.x, arg_1.x);
    var var_2 = _wgslsmith_sub_i32(u_input.c.x, ~u_input.c.x);
    return vec2<f32>(_wgslsmith_f_op_f32(round(1109f)), _wgslsmith_f_op_f32(626f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-667f, global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 945f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.yy;
    global0 = _wgslsmith_f_op_vec2_f32(func_4(!all(vec4<bool>(true, true, true, true)), !func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global1.x, global0.x), vec3<f32>(1347f, global0.x, 643f), false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, global1.x, global0.x, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, 1194f, -273f, global1.x)), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(global0.x + global1.x))), select(abs(firstLeadingBit(~vec2<u32>(u_input.e, 4294967295u))), ~func_2(Struct_4(vec4<u32>(47102u, u_input.d, u_input.b, u_input.d)), global1.x, vec3<f32>(global0.x, global1.x, global0.x)).a >> (vec2<u32>(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.e, 4294967295u), vec3<u32>(u_input.e, u_input.b, 10728u))) % vec2<u32>(32u)), all(select(vec2<bool>(false, true), func_1(vec3<f32>(-3468f, global1.x, global1.x), vec4<f32>(-990f, global0.x, global1.x, 896f), vec4<f32>(-960f, global1.x, global1.x, global1.x), -1719f).xy, true)))));
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(global1.zy)), vec2<f32>(-1482f, 145f), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.x, 1628f), vec2<f32>(-1676f, global1.x)))))))));
    var var_1 = Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-678f - global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 586f) - var_0.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-global0.x), -1179f))), any(vec4<bool>(false, true, true, any(vec2<bool>(false, false)))))), Struct_1(~(~vec2<u32>(u_input.a, u_input.a)), ~firstLeadingBit(~vec2<u32>(5316u, 3616u))));
    global0 = _wgslsmith_f_op_vec2_f32(-var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global1.yx), select(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.xw, vec2<i32>(-2147483647i, -55665i)), ~vec2<i32>(u_input.c.x, -14324i)), ~1i), -countOneBits(vec2<i32>(-2147483647i, -1i) | u_input.c.yz), all(var_1.a)), _wgslsmith_mod_vec4_i32(-(~u_input.c), reverseBits(u_input.c)), u_input.c.x, firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(24578i, u_input.c.x) << (firstTrailingBit(29393u) % 32u), -(u_input.c.x >> (var_1.c.b.x % 32u)), countOneBits(2147483647i), u_input.c.x)));
}

