struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: u32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = vec3<i32>(u_input.b, -12173i, max(select(u_input.b, ~(-1i), true), _wgslsmith_mult_i32(_wgslsmith_add_i32(79938i, ~u_input.b), _wgslsmith_clamp_i32(arg_2.a, u_input.b, arg_1.a >> (u_input.a.x % 32u)))));
    global1 = 96846u << (~(~firstLeadingBit(4294967295u)) % 32u);
    let var_1 = _wgslsmith_add_i32(_wgslsmith_mod_i32(~_wgslsmith_mod_i32(21236i, 1i), u_input.b ^ 0i), ~(-8015i)) ^ 48555i;
    global1 = u_input.c;
    global1 = _wgslsmith_clamp_u32(u_input.a.x, 0u, u_input.d.x);
    return firstTrailingBit(-46072i);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    var var_0 = arg_0.b.x;
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, u_input.c, reverseBits(~u_input.c), reverseBits(countOneBits(u_input.a.x))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, u_input.c, u_input.d.x), vec4<u32>(9849u, u_input.a.x, 4294967295u, 31400u)) | (vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 0u) ^ vec4<u32>(4294967295u, u_input.d.x, u_input.a.x, u_input.a.x)))), vec4<u32>(select(0u, ~_wgslsmith_sub_u32(u_input.c, 0u), true), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, reverseBits(46935u)), u_input.d), min(~u_input.c, u_input.c), _wgslsmith_mult_u32(60892u, u_input.c) >> (0u % 32u)));
    global1 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x))), -532f, arg_0.c.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.c.x, 1773f)), arg_0.c.x, arg_0.c.x), arg_0.c.wxy))));
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> i32 {
    global1 = func_3(arg_2, min(~(-arg_0.a) | _wgslsmith_sub_i32(arg_0.a >> (30691u % 32u), ~(-44851i)), -func_2(_wgslsmith_f_op_vec2_f32(-arg_0.c.xw), Struct_1(arg_0.a, arg_0.b, vec4<f32>(arg_0.c.x, -677f, arg_0.c.x, -1652f)), arg_2)), firstLeadingBit(select(abs(abs(vec3<i32>(u_input.b, 1877i, arg_0.a))), select(countOneBits(vec3<i32>(arg_0.a, -53989i, arg_2.a)), ~vec3<i32>(-30859i, arg_2.a, 1i), all(vec2<bool>(arg_2.b.x, global0.x))), arg_2.b.x)));
    global1 = u_input.a.x;
    var var_0 = Struct_1(arg_2.a, vec4<bool>(false, select(true, true, ~26510u < ~u_input.a.x), any(vec3<bool>(any(arg_2.b), false, all(arg_0.b))), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_2.a, 40303i), u_input.b) != 32966i), _wgslsmith_div_vec4_f32(arg_0.c, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_2.c.x - arg_2.c.x), arg_2.c.x, 1f, -757f)))));
    global1 = 4294967295u;
    global0 = !(!vec2<bool>(!any(arg_2.b.wzw), true || all(var_0.b)));
    return firstTrailingBit(_wgslsmith_clamp_i32(110i, ~1i, 2147483647i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = vec2<u32>(u_input.c, u_input.c);
    global0 = arg_1.b.wx;
    let var_2 = 21564i != ~_wgslsmith_mod_i32(firstLeadingBit(0i & arg_3.x), -countOneBits(42719i));
    var var_3 = arg_2.c.xw;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(select(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.d.x, 4294967295u, 1u), vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.a.x)), ~vec4<u32>(0u, 0u, 0u, 0u), !global0.x), vec4<u32>(1u, u_input.d.x, u_input.a.x << (1u % 32u), ~u_input.c), vec4<bool>(false, global0.x, u_input.d.x <= u_input.a.x, true)) | ((~vec4<u32>(u_input.d.x, 71202u, 13090u, u_input.c) ^ ~vec4<u32>(u_input.a.x, u_input.c, 5857u, 4294967295u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(19960u, u_input.c, 4294967295u, u_input.a.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(55430u, u_input.a.x, u_input.c, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 37920u, u_input.d.x), vec4<u32>(u_input.a.x, u_input.c, 35142u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(55874u, 4294967295u, 97884u, u_input.c), vec4<u32>(1u, u_input.a.x, u_input.d.x, u_input.d.x))) % vec4<u32>(32u))));
    let var_1 = func_4(Struct_1(u_input.b, vec4<bool>(all(vec3<bool>(true, global0.x, false)), any(vec2<bool>(true, true)), u_input.b <= ~u_input.b, any(select(vec2<bool>(false, global0.x), vec2<bool>(false, global0.x), global0.x))), vec4<f32>(327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(494f + 314f)), _wgslsmith_f_op_f32(abs(-740f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(630f, 1743f))))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(-39545i, abs(26015i), func_1(Struct_1(2147483647i, vec4<bool>(false, global0.x, false, global0.x), vec4<f32>(1377f, 1722f, -717f, 777f)), vec3<bool>(global0.x, global0.x, global0.x), Struct_1(10958i, vec4<bool>(true, global0.x, false, true), vec4<f32>(1065f, 325f, 2095f, -915f)))), vec3<i32>(1i, ~u_input.b, ~u_input.b)), vec4<bool>(global0.x, all(vec3<bool>(global0.x, true, global0.x)), global0.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(525f, -1560f, -203f, -1771f), vec4<f32>(1630f, -287f, -349f, -1097f), vec4<bool>(global0.x, global0.x, true, global0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 326f, 1585f, 1876f) - vec4<f32>(572f, 179f, 723f, -906f))))), Struct_1(2147483647i, vec4<bool>(select(true, true, global0.x) && true, false, any(vec4<bool>(false, global0.x, false, true)) == (global0.x & false), global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2145f, 1000f, 2223f, 590f) - vec4<f32>(-473f, -637f, -2706f, 1000f))))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.b, 0i, 12263i, -u_input.b)), ~vec4<i32>(1i, ~(-2642i), u_input.b, 1i)));
    let var_2 = -vec3<i32>(~u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i >> (u_input.a.x % 32u), func_2(var_1.c.xx, Struct_1(var_1.a, var_1.b, var_1.c), Struct_1(1i, var_1.b, var_1.c)), 1i, 2147483647i), ~(vec4<i32>(var_1.a, 22784i, u_input.b, u_input.b) << (var_0 % vec4<u32>(32u)))), ~(~u_input.b));
    global1 = select(var_0.x, ~u_input.c, var_1.b.x);
    let var_3 = true;
    let var_4 = func_4(Struct_1(1i, !vec4<bool>(var_1.b.x, !global0.x, true, true), _wgslsmith_f_op_vec4_f32(-func_4(func_4(var_1, Struct_1(var_1.a, var_1.b, var_1.c), var_1, vec4<i32>(-1i, 0i, -1i, 25183i)), var_1, var_1, reverseBits(vec4<i32>(u_input.b, -2147483647i, u_input.b, var_2.x))).c)), var_1, Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(var_1.a, var_1.a))), !vec4<bool>(all(vec4<bool>(true, var_3, var_1.b.x, true)), all(var_1.b.yz), false, var_2.x != var_2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(389f, 853f, var_1.c.x, var_1.c.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c - vec4<f32>(var_1.c.x, -176f, -928f, var_1.c.x))))), _wgslsmith_div_vec4_i32(firstTrailingBit(~vec4<i32>(var_1.a, -1i, -2147483647i, var_2.x)), vec4<i32>(~2147483647i, 92636i, _wgslsmith_mult_i32(1i, u_input.b), var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-651f, -select(~(-vec2<i32>(var_4.a, 29979i)), vec2<i32>(_wgslsmith_div_i32(-10223i, var_2.x), -2147483647i), false), ~var_4.a, -1i, func_4(Struct_1(_wgslsmith_mult_i32(1i, min(var_4.a, -2147483647i)), select(select(vec4<bool>(true, true, false, var_1.b.x), var_1.b, false), vec4<bool>(var_3, var_3, var_3, var_4.b.x), vec4<bool>(global0.x, var_4.b.x, false, false)), var_1.c), Struct_1(i32(-1i) * -2147483647i, vec4<bool>(true, global0.x, var_4.b.x, all(var_1.b.xwz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1654f, -865f, -969f, 558f) * vec4<f32>(-1033f, 924f, var_1.c.x, -1528f))), var_1, ~_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_2.x, 3548i, -9580i, 35919i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-32046i, -1i, -37143i, var_2.x), vec4<i32>(49508i, 0i, 1i, 30319i), vec4<i32>(var_1.a, 2147483647i, 1i, var_1.a)))).c);
}

