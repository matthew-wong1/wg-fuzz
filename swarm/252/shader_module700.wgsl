struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(Struct_1(-978f, 1i, vec3<i32>(5906i, -35139i, i32(-2147483648))), vec2<i32>(i32(-2147483648), -1591i), vec3<bool>(true, true, true)), Struct_3(Struct_1(-513f, i32(-2147483648), vec3<i32>(1000i, -1i, -22757i)), vec2<i32>(-18761i, 847i), vec3<bool>(false, false, false)), Struct_3(Struct_1(-1000f, i32(-2147483648), vec3<i32>(0i, -1i, 0i)), vec2<i32>(38499i, 0i), vec3<bool>(false, false, false)), Struct_3(Struct_1(-203f, 0i, vec3<i32>(0i, 1i, 1i)), vec2<i32>(-95i, -1i), vec3<bool>(false, true, true)), Struct_3(Struct_1(-560f, -36592i, vec3<i32>(-1i, -1i, -9173i)), vec2<i32>(0i, -98551i), vec3<bool>(false, false, true)), Struct_3(Struct_1(938f, 28309i, vec3<i32>(-53341i, 1i, -32322i)), vec2<i32>(-22028i, -813i), vec3<bool>(true, true, false)), Struct_3(Struct_1(449f, 44775i, vec3<i32>(-1i, i32(-2147483648), 1i)), vec2<i32>(1i, 2147483647i), vec3<bool>(true, false, false)), Struct_3(Struct_1(1914f, -1i, vec3<i32>(2147483647i, 4860i, 20407i)), vec2<i32>(-2885i, -3772i), vec3<bool>(false, false, false)), Struct_3(Struct_1(-584f, i32(-2147483648), vec3<i32>(-6690i, 1i, -4004i)), vec2<i32>(1i, 0i), vec3<bool>(false, true, false)), Struct_3(Struct_1(-938f, 0i, vec3<i32>(23738i, i32(-2147483648), -13518i)), vec2<i32>(-46503i, -38961i), vec3<bool>(true, false, true)), Struct_3(Struct_1(121f, -23778i, vec3<i32>(0i, 2147483647i, -1i)), vec2<i32>(-48767i, 1i), vec3<bool>(true, false, false)), Struct_3(Struct_1(1152f, 2147483647i, vec3<i32>(i32(-2147483648), -16952i, 9066i)), vec2<i32>(0i, 1i), vec3<bool>(false, true, false)), Struct_3(Struct_1(198f, -36927i, vec3<i32>(-61850i, -12076i, -5882i)), vec2<i32>(-3822i, -1i), vec3<bool>(false, false, false)), Struct_3(Struct_1(1863f, 20281i, vec3<i32>(12970i, 30177i, -15101i)), vec2<i32>(1i, 1i), vec3<bool>(false, true, true)), Struct_3(Struct_1(-1097f, -30983i, vec3<i32>(4246i, i32(-2147483648), 1i)), vec2<i32>(0i, 72483i), vec3<bool>(false, false, true)), Struct_3(Struct_1(-486f, 2147483647i, vec3<i32>(2147483647i, -3690i, -1i)), vec2<i32>(1i, 6366i), vec3<bool>(true, true, true)), Struct_3(Struct_1(-422f, -11141i, vec3<i32>(44118i, 29483i, -2380i)), vec2<i32>(1i, 2147483647i), vec3<bool>(true, true, false)));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<vec4<u32>, 5> = array<vec4<u32>, 5>(vec4<u32>(4294967295u, 4294967295u, 0u, 3542u), vec4<u32>(21500u, 55571u, 4294967295u, 1u), vec4<u32>(1u, 0u, 4294967295u, 30601u), vec4<u32>(20760u, 0u, 0u, 32812u), vec4<u32>(1u, 0u, 27333u, 9089u));

