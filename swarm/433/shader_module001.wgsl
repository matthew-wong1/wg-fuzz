struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32;

var<private> global2: array<vec2<i32>, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(1381f * arg_0.a.x))));
    global2 = array<vec2<i32>, 12>();
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(731f, _wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(sign(229f)), _wgslsmith_f_op_f32(trunc(var_0))))))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> bool {
    global1 = 6443u;
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_2)), arg_2.a)), arg_2.b);
    let var_1 = countOneBits(~min(min(abs(vec4<u32>(4294967295u, arg_1.x, 4294967295u, arg_3)), _wgslsmith_mod_vec4_u32(vec4<u32>(29329u, arg_1.x, 40877u, 21236u), vec4<u32>(1u, 4294967295u, 23201u, 0u))), countOneBits(vec4<u32>(arg_3, 1u, 0u, arg_1.x))));
    global0 = all(arg_2.b) | true;
    global2 = array<vec2<i32>, 12>();
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec3<u32>) -> bool {
    global1 = firstLeadingBit(_wgslsmith_add_u32(21463u, _wgslsmith_sub_u32(56148u, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), ~vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)))));
    global1 = firstLeadingBit(_wgslsmith_div_u32(~arg_2.x, arg_2.x));
    var var_0 = countOneBits(vec4<u32>(4294967295u >> (~(~1u) % 32u), _wgslsmith_dot_vec2_u32(~select(arg_2.xy, arg_2.yz, vec2<bool>(arg_0.b.x, false)), vec2<u32>(firstTrailingBit(4294967295u), ~arg_2.x)), 4294967295u, arg_2.x));
    global0 = func_4(_wgslsmith_sub_i32(u_input.a.x, u_input.b.x), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(4294967295u, 67048u, 11191u) | max(var_0.wzx, arg_2), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 18871u, 4294967295u) & vec3<u32>(var_0.x, arg_2.x, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 0u), arg_2))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(arg_0)), vec4<bool>(~arg_2.x <= 47195u, true, u_input.b.x != abs(-1604i), false)), ~60897u);
    let var_1 = ~_wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(~(arg_2.x ^ var_0.x), 8513u, _wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(10866u, arg_2.x))));
    return all(select(vec4<bool>(all(vec2<bool>(true, true)), !(arg_0.b.x || true), 1u >= arg_2.x, false), arg_0.b, select(arg_0.b, arg_0.b, all(select(vec3<bool>(true, arg_0.b.x, arg_0.b.x), arg_0.b.zyx, false)))));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global1 = ~35411u;
    global0 = select(func_2(arg_0.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(380f, 471f) - arg_0.b.a.wz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.a.x, arg_0.c)))))), vec3<u32>(1u, 1u, 1u)), !(!(any(arg_0.b.b.wzx) && !arg_0.b.b.x)), true);
    global1 = _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(~0u, 1u), ~4294967295u), vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(33676u, 1756u)), vec2<u32>(1u, 1u)), 13503u)));
    var var_0 = arg_0;
    global1 = 55335u;
    return arg_0;
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = !vec2<bool>(true, !any(vec4<bool>(arg_0, true, arg_3.b.b.x, false)) & arg_3.b.b.x);
    global2 = array<vec2<i32>, 12>();
    var var_1 = vec4<i32>(12447i, countOneBits(arg_3.d), u_input.b.x, arg_3.a);
    global2 = array<vec2<i32>, 12>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_3.b.a))))) * arg_3.b.a);
    return Struct_2(-arg_3.a, func_1(Struct_2(var_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(ceil(var_2)), func_1(Struct_2(-34063i, arg_3.b, 739f, arg_3.d)).b.b), _wgslsmith_f_op_f32(-107f * var_2.x), u_input.b.x << (6992u % 32u))).b, func_1(Struct_2(select(u_input.b.x, 2147483647i, arg_0), Struct_1(var_2, arg_3.b.b), -317f, 1i)).c, _wgslsmith_mult_i32(~(-60868i), _wgslsmith_mod_i32(arg_3.a, 2147483647i | -var_1.x)));
}

