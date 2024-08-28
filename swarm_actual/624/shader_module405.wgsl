struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: u32;

var<private> global2: array<Struct_2, 17>;

var<private> global3: i32;

var<private> global4: f32 = 655f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = ~(~firstTrailingBit(select(vec3<u32>(arg_0.b, 47522u, global0[_wgslsmith_index_u32(u_input.b, 4u)]), abs(u_input.e), true)));
    global2 = array<Struct_2, 17>();
    var var_1 = true;
    global0 = array<u32, 4>();
    var var_2 = vec3<bool>(arg_0.a.x, arg_2.a.x, !(~(var_0.x & 1u) != _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 42982u), arg_0.e & vec2<u32>(u_input.b, arg_0.e.x))));
    return arg_0.d.xxx;
}

fn func_2(arg_0: bool, arg_1: vec3<bool>, arg_2: bool) -> f32 {
    var var_0 = u_input.e.x;
    var var_1 = Struct_1(!select(vec3<bool>(all(arg_1), true, 37821u >= u_input.b), !arg_1, any(arg_1)), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.e.x, 4u)], 23844u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(24451u, 4u)], 1u), reverseBits(24744u)) | select(vec3<u32>(37238u, 4294967295u, global0[_wgslsmith_index_u32(24019u, 4u)]), ~u_input.e, !arg_1), firstLeadingBit(u_input.e)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(arg_1, u_input.b << (19067u % 32u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-350f, 266f, -174f) + vec3<f32>(768f, 1000f, 913f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, 327f, 410f, -309f)), _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 4u)], 0u), u_input.e.xy)), select(u_input.e >> (u_input.e % vec3<u32>(32u)), reverseBits(u_input.e), arg_1.x != arg_2), Struct_2(vec4<bool>(false, true, false, arg_0)), vec2<bool>(!arg_2, all(vec3<bool>(arg_1.x, false, arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1593f, 641f, -1543f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1097f, -1000f, 101f) + vec3<f32>(253f, 2222f, -1239f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1994f)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(u_input.e.x, 4u)], vec3<f32>(-790f, 919f, -643f), vec4<f32>(120f, 1437f, -1691f, 602f), u_input.e.yy), u_input.e, Struct_2(vec4<bool>(true, arg_0, false, arg_0)), arg_1.xz)).x, -195f, -173f))), min(vec2<u32>(0u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 4u)], ~u_input.b)), u_input.e.xx));
    let var_2 = firstTrailingBit(-1i);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(275f - _wgslsmith_f_op_f32(exp2(var_1.c.x)))), _wgslsmith_f_op_f32(-var_1.d.x));
    var var_4 = global2[_wgslsmith_index_u32(u_input.e.x, 17u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1027f));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_3(arg_1.a.x || !(!(!arg_1.a.x)), Struct_2(select(select(arg_1.a, select(vec4<bool>(true, true, false, false), arg_1.a, vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x)), vec4<bool>(true, true, arg_1.a.x, arg_1.a.x)), vec4<bool>(all(arg_1.a.xw), arg_1.a.x, arg_1.a.x, arg_1.a.x), true)));
    global2 = array<Struct_2, 17>();
    global2 = array<Struct_2, 17>();
    var var_1 = select(select(vec2<bool>(1i == countOneBits(u_input.c.x), arg_1.a.x), vec2<bool>(var_0.a || var_0.a, false), vec2<bool>(all(vec4<bool>(var_0.b.a.x, arg_1.a.x, false, true)), !all(var_0.b.a.ww))), vec2<bool>(!any(vec4<bool>(true, false, true, false)), true), vec2<bool>(true, true));
    let var_2 = 1u;
    return Struct_3(any(select(select(!vec2<bool>(var_1.x, true), vec2<bool>(false, var_0.b.a.x), !arg_1.a.yx), !(!vec2<bool>(arg_1.a.x, true)), !var_0.b.a.yz)), arg_1);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(0u, 4u)], 1u, global0[_wgslsmith_index_u32(arg_0, 4u)] == ~(select(4294967295u, 1u, arg_1.b.a.x) << (~49657u % 32u))), 17u)];
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(735f + _wgslsmith_f_op_f32(-790f + -1000f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -395f), 670f))))), global2[_wgslsmith_index_u32(100357u, 17u)], 40198u, firstLeadingBit(firstTrailingBit(4294967295u)));
    var var_2 = firstLeadingBit(vec4<i32>(-countOneBits(-62840i), _wgslsmith_mult_i32(u_input.c.x, 0i), ~countOneBits(-1i), -8185i));
    let var_3 = arg_1;
    var var_4 = u_input.c.x;
    return Struct_2(arg_1.b.a);
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global3 = 2147483647i;
    var var_0 = ~(~u_input.e.zz);
    let var_1 = Struct_3(arg_0.a.x, func_4(376f, func_5(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(583u, var_0.x, 4294967295u)), vec3<u32>(4294967295u, u_input.b, global0[_wgslsmith_index_u32(0u, 4u)])), Struct_3(func_4(-1000f, arg_0, var_0.x, 0u).b.a.x, Struct_2(vec4<bool>(arg_2.a.x, false, arg_0.a.x, false))), u_input.c.x), 28285u, abs(var_0.x)).b);
    let var_2 = vec2<bool>(arg_0.a.x, arg_0.a.x);
    let var_3 = _wgslsmith_dot_vec2_i32(select(_wgslsmith_mod_vec2_i32(countOneBits(u_input.c.yz) & vec2<i32>(u_input.a.x, u_input.d.x), vec2<i32>(abs(2147483647i), u_input.c.x)), u_input.d.zy, !vec2<bool>(arg_2.a.x, !arg_0.a.x)), u_input.d.zx);
    return Struct_2(!select(select(!vec4<bool>(false, false, arg_1, arg_1), select(arg_0.a, arg_2.a, arg_2.a.x), arg_2.a.x), vec4<bool>(true | arg_1, var_3 != -1i, func_4(877f, global2[_wgslsmith_index_u32(var_0.x, 17u)], 79726u, var_0.x).b.a.x, false), func_4(_wgslsmith_f_op_f32(-117f - 2091f), func_5(var_0.x, Struct_3(true, arg_0), -2351i), ~17386u, ~var_0.x).b.a));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> bool {
    let var_0 = func_6(func_5(firstLeadingBit(arg_1.e.x), func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.c.x, arg_1.d.x), _wgslsmith_f_op_f32(func_2(true, vec3<bool>(true, true, true), arg_1.a.x))), global2[_wgslsmith_index_u32(1u, 17u)], ~11956u, 0u >> (arg_1.e.x % 32u)), 0i), arg_1.a.x, func_4(_wgslsmith_f_op_f32(f32(-1f) * -549f), func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-994f * 269f))), func_4(_wgslsmith_div_f32(arg_1.c.x, 459f), Struct_2(vec4<bool>(false, arg_1.a.x, true, false)), arg_1.b, arg_1.b).b, 4294967295u, u_input.e.x).b, ~arg_1.e.x, ~(~global0[_wgslsmith_index_u32(0u, 4u)]) | 90720u).b);
    global0 = array<u32, 4>();
    global3 = abs(_wgslsmith_mult_i32(-4430i, select(_wgslsmith_dot_vec2_i32(u_input.a.xy, vec2<i32>(arg_3, -2147483647i)), _wgslsmith_div_i32(arg_2, arg_0), true))) >> (firstTrailingBit(max(1u << (global0[_wgslsmith_index_u32(1u, 4u)] % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(25187u, 4u)], 4294967295u, global0[_wgslsmith_index_u32(101044u, 4u)]), vec4<u32>(arg_1.e.x, arg_1.b, global0[_wgslsmith_index_u32(u_input.e.x, 4u)], u_input.b))) | min(0u, min(1u, global0[_wgslsmith_index_u32(u_input.e.x, 4u)]))) % 32u);
    let var_1 = Struct_2(vec4<bool>(all(!vec3<bool>(false, var_0.a.x, var_0.a.x)) | var_0.a.x, true, 1f < arg_1.d.x, var_0.a.x));
    var var_2 = arg_3;
    return all(!(!vec3<bool>(true, arg_1.a.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(vec3<bool>(func_1(u_input.a.x, Struct_1(vec3<bool>(true, false, false), u_input.e.x, vec3<f32>(-1115f, -1123f, -236f), vec4<f32>(414f, 1534f, 1837f, -624f), vec2<u32>(global0[_wgslsmith_index_u32(17009u, 4u)], global0[_wgslsmith_index_u32(u_input.b, 4u)])), -38897i, 17944i), true, (72687i <= u_input.a.x) == func_6(global2[_wgslsmith_index_u32(4294967295u, 17u)], false, global2[_wgslsmith_index_u32(u_input.b, 17u)]).a.x), select(vec3<bool>(true, true, true), vec3<bool>(func_6(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9844u, 4u)], 17u)], true, Struct_2(vec4<bool>(false, true, true, true))).a.x, any(vec2<bool>(false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true))), select(select(func_4(-1108f, Struct_2(vec4<bool>(true, true, true, true)), u_input.e.x, u_input.e.x).b.a.xxz, vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)), u_input.e.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1074f, 1279f, 692f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-157f, 431f, 713f) - vec3<f32>(-2683f, 233f, 408f)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1315f + -2256f)), -1000f, _wgslsmith_f_op_f32(1703f - _wgslsmith_f_op_f32(2796f + -1197f))))), vec2<u32>(~abs(u_input.e.x), u_input.e.x));
    var var_1 = -abs(-78793i);
    var var_2 = func_4(-1306f, func_6(func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.c.x, var_0.c.x))), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(u_input.e, u_input.e), _wgslsmith_clamp_vec3_u32(u_input.e, u_input.e, vec3<u32>(global0[_wgslsmith_index_u32(0u, 4u)], 0u, u_input.e.x))), 4u)], 17u)], 1u, 137775u).b, true, global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(4294967295u, u_input.e.x) | firstTrailingBit(17748u)), 17u)]), var_0.b, max(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, u_input.b, global0[_wgslsmith_index_u32(var_0.e.x, 4u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15530u, 4u)], 4u)]) ^ vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], 29286u, var_0.e.x, global0[_wgslsmith_index_u32(6569u, 4u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.e.x, global0[_wgslsmith_index_u32(0u, 4u)], 118162u, 43124u), vec4<u32>(var_0.e.x, var_0.e.x, global0[_wgslsmith_index_u32(4294967295u, 4u)], var_0.e.x))), abs(~vec4<u32>(4294967295u, 133583u, var_0.b, 1746u))), ~(~(56783u << (global0[_wgslsmith_index_u32(4294967295u, 4u)] % 32u)))));
    let var_3 = _wgslsmith_f_op_f32(-114f - var_0.d.x);
    var_1 = _wgslsmith_clamp_i32(2147483647i, _wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.d.x), u_input.a.xx), u_input.d.zy), -2147483647i), 34491i << ((var_0.e.x ^ ~(~var_0.b)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -u_input.a.x, var_0.d.wx, u_input.d.x, -max(i32(-1i) * -u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 1i), _wgslsmith_mult_vec2_i32(u_input.d.xy, vec2<i32>(-14071i, u_input.d.x)))));
}