var<private> global4: Struct_1 = Struct_1(659f, 0i, vec3<i32>(-36997i, 3796i, -1i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global3 = array<vec4<u32>, 5>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a.a)))), -24693i, ~vec3<i32>(select(u_input.a.x, u_input.a.x, global2.x), -29573i & global4.c.x, ~u_input.a.x)), _wgslsmith_clamp_vec2_i32(-(vec2<i32>(-2147483647i, 11679i) ^ -vec2<i32>(arg_0.a.c.x, arg_0.a.b)), vec2<i32>(max(firstLeadingBit(24495i), 27014i ^ u_input.a.x), (i32(-1i) * -1i) & u_input.a.x), _wgslsmith_clamp_vec2_i32(select(firstTrailingBit(global4.c.xz), vec2<i32>(u_input.a.x, u_input.a.x) & u_input.a.wz, !vec2<bool>(global2.x, false)), vec2<i32>(global4.b, 1i), global4.c.zx)), vec3<bool>(any(select(vec2<bool>(true, false), !vec2<bool>(false, global2.x), vec2<bool>(true, true))), true, true || all(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(901f, _wgslsmith_f_op_f32(min(573f, _wgslsmith_f_op_f32(abs(-1435f)))), 864f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.a)))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a, global4.a, var_0.a.a, global4.a) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-716f, global4.a, global0.x, -1227f), vec4<f32>(global4.a, 137f, -245f, arg_0.a.a), vec4<bool>(true, false, var_0.c.x, false)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.a.a + -251f), arg_0.a.a, _wgslsmith_f_op_f32(sign(var_0.a.a)), _wgslsmith_f_op_f32(trunc(arg_0.a.a))))))));
    var var_2 = vec4<u32>(4294967295u, min(1u, ~1u), _wgslsmith_dot_vec4_u32(~global3[_wgslsmith_index_u32(~1u, 5u)], ~(vec4<u32>(4294967295u, 4294967295u, 6046u, 36233u) >> (_wgslsmith_div_vec4_u32(vec4<u32>(38536u, 3818u, 0u, 1u), global3[_wgslsmith_index_u32(4294967295u, 5u)]) % vec4<u32>(32u)))), abs(~61097u) ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(global3[_wgslsmith_index_u32(116930u, 5u)] >> (global3[_wgslsmith_index_u32(0u, 5u)] % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 62313u, 4294967295u, 149969u), global3[_wgslsmith_index_u32(~17795u, 5u)])));
    var var_3 = Struct_1(var_1.x, -global4.c.x, _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(-2147483647i >> (var_2.x % 32u)), ~(-14324i), u_input.a.x), global4.c));
    return any(!vec4<bool>(var_0.c.x, false, !select(false, true, true), global2.x));
}

