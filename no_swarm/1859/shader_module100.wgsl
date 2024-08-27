struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 17>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = ~(~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(47890u, 17u)], 17310u), global1[_wgslsmith_index_u32(30294u, 17u)]), ~arg_1.b.b.yx | ~vec2<u32>(0u, arg_1.b.b.x)));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.c.x - global2.b.c.x) - arg_0.b.c.x))), Struct_1(firstTrailingBit(~global0.b.a), vec3<u32>(~arg_1.b.b.x, 1u, 0u) ^ max(vec3<u32>(83962u, 4294967295u, 16829u), firstLeadingBit(global0.b.b)), vec2<f32>(1616f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-702f, global2.a)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.b.c.x, 793f))))), global0.b.a.x));
    let var_1 = ~vec2<u32>(global2.b.b.x, arg_1.b.b.x | 47589u);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.a)))))), -518f, arg_1.a, _wgslsmith_f_op_f32(round(arg_1.a)));
    let var_3 = Struct_1(global0.b.a, countOneBits(vec3<u32>(~min(678u, var_0.x), _wgslsmith_clamp_u32(global2.b.b.x, 4294967295u, var_0.x), ~4294967295u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, global0.a))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2559f), -1298f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.c.x, -576f) + vec2<f32>(-718f, 676f)) * _wgslsmith_f_op_vec2_f32(-arg_0.b.c)))), arg_0.a, arg_1.b.e);
    return abs(arg_0.b.a);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> bool {
    global0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.d + global0.b.d) + -1000f))), Struct_1(func_3(Struct_2(_wgslsmith_f_op_f32(-297f * arg_1.c.x), arg_1), Struct_2(_wgslsmith_f_op_f32(step(global2.b.c.x, arg_1.d)), Struct_1(arg_2, arg_1.b, vec2<f32>(932f, -706f), -277f, 0i))), select(min(~vec3<u32>(arg_1.b.x, 4294967295u, global0.b.b.x), firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(2138u, 17u)], arg_0, global2.b.b.x))), _wgslsmith_mult_vec3_u32(~global2.b.b, ~vec3<u32>(global0.b.b.x, global2.b.b.x, global2.b.b.x)), vec3<bool>(true, true, 17396u == arg_1.b.x)), vec2<f32>(global2.b.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-250f * arg_1.c.x) - _wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b.d - global2.a), _wgslsmith_f_op_f32(sign(global2.a)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, global2.a)))), u_input.b.x));
    var var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(min(_wgslsmith_mod_vec3_u32(global0.b.b, vec3<u32>(21160u, 0u, 3969u)), select(global2.b.b, vec3<u32>(global2.b.b.x, arg_1.b.x, arg_1.b.x), false)), vec3<u32>(4294967295u, 4294967295u, _wgslsmith_clamp_u32(1u, arg_1.b.x, 0u))), arg_0, abs(abs(global2.b.b.x)) ^ firstLeadingBit(~1u), max(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.b.x, arg_0), global2.b.b.xz)), ~arg_1.b.x << (reverseBits(3449u) % 32u))), vec4<u32>(reverseBits(firstLeadingBit(~global2.b.b.x)), ~(_wgslsmith_div_u32(arg_1.b.x, 4294967295u) >> (global0.b.b.x % 32u)), 4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global2.b.b.zz | global2.b.b.xx, global2.b.b.yx, global0.b.b.xx), global0.b.b.yx)));
    let var_1 = arg_1;
    var var_2 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, false))), !vec2<bool>(false, all(vec4<bool>(true, true, false, false))), true), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)), vec2<bool>(true, true), true), !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), false));
    var_0 = ~_wgslsmith_mod_vec4_u32(~vec4<u32>(19084u, ~global1[_wgslsmith_index_u32(var_0.x, 17u)], 1u, arg_0), select(vec4<u32>(firstLeadingBit(16145u), global0.b.b.x, _wgslsmith_div_u32(67067u, arg_1.b.x), ~global2.b.b.x), min(select(vec4<u32>(4294967295u, var_0.x, 27025u, global0.b.b.x), vec4<u32>(global0.b.b.x, 4294967295u, arg_1.b.x, var_0.x), var_2.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global2.b.b.x, global1[_wgslsmith_index_u32(0u, 17u)], 4294967295u), vec4<u32>(1u, 0u, global1[_wgslsmith_index_u32(var_0.x, 17u)], global0.b.b.x))), true && var_2.x));
    return _wgslsmith_f_op_f32(floor(-755f)) == _wgslsmith_f_op_f32(global2.b.c.x - -1183f);
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> u32 {
    global1 = array<u32, 17>();
    var var_0 = global0.b;
    var var_1 = select(!select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), func_2(~var_0.b.x, global0.b, ~arg_0.b.a)), !select(vec3<bool>(true, all(vec2<bool>(false, true)), u_input.b.x >= global2.b.e), vec3<bool>(true, all(vec3<bool>(true, true, false)), true), vec3<bool>(arg_0.a < global2.b.c.x, true, true)), any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), func_2(var_0.b.x, Struct_1(vec4<i32>(global2.b.e, -2147483647i, -2147483647i, arg_0.b.e), arg_0.b.b, vec2<f32>(global0.b.c.x, global2.a), -922f, arg_2), vec4<i32>(global0.b.e, var_0.a.x, var_0.e, u_input.b.x))))));
    var var_2 = global0.b.d;
    var_1 = vec3<bool>(true, true, all(!(!vec2<bool>(var_1.x, true))));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, var_0.b.x, var_0.b.x, 1u) ^ vec4<u32>(countOneBits(41300u), _wgslsmith_dot_vec3_u32(vec3<u32>(4517u, global1[_wgslsmith_index_u32(var_0.b.x, 17u)], 16110u), vec3<u32>(global0.b.b.x, 24013u, 51208u)), 1u, 1u), ~(~vec4<u32>(20982u, 82496u, arg_0.b.b.x, 1u))), ~countOneBits(~(~vec4<u32>(4294967295u, arg_0.b.b.x, global1[_wgslsmith_index_u32(0u, 17u)], arg_0.b.b.x))));
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = arg_2;
    var var_1 = !any(select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true), vec2<bool>(true, true), any(vec4<bool>(false, true, true, true))));
    return !(!any(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, select(false, false, false))));
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = -606f;
    return Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(18770i, 2147483647i, global0.b.e, global0.b.a.x)), arg_0 & u_input.b), -countOneBits(arg_0)), global2.b.a), vec3<u32>(14336u, global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(1u, 17u)]), 17u)], global2.b.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 651f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.x, arg_2.x)))) - vec2<f32>(_wgslsmith_f_op_f32(var_0 + -289f), _wgslsmith_f_op_f32(-524f - -854f))), vec2<f32>(_wgslsmith_f_op_f32(round(global2.b.d)), arg_2.x)), 1061f, global2.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(9047u, 17u)], 4294967295u);
    global2 = Struct_2(_wgslsmith_f_op_f32(round(229f)), func_5(u_input.a, !func_4(-524f, func_1(Struct_2(-644f, Struct_1(vec4<i32>(2147483647i, global2.b.e, global2.b.e, global0.b.a.x), vec3<u32>(0u, global0.b.b.x, 2410u), global0.b.c, -2134f, global0.b.e)), global2.b.a.x, global0.b.e), Struct_2(2121f, Struct_1(vec4<i32>(-2147483647i, -26995i, global2.b.e, -1i), vec3<u32>(global0.b.b.x, 63081u, 0u), global0.b.c, global2.a, 20069i))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a, -2098f, global2.a), vec3<f32>(global0.a, global2.a, global2.b.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.c.x, -181f, -984f), vec3<f32>(global0.a, 492f, 995f), true)))))));
    let var_1 = global2.b;
    let var_2 = Struct_1(_wgslsmith_add_vec4_i32(select(countOneBits(vec4<i32>(1i, -2147483647i, global0.b.e, global2.b.a.x)), vec4<i32>(-22642i & u_input.b.x, u_input.a.x, -1i, var_1.e), (var_1.d < global0.b.c.x) || func_2(global1[_wgslsmith_index_u32(var_1.b.x, 17u)], global0.b, var_1.a)), vec4<i32>(_wgslsmith_sub_i32(2147483647i, ~u_input.a.x), -1i, 1i, ~global2.b.a.x)), vec3<u32>(~var_1.b.x, func_5(-vec4<i32>(12469i, -2147483647i, -18045i, global0.b.a.x), !select(false, true, false), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-210f, global0.a, 613f), vec3<f32>(var_1.d, -437f, -155f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, global2.b.d)))).b.x, func_1(Struct_2(_wgslsmith_f_op_f32(step(global0.b.c.x, global0.b.c.x)), func_5(vec4<i32>(0i, u_input.a.x, -6355i, var_1.e), true, vec3<f32>(var_1.c.x, 1127f, -176f))), min(abs(44773i), -1629i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(14145i, 0i), global0.b.a.zz), _wgslsmith_div_vec2_i32(vec2<i32>(global2.b.e, -2147483647i), vec2<i32>(u_input.b.x, global2.b.a.x))))), global0.b.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-528f, var_1.c.x)))))))), func_5(countOneBits(-_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(44216i, global2.b.a.x, -2147483647i, -1i))), var_1.a.x >= ~(-global2.b.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(global0.a, -208f, true)), var_1.c.x, -1160f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1193f, global2.a, var_1.c.x)))))).e);
    var var_3 = global2.a;
    var_3 = _wgslsmith_f_op_f32(-427f * global0.b.c.x);
    var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.b.yy, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(51812u, var_1.b.x) & var_2.b.yx, global0.b.b.yz), ~global0.b.b.x ^ _wgslsmith_clamp_u32(global2.b.b.x, 52230u, 4294967295u))), 33174u);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(global2.b.b.x, var_2.b.x), 4294967295u | ~global1[_wgslsmith_index_u32(var_2.b.x, 17u)]), var_2.b.x, true), global1[_wgslsmith_index_u32(~func_5(vec4<i32>(u_input.b.x, var_1.a.x, 16136i, global0.b.e) >> (countOneBits(vec4<u32>(23361u, global0.b.b.x, global1[_wgslsmith_index_u32(19412u, 17u)], 5102u)) % vec4<u32>(32u)), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, global0.a, 1867f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.d, global0.a, global0.b.c.x)))).b.x, 17u)]);
}

