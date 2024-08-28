struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_5;

var<private> global2: vec2<f32> = vec2<f32>(-130f, -2282f);

var<private> global3: Struct_4 = Struct_4(vec4<u32>(49775u, 4294967295u, 12055u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(global3.a);
    global0 = global1.a.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, 1000f, -2188f, global1.a.b), vec4<f32>(global2.x, global2.x, global1.b.x, global2.x))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.d, 188f, global2.x, global2.x), vec4<f32>(global1.c.d, -1100f, global1.c.b, -594f)), global1.e.x)))));
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-136f, global2.x, var_1.x, var_1.x) - vec4<f32>(global2.x, 2086f, -481f, var_1.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 243f, global1.b.x, -112f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 594f, var_1.x, -281f)))), var_0.a, abs(~(~global3.a)), global1.e, Struct_1(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-370f))), ~(vec2<i32>(global1.c.c.x, u_input.a.x) >> (vec2<u32>(var_0.a.x, global1.d.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global2.x) - _wgslsmith_f_op_f32(global1.a.d - global2.x)), ~1u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(select(var_2.a.e.d, -418f, var_2.a.d.x & true))), vec2<f32>(-749f, _wgslsmith_f_op_f32(-global2.x)))));
    return var_3.x;
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    global1 = Struct_5(arg_0.e, vec2<f32>(_wgslsmith_f_op_f32(func_3()), arg_0.a.x), Struct_1(~arg_0.e.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(global1.a.c.x, u_input.a.x)), -u_input.a.xy, -global1.c.c), global1.a.c), _wgslsmith_f_op_f32(round(global1.c.d)), global1.a.e), firstTrailingBit(vec2<u32>(global3.a.x | 9102u, global3.a.x) | global3.a.xz), select(!select(vec4<bool>(false, true, false, true), select(vec4<bool>(global1.e.x, arg_0.d.x, global1.e.x, global1.e.x), arg_0.d, global1.e), select(global1.e, vec4<bool>(false, false, false, true), arg_0.d)), vec4<bool>(arg_0.d.x, global1.e.x, false, !arg_0.d.x), all(vec2<bool>(true, true))));
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.e.d, 1819f), global1.b, !(!(!global1.e.xy))));
    global0 = select(abs(-vec2<i32>(2147483647i, 54919i)), arg_0.e.c, vec2<bool>(u_input.a.x != -u_input.a.x, global1.e.x));
    var var_0 = global1.a.d;
    global2 = global1.b;
    return Struct_4(vec4<u32>(~global1.c.a << (0u % 32u), reverseBits(global1.c.a) | ~285u, arg_0.b.x, firstTrailingBit(arg_0.b.x)) << (vec4<u32>(global1.d.x, arg_0.c.x, ~1u, global3.a.x) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(1321f, 684f, global1.e.x)), _wgslsmith_f_op_f32(global1.a.d - global1.c.d), global2.x, _wgslsmith_div_f32(global1.a.b, -464f))))), reverseBits(vec4<u32>(54161u, global1.c.e, _wgslsmith_div_u32(global3.a.x, select(arg_0.a.x, global3.a.x, global1.e.x)), ~(arg_0.a.x << (arg_0.a.x % 32u)))), ~vec4<u32>(1u, max(global1.d.x, 0u), global3.a.x, 1u), global1.e, global1.c);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2115f, -395f, -1093f, 2209f) * vec4<f32>(-516f, -1161f, var_0.a.x, 502f)) * var_0.a))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(696f, -922f, global2.x, -458f))))))))), min(vec4<u32>(abs(0u) & select(var_0.c.x, 8453u, global1.e.x), reverseBits(17501u), global3.a.x, 0u), arg_0.a), ~var_0.c, vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.e, arg_0.a.x, var_0.e.e), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.a.x, 19323u, 3414u), global3.a.xwz)) < max(max(var_0.e.e, global3.a.x), 29746u), select(any(vec2<bool>(true, false)), any(vec4<bool>(var_0.d.x, true, false, global1.e.x)), var_0.d.x), global1.e.x | var_0.d.x, false), Struct_1(~reverseBits(func_2(Struct_2(vec4<f32>(var_0.e.d, global2.x, -101f, 211f), var_0.c, vec4<u32>(1u, 106533u, var_0.c.x, 19847u), vec4<bool>(true, global1.e.x, var_0.d.x, global1.e.x), Struct_1(0u, -1532f, global1.a.c, var_0.e.d, 0u))).a.x), 1f, global1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2601f, -1299f)) * -256f), var_0.c.x));
    global3 = Struct_4(~arg_0.a | arg_0.a);
    global3 = Struct_4(global3.a);
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(748f, 1796f, 873f, var_0.e.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1109f, 697f, global1.b.x, -928f))))))), vec4<u32>(~var_0.c.x, global1.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, firstLeadingBit(var_0.c.x), global1.c.a), ~arg_0.a.yxw), ~var_0.b.x), vec4<u32>(17883u, 38851u | func_2(Struct_2(vec4<f32>(global2.x, -2913f, -298f, 1184f), vec4<u32>(0u, arg_0.a.x, 98404u, var_0.b.x), global3.a, global1.e, global1.a)).a.x, arg_0.a.x, _wgslsmith_sub_u32(~1u, ~(~63956u))), global1.e, global1.c);
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a + var_0.a), ~global3.a, vec4<u32>(abs(1u), _wgslsmith_sub_u32(global1.c.a, 1u), 93455u, _wgslsmith_add_u32(_wgslsmith_mult_u32(arg_0.a.x, var_0.c.x), reverseBits(var_0.e.e))), var_0.d, Struct_1(var_0.c.x, global2.x, max(vec2<i32>(1i, 1i), select(u_input.a.zy, vec2<i32>(0i, 2147483647i), global1.e.x)), var_0.e.d, firstLeadingBit(1u))));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> Struct_4 {
    let var_0 = vec4<f32>(322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.a.e.b))) - global2.x)), 1551f, _wgslsmith_f_op_f32(func_3()));
    let var_1 = abs(~_wgslsmith_mod_u32(115552u, reverseBits(82606u))) & ~(~arg_2.a.c.x);
    global3 = func_2(arg_2.a);
    let var_2 = arg_2;
    global3 = func_2(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.d), _wgslsmith_f_op_f32(f32(-1f) * -695f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_0.x)), -1135f)), arg_2.a.a.x), arg_0.a.c, _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global3.a >> (var_2.a.c % vec4<u32>(32u)), arg_2.a.c), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_2.a.b.x, 4294967295u, 31552u), vec4<u32>(arg_1, var_2.a.c.x, 8510u, var_2.a.b.x))), !(!arg_0.a.d), Struct_1(_wgslsmith_dot_vec4_u32(arg_2.a.b, ~arg_2.a.c), _wgslsmith_f_op_f32(floor(-642f)), arg_0.a.e.c, -2555f, ~(~0u))));
    return Struct_4(arg_2.a.b);
}