fn func_6(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = func_5(!(reverseBits(func_5(arg_0.b.b.x, arg_0.b.a.wzy, arg_0.b.a.x, Struct_2(-2147483647i, Struct_1(arg_0.b.a, vec4<bool>(false, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x)), arg_1.x, u_input.a.x)).d) <= arg_0.d), _wgslsmith_f_op_vec3_f32(arg_1.ywx - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(arg_0.b.a.xxy))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(449f, arg_1.x)) + _wgslsmith_f_op_f32(arg_1.x * 743f)), arg_0.c, arg_0.b.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-684f - -1000f))))), arg_0);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_6(func_5(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-788f, -585f, -369f))), -1002f, func_1(Struct_2(1537i, Struct_1(vec4<f32>(-585f, -318f, -294f, -1125f), vec4<bool>(true, false, false, true)), -1403f, u_input.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(vec4<f32>(958f, 307f, 1412f, 1108f), vec4<bool>(false, true, false, false)))) * vec4<f32>(571f, 670f, 514f, -1754f)))), 0u >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 2643u), vec2<u32>(4294967295u, 0u)), countOneBits(vec2<u32>(1u, 0u))), 1u) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(601f, -1109f), vec2<f32>(940f, 1331f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-679f, -525f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(491f, 1000f) * vec2<f32>(-1960f, 1689f))))), u_input.b);
    let var_1 = func_6(var_0.a, var_0.a.b.a);
    let var_2 = func_5(!(!func_4(~2147483647i, vec3<u32>(94648u, var_0.b, var_0.b), var_1.b, var_0.b)), var_0.a.b.a.zxy, -105f, func_5(var_0.a.b.a.x < var_0.c.x, vec3<f32>(-1179f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.c, var_1.b.a.x)), 743f), func_6(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a.b.a.x)), _wgslsmith_div_f32(1000f, var_1.b.a.x), 694f, 189f)).c, func_5(true, vec3<f32>(var_0.a.b.a.x, -813f, _wgslsmith_f_op_f32(-526f - var_1.c)), _wgslsmith_f_op_f32(max(var_0.a.b.a.x, 885f)), Struct_2(var_1.d, func_1(var_0.a).b, _wgslsmith_f_op_f32(f32(-1f) * -172f), reverseBits(-19439i)))));
    global1 = 13557u;
    let var_3 = true;
    let var_4 = func_5(func_5(any(var_0.a.b.b.xx), var_2.b.a.xwx, var_1.c, var_2).b.b.x, _wgslsmith_f_op_vec3_f32(select(var_1.b.a.yzz, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -981f), _wgslsmith_f_op_f32(703f + _wgslsmith_f_op_f32(var_2.c * -190f)), _wgslsmith_f_op_f32(-func_1(var_0.a).c)), var_3)), -267f, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_1.b.a.x, _wgslsmith_f_op_f32(max(-1221f, -1261f))), vec3<u32>(var_0.b, firstLeadingBit(var_0.b), _wgslsmith_add_u32(countOneBits(_wgslsmith_clamp_u32(var_0.b, var_0.b, 1548u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.b, var_0.b, var_0.b, 5170u), vec4<u32>(var_0.b, 1u, 87672u, var_0.b)), firstLeadingBit(vec4<u32>(82703u, 42306u, var_0.b, var_0.b))))), _wgslsmith_clamp_u32(~min(reverseBits(1u), 27207u << (var_0.b % 32u)), _wgslsmith_add_u32(~(~46605u), 0u), ~(var_0.b ^ 88536u) | ~35197u), _wgslsmith_div_i32(abs(2147483647i), _wgslsmith_add_i32(u_input.b.x, 0i)));
}

