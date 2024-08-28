struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: vec3<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, vec4<f32>(1029f, -880f, 1129f, -293f), true, vec3<i32>(-1i, -17682i, 3497i), vec3<f32>(269f, 890f, 516f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = arg_0.a;
    global0 = Struct_1(~(~max(arg_0.b.x, -1i)), arg_0.a.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.e.x - global0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1764f), all(select(vec2<bool>(global0.c, false), vec2<bool>(global0.c, true), true)))) <= _wgslsmith_div_f32(arg_0.a.e.x, _wgslsmith_f_op_f32(-693f - global0.b.x)), _wgslsmith_div_vec3_i32(max((u_input.b.wwx >> (u_input.a.xyw % vec3<u32>(32u))) & (vec3<i32>(global0.a, arg_0.a.a, global0.a) & vec3<i32>(global0.a, 29855i, u_input.b.x)), select(firstTrailingBit(u_input.b.xzy), arg_0.a.d, global0.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.b.x, u_input.b.x, 8271i), u_input.b.zww) | global0.d), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, -1040f) * _wgslsmith_f_op_vec3_f32(arg_0.a.e + vec3<f32>(arg_0.a.b.x, global0.b.x, global0.e.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.e.x, global0.b.x, global0.e.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a.b.x, -354f, global0.b.x))))))));
    var var_0 = arg_0.a;
    var_0 = Struct_1(u_input.c, arg_0.a.b, any(select(!(!vec3<bool>(false, true, var_0.c)), vec3<bool>(true, var_0.c, any(vec3<bool>(var_0.c, false, false))), !vec3<bool>(true, true, arg_0.a.c))), ~vec3<i32>(global0.a, 0i, 9691i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(max(global0.e.x, var_0.b.x)), 290f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.e.x, arg_0.a.e.x, -1306f))), vec3<f32>(-1032f, -1000f, var_0.e.x))))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e.x) * 1f), -1431f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(227f + -1075f)))));
    var_0 = Struct_1(min(u_input.c, _wgslsmith_div_i32(var_0.a ^ var_0.d.x, var_0.d.x) << (~_wgslsmith_clamp_u32(arg_0.c, 1885u, arg_0.c) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(global0.b.x, global0.b.x, 621f, 344f)) * var_0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0.a.e.x, -1007f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e.x)) + _wgslsmith_f_op_f32(floor(var_0.b.x)))) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(round(var_0.e.x))))), vec3<i32>(_wgslsmith_mult_i32(0i, arg_0.d.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_0.d.xy, vec2<i32>(2147483647i, arg_0.d.x)) & _wgslsmith_clamp_vec2_i32(global0.d.zz, global0.d.xy, vec2<i32>(-21274i, global0.d.x)), ~(arg_0.d << (vec2<u32>(69025u, 36510u) % vec2<u32>(32u)))), arg_0.a.a), arg_0.a.b.yxx);
    return !arg_0.a.c;
}