fn func_1(arg_0: bool) -> Struct_5 {
    let var_0 = global3.a.x;
    global3 = func_5(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(185f, -2206f, 1010f, 984f))), abs(~global3.a), ~(~vec4<u32>(4294967295u, global1.c.a, global1.a.e, global3.a.x)), global1.e, Struct_1(reverseBits(4294967295u), -1054f, countOneBits(vec2<i32>(9299i, 1i)), _wgslsmith_div_f32(-636f, global1.b.x), global1.a.a >> (4294967295u % 32u)))), _wgslsmith_mult_u32(~66323u, _wgslsmith_dot_vec3_u32(countOneBits(~global3.a.wxz), vec3<u32>(1u, 0u | global1.d.x, 39898u))), func_4(func_2(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.d, global2.x, 262f, global2.x)), _wgslsmith_div_vec4_u32(global3.a, vec4<u32>(global1.a.e, 14411u, global3.a.x, 0u)), vec4<u32>(global1.d.x, 4294967295u, 39540u, 1u), !vec4<bool>(true, global1.e.x, arg_0, global1.e.x), Struct_1(global3.a.x, 941f, vec2<i32>(u_input.a.x, 1i), global2.x, 4294967295u))), vec3<i32>(1i, global0.x, reverseBits(firstLeadingBit(-1i)))));
    var var_1 = vec3<bool>(select(true, global1.e.x, arg_0), any(select(!global1.e.wx, vec2<bool>(true, true), global1.e.zw)), select(all(select(global1.e.xx, select(vec2<bool>(true, true), global1.e.wx, vec2<bool>(arg_0, false)), true)), any(!global1.e.zwz), true));
    var var_2 = func_4(func_5(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(406f, 1524f, 386f, global1.c.d) * vec4<f32>(-758f, global2.x, global1.b.x, global1.b.x)), global3.a, ~global3.a, vec4<bool>(false, false, true, true), func_4(Struct_4(global3.a), vec3<i32>(11647i, 45927i, 4108i)).a.e)), ~_wgslsmith_add_u32(global3.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(107960u, global3.a.x, 4294967295u), vec3<u32>(global1.c.a, 5257u, 0u))), Struct_3(func_4(func_5(Struct_3(Struct_2(vec4<f32>(global2.x, -1549f, -135f, 211f), global3.a, vec4<u32>(global3.a.x, global1.a.a, 8284u, global1.d.x), global1.e, global1.c)), 1u, Struct_3(Struct_2(vec4<f32>(global1.c.d, 548f, 1664f, global1.c.d), vec4<u32>(34460u, 0u, 0u, global3.a.x), global3.a, vec4<bool>(false, global1.e.x, global1.e.x, false), Struct_1(546u, global1.a.d, global1.c.c, -1000f, 29298u)))), countOneBits(u_input.a.yyx)).a)), u_input.a.zww).a.e;
    var var_3 = ~(~vec3<u32>(27141u, func_5(Struct_3(Struct_2(vec4<f32>(var_2.b, var_2.d, global2.x, -775f), vec4<u32>(var_2.a, var_2.e, global1.d.x, 1u), global3.a, global1.e, global1.c)), global1.d.x, Struct_3(Struct_2(vec4<f32>(-1821f, 1366f, 1849f, global2.x), global3.a, global3.a, vec4<bool>(arg_0, false, false, arg_0), Struct_1(global3.a.x, 1218f, vec2<i32>(global1.c.c.x, -49697i), var_2.b, var_2.e)))).a.x, 1u)) << ((vec3<u32>(global3.a.x, (1u << (global3.a.x % 32u)) | 37463u, func_2(func_4(Struct_4(vec4<u32>(global3.a.x, 1u, global1.c.a, 4294967295u)), u_input.a.xzy).a).a.x) << (vec3<u32>(1u, global3.a.x, _wgslsmith_clamp_u32(~58728u, global3.a.x, global3.a.x)) % vec3<u32>(32u))) % vec3<u32>(32u));
    return Struct_5(global1.c, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-911f * global1.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-313f, global2.x))))))), func_4(Struct_4(_wgslsmith_sub_vec4_u32(vec4<u32>(56333u, 16629u, var_3.x, var_2.e), ~vec4<u32>(55150u, var_2.e, var_3.x, var_2.a))), ~u_input.a.xzz).a.e, ~firstLeadingBit(vec2<u32>(var_2.a, ~35695u)), !select(!vec4<bool>(false, global1.e.x, global1.e.x, true), vec4<bool>(false, var_1.x, var_3.x >= 32286u, var_1.x), global1.e));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1((!global1.e.x || global1.e.x) & false);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b))));
    var var_1 = func_4(func_5(Struct_3(func_4(func_2(Struct_2(vec4<f32>(-1514f, var_0, -157f, 1000f), vec4<u32>(19759u, 4294967295u, global3.a.x, global3.a.x), vec4<u32>(global1.d.x, 5155u, 14289u, 4294967295u), vec4<bool>(false, global1.e.x, global1.e.x, true), Struct_1(global3.a.x, global2.x, u_input.a.zw, -1086f, 0u))), ~vec3<i32>(1i, -31521i, -2147483647i)).a), 14077u, Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_0, global1.a.b, global2.x)), global3.a >> (vec4<u32>(global3.a.x, global3.a.x, 46751u, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(global3.a, global3.a), vec4<bool>(false, true, true, global1.e.x), global1.c))), _wgslsmith_add_vec3_i32(min(u_input.a.yxz, vec3<i32>(-2147483647i, u_input.a.x, global0.x) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global3.a.x, 1u, 4294967295u), vec3<u32>(global1.a.a, 42437u, 0u)) % vec3<u32>(32u))), ~abs(-u_input.a.wyx))).a;
    global2 = func_1(global1.e.x).b;
    global3 = func_2(func_4(func_5(Struct_3(Struct_2(var_1.a, var_1.c, vec4<u32>(global3.a.x, var_1.e.e, 2029u, 26287u), var_1.d, global1.c)), _wgslsmith_mod_u32(~var_1.b.x, 25716u), Struct_3(func_4(Struct_4(global3.a), vec3<i32>(var_1.e.c.x, -2147483647i, 0i)).a)), countOneBits(firstTrailingBit(vec3<i32>(0i, var_1.e.c.x, u_input.a.x)))).a);
    var_1 = Struct_2(vec4<f32>(348f, 1614f, _wgslsmith_f_op_f32(global1.c.d - _wgslsmith_f_op_f32(global2.x * var_1.a.x)), var_0), vec4<u32>(4294967295u, 26475u, abs(_wgslsmith_mult_u32(49490u, ~var_1.c.x)), global1.a.e), (~(~vec4<u32>(84996u, var_1.b.x, global3.a.x, 4294967295u)) ^ _wgslsmith_div_vec4_u32(max(var_1.c, global3.a), countOneBits(global3.a))) >> (vec4<u32>(func_5(func_4(Struct_4(var_1.b), vec3<i32>(var_1.e.c.x, global0.x, -24319i)), _wgslsmith_mod_u32(28743u, 4294967295u), func_4(Struct_4(vec4<u32>(global3.a.x, var_1.b.x, global1.d.x, 1u)), u_input.a.zww)).a.x, select(4294967295u, global3.a.x, false), min(global1.a.e >> (1u % 32u), firstLeadingBit(global3.a.x)), ~130940u) % vec4<u32>(32u)), global1.e, func_1(true).a);
    global0 = -u_input.a.zz;
    var_1 = func_4(func_2(func_4(func_5(Struct_3(Struct_2(vec4<f32>(var_1.e.b, -977f, -1000f, var_0), vec4<u32>(global3.a.x, 14589u, var_1.b.x, var_1.b.x), vec4<u32>(global3.a.x, global3.a.x, global1.d.x, global1.d.x), vec4<bool>(false, false, var_1.d.x, var_1.d.x), var_1.e)), ~65667u, Struct_3(Struct_2(vec4<f32>(1000f, 194f, global2.x, 931f), vec4<u32>(global1.c.a, 10422u, 4294967295u, 2222u), global3.a, vec4<bool>(false, false, global1.e.x, false), global1.c))), vec3<i32>(~var_1.e.c.x, 3143i, ~2147483647i)).a), u_input.a.yzw).a;
    global3 = func_5(func_4(Struct_4(vec4<u32>(global1.a.a, global3.a.x, 1u, 38243u) & vec4<u32>(1u, 51796u, 26424u, 0u)), countOneBits(u_input.a.xyy)), func_4(Struct_4(~_wgslsmith_sub_vec4_u32(global3.a, global3.a)), firstLeadingBit(u_input.a.wwz)).a.b.x, Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(928f, -1492f, 1638f, -707f))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-477f, 323f, var_1.a.x, global2.x), var_1.a))), ~func_2(Struct_2(var_1.a, vec4<u32>(0u, global3.a.x, global3.a.x, 1u), global3.a, global1.e, var_1.e)).a, abs(global3.a) >> (_wgslsmith_div_vec4_u32(vec4<u32>(var_1.e.e, global1.a.a, 1u, global3.a.x), var_1.b) % vec4<u32>(32u)), vec4<bool>(!global1.e.x, var_1.d.x, !var_1.d.x, true), global1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 680f, global1.c.b, -2111f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x + -2350f), global2.x, func_4(Struct_4(var_1.b), vec3<i32>(global0.x, u_input.a.x, global1.a.c.x)).a.a.x, 1000f))));
}

