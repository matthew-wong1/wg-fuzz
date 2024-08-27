struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<i32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: array<i32, 20> = array<i32, 20>(891i, -26144i, 2147483647i, 0i, i32(-2147483648), 17396i, 28304i, 2147483647i, 2147483647i, 40434i, -1i, 2147483647i, 0i, 93618i, 22650i, 0i, -11235i, 0i, -1i, 1i);

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), -27230i, -17280i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4) -> i32 {
    return ~u_input.b;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    var var_0 = Struct_4(Struct_1(vec2<i32>(func_3(Struct_4(Struct_1(vec2<i32>(-1i, global0[_wgslsmith_index_u32(1u, 13u)]), arg_1, arg_0, 1000f), 34262u, vec4<i32>(0i, -2147483647i, -1i, global1[_wgslsmith_index_u32(1u, 20u)]), Struct_3(vec4<i32>(global1[_wgslsmith_index_u32(54839u, 20u)], u_input.a, global0[_wgslsmith_index_u32(0u, 13u)], -6046i), Struct_2(Struct_1(global2.yy, true, arg_0, 874f), vec2<u32>(4294967295u, 49062u), -1942f, Struct_1(global2.yx, arg_0.x, arg_0, 375f)), vec2<u32>(1u, 4294967295u), arg_0.zz, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), 1i), arg_0.x, !select(!arg_0, select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, true, true), arg_0), true), 255f), 4294967295u, max(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-33650i, 3483i), vec2<i32>(global2.x, u_input.b)), global0[_wgslsmith_index_u32(4294967295u, 13u)] >> (49869u % 32u), u_input.c, -2147483647i), vec4<i32>(~global1[_wgslsmith_index_u32(26488u, 20u)], -20749i, abs(global2.x), -global1[_wgslsmith_index_u32(0u, 20u)])) << (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), Struct_3(abs(firstTrailingBit(select(vec4<i32>(global2.x, global2.x, 0i, -52512i), vec4<i32>(-2147483647i, global2.x, global2.x, global1[_wgslsmith_index_u32(4294967295u, 20u)]), false))), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(global2.xz, global2.zy), false, select(vec3<bool>(false, false, true), arg_0, arg_0.x), 318f), vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(1000f - -866f), Struct_1(max(global2.yy, global2.yz), arg_1, !vec3<bool>(false, arg_1, arg_1), _wgslsmith_f_op_f32(max(431f, -580f)))), ~(~vec2<u32>(0u, 0u)), vec2<bool>(true & any(arg_0), arg_1), !select(!arg_0, vec3<bool>(true, false, arg_1), select(vec3<bool>(false, arg_0.x, arg_1), arg_0, false))));
    var_0 = Struct_4(var_0.d.b.d, 42973u, -var_0.c, var_0.d);
    var var_1 = 109024u;
    var var_2 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.d.b.a.d, var_0.d.b.a.d))) < _wgslsmith_f_op_f32(min(-605f, _wgslsmith_f_op_f32(max(-1000f, 997f))))));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(var_0.d.b.a.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.a.d)) + _wgslsmith_f_op_f32(exp2(var_0.d.b.d.d))) + 749f)), 871f, 1425f);
    return ~var_0.d.b.b.x;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    global0 = array<i32, 13>();
    var var_0 = vec3<bool>(!any(!select(vec2<bool>(false, true), vec2<bool>(arg_1.d.c.x, arg_1.d.c.x), arg_1.d.c.yx)), !arg_1.a.c.x, arg_1.d.c.x);
    global0 = array<i32, 13>();
    var_0 = vec3<bool>(all(var_0.yy), !((!var_0.x && false) && (!arg_1.a.b | true)), var_0.x);
    global0 = array<i32, 13>();
    return Struct_4(Struct_1((vec2<i32>(-1i) * -arg_1.d.a) ^ vec2<i32>(~arg_1.a.a.x, -2147483647i), var_0.x, vec3<bool>(!select(false, false, var_0.x), arg_1.b.x >= ~4294967295u, any(select(vec2<bool>(true, false), var_0.xy, arg_1.a.c.yz))), _wgslsmith_div_f32(-506f, arg_1.c)), _wgslsmith_mult_u32(~abs(32761u & arg_1.b.x), arg_1.b.x), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(11489i, global0[_wgslsmith_index_u32(arg_1.b.x, 13u)]), ~global2.x), global0[_wgslsmith_index_u32(~firstLeadingBit(arg_0), 13u)]), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, arg_0), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b.x, arg_0, 0u), vec3<u32>(arg_0, arg_0, arg_0))) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, arg_0, arg_0, 23249u), vec4<u32>(arg_0, 52268u, 65014u, arg_0)), arg_0), 20u)], -(~(-global1[_wgslsmith_index_u32(13119u, 20u)])), 0i), Struct_3(~vec4<i32>(1i, i32(-1i) * -2147483647i, -9778i, global0[_wgslsmith_index_u32(~16693u, 13u)]), Struct_2(arg_1.a, vec2<u32>(66273u, arg_0), arg_1.c, arg_1.a), select(vec2<u32>(~12537u, firstTrailingBit(arg_0)), vec2<u32>(arg_1.b.x, 4294967295u), vec2<bool>(true, false)), var_0.xz, !arg_1.d.c));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<i32>) -> i32 {
    global0 = array<i32, 13>();
    let var_0 = func_4(func_2(vec3<bool>(true, true, true), all(vec3<bool>(-995f >= arg_0.x, false, true))), Struct_2(Struct_1(arg_1.zy, select(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, false)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(false, true, false)), arg_0.x), vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(412f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), Struct_1(vec2<i32>(func_3(Struct_4(Struct_1(vec2<i32>(u_input.b, -22625i), false, vec3<bool>(true, true, true), 1000f), 38948u, arg_1, Struct_3(vec4<i32>(arg_1.x, u_input.b, -30577i, 0i), Struct_2(Struct_1(global2.yx, true, vec3<bool>(true, false, false), arg_0.x), vec2<u32>(24445u, 12858u), -610f, Struct_1(global2.xx, true, vec3<bool>(false, true, false), arg_0.x)), vec2<u32>(1u, 65831u), vec2<bool>(false, false), vec3<bool>(false, false, true)))), max(global2.x, 2147483647i)), any(vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true), -778f)));
    var var_1 = var_0;
    var var_2 = vec4<u32>(firstTrailingBit(1u), select(~var_1.b, _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(90651u, var_0.d.b.b.x)), ~var_0.d.b.b), all(select(var_1.d.e, var_1.d.e, vec3<bool>(false, var_0.d.d.x, true)))), var_1.d.b.b.x, 23146u);
    global2 = ~arg_1.xxw;
    return _wgslsmith_dot_vec4_i32(var_1.d.a, countOneBits(select(max(vec4<i32>(-45446i, arg_1.x, -686i, -27572i), var_1.c), vec4<i32>(func_3(Struct_4(var_0.d.b.d, 0u, vec4<i32>(global2.x, 2147483647i, global1[_wgslsmith_index_u32(var_1.d.c.x, 20u)], var_0.d.a.x), var_0.d)), firstLeadingBit(global1[_wgslsmith_index_u32(30904u, 20u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a.x, global0[_wgslsmith_index_u32(38219u, 13u)], arg_1.x), vec3<i32>(var_0.c.x, global2.x, 22052i)), global1[_wgslsmith_index_u32(min(var_0.b, var_1.d.b.b.x), 20u)]), !(!vec4<bool>(var_1.d.b.a.b, var_1.d.e.x, true, var_0.a.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1829f, -940f, 1939f, _wgslsmith_div_f32(399f, -624f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(802f, -312f, -162f, 429f)) + vec4<f32>(581f, 998f, 440f, 554f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, -1110f, 1454f, 1000f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1539f, 529f, -884f, 530f)))))), _wgslsmith_add_vec4_i32(~vec4<i32>(firstLeadingBit(1829i), countOneBits(1i), abs(u_input.b), -57187i), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(global0[_wgslsmith_index_u32(0u, 13u)]), u_input.b, min(0i, -35047i), u_input.b), -(~vec4<i32>(-22830i, u_input.a, -28084i, 12275i)))));
    let var_1 = func_4(24994u, Struct_2(func_4(select(_wgslsmith_mult_u32(1u, 68544u), func_4(1u, Struct_2(Struct_1(global2.zx, false, vec3<bool>(false, true, true), -921f), vec2<u32>(14506u, 0u), 1334f, Struct_1(global2.zy, true, vec3<bool>(true, true, true), -898f))).d.b.b.x, false), func_4(1u, func_4(1u, Struct_2(Struct_1(global2.yz, true, vec3<bool>(true, true, true), 526f), vec2<u32>(1u, 4294967295u), -1275f, Struct_1(global2.xz, false, vec3<bool>(false, false, false), -528f))).d.b).d.b).d.b.a, _wgslsmith_clamp_vec2_u32(~vec2<u32>(24548u, 1423u), ~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(~52835u, func_4(48721u, Struct_2(Struct_1(global2.yy, true, vec3<bool>(true, true, false), 1048f), vec2<u32>(1u, 91513u), 740f, Struct_1(vec2<i32>(global2.x, 0i), false, vec3<bool>(false, false, false), -1845f))).d.b.b.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(240f, _wgslsmith_f_op_f32(select(-119f, -2026f, true))))), Struct_1(global2.zz, (4294967295u << (0u % 32u)) > _wgslsmith_dot_vec3_u32(vec3<u32>(21546u, 38440u, 4294967295u), vec3<u32>(35186u, 1u, 1u)), select(vec3<bool>(true, true, true), func_4(4294967295u, Struct_2(Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(4471u, 20u)], -14301i), false, vec3<bool>(false, false, false), 251f), vec2<u32>(60023u, 0u), -1264f, Struct_1(vec2<i32>(global2.x, global1[_wgslsmith_index_u32(12765u, 20u)]), true, vec3<bool>(true, false, true), 256f))).a.c, any(vec3<bool>(true, true, true))), -599f))).d;
    var var_2 = var_1.b;
    var_0 = countOneBits(abs(2147483647i)) >> (var_2.b.x % 32u);
    var var_3 = Struct_4(var_1.b.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(0u, var_2.b.x, var_2.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, var_1.b.b.x, var_1.b.b.x), vec3<u32>(51650u, var_1.c.x, 0u))), select(countOneBits(vec3<u32>(var_1.c.x, var_2.b.x, var_2.b.x)), ~vec3<u32>(4294967295u, var_1.b.b.x, var_1.c.x) >> (~vec3<u32>(8653u, 22396u, 69081u) % vec3<u32>(32u)), true)), var_1.a | (var_1.a << (~(~vec4<u32>(var_2.b.x, 13526u, 35794u, var_1.c.x)) % vec4<u32>(32u))), Struct_3(min(~reverseBits(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(25005u, 13u)], var_1.a.x, var_2.d.a.x)), var_1.a), func_4(abs(~var_2.b.x), var_1.b).d.b, var_2.b, !select(vec2<bool>(true, var_2.a.c.x), !vec2<bool>(var_1.d.x, false), 4109u != var_2.b.x), !(!(!var_2.a.c))));
    global2 = select(vec3<i32>(var_3.a.a.x, _wgslsmith_sub_i32(-(u_input.c ^ -26089i), _wgslsmith_sub_i32(~0i, ~(-8241i))), _wgslsmith_mod_i32(2147483647i, -33019i | u_input.c)), vec3<i32>(0i, countOneBits(~(~u_input.b)), _wgslsmith_mod_i32(global2.x, _wgslsmith_div_i32(var_2.d.a.x, -var_2.d.a.x))), any(select(vec4<bool>(4294967295u < var_2.b.x, var_3.d.e.x, var_1.b.d.d > var_1.b.c, 19440i >= global1[_wgslsmith_index_u32(var_1.c.x, 20u)]), select(select(vec4<bool>(var_2.a.c.x, true, false, true), vec4<bool>(var_1.e.x, var_3.d.d.x, var_3.a.c.x, var_1.e.x), false), select(vec4<bool>(true, true, var_2.a.b, var_2.a.c.x), vec4<bool>(var_1.e.x, false, false, false), vec4<bool>(false, var_2.a.c.x, true, var_1.e.x)), !vec4<bool>(false, true, false, var_2.a.b)), !vec4<bool>(false, var_2.d.c.x, true, true))));
    let var_4 = vec4<f32>(var_3.d.b.d.d, _wgslsmith_div_f32(var_1.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1054f * _wgslsmith_f_op_f32(-var_2.c)) * 280f)), 554f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.c))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.wy, vec3<f32>(730f, var_3.d.b.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1082f, var_4.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.d.b.c, 419f) * var_3.d.b.a.d))));
}

