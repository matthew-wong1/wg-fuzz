struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = arg_3;
    let var_1 = _wgslsmith_mult_vec3_u32(arg_0, ~(~(~(~vec3<u32>(73984u, 56027u, 25430u)))));
    var var_2 = arg_3;
    var var_3 = ~(u_input.a ^ _wgslsmith_mult_vec3_i32(arg_2, u_input.a));
    global1 = select(vec3<bool>(true, false, arg_3.e), !select(vec3<bool>(var_2.e, !global1.x, !global2.e), vec3<bool>(true, var_0.e, true), select(!vec3<bool>(true, var_0.e, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(var_2.e, false, false), vec3<bool>(var_2.e, true, global2.e), false))), var_0.e);
    return var_1.zx;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> bool {
    let var_0 = arg_3;
    global0 = ~_wgslsmith_clamp_u32(22303u, 69154u, func_3(vec3<u32>(15594u, _wgslsmith_div_u32(arg_2, 0u), arg_1.b), 221f, ~(u_input.a | vec3<i32>(0i, -8548i, -2197i)), arg_1).x);
    let var_1 = Struct_1(1u, _wgslsmith_clamp_u32(4294967295u, 20590u, ~0u), _wgslsmith_sub_u32(4294967295u, arg_3.c) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.a, 0u) << (vec3<u32>(arg_1.b, 1u, var_0.a) % vec3<u32>(32u)), countOneBits(vec3<u32>(arg_2, global2.c, 0u))) >> (u_input.d % 32u)) % 32u), -1054f, !var_0.e);
    var var_2 = ~(~func_3(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 52598u, var_0.a), vec3<u32>(var_1.a, arg_0.x, var_0.a)), vec3<u32>(arg_1.b, 0u, u_input.e)), var_0.d, select(-vec3<i32>(0i, -26151i, -14615i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.a.x, 21639i), u_input.b), select(vec3<bool>(false, var_0.e, global1.x), vec3<bool>(false, var_0.e, false), vec3<bool>(var_0.e, global2.e, true))), Struct_1(~arg_1.c, max(arg_2, 4294967295u), var_0.a, _wgslsmith_f_op_f32(1000f + var_1.d), true)).x);
    global0 = ~_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(~37593u, arg_0.x)) << (func_3(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, arg_1.c), _wgslsmith_sub_vec3_u32(vec3<u32>(24514u, arg_1.a, u_input.c), vec3<u32>(u_input.d, arg_2, var_1.b))), firstLeadingBit(~0u), ~(arg_0.x >> (85286u % 32u))), _wgslsmith_f_op_f32(max(713f, _wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(round(352f))))), vec3<i32>(u_input.b.x, -1i, 0i), Struct_1(~_wgslsmith_clamp_u32(4294967295u, 1u, 0u), arg_2 | ~44188u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a, 0u, global2.c)), vec3<u32>(0u, 14854u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d + 571f)), global1.x)).x % 32u);
    return any(vec4<bool>(var_1.e, !var_0.e, arg_1.e, !select(!global2.e, false, arg_3.e)));
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: vec4<i32>) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_i32((firstTrailingBit(_wgslsmith_div_vec3_i32(arg_2.yxy, u_input.b)) ^ vec3<i32>(arg_2.x, firstLeadingBit(2147483647i), u_input.a.x)) | arg_0, vec3<i32>(_wgslsmith_div_i32(-2147483647i, ~arg_2.x | _wgslsmith_div_i32(-45677i, arg_0.x)), -arg_1, _wgslsmith_add_i32(arg_0.x, -arg_2.x)));
    global2 = Struct_1(u_input.e, global2.c, 51213u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1433f)) * global2.d)))), func_4(func_3(vec3<u32>(1u, ~0u, select(u_input.d, global2.b, false)), 1491f, arg_2.yxz, Struct_1(1u, ~u_input.d, 4294967295u, global2.d, !global1.x)), Struct_1(u_input.e, countOneBits(1u), 36211u, _wgslsmith_f_op_f32(global2.d * _wgslsmith_f_op_f32(1167f * 321f)), any(select(vec3<bool>(global2.e, global1.x, true), vec3<bool>(true, global2.e, global1.x), false))), firstTrailingBit(4294967295u) ^ ~(~22365u), Struct_1(~72802u, 4294967295u, ~(~0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d - 712f), global2.d), global1.x)));
    global1 = !select(select(select(!vec3<bool>(true, global1.x, global1.x), !vec3<bool>(global2.e, global2.e, global1.x), false), select(!vec3<bool>(global1.x, true, global2.e), !vec3<bool>(global1.x, global2.e, global2.e), global2.e || true), 4294967295u > global2.a), select(!select(vec3<bool>(global1.x, global2.e, global1.x), vec3<bool>(global1.x, true, global2.e), vec3<bool>(global2.e, global1.x, false)), select(vec3<bool>(false, true, global1.x), select(vec3<bool>(global2.e, false, global2.e), vec3<bool>(false, true, global1.x), false), false), vec3<bool>(false, !global1.x, true)), any(!(!global1.zy)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-443f - 673f), 2201f))));
    var var_2 = arg_2.wzz;
    return select(!select(select(vec4<bool>(global2.e, false, global1.x, global2.e), vec4<bool>(false, global2.e, global2.e, global2.e), !vec4<bool>(false, global2.e, false, true)), vec4<bool>(global2.e, true, 4294967295u < u_input.d, !global2.e), arg_2.x <= countOneBits(var_2.x)), !(!(!vec4<bool>(global1.x, false, global2.e, false))), !(!select(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, false, false), !global2.e)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(arg_0 << (global2.b % 32u));
    let var_1 = _wgslsmith_f_op_f32(485f * -1315f);
    let var_2 = select(!(!(!(!vec4<bool>(false, false, false, arg_1.e)))), select(select(!select(vec4<bool>(false, true, true, global2.e), vec4<bool>(arg_1.e, false, true, global2.e), vec4<bool>(false, false, false, true)), !select(vec4<bool>(arg_1.e, false, false, arg_1.e), vec4<bool>(global1.x, false, false, false), vec4<bool>(true, arg_1.e, global2.e, global2.e)), select(func_2(vec3<i32>(arg_0, arg_0, -32622i), -1i, vec4<i32>(u_input.a.x, arg_0, arg_0, 1i)), !vec4<bool>(false, global1.x, arg_1.e, global2.e), !vec4<bool>(true, false, global2.e, true))), !vec4<bool>(global2.e, func_2(u_input.b, 35914i, vec4<i32>(arg_0, 25389i, u_input.b.x, -65798i)).x, false, any(vec2<bool>(global2.e, arg_1.e))), !(!select(vec4<bool>(global2.e, true, false, global2.e), vec4<bool>(global1.x, arg_1.e, false, true), global1.x))), !vec4<bool>(global1.x, false, true, all(select(vec3<bool>(true, global1.x, false), vec3<bool>(arg_1.e, arg_1.e, false), vec3<bool>(false, arg_1.e, global1.x)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_1, 100f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - -1098f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, 698f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 312f)))), vec2<f32>(_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(global2.d * 1466f)), global2.d), var_2.xw)));
    var var_4 = func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(83418u, reverseBits(_wgslsmith_clamp_u32(global2.b, 23654u, arg_1.c)), global2.a), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.b, u_input.c, u_input.e), vec3<u32>(89023u, 33587u, global2.a)))), -942f, ~vec3<i32>(-9010i, arg_0, ~0i), arg_1);
    return Struct_1(firstTrailingBit(reverseBits(22736u)), _wgslsmith_mult_u32((_wgslsmith_mult_u32(0u, 4294967295u) | global2.a) << (0u % 32u), 60387u), global2.a, 977f, func_2(vec3<i32>(max(-2147483647i >> (u_input.c % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(0i, 0i))), ~(-2147483647i), arg_0), u_input.a.x, _wgslsmith_add_vec4_i32(vec4<i32>(0i, arg_0, arg_0, arg_0) | reverseBits(vec4<i32>(arg_0, arg_0, arg_0, 1i)), abs(~vec4<i32>(u_input.a.x, -29245i, -6744i, arg_0)))).x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -u_input.a.zx;
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, _wgslsmith_dot_vec2_u32(~(vec2<u32>(14332u, arg_0.b) & vec2<u32>(13831u, 34122u)), func_3(vec3<u32>(arg_1.b, arg_1.b, 65364u) ^ vec3<u32>(0u, 4294967295u, 14118u), -230f, u_input.b << (vec3<u32>(1u, 4294967295u, u_input.d) % vec3<u32>(32u)), arg_0)), _wgslsmith_clamp_u32(~global2.b << (_wgslsmith_div_u32(14350u, global2.b) % 32u), global2.b, ~(~u_input.e))), abs(~max(~vec3<u32>(u_input.d, 4294967295u, u_input.e), ~vec3<u32>(arg_1.b, 30316u, arg_1.b))));
    var_0 = vec2<i32>(var_0.x, _wgslsmith_mod_i32(u_input.b.x, -2147483647i));
    return Struct_1(~0u, max(_wgslsmith_add_u32(~1u, ~u_input.e) >> (_wgslsmith_div_u32(~global2.c, ~7560u) % 32u), func_1(~(u_input.b.x & u_input.a.x), arg_1).a), ~_wgslsmith_mult_u32(countOneBits(global2.c), arg_1.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1329f - _wgslsmith_f_op_f32(1000f + -314f)))), func_2(vec3<i32>(-2147483647i, _wgslsmith_add_i32(~1i, u_input.a.x), ~_wgslsmith_clamp_i32(1i, -16260i, -46909i)), -max(1i, -22155i), vec4<i32>(~(-1i), -28106i, var_0.x, u_input.a.x >> (u_input.d % 32u)) | vec4<i32>(_wgslsmith_sub_i32(var_0.x, u_input.a.x), 0i >> (0u % 32u), _wgslsmith_sub_i32(2147483647i, u_input.b.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(u_input.b.x, Struct_1(u_input.c, 0u, 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d + global2.d), _wgslsmith_div_f32(global2.d, 1068f)), any(!vec3<bool>(global1.x, global1.x, global2.e)))), Struct_1(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 23523u), vec2<u32>(1u, 2225u), vec2<u32>(4294967295u, 38211u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.c, global2.b), vec2<u32>(1u, u_input.c), false), firstLeadingBit(vec2<u32>(4294967295u, 26274u)))), 37565u, ~(~u_input.d), _wgslsmith_f_op_f32(floor(1143f)), true));
    let var_1 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(max(u_input.b, vec3<i32>(2147483647i, u_input.b.x, 0i)), ~(~u_input.a)), countOneBits(u_input.b)));
    let var_2 = -(min(~_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, u_input.a.x, -2746i, -1i), vec4<i32>(u_input.b.x, u_input.a.x, var_1, -26605i)), vec4<i32>(reverseBits(653i), 36009i, abs(u_input.b.x), -34807i)) >> (~vec4<u32>(u_input.e, firstLeadingBit(u_input.e), reverseBits(global2.c), _wgslsmith_div_u32(u_input.c, u_input.c)) % vec4<u32>(32u)));
    global2 = Struct_1(u_input.c, ~_wgslsmith_div_u32(global2.c, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global2.b, var_0.c), select(vec3<u32>(20011u, 0u, var_0.c), vec3<u32>(u_input.d, 21078u, global2.b), var_0.e))), 1u, _wgslsmith_f_op_f32(1489f - _wgslsmith_f_op_f32(f32(-1f) * -396f)), !(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, u_input.d), _wgslsmith_sub_u32(4294967295u, u_input.d)) <= 4294967295u));
    var var_3 = !vec2<bool>(func_4(reverseBits(vec2<u32>(0u, u_input.e) << (vec2<u32>(var_0.b, global2.b) % vec2<u32>(32u))), func_1(firstLeadingBit(var_1), Struct_1(2550u, u_input.c, global2.b, -1000f, false)), 4294967295u, func_5(func_5(Struct_1(0u, u_input.e, 117941u, global2.d, global2.e), Struct_1(u_input.e, 1u, var_0.a, global2.d, global2.e)), func_1(var_1, Struct_1(4294967295u, global2.b, u_input.d, 652f, true)))), false);
    let var_4 = _wgslsmith_f_op_f32(global2.d + global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_i32(vec4<i32>(45726i & var_2.x, 1i << (1u % 32u), 0i, -1i), var_2), var_2.zw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-784f, var_4, -1296f, var_4), vec4<f32>(-775f, var_0.d, global2.d, 776f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1760f, global2.d, global2.d, var_4)), false)), vec4<f32>(global2.d, _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(min(var_4, global2.d)), var_0.d))));
}

