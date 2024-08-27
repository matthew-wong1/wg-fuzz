struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(0i, vec3<bool>(true, true, false), vec4<u32>(97023u, 26778u, 4294967295u, 7353u), vec4<u32>(24309u, 1u, 0u, 31732u)), Struct_1(0i, vec3<bool>(false, true, false), vec4<u32>(59176u, 6919u, 8348u, 48072u), vec4<u32>(37763u, 0u, 1u, 70009u)), Struct_1(16530i, vec3<bool>(false, true, true), vec4<u32>(33131u, 0u, 50954u, 0u), vec4<u32>(4703u, 43150u, 1u, 0u)), Struct_1(-1i, vec3<bool>(true, false, true), vec4<u32>(10927u, 39028u, 0u, 1u), vec4<u32>(72508u, 1u, 4294967295u, 4294967295u)), Struct_1(1i, vec3<bool>(true, true, false), vec4<u32>(363u, 0u, 59016u, 4294967295u), vec4<u32>(1u, 4294967295u, 68233u, 32064u)), Struct_1(0i, vec3<bool>(true, false, true), vec4<u32>(1u, 4294967295u, 22922u, 1u), vec4<u32>(102065u, 29723u, 5696u, 4294967295u)), Struct_1(-12831i, vec3<bool>(true, false, true), vec4<u32>(1691u, 40236u, 10436u, 4294967295u), vec4<u32>(43028u, 4294967295u, 1u, 13053u)), Struct_1(i32(-2147483648), vec3<bool>(true, true, true), vec4<u32>(1u, 59256u, 1u, 1u), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), Struct_1(-66642i, vec3<bool>(true, false, false), vec4<u32>(1u, 25031u, 113074u, 116588u), vec4<u32>(0u, 4904u, 0u, 1u)), Struct_1(2147483647i, vec3<bool>(true, true, true), vec4<u32>(0u, 6302u, 71171u, 77465u), vec4<u32>(0u, 4294967295u, 32638u, 4294967295u)));

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(2147483647i, vec3<bool>(true, false, false), vec4<u32>(98015u, 59890u, 61087u, 1u), vec4<u32>(4294967295u, 0u, 1u, 50134u)), Struct_1(0i, vec3<bool>(true, true, true), vec4<u32>(39524u, 1u, 71825u, 0u), vec4<u32>(49435u, 0u, 0u, 31079u)), Struct_1(2147483647i, vec3<bool>(true, false, false), vec4<u32>(1u, 4294967295u, 1u, 76256u), vec4<u32>(0u, 29775u, 32936u, 4294967295u)), Struct_1(74132i, vec3<bool>(true, true, false), vec4<u32>(1u, 1u, 43215u, 4294967295u), vec4<u32>(40349u, 29825u, 20684u, 0u)), Struct_1(-10731i, vec3<bool>(true, true, false), vec4<u32>(4294967295u, 4294967295u, 62335u, 0u), vec4<u32>(35522u, 7155u, 8593u, 4294967295u)), Struct_1(15922i, vec3<bool>(true, false, true), vec4<u32>(1u, 25918u, 4294967295u, 0u), vec4<u32>(37438u, 28410u, 4294967295u, 0u)), Struct_1(-7457i, vec3<bool>(false, false, false), vec4<u32>(4294967295u, 4294967295u, 49584u, 62004u), vec4<u32>(0u, 4294967295u, 24969u, 58245u)), Struct_1(0i, vec3<bool>(false, false, false), vec4<u32>(19757u, 2765u, 0u, 1u), vec4<u32>(1u, 0u, 40239u, 4294967295u)), Struct_1(13653i, vec3<bool>(false, true, false), vec4<u32>(67898u, 4294967295u, 0u, 23901u), vec4<u32>(36182u, 107815u, 19302u, 0u)), Struct_1(1i, vec3<bool>(false, false, true), vec4<u32>(1u, 19342u, 43208u, 24727u), vec4<u32>(1u, 77461u, 10648u, 1u)), Struct_1(1i, vec3<bool>(true, false, false), vec4<u32>(0u, 39306u, 25179u, 40822u), vec4<u32>(38759u, 4294967295u, 2884u, 22290u)), Struct_1(-1i, vec3<bool>(true, true, true), vec4<u32>(60944u, 0u, 0u, 65018u), vec4<u32>(4737u, 1u, 1u, 4556u)), Struct_1(2147483647i, vec3<bool>(true, false, false), vec4<u32>(17196u, 134u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 79490u)), Struct_1(24780i, vec3<bool>(true, false, true), vec4<u32>(103325u, 13090u, 1u, 85980u), vec4<u32>(57615u, 4294967295u, 123728u, 0u)), Struct_1(28481i, vec3<bool>(true, true, false), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(51106u, 0u, 20582u, 0u)), Struct_1(-26444i, vec3<bool>(true, false, false), vec4<u32>(56194u, 1u, 1u, 22189u), vec4<u32>(107757u, 4294967295u, 0u, 55912u)));

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(1024f)), _wgslsmith_f_op_f32(round(-1407f)), arg_1) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 129f, 234f)), vec3<f32>(arg_1, arg_1, arg_1))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(552f, -2026f, -705f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 423f, 284f) - vec3<f32>(arg_1, arg_1, -1472f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, 1595f), vec3<f32>(arg_1, arg_1, arg_1))))));
    let var_1 = global0[_wgslsmith_index_u32(12735u, 10u)];
    let var_2 = i32(-1i) * -2910i;
    let var_3 = 10785u;
    let var_4 = all(global2.b);
    return firstTrailingBit(var_2);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = abs(vec2<u32>(~(~firstTrailingBit(1u)), _wgslsmith_mult_u32(u_input.a, arg_1.c.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(18147u, arg_0.x, 1u), vec3<u32>(5483u, arg_0.x, arg_0.x)) % 32u))));
    global0 = array<Struct_1, 10>();
    var var_1 = global2.d.xw ^ ~min(~(vec2<u32>(arg_2.c.x, 74316u) | arg_1.c.zx), vec2<u32>(95394u, var_0.x) >> (arg_2.c.wx % vec2<u32>(32u)));
    var var_2 = !all(select(!arg_2.b.yy, global2.b.xx, !global2.b.yz));
    global0 = array<Struct_1, 10>();
    return vec4<bool>(true, any(!select(arg_1.b, vec3<bool>(arg_2.b.x, false, false), !vec3<bool>(global2.b.x, arg_2.b.x, arg_2.b.x))), all(select(select(vec4<bool>(true, arg_2.b.x, arg_1.b.x, false), !vec4<bool>(true, arg_1.b.x, true, arg_1.b.x), !vec4<bool>(arg_2.b.x, false, true, global2.b.x)), vec4<bool>(true, true, false, arg_2.b.x), all(arg_1.b) & !global2.b.x)), !arg_1.b.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: bool) -> u32 {
    global0 = array<Struct_1, 10>();
    global2 = Struct_1(global2.a, select(func_3(arg_0.zx, Struct_1(global2.a, vec3<bool>(arg_3, arg_2.x, global2.b.x), vec4<u32>(arg_0.x, u_input.a, 0u, 41886u), vec4<u32>(u_input.a, 68267u, global2.c.x, u_input.a)), Struct_1(1i, !global2.b, vec4<u32>(global2.d.x, 69350u, 1u, 39667u), ~global2.c)).xzy, !vec3<bool>(select(arg_2.x, arg_2.x, false), true, arg_3), global2.b), vec4<u32>(select(4294967295u, 4294967295u, true), _wgslsmith_sub_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), select(u_input.a, 0u, arg_2.x)), 4294967295u), reverseBits(max(4294967295u, u_input.a) & ~4294967295u), countOneBits(_wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, arg_0.x), global2.c), select(vec4<u32>(25970u, global2.c.x, u_input.a, global2.d.x), vec4<u32>(0u, 15961u, 78334u, arg_0.x), true)))), vec4<u32>(global2.d.x, arg_0.x, ~(~global2.d.x), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(global2.c, vec4<u32>(arg_0.x, arg_0.x, 0u, global2.d.x)))));
    global2 = Struct_1(-2147483647i, !func_3(vec2<u32>(select(26865u, global2.d.x, global2.b.x), abs(45883u)), Struct_1(global2.a, !global2.b, select(global2.d, vec4<u32>(u_input.a, arg_0.x, 4299u, 51362u), arg_2.x), _wgslsmith_mod_vec4_u32(global2.c, vec4<u32>(4849u, 64590u, 34694u, arg_0.x))), Struct_1(~global2.a, global2.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, global2.d.x, 94867u, u_input.a), arg_0, vec4<u32>(1u, 49731u, u_input.a, global2.c.x)), vec4<u32>(arg_0.x, 1u, 10113u, 1u))).xxy, ~vec4<u32>(~firstTrailingBit(u_input.a), 60133u, _wgslsmith_mod_u32(abs(45427u), ~global2.c.x), ~(~9186u)), max(firstTrailingBit(global2.d), arg_0));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_div_f32(1000f, arg_1.x), -493f, -1890f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, -915f, -525f), vec4<f32>(1000f, arg_1.x, 649f, arg_1.x))))));
    let var_1 = Struct_1(global2.a, func_3(vec2<u32>(~99285u, global2.c.x), global0[_wgslsmith_index_u32(87460u, 10u)], global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(u_input.a, ~u_input.a)), 16u)]).xyy, abs(_wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(62343u, u_input.a, arg_0.x, 53598u), vec4<u32>(u_input.a, 0u, 4294967295u, global2.c.x)), countOneBits(global2.d) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a, 44155u, 8060u), vec4<u32>(4294967295u, global2.d.x, 4294967295u, 4294967295u)))), _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.c.x >> (4294967295u % 32u), arg_0.x | arg_0.x, _wgslsmith_dot_vec4_u32(global2.c, global2.d), 1u), arg_0));
    return 4294967295u;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(func_4(~global2.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -599f))), 198f), select(vec4<bool>(any(select(vec4<bool>(global2.b.x, global2.b.x, false, global2.b.x), vec4<bool>(true, global2.b.x, global2.b.x, global2.b.x), vec4<bool>(global2.b.x, false, global2.b.x, global2.b.x))), any(vec3<bool>(false, global2.b.x, false)), true, global2.b.x), !func_3(~global2.c.yy, global0[_wgslsmith_index_u32(~global2.d.x, 10u)], Struct_1(-2147483647i, global2.b, global2.c, vec4<u32>(4294967295u, 4294967295u, 23064u, u_input.a))), func_3(~(~vec2<u32>(45615u, u_input.a)), global1[_wgslsmith_index_u32(firstTrailingBit(global2.c.x), 16u)], global1[_wgslsmith_index_u32(abs(18877u), 16u)]).x), global2.b.x), 10u)];
    var var_1 = select(global2.b.x, all(!select(!vec4<bool>(global2.b.x, true, var_0.b.x, var_0.b.x), !vec4<bool>(var_0.b.x, true, true, false), false)), !all(vec3<bool>(var_0.b.x | global2.b.x, true, all(global2.b.yx))));
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(var_0.d.x, ~2168u)), 16u)];
    return select(vec4<bool>(true, true, var_2.b.x & var_0.b.x, func_3(abs(global2.d.wz & vec2<u32>(var_0.c.x, global2.c.x)), Struct_1(-2147483647i, select(var_2.b, global2.b, false), vec4<u32>(4294967295u, 1u, u_input.a, 1u), ~global2.d), Struct_1(_wgslsmith_clamp_i32(1i, var_0.a, -19454i), !var_2.b, ~vec4<u32>(global2.d.x, 77429u, 36251u, u_input.a), ~var_0.c)).x), select(!select(vec4<bool>(var_2.b.x, false, var_0.b.x, var_2.b.x), !vec4<bool>(false, false, var_0.b.x, global2.b.x), func_3(vec2<u32>(1u, var_0.d.x), global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(0u, 10u)])), vec4<bool>(true, var_0.b.x, all(!vec4<bool>(var_2.b.x, global2.b.x, var_2.b.x, false)), true & any(vec3<bool>(true, var_2.b.x, true))), var_2.b.x == true), global2.b.x);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec4<bool>) -> bool {
    let var_0 = -2147483647i;
    global0 = array<Struct_1, 10>();
    var var_1 = Struct_1(-(~_wgslsmith_add_i32(56485i, 18782i)), !func_2(_wgslsmith_dot_vec4_u32(~global2.c, global2.d >> (vec4<u32>(1u, 1439u, 4294967295u, 4294967295u) % vec4<u32>(32u)))).zwx, global2.c, firstLeadingBit(global2.c));
    var_1 = Struct_1(global2.a, arg_1.yxy, vec4<u32>(~_wgslsmith_sub_u32(firstTrailingBit(var_1.c.x), ~u_input.a), ~global2.c.x & abs(_wgslsmith_add_u32(0u, 66431u)), 1u, ~1777u), _wgslsmith_add_vec4_u32(max(~(~vec4<u32>(1u, 23343u, 104084u, u_input.a)), countOneBits(~vec4<u32>(1u, 4294967295u, 4641u, 4294967295u))), vec4<u32>(0u << (var_1.c.x % 32u), ~1u, ~func_4(vec4<u32>(global2.d.x, 23118u, var_1.d.x, 46253u), vec2<f32>(-374f, 932f), vec4<bool>(false, false, global2.b.x, var_1.b.x), true), reverseBits(~global2.d.x))));
    var var_2 = global1[_wgslsmith_index_u32(4294967295u, 16u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(~3668i);
    let var_1 = vec4<i32>(firstTrailingBit(-2147483647i), select(reverseBits(-global2.a), global2.a, false), _wgslsmith_clamp_i32(select(firstTrailingBit(-26928i) & -1i, _wgslsmith_mod_i32(global2.a, var_0), global2.b.x), global2.a, 4902i), ~_wgslsmith_mult_i32(func_1(global0[_wgslsmith_index_u32(~global2.c.x, 10u)], 376f, vec2<bool>(true, global2.b.x), _wgslsmith_div_vec4_u32(global2.d, global2.c)), 1i));
    global1 = array<Struct_1, 16>();
    var var_2 = Struct_1(var_1.x, vec3<bool>(func_5(_wgslsmith_clamp_vec2_i32(var_1.xx, vec2<i32>(1i, -17306i), _wgslsmith_div_vec2_i32(vec2<i32>(global2.a, 1i), vec2<i32>(var_1.x, -2692i))), func_2(1u)), global2.b.x, all(!global2.b)), global2.d, global2.c);
    var var_3 = global1[_wgslsmith_index_u32(~select(~(4294967295u & global2.d.x), 103823u, false) | abs(44958u), 16u)];
    let var_4 = -2147483647i;
    let var_5 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(global2.d.x), min(23496u, ~1u)), 16u)];
    let var_6 = var_4;
    let var_7 = ~var_2.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1362f * _wgslsmith_f_op_f32(1000f - -821f)), -582f))), _wgslsmith_f_op_f32(-1179f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1540f - 121f) + -1177f))));
}

