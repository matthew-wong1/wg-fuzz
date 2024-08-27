struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32> = vec3<u32>(47616u, 4294967295u, 38812u);

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 44181i, 9751i, -21645i), vec2<f32>(809f, 283f), vec3<f32>(1117f, 1000f, 918f), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 1i, -26180i, 0i), vec2<f32>(-1000f, 703f), vec3<f32>(765f, -205f, 1000f), vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 2147483647i, 98i, -1i), vec2<f32>(-666f, -294f), vec3<f32>(-1766f, -115f, 1507f), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec4<i32>(-10922i, i32(-2147483648), 2147483647i, 0i), vec2<f32>(264f, 2576f), vec3<f32>(-1457f, -306f, 335f), vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 439i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-431f, 642f), vec3<f32>(-786f, 1122f, 1492f), vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, -34751i, -14923i, -1i), vec2<f32>(-1120f, -586f), vec3<f32>(-763f, 700f, -382f), vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(0i, 0i, -1i, 1i), vec2<f32>(-1037f, -506f), vec3<f32>(-2126f, 1473f, 1033f), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 2147483647i, -1i, 1087i), vec2<f32>(-130f, -1449f), vec3<f32>(1000f, -2082f, 426f), vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-23861i, i32(-2147483648), -1i, 44181i), vec2<f32>(852f, 128f), vec3<f32>(-226f, -480f, -775f), vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, 1i, 55722i, 1i), vec2<f32>(-492f, 317f), vec3<f32>(-194f, -340f, 1185f), vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, 0i, -8426i, -52442i), vec2<f32>(934f, 206f), vec3<f32>(310f, 150f, -796f), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false), vec4<i32>(-21044i, i32(-2147483648), -59676i, -1i), vec2<f32>(-398f, -588f), vec3<f32>(-399f, -843f, 1838f), vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(70656i, 0i, -64621i, 1i), vec2<f32>(1000f, 892f), vec3<f32>(-488f, 1105f, 1748f), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), vec4<i32>(-45503i, -1i, 0i, i32(-2147483648)), vec2<f32>(1039f, -306f), vec3<f32>(612f, -565f, 1427f), vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(0i, 2147483647i, -21006i, -14312i), vec2<f32>(-1602f, -273f), vec3<f32>(-306f, -961f, 412f), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, -1i, 2147483647i, 7833i), vec2<f32>(-2129f, -2764f), vec3<f32>(-981f, -1000f, 2516f), vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(0i, -24670i, i32(-2147483648), 0i), vec2<f32>(957f, 1000f), vec3<f32>(-1000f, 813f, 295f), vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), vec4<i32>(44410i, 21490i, 19295i, 0i), vec2<f32>(-244f, -1765f), vec3<f32>(-296f, -106f, 1000f), vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, -1i, -57170i, 25570i), vec2<f32>(1180f, 688f), vec3<f32>(-823f, -815f, -980f), vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false), vec4<i32>(-69526i, -1i, -12020i, -11153i), vec2<f32>(1431f, -792f), vec3<f32>(347f, 227f, -419f), vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(0i, 0i, 33029i, -39002i), vec2<f32>(1227f, -800f), vec3<f32>(1000f, 1414f, -1351f), vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, 16610i, 2147483647i, 0i), vec2<f32>(-518f, 492f), vec3<f32>(-491f, -293f, 1146f), vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(53812i, 1i, i32(-2147483648), 9887i), vec2<f32>(-1114f, 174f), vec3<f32>(-1318f, 1052f, 320f), vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, i32(-2147483648), 2147483647i, -46048i), vec2<f32>(1000f, 575f), vec3<f32>(1455f, 1000f, 1358f), vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(-1i, -25892i, 0i, -36291i), vec2<f32>(-1503f, -465f), vec3<f32>(182f, -290f, -343f), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), vec4<i32>(1642i, -67i, i32(-2147483648), 2147483647i), vec2<f32>(625f, 934f), vec3<f32>(797f, -114f, -141f), vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true), vec4<i32>(2147483647i, 2556i, 37284i, 2147483647i), vec2<f32>(1178f, -1192f), vec3<f32>(-480f, -959f, -766f), vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false), vec4<i32>(1i, 1i, i32(-2147483648), -42928i), vec2<f32>(841f, -1000f), vec3<f32>(-2058f, -1332f, 146f), vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(42498i, 34592i, 2147483647i, i32(-2147483648)), vec2<f32>(1416f, 1127f), vec3<f32>(-215f, -118f, 567f), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 58263i, 69183i, -20225i), vec2<f32>(-1975f, -188f), vec3<f32>(1144f, 2086f, -986f), vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), 48608i, 1i, 0i), vec2<f32>(-172f, 909f), vec3<f32>(-588f, 1300f, 834f), vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false), vec4<i32>(2147483647i, 0i, -34029i, 1i), vec2<f32>(534f, -203f), vec3<f32>(-540f, 387f, -1000f), vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false), vec4<i32>(1i, 9090i, 1i, i32(-2147483648)), vec2<f32>(699f, 825f), vec3<f32>(-1030f, -670f, 442f), vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true), vec4<i32>(0i, 1i, -67765i, 0i), vec2<f32>(781f, 1235f), vec3<f32>(649f, -1000f, -439f), vec2<bool>(false, false))));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> bool {
    let var_0 = ~(~(-2147483647i));
    let var_1 = !(true & !(!(global2.a.a.x || false)));
    global3 = array<Struct_2, 17>();
    var var_2 = vec4<bool>(true, any(vec2<bool>(arg_1.a.a.x, false)), all(select(select(vec4<bool>(global2.a.a.x, var_1, true, true), select(vec4<bool>(arg_1.a.a.x, true, false, true), vec4<bool>(arg_1.a.a.x, false, false, var_1), true), all(vec3<bool>(arg_1.a.e.x, arg_1.a.a.x, global2.a.e.x))), !(!vec4<bool>(false, global2.a.e.x, arg_1.a.e.x, global2.a.a.x)), !select(vec4<bool>(true, true, var_1, false), vec4<bool>(global2.a.e.x, global2.a.a.x, var_1, var_1), arg_1.a.a.x))), any(vec2<bool>(var_1, true)));
    let var_3 = !(select(all(vec4<bool>(false, arg_1.a.e.x, false, arg_1.a.e.x)), arg_1.a.a.x, !arg_1.a.e.x) && !(arg_1.a.c.x > _wgslsmith_f_op_f32(abs(global2.a.c.x))));
    return false & var_3;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = select(global1.x > ~0u, false, global2.a.e.x);
    global2 = Struct_3(global2.a);
    global1 = vec3<u32>(~_wgslsmith_sub_u32(u_input.b, 0u), ~(select(_wgslsmith_mod_u32(1791u, 1u), 23965u, func_3(vec4<u32>(global1.x, global1.x, 56768u, global1.x), Struct_3(Struct_1(vec2<bool>(false, arg_1.x), vec4<i32>(arg_0, global2.a.b.x, 13730i, 48854i), vec2<f32>(global2.a.c.x, -457f), global2.a.d, vec2<bool>(true, false))))) >> (abs(~global1.x) % 32u)), 4790u);
    let var_1 = ~countOneBits(~vec4<u32>(_wgslsmith_div_u32(32961u, global1.x), u_input.d, ~u_input.a, 28524u));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.d.x))));
    return Struct_3(Struct_1(!vec2<bool>(arg_1.x, !global2.a.e.x), vec4<i32>(_wgslsmith_mult_i32(1i, i32(-1i) * -26497i), countOneBits(1i), arg_0 & _wgslsmith_dot_vec2_i32(global2.a.b.xw, vec2<i32>(2147483647i, 1i)), _wgslsmith_add_i32(-49800i ^ global2.a.b.x, abs(u_input.c))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.c - global2.a.c), global2.a.d.xy))), global2.a.d, global2.a.a));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_clamp_i32(-9699i, -21034i, ~firstTrailingBit(_wgslsmith_dot_vec4_i32(arg_0.a.b, arg_0.a.b))), vec2<bool>(~firstTrailingBit(4294967295u) >= abs(~42252u), !select(true, false, !arg_0.a.a.x)));
    var var_1 = Struct_2(arg_0.a, Struct_1(vec2<bool>(var_0.a.a.x, !global2.a.e.x), vec4<i32>(arg_1, func_2(countOneBits(arg_1), global2.a.e).a.b.x, firstTrailingBit(i32(-1i) * -2147483647i), arg_1), arg_0.a.d.zy, var_0.a.d, arg_0.a.e));
    global1 = ~(~_wgslsmith_mult_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(23104u, global1.x, global1.x), vec3<u32>(25298u, 0u, 86612u), vec3<u32>(global1.x, u_input.b, u_input.b))), select(vec3<u32>(1u, u_input.a, u_input.b), vec3<u32>(u_input.b, global1.x, u_input.b), true)));
    var var_2 = arg_0;
    let var_3 = var_0.a;
    return Struct_1(var_0.a.e, global2.a.b, global2.a.d.yz, vec3<f32>(_wgslsmith_div_f32(arg_0.a.c.x, 2084f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1077f, 1433f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(454f, 698f))))))), global2.a.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<bool>) -> bool {
    global0 = global1.x;
    let var_0 = func_4(func_2(_wgslsmith_mod_i32(-1i, countOneBits(77662i)), select(!select(vec2<bool>(true, false), arg_3.wz, vec2<bool>(false, arg_3.x)), vec2<bool>(true, !arg_1.x), select(select(arg_1.zz, vec2<bool>(arg_1.x, arg_1.x), false), arg_3.ww, true))), reverseBits(u_input.c));
    let var_1 = _wgslsmith_f_op_f32(min(-418f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))))));
    let var_2 = Struct_3(func_2(u_input.c << (arg_2 % 32u), global2.a.a).a);
    var var_3 = global1.yz;
    return func_3(~(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 10133u, u_input.a, 21349u), vec4<u32>(var_3.x, global1.x, global1.x, var_3.x)) << (reverseBits(vec4<u32>(var_3.x, arg_2, arg_2, global1.x)) % vec4<u32>(32u))), Struct_3(Struct_1(!global2.a.a, vec4<i32>(-58962i, -23206i, var_2.a.b.x, -2147483647i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 534f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.x, -508f, var_2.a.d.x))), !vec2<bool>(var_2.a.a.x, false)))) | any(!vec2<bool>(false, any(vec3<bool>(global2.a.e.x, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(Struct_1(vec2<bool>(global2.a.a.x | false, func_1(global2.a.c, vec4<bool>(true, global2.a.e.x, global2.a.e.x, global2.a.a.x), 4294967295u, vec4<bool>(global2.a.a.x, false, false, true))), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, u_input.c, global2.a.b.x, global2.a.b.x), global2.a.b), _wgslsmith_f_op_vec2_f32(-global2.a.d.yy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.c.x, -1423f, -1329f), vec3<f32>(global2.a.d.x, global2.a.c.x, global2.a.d.x), vec3<bool>(false, global2.a.a.x, global2.a.e.x)))), global2.a.a)), _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(68770u, 18384u, 5419u, global1.x), ~vec4<u32>(global1.x, global1.x, global1.x, global1.x), abs(vec4<u32>(4294967295u, u_input.b, global1.x, u_input.d))), abs(~(vec4<u32>(62186u, global1.x, 4294967295u, u_input.b) << (vec4<u32>(u_input.a, u_input.a, global1.x, 0u) % vec4<u32>(32u))))));
    let var_1 = -565f;
    var_0 = Struct_4(var_0.a, firstTrailingBit(_wgslsmith_dot_vec2_u32(max(global1.xy, _wgslsmith_div_vec2_u32(global1.zx, global1.zx)), vec2<u32>(1u, u_input.a) >> (select(vec2<u32>(var_0.b, 0u), vec2<u32>(var_0.b, 35808u), global2.a.a.x) % vec2<u32>(32u)))));
    global1 = vec3<u32>(~u_input.b, ~35551u, firstTrailingBit(30670u));
    global3 = array<Struct_2, 17>();
    var var_2 = var_1;
    global0 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_mult_u32(23713u, var_0.b ^ var_0.b), ~abs(var_0.b)));
}