fn func_2() -> Struct_2 {
    let var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1706f)), global0.e.x, func_3(Struct_2(Struct_1(global0.d.x << (u_input.a.x % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, global0.e.x, 696f, global0.b.x)), global0.c | true, vec3<i32>(global0.d.x, global0.a, -12630i) >> (vec3<u32>(u_input.a.x, 81236u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(vec3<f32>(721f, global0.b.x, -1133f), global0.e)), _wgslsmith_sub_vec2_i32(u_input.b.xx, vec2<i32>(u_input.c, global0.a)) | ~u_input.b.yy, firstTrailingBit(~22686u), vec2<i32>(-1i) * -vec2<i32>(42135i, 1i)))));
    let var_2 = !vec4<bool>(_wgslsmith_f_op_f32(global0.e.x * _wgslsmith_f_op_f32(f32(-1f) * -1904f)) == -1045f, all(!select(vec4<bool>(false, true, global0.c, true), vec4<bool>(var_0, false, global0.c, var_0), true)), !(_wgslsmith_f_op_f32(-global0.b.x) <= global0.e.x), any(vec4<bool>(select(true, var_0, var_0), !var_0, var_0 | true, var_0)));
    return Struct_2(Struct_1(_wgslsmith_mod_i32(min(1i, 27142i ^ u_input.c), 52329i), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -860f), -133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(771f * global0.b.x)), _wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(trunc(440f))))), false, global0.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global0.e * vec3<f32>(-1014f, global0.e.x, global0.b.x)))))), vec2<i32>(_wgslsmith_dot_vec2_i32(global0.d.yx, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zxz, global0.d), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, global0.a), global0.d.yy))), 7212i), ~u_input.a.x, firstTrailingBit(global0.d.yz ^ vec2<i32>(~2147483647i, u_input.c)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global0 = arg_0.a;
    var var_0 = 14890u;
    var var_1 = -155f;
    let var_2 = _wgslsmith_div_u32((_wgslsmith_mult_u32(~70252u, u_input.a.x) & ~u_input.a.x) | _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), 4294967295u), select(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 4256u), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, arg_0.a.c, global0.c), true))));
    var var_3 = func_2().a;
    return func_2();
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> vec2<i32> {
    let var_0 = func_4(func_2(), arg_0);
    global0 = func_2().a;
    let var_1 = func_4(Struct_2(arg_0, _wgslsmith_sub_vec2_i32(global0.d.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_0.d.x, -59502i))), arg_1.x, arg_0.d.yz), var_0.a);
    global0 = func_4(func_2(), func_2().a).a;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.e.x, global0.b.x, 834f), vec3<f32>(1300f, 196f, -608f)))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, var_1.a.b.x, 363f) + var_0.a.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(891f, 1196f, global0.e.x))), _wgslsmith_f_op_vec3_f32(global0.e + _wgslsmith_f_op_vec3_f32(vec3<f32>(450f, var_0.a.e.x, var_0.a.e.x) * arg_0.b.wyz)))))));
    return vec2<i32>(_wgslsmith_add_i32(-9967i, -7135i), _wgslsmith_sub_i32(-23087i, abs(-global0.d.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1019f - global0.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.e.x, global0.e.x))))))), -432f, _wgslsmith_f_op_f32(arg_0 + -1292f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -472f) - _wgslsmith_f_op_f32(f32(-1f) * -2012f)));
    global0 = Struct_1(min(-_wgslsmith_add_i32(arg_1.b.x, arg_1.d.x) & ~arg_1.b.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_1.d.x >> (arg_1.c % 32u), -u_input.c), _wgslsmith_sub_i32(global0.d.x, 10365i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1020f, _wgslsmith_f_op_f32(arg_1.a.e.x - _wgslsmith_f_op_f32(224f + -954f)), var_0.x, -1123f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-624f, global0.e.x, arg_1.a.b.x, 397f) + arg_1.a.b), _wgslsmith_f_op_vec4_f32(select(arg_1.a.b, vec4<f32>(2218f, global0.e.x, var_0.x, 1180f), true)))))), all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), !global0.c), !select(vec2<bool>(arg_1.a.c, global0.c), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, global0.c), vec2<bool>(arg_1.a.c, global0.c), arg_1.a.c))), countOneBits(-firstTrailingBit(u_input.b.zzy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(floor(global0.b.x)), var_0.x))));
    var var_1 = abs(~u_input.a & ~firstLeadingBit(_wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(31052u, arg_1.c, u_input.a.x, 72280u))));
    let var_2 = Struct_1(func_2().b.x, global0.b, true, arg_1.a.d, var_0.wyz);
    var var_3 = Struct_1(~var_2.a, var_2.b, true, vec3<i32>(abs(arg_1.b.x), func_1(func_2().a, u_input.a).x, -19822i), vec3<f32>(_wgslsmith_f_op_f32(sign(-721f)), var_0.x, arg_0));
    return u_input.a.wxy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.wyz;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.e.x * global0.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), all(!select(vec4<bool>(true, global0.c, global0.c, true), vec4<bool>(true, global0.c, false, false), vec4<bool>(global0.c, global0.c, true, global0.c))))));
    let var_2 = _wgslsmith_mult_vec3_u32(func_5(_wgslsmith_f_op_f32(abs(-830f)), Struct_2(Struct_1(-global0.d.x, global0.b, global0.c, global0.d ^ global0.d, vec3<f32>(-1000f, global0.e.x, global0.e.x)), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(-2147483647i, -50506i)), _wgslsmith_sub_vec2_i32(u_input.b.zz, u_input.b.zy)), 26646u, ~func_1(Struct_1(global0.a, vec4<f32>(var_0.x, 962f, 919f, var_0.x), global0.c, vec3<i32>(global0.a, 2147483647i, -1i), global0.e), vec4<u32>(0u, u_input.a.x, u_input.a.x, 68494u)))), u_input.a.yyw & _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xyz, abs(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~func_5(var_0.x, Struct_2(Struct_1(u_input.b.x, vec4<f32>(var_0.x, global0.e.x, global0.e.x, var_0.x), false, u_input.b.xzw, global0.b.zyy), vec2<i32>(u_input.c, -16922i), u_input.a.x, vec2<i32>(global0.a, -33235i))), u_input.a.zzw));
    var var_3 = Struct_1(firstTrailingBit(-8880i) << (11523u % 32u), global0.b, false, vec3<i32>(global0.d.x, u_input.b.x, _wgslsmith_mult_i32(43311i, ~0i)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1658f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -1727f, var_0.x)))), global0.b.xwy)));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