fn func_2() -> Struct_1 {
    var var_0 = global2.x;
    var_0 = func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -3010f)), global4.b >> (1u % 32u), vec3<i32>(u_input.a.x, -26537i, 1i) | global4.c)));
    global4 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(404f, global0.x) - _wgslsmith_f_op_f32(-global4.a)) + -153f))), _wgslsmith_sub_i32(abs(-global4.c.x), _wgslsmith_sub_i32(1i, u_input.a.x)), firstTrailingBit(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(global4.b, global4.c.x, 0i), firstTrailingBit(vec3<i32>(-7137i, global4.c.x, global4.b)), abs(u_input.a.wxz)))));
    global4 = Struct_1(335f, countOneBits(abs(_wgslsmith_dot_vec3_i32(global4.c, _wgslsmith_clamp_vec3_i32(global4.c, u_input.a.xzy, vec3<i32>(-5080i, 41734i, 0i))))), vec3<i32>(global4.c.x, global4.b, _wgslsmith_sub_i32(-(~1i), 1i)));
    var var_1 = true;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - -542f))) * _wgslsmith_f_op_f32(f32(-1f) * -364f)), ~(~1i), global4.c);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = arg_0.c.x;
    return arg_0.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_2(func_4(Struct_3(func_2(), vec2<i32>(1i, select(global4.b, u_input.a.x, arg_0.x)), vec3<bool>(true, true, true)), ~u_input.a.x >> ((arg_1 | ~arg_1) % 32u), Struct_1(_wgslsmith_f_op_f32(min(-401f, global4.a)), countOneBits(u_input.a.x), _wgslsmith_mod_vec3_i32(u_input.a.zwx, u_input.a.zxy))));
    var var_1 = _wgslsmith_mult_vec3_u32(~(firstTrailingBit(~vec3<u32>(21112u, arg_1, arg_1)) & firstTrailingBit(vec3<u32>(1u, arg_1, arg_1))), max(~reverseBits(vec3<u32>(arg_1, arg_1, arg_1)) | select(vec3<u32>(33247u, 1u, 0u), vec3<u32>(arg_1, 5133u, arg_1), all(vec3<bool>(false, arg_0.x, arg_0.x))), ~vec3<u32>(~1u, select(arg_1, 4294967295u, true), arg_1 & arg_1)));
    var var_2 = Struct_2(func_4(global1[_wgslsmith_index_u32(var_1.x, 17u)], var_0.a.b, var_0.a));
    let var_3 = global4.b;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-813f, -1423f, -1386f))))) - vec3<f32>(var_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.a - global0.x), _wgslsmith_f_op_f32(exp2(var_0.a.a))), _wgslsmith_f_op_f32(global4.a * func_2().a))));
    return Struct_2(var_0.a);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    global2 = !vec2<bool>(true, global2.x);
    return arg_2.a;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = true;
    var var_1 = func_1(select(vec2<bool>(true, all(arg_1.c)), select(select(select(arg_1.c.xy, vec2<bool>(true, false), false), arg_1.c.xx, func_3(Struct_2(Struct_1(global0.x, 1i, global4.c)))), arg_1.c.zz, arg_1.a.a >= -415f), vec2<bool>(!var_0, false)), 0u);
    global1 = array<Struct_3, 17>();
    var var_2 = vec2<f32>(global4.a, 234f);
    let var_3 = func_1(!arg_1.c.zx, abs(_wgslsmith_sub_u32(4294967295u, 1u)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(163f, 121f, var_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.a, 115f, var_2.x)), vec3<bool>(true, arg_1.c.x, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-890f, var_1.a.a, var_3.a.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(418f)), -1000f, -1235f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-129f, -883f, var_1.a.a) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-187f, var_3.a.a, 1495f), vec3<f32>(2270f, global0.x, -1156f), arg_1.c))) - vec3<f32>(_wgslsmith_div_f32(var_1.a.a, var_1.a.a), 380f, _wgslsmith_div_f32(108f, 315f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(_wgslsmith_div_vec2_i32(global4.c.zy & vec2<i32>(-2576i, 1i), vec2<i32>(-57152i, 2147483647i)) & vec2<i32>(_wgslsmith_div_i32(-35009i, -2147483647i), _wgslsmith_dot_vec3_i32(u_input.a.yyx, global4.c)), Struct_3(func_5(global4.a, true, func_1(vec2<bool>(true, false), 14264u), all(vec2<bool>(global2.x, global2.x))), u_input.a.xx, !(!vec3<bool>(global2.x, global2.x, true))), vec4<u32>(reverseBits(_wgslsmith_div_u32(1u, 11900u)), ~_wgslsmith_sub_u32(87663u, 0u), 40820u, _wgslsmith_div_u32(firstLeadingBit(100885u), ~13867u)))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(389f, -236f, 393f) - vec3<f32>(global0.x, global0.x, 242f)))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(462f, global0.x, false)), 1f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(vec2<i32>(0i, 2147483647i), Struct_3(Struct_1(global4.a, global4.c.x, vec3<i32>(-1i, 6673i, global4.b)), u_input.a.wy, vec3<bool>(true, global2.x, global2.x)), global3[_wgslsmith_index_u32(45877u, 5u)])))))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(func_5(_wgslsmith_f_op_f32(global4.a * global0.x), true, func_1(vec2<bool>(global2.x, global2.x), 1u), false).a, _wgslsmith_f_op_f32(f32(-1f) * -302f), _wgslsmith_f_op_f32(global4.a + _wgslsmith_div_f32(global4.a, 1000f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-904f, global4.a, global4.a))))))));
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(1u, 28925u, ~1u, _wgslsmith_dot_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 32123u, 1u, 4294967295u), vec4<u32>(0u, 1u, 1u, 4294967295u)), 5u)], global3[_wgslsmith_index_u32(~4294967295u, 5u)])), ~global3[_wgslsmith_index_u32(abs(24532u), 5u)]) | vec4<u32>(~(~_wgslsmith_sub_u32(4294967295u, 26358u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(_wgslsmith_div_vec3_u32(vec3<u32>(29407u, 124657u, 34382u), vec3<u32>(1u, 34641u, 25403u)))), min(~4294967295u, 0u), reverseBits(4294967295u));
    global1 = array<Struct_3, 17>();
    global1 = array<Struct_3, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(841f, _wgslsmith_f_op_f32(step(func_1(!vec2<bool>(true, global2.x), ~var_0.x).a.a, _wgslsmith_f_op_f32(exp2(global4.a)))))), global3[_wgslsmith_index_u32(0u, 5u)]);
}

