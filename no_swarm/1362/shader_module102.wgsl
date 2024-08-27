struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec2<f32>(-1000f, 952f), vec2<bool>(false, false), -487f);

var<private> global1: vec2<i32> = vec2<i32>(55168i, -11152i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -902f, global0.d))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 163f, 1909f) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-396f, 1610f, -835f), vec3<f32>(-417f, global0.b.x, global0.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(178f, -106f, global0.d) * vec3<f32>(-1832f, -1397f, global0.d))), vec3<bool>(false, true, true)))));
    let var_1 = global0.c.x && global0.c.x;
    var var_2 = Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 370f) * var_0.xz)), vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-global0.b.x))))), global0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-494f, _wgslsmith_f_op_f32(f32(-1f) * -1718f)))));
    var var_3 = vec2<i32>(2946i, reverseBits(-_wgslsmith_sub_i32(u_input.a, global0.a)) ^ -2147483647i);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(629f * global0.b.x), -969f, _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global0.d, -1864f)), true))));
    return select(countOneBits(vec2<i32>(_wgslsmith_sub_i32(var_2.a, -2147483647i), -53793i >> (0u % 32u))), vec2<i32>(_wgslsmith_sub_i32(-57209i, var_2.a), _wgslsmith_mod_i32(var_3.x, -1i)) >> (reverseBits(vec2<u32>(26800u, 713u)) % vec2<u32>(32u)), all(select(select(var_2.c, vec2<bool>(false, false), var_2.c), !global0.c, global0.c))) | abs(vec2<i32>(-42435i, _wgslsmith_sub_i32(1i, global0.a)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    let var_0 = func_3();
    var var_1 = Struct_1(~(-22551i), vec2<f32>(1070f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0.d, -1381f)), 1831f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * global0.b.x)))), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-987f, 1423f)));
    var var_2 = max(~52363i, 0i);
    var_2 = _wgslsmith_sub_i32(firstTrailingBit(arg_0.x), _wgslsmith_div_i32(var_1.a, 0i));
    global1 = ~(~(~min(vec2<i32>(-3206i, 1i), ~arg_0.xy)));
    return Struct_1(1i, global0.b, vec2<bool>((reverseBits(global1.x) >> (reverseBits(78713u) % 32u)) != select(-u_input.a, var_0.x, true), all(!(!vec4<bool>(false, false, global0.c.x, global0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(204f)))))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(32725u, 55626u))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(19573u, 0u)), max(~vec2<u32>(55201u, 48522u), ~vec2<u32>(76702u, 4294967295u)))) ^ vec2<u32>((1u & select(1u, 36643u, arg_0.c.x)) & 1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 1u, 0u, 12855u)), vec4<u32>(1u, 1u, 1u, 1u)) << (~1u % 32u));
    var var_1 = -2147483647i;
    var var_2 = arg_0;
    var var_3 = Struct_1(_wgslsmith_div_i32(-(var_2.a << (~0u % 32u)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1712i, -732i, global0.a, global0.a)), _wgslsmith_div_i32(func_2(vec3<i32>(6983i, global0.a, 67768i)).a, _wgslsmith_div_i32(-28064i, var_2.a)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(floor(global0.d))))), var_2.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-761f, -1000f))))))));
    let var_4 = ~min(abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, arg_0.a, global0.a), vec4<i32>(38478i, 0i, var_2.a, -45609i), vec4<i32>(global1.x, -312i, -35895i, -23245i))), _wgslsmith_mod_vec4_i32(abs(firstLeadingBit(vec4<i32>(global0.a, u_input.a, var_2.a, var_2.a))), min(select(vec4<i32>(-2147483647i, -41904i, -10621i, var_3.a), vec4<i32>(u_input.a, u_input.a, u_input.a, var_3.a), vec4<bool>(true, false, arg_0.c.x, false)), vec4<i32>(global0.a, -22491i, -73772i, arg_0.a) | vec4<i32>(-1i, arg_0.a, 69183i, var_2.a))));
    return func_3().x;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    global1 = vec2<i32>(_wgslsmith_add_i32(u_input.a, global1.x), global1.x);
    let var_0 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(round(-316f));
    global0 = Struct_1(~func_4(func_2(~vec3<i32>(25952i, global1.x, global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b)), vec2<bool>(global0.c.x, select(false, all(!vec2<bool>(arg_2.x, global0.c.x)), all(!vec3<bool>(global0.c.x, false, global0.c.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1619f));
    let var_2 = select(!vec2<bool>(!(arg_2.x == false), any(!vec4<bool>(arg_2.x, false, true, global0.c.x))), arg_2, arg_2.x);
    return Struct_1(_wgslsmith_dot_vec2_i32(firstLeadingBit(select(vec2<i32>(u_input.a, global0.a), reverseBits(vec2<i32>(-34618i, global1.x)), false)), vec2<i32>(_wgslsmith_mod_i32(-39866i, -2147483647i), 1i << (firstLeadingBit(61311u) % 32u))), _wgslsmith_f_op_vec2_f32(-global0.b), vec2<bool>(false, var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global0.b.x)), 195f))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(abs(_wgslsmith_div_i32(~(arg_2.a | 44727i), -1i)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d), arg_2.d)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(2086f, arg_0.d), global0.b))))), arg_0.c)), !func_2(_wgslsmith_add_vec3_i32(vec3<i32>(70910i, -53546i, arg_2.a), -vec3<i32>(-53234i, 2147483647i, arg_2.a))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(360f, _wgslsmith_f_op_f32(-arg_2.d))), _wgslsmith_f_op_f32(-1040f * func_2(vec3<i32>(-54139i, global1.x, 23153i)).b.x)))));
    let var_0 = -1379f;
    let var_1 = func_1(-1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1690f - var_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(731f, arg_0.d)) * -103f))), !vec2<bool>(true, arg_0.c.x));
    let var_2 = _wgslsmith_f_op_f32(arg_0.b.x - -122f);
    var var_3 = func_2(vec3<i32>(i32(-1i) * -2147483647i, 14366i, -(~global1.x)) << ((vec3<u32>(71875u, _wgslsmith_dot_vec4_u32(vec4<u32>(12901u, 1u, arg_1, arg_1), vec4<u32>(arg_1, 4294967295u, arg_1, 4294967295u)), firstLeadingBit(arg_1)) << ((vec3<u32>(368u, arg_1, 0u) & select(vec3<u32>(15368u, arg_1, 67690u), vec3<u32>(arg_1, arg_1, 79036u), vec3<bool>(var_1.c.x, false, true))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return arg_0;
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> i32 {
    global0 = arg_1;
    var var_0 = 1587u;
    let var_1 = firstTrailingBit(_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 1u) | select(vec2<u32>(4294967295u, 42406u), vec2<u32>(3826u, 37868u), global0.c.x), max(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 4294967295u)), true), vec2<u32>(72317u, _wgslsmith_clamp_u32(1u, 84694u, _wgslsmith_mod_u32(4294967295u, 51040u)))));
    let var_2 = func_2(-reverseBits(-vec3<i32>(global0.a, global1.x, 2147483647i)));
    var var_3 = var_2.b;
    return select(global0.a, 566i, !(_wgslsmith_sub_i32(-349i, 2719i) > -(~global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(_wgslsmith_div_i32(func_6(true, func_5(func_1(-1i, 170f, vec2<bool>(false, true)), 0u, Struct_1(1i, global0.b, vec2<bool>(false, false), global0.d))), _wgslsmith_mod_i32(46562i, 2147483647i)), global1.x);
    let var_0 = -30615i;
    global1 = _wgslsmith_mod_vec2_i32(vec2<i32>(-_wgslsmith_sub_i32(-2147483647i, global0.a), var_0), vec2<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(36175i, 1i)), -vec2<i32>(global0.a, var_0)), _wgslsmith_dot_vec2_i32(~vec2<i32>(global1.x, var_0), vec2<i32>(var_0, var_0)))) & max(select(select(vec2<i32>(56932i, -2147483647i), vec2<i32>(global0.a, var_0), global0.c.x) >> (firstTrailingBit(vec2<u32>(12806u, 17165u)) % vec2<u32>(32u)), -vec2<i32>(var_0, global1.x), global0.c), vec2<i32>(1i, 1i));
    let var_1 = -377f;
    let var_2 = Struct_1(_wgslsmith_div_i32(u_input.a, abs(1488i & _wgslsmith_div_i32(global0.a, 2147483647i))), global0.b, vec2<bool>(true, true), 1102f);
    var var_3 = func_1(func_6(true, func_5(var_2, ~1u, func_5(func_2(vec3<i32>(global1.x, u_input.a, global1.x)), _wgslsmith_sub_u32(68439u, 1u), Struct_1(u_input.a, vec2<f32>(831f, 1058f), global0.c, var_1)))), func_5(var_2, 11118u, var_2).b.x, func_1(~(~3395i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(step(var_2.b.x, -431f))), select(global0.c, !var_2.c, func_5(Struct_1(0i, vec2<f32>(var_2.d, var_2.b.x), vec2<bool>(global0.c.x, var_2.c.x), var_2.b.x), ~1u, Struct_1(-97728i, global0.b, var_2.c, var_1)).c)).c);
    let x = u_input.a;
    s_output = StorageBuffer(38136u, ~var_3.a, var_2.a ^ 1i, 4294967295u, vec4<f32>(-143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), -2647f, _wgslsmith_f_op_f32(2733f - -1010f)));
}

