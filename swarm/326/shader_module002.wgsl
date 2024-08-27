struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 10>;

var<private> global1: Struct_2;

var<private> global2: vec4<f32> = vec4<f32>(-979f, -1000f, -1000f, -1674f);

var<private> global3: Struct_2;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_add_i32(~u_input.c.x, 37469i);
    let var_1 = arg_3;
    global0 = array<vec3<i32>, 10>();
    var var_2 = vec2<u32>(global1.b.a.x, ~(~firstTrailingBit(global1.e.d.x)));
    global0 = array<vec3<i32>, 10>();
    return -var_1.a.b;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = 0u;
    global3 = Struct_2(arg_0, arg_1, _wgslsmith_f_op_f32(min(-1418f, 302f)), !all(!select(vec2<bool>(global1.d, true), vec2<bool>(global1.d, true), vec2<bool>(true, false))), Struct_1(~arg_1.a, global1.a.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(114f, 272f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, global1.a.c.x))))), arg_0.a));
    var var_1 = false;
    var var_2 = Struct_2(arg_0, Struct_1(countOneBits(~(vec3<u32>(arg_1.a.x, arg_1.d.x, 4294967295u) | u_input.a.zww)), -(func_3(global2.yyz, arg_0, vec2<f32>(-1139f, -2394f), Struct_2(arg_0, Struct_1(vec3<u32>(global1.e.d.x, 22630u, 33711u), global1.b.b, vec2<f32>(-1000f, global3.b.c.x), arg_1.d), 209f, false, Struct_1(vec3<u32>(global3.a.a.x, 0u, 4294967295u), 1i, arg_0.c, vec3<u32>(global3.e.a.x, u_input.b.x, u_input.b.x)))) ^ abs(71884i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.c, global3.b.c) * global3.a.c)), vec3<u32>(abs(global1.a.a.x), u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, var_0, 0u), u_input.a.zzy))), -901f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(step(-1829f, -1529f))) * global3.b.c.x) <= arg_2, Struct_1(countOneBits(vec3<u32>(var_0, ~12541u, select(4294967295u, global3.a.a.x, true))), 1i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.x, global3.a.c.x), _wgslsmith_f_op_vec2_f32(arg_0.c * arg_1.c))))), vec3<u32>(~23124u, select(~1u, ~arg_1.d.x, true), u_input.b.x)));
    var var_3 = -227f;
    return Struct_2(Struct_1(select(arg_1.a, var_2.e.d, !vec3<bool>(false, global1.d, global1.d)), global1.a.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1271f, -2204f)))))), _wgslsmith_sub_vec3_u32(~vec3<u32>(global3.a.d.x, 1u, global3.e.d.x), arg_0.d)), arg_1, _wgslsmith_f_op_f32(-global1.e.c.x), 1i != select(max(select(2147483647i, 2147483647i, true), global1.b.b), -34027i, all(select(vec3<bool>(global1.d, global3.d, true), vec3<bool>(global3.d, global3.d, false), global1.d))), Struct_1(select(max(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.x, 1u, 0u), global1.a.d), var_2.e.d | vec3<u32>(4294967295u, arg_1.d.x, global3.a.a.x)), global3.e.d, vec3<bool>(arg_1.a.x >= 23287u, global3.d, true)), func_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, -1000f)))), Struct_1(arg_0.a, arg_1.b, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(118f, 500f), vec2<f32>(global1.b.c.x, global2.x), vec2<bool>(true, global3.d))), global1.a.d ^ global1.a.d), vec2<f32>(1000f, _wgslsmith_f_op_f32(min(-1514f, global3.c))), Struct_2(Struct_1(vec3<u32>(u_input.a.x, 1u, var_0), 17804i, arg_0.c, vec3<u32>(22838u, arg_1.d.x, arg_1.d.x)), Struct_1(var_2.e.d, 1i, vec2<f32>(arg_2, global1.c), u_input.a.yww), _wgslsmith_f_op_f32(floor(-1253f)), false, arg_0)), global3.b.c, vec3<u32>(~var_2.b.a.x, global3.a.a.x, 1u)));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = global3.b;
    let var_1 = global2.yyz;
    var var_2 = global1.a.c.x;
    var var_3 = func_2(Struct_1(vec3<u32>(1u ^ global1.b.d.x, ~global3.e.a.x, ~4294967295u), -8634i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global3.b.c, _wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(var_0.c.x, 335f)))) * global3.b.c), ~(~vec3<u32>(var_0.a.x, global1.b.d.x, 91984u))), func_2(global1.e, Struct_1(reverseBits(~u_input.a.wwx), 1i, _wgslsmith_f_op_vec2_f32(exp2(global1.a.c)), ~arg_0.a.a), arg_2.a.c.x).a, _wgslsmith_f_op_f32(arg_2.e.c.x + global1.c)).e;
    var var_4 = vec4<i32>(arg_2.e.b, global3.a.b, (i32(-1i) * -abs(u_input.c.x)) >> (reverseBits(_wgslsmith_div_u32(~64876u, var_3.d.x)) % 32u), global1.e.b);
    return 25183u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_dot_vec2_u32(global3.e.d.yz, arg_1.a.xy), _wgslsmith_div_u32(25035u, arg_1.d.x)) << (vec4<u32>(global1.e.d.x, _wgslsmith_sub_u32(4294967295u, 37249u), u_input.b.x, ~(1u << (0u % 32u))) % vec4<u32>(32u)), vec4<u32>(func_4(func_2(global3.e, Struct_1(vec3<u32>(1u, arg_3, arg_3), u_input.c.x, vec2<f32>(1208f, -409f), u_input.a.zxw), 1194f), ~1i, Struct_2(global1.b, Struct_1(arg_1.a, arg_0.b, global3.a.c, vec3<u32>(arg_3, 4294967295u, 31116u)), -1000f, false, arg_1)), func_2(global3.b, Struct_1(arg_1.d, arg_1.b, vec2<f32>(global1.e.c.x, arg_1.c.x), arg_0.a), _wgslsmith_f_op_f32(-global3.e.c.x)).a.a.x, ~0u, arg_3) << (vec4<u32>((arg_3 & 15302u) ^ u_input.a.x, _wgslsmith_sub_u32(select(arg_1.d.x, 1u, global1.d), 70138u >> (1u % 32u)), ~global3.e.a.x, 29713u) % vec4<u32>(32u)));
    var var_1 = !(!all(!vec4<bool>(true, true, global3.d, true)));
    let var_2 = !(!vec4<bool>(global3.d, !(global1.a.b >= global1.e.b), false, any(select(vec2<bool>(global1.d, true), vec2<bool>(false, true), global1.d))));
    var var_3 = _wgslsmith_f_op_vec3_f32(min(arg_2.wzz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(floor(func_2(func_2(global1.e, arg_0, -210f).e, Struct_1(u_input.a.xxw, 0i, vec2<f32>(arg_1.c.x, global2.x), vec3<u32>(arg_1.a.x, 4294967295u, arg_1.d.x)), arg_0.c.x).b.c.x)), _wgslsmith_f_op_f32(-global2.x))));
    var_1 = global1.d;
    return Struct_2(func_2(arg_1, Struct_1(global1.a.d, 2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.xz)), ~(vec3<u32>(1u, arg_3, 0u) >> (arg_0.d % vec3<u32>(32u)))), _wgslsmith_f_op_f32(152f - 240f)).b, func_2(Struct_1(~(arg_1.d >> (arg_0.a % vec3<u32>(32u))), global1.b.b & global3.e.b, _wgslsmith_div_vec2_f32(arg_0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(2149f, -1000f) * arg_0.c)), vec3<u32>(arg_0.d.x, ~335u, 4294967295u)), func_2(global1.a, Struct_1(vec3<u32>(69931u, 4294967295u, 4294967295u), global1.e.b, global3.a.c, ~arg_0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.e.c.x) + global1.e.c.x)).a, _wgslsmith_f_op_f32(-1046f * _wgslsmith_f_op_f32(trunc(-721f)))).b, -272f, (global3.e.b < func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.x, -647f, -1424f), vec3<f32>(815f, -1928f, -1279f), var_2.x)), Struct_1(vec3<u32>(arg_0.d.x, 667u, 4294967295u), global1.a.b, vec2<f32>(883f, -442f), arg_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1051f, -223f)), Struct_2(global3.a, global1.a, arg_2.x, true, Struct_1(vec3<u32>(51909u, 1u, arg_1.d.x), -22863i, vec2<f32>(global2.x, -804f), vec3<u32>(arg_3, 0u, arg_0.d.x))))) & true, func_2(global1.b, func_2(Struct_1(vec3<u32>(53221u, arg_0.a.x, global1.b.d.x) << (vec3<u32>(19129u, 0u, arg_1.d.x) % vec3<u32>(32u)), reverseBits(global3.e.b), _wgslsmith_f_op_vec2_f32(-arg_2.wx), ~global3.e.d), func_2(global1.e, func_2(arg_1, arg_1, var_3.x).b, _wgslsmith_f_op_f32(min(859f, global2.x))).a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), -978f, global1.d))).a, -323f).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.a, global1.b, vec4<f32>(545f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, -1190f))) * global3.e.c.x), _wgslsmith_f_op_f32(-global1.c)), global3.a.a.x);
    var var_1 = Struct_1(global1.e.d, ~global1.b.b, global3.e.c, ~u_input.a.zxy);
    var var_2 = var_0.b;
    global1 = Struct_2(var_0.e, func_2(func_2(global3.b, Struct_1(u_input.a.zyy, firstLeadingBit(global1.b.b), vec2<f32>(959f, var_1.c.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.d.x, var_2.a.x, 16377u), vec3<u32>(u_input.a.x, 23962u, 59073u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1695f)) * _wgslsmith_f_op_f32(global3.a.c.x * 785f))).e, var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-709f)), 1795f))).b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(972f, global3.b.c.x))) + var_0.b.c.x))), global3.b.c.x <= -1021f, func_2(Struct_1(global1.e.a, 1i, _wgslsmith_f_op_vec2_f32(trunc(var_2.c)), ~vec3<u32>(var_1.a.x, 0u, var_0.e.a.x)), func_1(Struct_1(var_0.e.a, var_0.e.b, _wgslsmith_f_op_vec2_f32(select(var_1.c, vec2<f32>(1052f, global3.e.c.x), true)), u_input.a.ywx), global3.b, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-149f, var_2.c.x, -167f, var_1.c.x))))), global1.b.a.x).b, _wgslsmith_f_op_f32(select(450f, _wgslsmith_f_op_f32(min(-1134f, global1.a.c.x)), global1.d))).b);
    let var_3 = ~(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_2.d.x, 61776u) << (global1.b.a.xz % vec2<u32>(32u)), max(vec2<u32>(29271u, 0u), vec2<u32>(1u, 1u)))));
    var var_4 = i32(-1i) * -_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(22094i, global3.e.b, var_2.b, -28643i), vec4<i32>(-2147483647i, global1.e.b, var_2.b, var_2.b)), ~(vec4<i32>(58415i, 0i, global3.b.b, -23438i) << (vec4<u32>(0u, 0u, var_0.a.d.x, var_1.a.x) % vec4<u32>(32u))));
    var_4 = -8309i;
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x + global3.b.c.x) + -2064f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -557f)), var_2.c.x));
    let var_6 = Struct_1(abs(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a.x, 28443u, global3.e.a.x), global1.a.d), vec3<u32>(u_input.b.x, var_1.a.x, 62099u) ^ vec3<u32>(var_2.d.x, u_input.b.x, 1u)), countOneBits(_wgslsmith_div_u32(4294967295u, 1u)))), global3.a.b, _wgslsmith_f_op_vec2_f32(global3.a.c * global2.zw), global3.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_6.c.x, var_5.x) * vec2<f32>(1107f, -1257f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.c.x, -1245f)))))), select(u_input.a.xwx, ~global1.e.a, true), 1i, ~abs(-vec3<i32>(-34488i, 47233i, -1i) & ~u_input.c), 1u & (~68743u & (0u >> ((21406u & var_2.d.x) % 32u))));
}

