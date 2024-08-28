struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 27> = array<f32, 27>(309f, -1145f, -1000f, 1012f, -193f, -1408f, 1107f, 1043f, 376f, 447f, -552f, -394f, -331f, -157f, 1562f, -754f, 350f, 423f, 775f, -1536f, -461f, -1017f, -1085f, 359f, -201f, -1000f, -751f);

var<private> global2: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    let var_0 = ~(-_wgslsmith_sub_vec2_i32(select(global0.a.a, global0.a.a, arg_0.a.c) & arg_0.c.a, vec2<i32>(u_input.a, global0.c.a.x) << (global0.c.d.xz % vec2<u32>(32u))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.d)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1309f + global0.d), _wgslsmith_f_op_f32(round(1461f)), arg_0.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.c.d.x, 27u)])), global1[_wgslsmith_index_u32(58646u | arg_0.c.d.x, 27u)]) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(170f, 865f, 689f, arg_0.d), vec4<f32>(-475f, arg_0.d, 261f, -1231f)))))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-646f, 1529f, -914f, global1[_wgslsmith_index_u32(0u, 27u)]) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2215f, arg_0.d, 1000f, 944f), vec4<f32>(global0.d, 549f, arg_0.d, global0.d)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d, 734f, -1000f, arg_0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d, 217f, -2055f, global0.d), vec4<f32>(1486f, 716f, global0.d, global0.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, -991f, -489f, 1000f)))), select(!vec4<bool>(global0.a.c.x, true, true, false), select(vec4<bool>(false, true, global0.c.b, true), select(vec4<bool>(true, arg_0.c.c.x, arg_0.c.b, false), vec4<bool>(global0.c.b, true, true, global0.a.c.x), vec4<bool>(false, arg_0.c.b, false, true)), arg_0.c.c.x && arg_0.a.c.x), any(vec4<bool>(true, false, global0.c.b, arg_0.c.b))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: u32) -> Struct_2 {
    global2 = 0i;
    let var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(global0.a, 1i, Struct_1(_wgslsmith_sub_vec2_i32(global0.c.a, global0.c.a), select(true, arg_0.a.b, true), vec2<bool>(arg_1.x, true), vec3<u32>(arg_2, 4294967295u, 59755u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-699f, global1[_wgslsmith_index_u32(1u, 27u)])) - _wgslsmith_f_op_f32(floor(global0.d)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d, arg_0.d, arg_0.d, global0.d) + vec4<f32>(global0.d, arg_0.d, 1456f, global1[_wgslsmith_index_u32(arg_2, 27u)])))) - vec4<f32>(global1[_wgslsmith_index_u32(~global0.a.d.x, 27u)], -477f, arg_0.d, _wgslsmith_f_op_f32(-global0.d))))), vec4<bool>((true && (var_0 > arg_0.a.a.x)) & true, false, any(select(global0.c.c, select(arg_1.xy, arg_0.c.c, true), vec2<bool>(arg_1.x, arg_0.c.b))), (false | any(arg_1)) | global0.c.c.x)));
    var var_2 = ~(~_wgslsmith_mod_vec4_u32(max(vec4<u32>(1u, 39224u, 1u, 0u), vec4<u32>(40840u, global0.c.d.x, 1u, global0.c.d.x)), ~vec4<u32>(4294967295u, arg_2, global0.c.d.x, global0.c.d.x)) | (vec4<u32>(~arg_0.a.d.x, _wgslsmith_mod_u32(0u, 1u), arg_0.a.d.x, max(global0.c.d.x, 1u)) >> (countOneBits(~vec4<u32>(global0.c.d.x, arg_2, 4294967295u, arg_2)) % vec4<u32>(32u))));
    global2 = arg_0.b;
    return Struct_2(arg_0.c, arg_0.a.a.x, Struct_1(vec2<i32>(global0.a.a.x, ~1i), !any(arg_1.zy), select(global0.a.c, select(vec2<bool>(arg_0.a.b, false), global0.c.c, arg_1.zz), !select(vec2<bool>(true, global0.c.c.x), vec2<bool>(global0.c.b, true), global0.a.c.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(6319u, arg_2, 50257u), global0.c.d >> (vec3<u32>(0u, 4294967295u, global0.c.d.x) % vec3<u32>(32u))) ^ vec3<u32>(~arg_2, 24314u, _wgslsmith_div_u32(arg_2, 19217u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1000f, 1187f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_0)).x * arg_0.d) - arg_0.d)));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = arg_0;
    var var_1 = vec4<bool>(arg_2.c.x, false, func_2(Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 48150i), vec2<i32>(-1i, arg_2.a.x)), arg_2.c.x & arg_3.a.b, !var_0.c, ~var_0.d), _wgslsmith_add_i32(~arg_2.a.x, -13123i), Struct_1(vec2<i32>(32919i, arg_3.a.a.x), true, vec2<bool>(arg_0.c.x, arg_0.c.x), ~vec3<u32>(91897u, 15262u, 8083u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(global0.a.a, arg_3.a.b, vec2<bool>(true, arg_3.c.b), arg_2.d), u_input.a, Struct_1(arg_2.a, false, global0.c.c, arg_2.d), arg_3.d))).x)), !select(vec3<bool>(true, true, true), vec3<bool>(true, arg_2.b, arg_3.a.c.x), select(vec3<bool>(var_0.b, true, arg_0.b), vec3<bool>(arg_2.c.x, true, arg_3.a.c.x), vec3<bool>(global0.c.c.x, true, false))), ~(_wgslsmith_mod_u32(0u, 1u) << (_wgslsmith_div_u32(var_0.d.x, 4294967295u) % 32u))).c.c.x, arg_0.c.x);
    var var_2 = vec2<f32>(global1[_wgslsmith_index_u32(global0.c.d.x, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f * -809f)));
    global2 = select(2147483647i, -47335i, !all(var_1.xzx));
    var var_3 = vec4<u32>(~_wgslsmith_clamp_u32(max(~arg_2.d.x, var_0.d.x | 58127u), 1u, 20983u), 4294967295u, arg_2.d.x, ~var_0.d.x);
    return arg_3.a.d;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32) -> bool {
    let var_0 = Struct_1(arg_0.wx, (!(!global0.c.b) != false) && true, global0.a.c, func_4(Struct_1(reverseBits(global0.c.a), true, vec2<bool>(false, true), global0.c.d), _wgslsmith_f_op_f32(-683f + -2944f), global0.c, func_2(Struct_2(global0.a, global0.c.a.x, global0.a, global1[_wgslsmith_index_u32(global0.a.d.x, 27u)]), !vec3<bool>(true, false, global0.a.c.x), ~6473u)) & (vec3<u32>(global0.a.d.x >> (20842u % 32u), _wgslsmith_div_u32(global0.a.d.x, 49550u), global0.a.d.x) & _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(91684u, global0.c.d.x, global0.c.d.x), global0.c.d), _wgslsmith_mult_vec3_u32(global0.a.d, global0.c.d))));
    global0 = func_2(func_2(Struct_2(global0.c, 1i, global0.a, 606f), select(vec3<bool>(false, false, select(false, var_0.c.x, true)), select(vec3<bool>(true, true, true), !vec3<bool>(var_0.c.x, var_0.c.x, false), true), (-1056f <= global0.d) | (1i <= arg_0.x)), 4294967295u & _wgslsmith_mod_u32(func_2(Struct_2(Struct_1(global0.a.a, var_0.c.x, vec2<bool>(false, var_0.c.x), global0.a.d), arg_0.x, var_0, global1[_wgslsmith_index_u32(var_0.d.x, 27u)]), vec3<bool>(true, true, var_0.c.x), global0.a.d.x).c.d.x, 1u)), !vec3<bool>(all(select(vec4<bool>(var_0.b, var_0.c.x, var_0.c.x, var_0.b), vec4<bool>(global0.a.c.x, false, true, true), true)), true, all(vec3<bool>(global0.c.c.x, true, false))), ~(1u & var_0.d.x));
    let var_1 = -24366i & ~(-_wgslsmith_add_i32(i32(-1i) * -27628i, select(-34226i, var_0.a.x, var_0.b)));
    let var_2 = func_2(func_2(Struct_2(Struct_1(vec2<i32>(-40921i, u_input.a) | var_0.a, global0.c.d.x == 1u, !global0.c.c, firstTrailingBit(vec3<u32>(global0.c.d.x, global0.a.d.x, global0.a.d.x))), 1i, Struct_1(vec2<i32>(var_1, var_1), false, select(vec2<bool>(var_0.b, global0.a.b), vec2<bool>(global0.a.b, global0.a.c.x), var_0.c), global0.c.d), arg_2), !vec3<bool>(var_0.c.x, true, any(vec4<bool>(var_0.c.x, global0.a.c.x, global0.c.b, var_0.b))), global0.a.d.x), select(!select(select(vec3<bool>(var_0.b, true, false), vec3<bool>(var_0.c.x, false, var_0.c.x), true), select(vec3<bool>(global0.a.b, var_0.c.x, true), vec3<bool>(global0.c.b, false, false), var_0.c.x), true), !vec3<bool>(!var_0.c.x, true, var_0.c.x), !(!select(vec3<bool>(var_0.c.x, false, global0.a.c.x), vec3<bool>(var_0.c.x, var_0.b, false), global0.c.c.x))), global0.c.d.x).a;
    let var_3 = vec4<i32>(select(var_1, firstLeadingBit(~global0.a.a.x), _wgslsmith_f_op_f32(-arg_2) > -1079f), _wgslsmith_dot_vec4_i32(~vec4<i32>(-81503i, global0.a.a.x, 26885i, 1i), firstTrailingBit(arg_0)), var_2.a.x, -41430i) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(select(-vec4<i32>(global0.a.a.x, global0.c.a.x, -1i, var_1), vec4<i32>(var_0.a.x, u_input.a, u_input.a, 17338i) >> (vec4<u32>(var_2.d.x, 61447u, 0u, 19956u) % vec4<u32>(32u)), select(vec4<bool>(true, true, var_0.c.x, var_2.b), vec4<bool>(true, false, var_0.c.x, var_0.b), var_0.c.x)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(global0.a.a.x, var_1, global0.a.a.x, -4148i), arg_0, vec4<bool>(true, true, true, true)), abs(arg_0))), vec4<i32>(select(-2147483647i, arg_0.x & -5063i, false), 2147483647i, -(arg_0.x >> (var_2.d.x % 32u)), _wgslsmith_add_i32(1i, -var_0.a.x)), countOneBits(firstTrailingBit(vec4<i32>(-38297i, global0.a.a.x, var_2.a.x, -2147483647i))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(select(select(vec4<bool>(global0.a.c.x, global0.c.b, true, global0.c.b), vec4<bool>(true, false, true, global0.a.b), global0.a.b), select(vec4<bool>(false, false, true, true), vec4<bool>(global0.c.c.x, global0.c.b, false, false), false), !vec4<bool>(global0.a.c.x, true, global0.c.c.x, true))), true && (-809f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(41555u, 27u)]))));
    var var_1 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.a.d.x, 27u)]);
    var var_2 = select(select(global0.a.c, select(vec2<bool>(all(vec4<bool>(false, global0.a.c.x, false, false)), func_1(vec4<i32>(u_input.a, 44670i, 2147483647i, 22873i), vec2<f32>(-221f, -291f), global1[_wgslsmith_index_u32(6870u, 27u)])), select(select(global0.a.c, vec2<bool>(global0.a.b, global0.a.b), global0.a.c), vec2<bool>(var_0.x, var_0.x), var_0.x), true), all(vec3<bool>(global0.c.b, true, true))), vec2<bool>(true, var_0.x), !vec2<bool>(var_0.x, global0.a.b));
    var var_3 = _wgslsmith_mod_vec4_i32(firstTrailingBit(firstTrailingBit(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.a.x, 2147483647i, 1i, u_input.a), vec4<i32>(global0.c.a.x, -7352i, -25840i, global0.a.a.x), vec4<i32>(-15778i, -44990i, u_input.a, u_input.a)), ~vec4<i32>(u_input.a, -7674i, global0.c.a.x, -2147483647i)))), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(~(-2147483647i), 1i, ~u_input.a, _wgslsmith_mult_i32(-1i, global0.c.a.x)), max(firstTrailingBit(vec4<i32>(global0.b, -48839i, 36259i, -2147483647i)), vec4<i32>(global0.c.a.x, u_input.a, -1i, u_input.a))), abs(firstTrailingBit(~vec4<i32>(global0.a.a.x, 2147483647i, 2147483647i, global0.a.a.x)))));
    let var_4 = ~select(vec3<u32>(0u, global0.a.d.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c.d.x, 1u, 0u), firstTrailingBit(global0.a.d))), ~select(reverseBits(vec3<u32>(global0.a.d.x, global0.c.d.x, global0.a.d.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(22474u, 80969u, 110615u), global0.c.d), vec3<bool>(false, var_0.x, var_2.x)), vec3<bool>(var_2.x, !func_2(Struct_2(global0.c, global0.c.a.x, global0.c, 2103f), vec3<bool>(true, true, false), global0.a.d.x).a.b, false));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(14181u, 27u)], global0.d, global0.d, global1[_wgslsmith_index_u32(global0.c.d.x, 27u)]) * vec4<f32>(global0.d, -764f, global0.d, global0.d)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], -757f, -658f, global0.d))))))));
    global2 = min(1i, _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-29950i, global0.c.a.x, -1117i), var_3.wwz ^ vec3<i32>(u_input.a, var_3.x, 7202i), abs(var_3.zyx))), -var_3.yzy));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, var_3.x, var_3.x), 2147483647i >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c.d.x, global0.a.d.x, 842u, 19670u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.x, global0.c.d.x, global0.a.d.x, 0u), vec4<u32>(38774u, 26344u, 4294967295u, 40681u), vec4<u32>(global0.a.d.x, 45899u, global0.a.d.x, 0u))) % 32u), ~1i, ~(~1i)), _wgslsmith_clamp_i32(~firstTrailingBit(global0.a.a.x), global0.a.a.x, -2147483647i) | -max(var_3.x, _wgslsmith_mult_i32(0i, u_input.a)));
}

