struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(14995u, 16693u, 23923u, 1u);

var<private> global1: Struct_2;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_1)));
    global1 = Struct_2(-9441i | _wgslsmith_mult_i32(countOneBits(~1i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c.x, 1777i, 21202i), vec4<i32>(-1i, -64210i, -1i, 8350i)) >> (global1.b.a.x % 32u)), arg_0);
    var var_1 = -vec3<i32>((select(2147483647i, 2565i, false) << (arg_0.a.x % 32u)) >> (global1.b.a.x % 32u), max(global1.a, max(-1i, global1.a) << (~global0.x % 32u)), min(-1i, -(global1.a ^ u_input.a)));
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~(~arg_0.a.x), u_input.d, _wgslsmith_div_u32(abs(min(1u, 36482u)), 20418u), 1u), arg_0.a);
    var var_2 = Struct_2(_wgslsmith_sub_i32(global1.a, select(-1i, u_input.a, false | any(vec3<bool>(true, true, true)))), global1.b);
    return vec4<u32>(~0u << (_wgslsmith_div_u32(41309u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, global0.x, global1.b.a.x), global1.b.a.xwz)) % 32u), arg_0.a.x, 53550u, _wgslsmith_add_u32(~_wgslsmith_div_u32(24357u, global1.b.a.x), arg_0.a.x)) << (vec4<u32>(global1.b.a.x, abs(67842u), global0.x, global0.x) % vec4<u32>(32u));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> Struct_1 {
    global0 = global1.b.a;
    global1 = Struct_2(1i, Struct_1(global1.b.a << (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_1.x, arg_2, arg_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, arg_1.x, global1.b.a.x, 4294967295u), vec4<u32>(arg_1.x, arg_1.x, 35581u, 9558u))) % vec4<u32>(32u))));
    let var_0 = Struct_1(_wgslsmith_mult_vec4_u32(~global1.b.a >> (~_wgslsmith_clamp_vec4_u32(vec4<u32>(47600u, 1u, 50218u, 0u), global1.b.a, vec4<u32>(0u, u_input.d, 78083u, arg_1.x)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(func_3(Struct_1(vec4<u32>(4294967295u, global1.b.a.x, 1u, u_input.d)), _wgslsmith_f_op_f32(sign(arg_0))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, global1.b.a.x, 62601u, 1u), vec4<u32>(global1.b.a.x, 4724u, global1.b.a.x, arg_2)), global1.b.a, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false)))));
    var var_1 = 1349f;
    var var_2 = !select(vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, false), true), vec2<bool>(true, all(vec3<bool>(true, true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(false, true))), true);
    return global1.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> u32 {
    global1 = Struct_2(i32(-1i) * -1i, Struct_1(arg_1.a));
    global1 = Struct_2(~_wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, -1i), 1i), func_2(_wgslsmith_f_op_f32(1187f - _wgslsmith_f_op_f32(-1333f + _wgslsmith_f_op_f32(f32(-1f) * -1110f))), ~firstTrailingBit(global1.b.a.ww >> (global1.b.a.yw % vec2<u32>(32u))), _wgslsmith_sub_u32(~4294967295u, u_input.d)));
    global1 = Struct_2(u_input.a, Struct_1(arg_1.a));
    let var_0 = Struct_2(_wgslsmith_clamp_i32(u_input.a, global1.a, firstTrailingBit(reverseBits(_wgslsmith_div_i32(u_input.b, arg_2)))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-666f))), _wgslsmith_mod_vec2_u32(~firstTrailingBit(vec2<u32>(global1.b.a.x, 1u)), _wgslsmith_mod_vec2_u32(func_3(global1.b, -410f).xx, vec2<u32>(arg_1.a.x, 1u))), firstLeadingBit(global0.x)));
    global0 = countOneBits(countOneBits(~(~vec4<u32>(global0.x, 13924u, var_0.b.a.x, global1.b.a.x))));
    return ~countOneBits(23525u);
}

