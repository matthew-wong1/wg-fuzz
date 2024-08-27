struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_3,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-449f, 1233f, 949f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<f32>, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_1(firstTrailingBit(~(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 19305u), vec2<u32>(48859u, u_input.a)) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
    let var_1 = abs(~min(~vec4<u32>(u_input.a, var_0.a.x, 13938u, var_0.a.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(13923u, u_input.a, 4294967295u), vec3<u32>(var_0.a.x, u_input.a, 15775u)), ~13485u, 51887u, _wgslsmith_dot_vec2_u32(var_0.a, var_0.a))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(max(-392f, _wgslsmith_f_op_f32(sign(599f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, arg_3, arg_2.x)) - vec3<f32>(-623f, arg_3, _wgslsmith_f_op_f32(f32(-1f) * -624f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(697f, _wgslsmith_f_op_f32(248f - 450f), -627f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -1403f, arg_3)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, global0.x, arg_2.x))))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(827f, global0.x, arg_3))))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.x, arg_2.x, true)))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-372f - arg_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * arg_2.x))));
    var var_2 = var_0;
    return !select(select(vec4<bool>(false, true, !arg_1, true), vec4<bool>(arg_1, true, !arg_1, true), select(select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), !vec4<bool>(true, true, false, arg_1), arg_1)), select(vec4<bool>(false, !arg_1, true, true), !select(vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, false, true, true), arg_1), arg_1), true);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_5 {
    var var_0 = ~0u;
    let var_1 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(286f * -1002f), _wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -672f) * _wgslsmith_f_op_f32(min(global0.x, -483f)))), select(min(_wgslsmith_mult_vec4_u32(~vec4<u32>(13507u, 8846u, 1u, 44280u), abs(vec4<u32>(0u, 31192u, 14736u, u_input.a))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, arg_1.a.x, 53154u), vec4<u32>(arg_1.a.x, 4294967295u, arg_1.a.x, u_input.a))), vec4<u32>(~(u_input.a | arg_1.a.x), firstLeadingBit(reverseBits(u_input.a)), u_input.a ^ abs(arg_1.a.x), arg_1.a.x), select(!(!vec4<bool>(false, true, arg_0, arg_0)), select(!vec4<bool>(false, false, arg_0, arg_0), func_3(Struct_3(vec3<i32>(1i, 1i, 8982i)), true, global0.xx, -879f), arg_0), ~12895u != (142431u | arg_1.a.x))), -1i);
    var_0 = 55548u;
    var var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a.x, var_1.a.x, 337f), var_1.a, 6357i > var_1.c))))), var_1.b, _wgslsmith_mod_i32(var_1.c, firstLeadingBit(~var_1.c)));
    var var_3 = Struct_5(vec3<u32>(~u_input.a, ~select(~arg_1.a.x, u_input.a | 10991u, false), 63360u), Struct_1(vec2<u32>(37303u, u_input.a)), Struct_3(-(~_wgslsmith_add_vec3_i32(vec3<i32>(23339i, 1i, var_1.c), vec3<i32>(var_2.c, var_2.c, var_2.c)))), _wgslsmith_add_vec4_i32(vec4<i32>(26460i, 41528i, var_2.c, var_2.c) | min(vec4<i32>(var_2.c, 1i, -1i, -1i), vec4<i32>(var_1.c, var_1.c, var_2.c, var_2.c)), -vec4<i32>(var_2.c, 1639i, 3780i, var_2.c)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(-1i), _wgslsmith_mod_i32(var_1.c, 1i), firstTrailingBit(var_2.c), var_2.c ^ var_2.c), firstTrailingBit(select(vec4<i32>(var_1.c, -33537i, 0i, 16888i), vec4<i32>(var_1.c, var_2.c, var_2.c, var_1.c), vec4<bool>(false, true, arg_0, arg_0))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, 19977i, 1i, var_1.c), vec4<i32>(14204i, var_1.c, var_1.c, var_2.c), ~vec4<i32>(-17732i, -8790i, var_2.c, -21244i))), abs(-(~(-2147483647i))));
    return Struct_5(vec3<u32>(_wgslsmith_clamp_u32(var_3.a.x, u_input.a, arg_1.a.x ^ u_input.a), 1u, select(113991u, ~var_2.b.x, var_1.c > var_3.e)) << (~_wgslsmith_div_vec3_u32(firstLeadingBit(var_2.b.yxz), ~var_2.b.wyw) % vec3<u32>(32u)), Struct_1(~arg_1.a), var_3.c, vec4<i32>(i32(-1i) * -16290i, 5193i, -18735i, var_3.c.a.x), var_3.e ^ -44028i);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_5) -> f32 {
    let var_0 = global0.x;
    let var_1 = true;
    let var_2 = func_2(true, arg_1.b).c;
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, arg_0.x, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1891f, global0.x, -370f)), true))))), arg_0));
    global0 = _wgslsmith_f_op_vec3_f32(select(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-313f, arg_0.x, -481f), vec3<f32>(arg_0.x, -656f, arg_0.x))))))), vec3<bool>(true, !var_1, true)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), arg_0.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32) -> vec4<f32> {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, -178f), vec3<f32>(-1506f, global0.x, 366f)), vec3<f32>(global0.x, global0.x, -421f)), func_2(true, Struct_1(vec2<u32>(11179u, 248u))))) + _wgslsmith_f_op_f32(global0.x - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x)))), global0.x, global0.x);
    let var_0 = Struct_2(func_2(true, Struct_1(min(~vec2<u32>(u_input.a, 9258u), vec2<u32>(69013u, u_input.a)))).a.x, ~u_input.a);
    var var_1 = all(vec2<bool>((true & all(vec4<bool>(false, false, false, false))) & true, true));
    var var_2 = Struct_2(u_input.a & ~1u, u_input.a);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * global0.x), _wgslsmith_f_op_f32(-1184f - _wgslsmith_div_f32(global0.x, 1636f))))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1561f - _wgslsmith_f_op_f32(-global0.x))))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-3045f, 427f, 121f, -296f), vec4<f32>(-475f, 1015f, global0.x, -879f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, global0.x, -239f, global0.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_3(vec3<i32>(-2147483647i, -1i, 73384i)), Struct_3(vec3<i32>(-1i, -2147483647i, 42621i)), 1i)) - vec4<f32>(-1298f, global0.x, global0.x, global0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -389f, 281f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(479f, -272f, 1000f, global0.x), vec4<f32>(1011f, 740f, -567f, global0.x))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * -639f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, 1537f)), 1000f), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -649f))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(686f - 463f))))));
    let var_1 = _wgslsmith_mod_vec4_i32(-firstTrailingBit(vec4<i32>(1i, select(-6360i, 1i, true), func_2(false, Struct_1(vec2<u32>(1u, u_input.a))).e, _wgslsmith_dot_vec2_i32(vec2<i32>(28097i, -1i), vec2<i32>(-1i, 38224i)))), firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(-2147483647i, -1i), -2147483647i, i32(-1i) * -2147483647i, -1i)) >> (~vec4<u32>(u_input.a ^ 1u, u_input.a, u_input.a, 1u) % vec4<u32>(32u)));
    var var_2 = abs(vec3<i32>(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), -var_1), ~var_1.x, -(~_wgslsmith_dot_vec3_i32(var_1.zxx, vec3<i32>(3687i, 2147483647i, var_1.x)))));
    let var_3 = Struct_2(_wgslsmith_sub_u32(u_input.a, u_input.a), select(u_input.a, ~_wgslsmith_mod_u32(countOneBits(u_input.a), u_input.a), all(func_3(Struct_3(vec3<i32>(var_1.x, -2147483647i, var_1.x)), global0.x < 263f, _wgslsmith_f_op_vec2_f32(-var_0.xy), _wgslsmith_f_op_f32(ceil(var_0.x))).yzx)));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_3.a, max(max(u_input.a, var_3.b), 0u)), ~(-(1i | -var_1.x)));
}

