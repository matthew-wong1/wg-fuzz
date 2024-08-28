struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i, vec2<f32>(-336f, -311f), 0i, -1094f, vec2<u32>(1u, 146423u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    global0 = Struct_1(1i, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(782f, arg_2.b.x)))))), global0.c, arg_2.d, select(select(_wgslsmith_mod_vec2_u32(vec2<u32>(143318u, arg_3.x), vec2<u32>(arg_3.x, 10196u)) << (~arg_2.e % vec2<u32>(32u)), select(~vec2<u32>(arg_2.e.x, global0.e.x), global0.e, any(vec4<bool>(false, false, false, true))), false), reverseBits(abs(arg_3) >> (vec2<u32>(40418u, arg_1.e.x) % vec2<u32>(32u))), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))));
    return _wgslsmith_f_op_f32(round(897f));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)), _wgslsmith_clamp_i32(global0.c, _wgslsmith_sub_i32(max(_wgslsmith_mod_i32(1719i, u_input.a.x), u_input.a.x), abs(-u_input.a.x)), -15502i), global0.d, ~(vec2<u32>(global0.e.x, 84070u) >> (~(vec2<u32>(1u, 0u) | vec2<u32>(global0.e.x, global0.e.x)) % vec2<u32>(32u))));
    global0 = var_0;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.b.x)))) * -251f), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<f32>(var_0.d, 1000f, -159f, 665f), var_0, Struct_1(-1i, vec2<f32>(177f, 658f), global0.c, var_0.b.x, var_0.e), var_0.e)) - -1699f), !any(vec4<bool>(false, false, false, false)))))));
    var var_2 = !select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true);
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -574f), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(462f, var_0.d, -855f, global0.b.x) + vec4<f32>(638f, var_1.x, -621f, -364f)), var_0, var_0, ~global0.e)))) * _wgslsmith_f_op_f32(f32(-1f) * -1760f)), var_1.x);
    return Struct_1(global0.c, _wgslsmith_div_vec2_f32(vec2<f32>(504f, 555f), _wgslsmith_f_op_vec2_f32(ceil(var_0.b))), reverseBits(u_input.a.x), 449f, var_0.e);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_vec2_f32(-arg_0.b), ~_wgslsmith_clamp_i32(~(-45423i), (u_input.a.x << (38132u % 32u)) | (0i >> (1u % 32u)), countOneBits(u_input.a.x)), -329f, vec2<u32>(select(firstTrailingBit(1u), 1u, all(vec2<bool>(false, true))), arg_0.e.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1215f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-2414f, 166f, 1711f, var_0.b.x), Struct_1(52614i, arg_0.b, global0.c, -397f, vec2<u32>(35210u, var_0.e.x)), arg_0, vec2<u32>(arg_0.e.x, 4294967295u))))));
    var var_2 = !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(!any(vec2<bool>(false, true)), true, true, true), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(var_0.c >= -1i, all(vec3<bool>(false, true, false)), true, true), true));
    var var_3 = abs(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.e.x, global0.e.x), abs(vec3<u32>(4294967295u, var_0.e.x, var_0.e.x))), select(87383u, 1u, var_2.x) | var_0.e.x, firstTrailingBit(~62456u), 56829u << (var_0.e.x % 32u))) >> (~vec4<u32>(~arg_0.e.x, abs(~var_0.e.x), arg_0.e.x, countOneBits(1u)) % vec4<u32>(32u));
    var_2 = select(!vec4<bool>(!all(vec3<bool>(true, var_2.x, var_2.x)), true, var_2.x, var_2.x), !vec4<bool>(false, false, true, var_2.x == select(var_2.x, var_2.x, var_2.x)), var_2.x);
    return select(u_input.a.yxy ^ -_wgslsmith_mult_vec3_i32(u_input.a.xwx, -u_input.a.xzw), _wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, 1i, -21502i), vec3<i32>(u_input.a.x, -1i, global0.a)), _wgslsmith_div_i32(29662i, arg_0.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 17659i, 1i), ~u_input.a.xyx)) >> ((vec3<u32>(arg_0.e.x, var_0.e.x >> (arg_0.e.x % 32u), ~43220u) >> (max(var_3.xww, select(var_3.yyy, vec3<u32>(78553u, var_0.e.x, var_3.x), var_2.yyw)) % vec3<u32>(32u))) % vec3<u32>(32u)), true | (false && (min(var_0.c, -49421i) < _wgslsmith_sub_i32(-1i, arg_1))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.a.xyy, _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x | -83816i, _wgslsmith_add_i32(1i, -2147483647i)), func_4(func_2(804f), 0i))), _wgslsmith_div_vec2_f32(global0.b, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_div_f32(arg_1, arg_0.b.x))))), _wgslsmith_mod_i32(i32(-1i) * -(u_input.a.x >> (17580u % 32u)), 1i), -904f, _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(43910u, ~global0.e.x)), _wgslsmith_mult_vec2_u32(global0.e, global0.e & func_2(arg_0.b.x).e)));
    global0 = Struct_1(-4495i, arg_0.b, 44351i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d, _wgslsmith_f_op_f32(-global0.b.x)))), ~abs(abs(~vec2<u32>(4870u, global0.e.x))));
    global0 = func_2(-2104f);
    let var_0 = arg_0;
    var var_1 = func_2(arg_0.b.x);
    return ~(~10407u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.b), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1335f), global0.b.x))), any(vec4<bool>(true, any(vec4<bool>(true, true, false, false)), true, true)))), global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(2337f, -1474f))), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global0.e.x, 0u), ~global0.e.x), ~global0.e) | vec2<u32>(_wgslsmith_sub_u32(func_1(Struct_1(u_input.a.x, vec2<f32>(2260f, global0.d), -25073i, global0.b.x, vec2<u32>(global0.e.x, 4294967295u)), -1157f), 1u), ~countOneBits(34552u)));
    global0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(644f, -1000f))))));
    var_0 = Struct_1(~_wgslsmith_mod_i32(-reverseBits(var_0.a), 15513i), vec2<f32>(-606f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -324f))))), ~(-1i), _wgslsmith_f_op_f32(639f + _wgslsmith_f_op_f32(trunc(global0.d))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.x, 630f)))).e);
    let var_1 = select(select(select(vec3<bool>(true, global0.b.x <= 751f, true), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), true), _wgslsmith_div_i32(-2147483647i, 1i) >= var_0.a), vec3<bool>(0i >= global0.a, all(vec2<bool>(true, true)), 73367u < ~global0.e.x), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), true)), vec3<bool>(true, true, true), any(vec4<bool>(true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true)), false, true)));
    let var_2 = _wgslsmith_div_vec2_i32(~vec2<i32>(~(-61386i), -2147483647i), u_input.a.wy);
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1937f, func_2(var_0.d).d, -961f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-696f, -516f, -2044f, var_0.d))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-705f, global0.d, -1151f, var_0.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, -1067f, var_0.d, -311f)))))))));
    let var_4 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_0.a ^ _wgslsmith_mult_i32(25077i, -1i), -2147483647i), -2147483647i), func_2(var_0.b.x).b, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-346f, -403f), -549f))), ~vec2<u32>(_wgslsmith_sub_u32(70463u, global0.e.x) | 61794u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mod_u32(~var_0.e.x, ~0u), ~var_4.e.x, ~(~global0.e.x), 51479u), 71792i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_3 * vec4<f32>(var_3.x, -1000f, 1000f, 1312f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.d, var_3.x, -394f, 393f))))))), var_0.e.x, vec3<u32>(1u, _wgslsmith_div_u32(4294967295u, ~var_4.e.x), ~global0.e.x ^ global0.e.x) | firstTrailingBit(firstTrailingBit(vec3<u32>(10577u, var_0.e.x, 1u) | vec3<u32>(global0.e.x, 1u, global0.e.x))));
}