fn func_1() -> f32 {
    let var_0 = min(_wgslsmith_add_u32(2148u, func_4(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -109f), ~vec2<u32>(global1.b.a.x, 1u), 4294967295u), -global1.a & u_input.a)), 0u);
    global0 = vec4<u32>(~_wgslsmith_mod_u32(133740u, 1u), global0.x, _wgslsmith_dot_vec3_u32(global0.ywz, vec3<u32>(1u, 0u << (var_0 % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(global1.b.a.x, 0u), global1.b.a.x))), ~(func_2(_wgslsmith_f_op_f32(-261f - -1447f), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, global0.x), vec2<u32>(1u, 1u)), 34491u >> (u_input.d % 32u)).a.x & ~global0.x));
    var var_1 = (1u & _wgslsmith_div_u32(countOneBits(~36801u), global0.x)) | ~(~(~(~global1.b.a.x)));
    var var_2 = 12638u;
    let var_3 = select(vec3<i32>(5832i, ~8674i, u_input.c.x), -_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 10231i, -2147483647i), u_input.c), u_input.c), any(vec4<bool>(all(vec2<bool>(true, false)), true, false, any(vec2<bool>(false, true)))) & false);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(437f, -183f))) - 106f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -569f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1321f)), -1845f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2297f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(598f + -608f) + _wgslsmith_f_op_f32(floor(-941f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1931f), -1758f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-408f, 470f, -1445f), vec3<f32>(559f, -491f, 358f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-898f, 2318f, -982f)), true))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1383f, 499f, 814f), _wgslsmith_f_op_vec3_f32(vec3<f32>(2148f, 615f, 901f) + vec3<f32>(-413f, -1776f, -327f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(241f, -1588f, 956f), vec3<f32>(852f, 1000f, -369f))) - vec3<f32>(604f, -534f, 502f)))));
    var var_1 = reverseBits(_wgslsmith_mult_i32(-_wgslsmith_mod_i32(-2147483647i, u_input.a), u_input.e)) << (global0.x % 32u);
    var_1 = -u_input.b;
    let var_2 = ~(vec3<u32>(~(~u_input.d), reverseBits(firstLeadingBit(global1.b.a.x)), ~select(u_input.d, u_input.d, true)) >> (countOneBits(global0.zxz) % vec3<u32>(32u)));
    var var_3 = Struct_2(-global1.a, Struct_1(global1.b.a));
    let var_4 = 0u;
    let var_5 = Struct_1(countOneBits(~reverseBits(global1.b.a)));
    var var_6 = _wgslsmith_div_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(global1.a, global1.a, -1i, global1.a), vec4<i32>(-1i, 0i, 2147483647i, 1i)) ^ firstTrailingBit(vec4<i32>(u_input.a, u_input.e, -2147483647i, 0i)), -(vec4<i32>(-2147483647i, -10915i, global1.a, var_3.a) & vec4<i32>(u_input.b, -22023i, u_input.a, var_3.a))), min(~(-vec4<i32>(-27680i, -2147483647i, u_input.a, global1.a)), (vec4<i32>(2147483647i, 1i, 0i, var_3.a) ^ vec4<i32>(var_3.a, 11000i, -2147483647i, 14652i)) & ~vec4<i32>(u_input.a, u_input.e, global1.a, u_input.c.x))) & select(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, -1i, global1.a, 0i), vec4<i32>(2147483647i, var_3.a, global1.a, 0i)), 0i, _wgslsmith_div_i32(global1.a, u_input.a), -33769i), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 0i, u_input.e), vec4<i32>(2147483647i, -1i, -1i, 1i)))), vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(-2147483647i, var_3.a)) << (~0u % 32u), global1.a & -28194i, ~(-2147483647i)), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), false));
    let var_7 = func_4(vec2<bool>(true, !all(vec4<bool>(false, false, false, false))), func_2(var_0.x, vec2<u32>(1u, var_5.a.x), _wgslsmith_mod_u32(1u, var_4)), min(firstTrailingBit(32720i), ~_wgslsmith_mod_i32(u_input.b, 25972i))) << (var_4 % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(50626u, global0.x, u_input.d, ~(~13072u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.zz)) + var_0.zy)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -708f, -2158f, -1473f) + vec4<f32>(var_0.x, -845f, -1170f, var_0.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -1519f, 651f, var_0.x), vec4<f32>(var_0.x, var_0.x, var_0.x, -2106f))), true)))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(ceil(-883f)), _wgslsmith_f_op_f32(f32(-1f) * -685f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) * _wgslsmith_div_f32(1135f, 1021f))), all(vec4<bool>(false, 442f >= var_0.x, any(vec4<bool>(false, false, true, false)), -158f >= var_0.x)))));
}

