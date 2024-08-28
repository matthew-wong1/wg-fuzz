struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -445f);

var<private> global1: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(1u, 0u), vec2<u32>(14593u, 3186u), vec2<u32>(22780u, 13912u));

var<private> global2: array<u32, 30>;

var<private> global3: vec2<bool>;

var<private> global4: array<bool, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> u32 {
    var var_0 = arg_0.b.c.x;
    var var_1 = Struct_3(Struct_2(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(round(-170f))), Struct_1(_wgslsmith_mult_u32(79268u, 4294967295u | arg_1.a.b.a), arg_1.a.b.b, !(!arg_1.c), reverseBits(~arg_0.b.b.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a)))), all(!vec3<bool>(global3.x, true, true))), all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), false), vec2<bool>(true, true), vec2<bool>(!arg_1.c.x, true))), Struct_1(36005u, vec3<u32>(arg_1.a.b.b.x, _wgslsmith_dot_vec3_u32(~arg_0.b.b, _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(16355u, 30u)], global2[_wgslsmith_index_u32(arg_1.a.b.a, 30u)], arg_1.a.b.d.x), vec3<u32>(arg_1.a.b.a, 1u, arg_1.a.b.d.x))), 3954u), select(!vec2<bool>(arg_0.b.c.x, false), select(arg_0.b.c, vec2<bool>(true, true), select(vec2<bool>(arg_1.c.x, global4[_wgslsmith_index_u32(4294967295u, 29u)]), arg_0.b.c, arg_1.c)), !all(vec3<bool>(false, arg_0.b.c.x, false))), vec2<u32>(u_input.a, reverseBits(~u_input.a)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-arg_1.a.a)))), countOneBits(firstTrailingBit(vec3<i32>(-15461i, 1i, ~(-2147483647i)))));
    global4 = array<bool, 29>();
    var var_2 = ~2147483647i;
    let var_3 = reverseBits(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(84889i, -27657i, 0i, 18237i)), vec4<i32>(arg_1.b, -34896i, _wgslsmith_add_i32(arg_1.b, 26625i), ~var_1.d.x))));
    return global2[_wgslsmith_index_u32(98452u, 30u)];
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -850f)), Struct_1(func_3(Struct_2(_wgslsmith_f_op_f32(exp2(global0.x)), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 30u)], vec3<u32>(global2[_wgslsmith_index_u32(46645u, 30u)], 57405u, 9704u), vec2<bool>(true, false), vec2<u32>(30425u, 0u), global0.x), select(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 29u)], false, global4[_wgslsmith_index_u32(4294967295u, 29u)])), Struct_4(Struct_2(1854f, Struct_1(45543u, vec3<u32>(4294967295u, 0u, u_input.a), vec2<bool>(false, true), global1[_wgslsmith_index_u32(730u, 3u)], global0.x), global4[_wgslsmith_index_u32(32725u, 29u)]), -1i, select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, true), false))), vec3<u32>(16165u, ~global2[_wgslsmith_index_u32(u_input.a, 30u)], _wgslsmith_mult_u32(0u, 1u)) << ((vec3<u32>(global2[_wgslsmith_index_u32(12128u, 30u)], 4294967295u, u_input.a) >> (~vec3<u32>(u_input.a, 1u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec2<bool>(select(false, any(vec3<bool>(false, false, true)), global3.x), all(!vec3<bool>(false, false, global4[_wgslsmith_index_u32(40732u, 29u)]))), global1[_wgslsmith_index_u32(u_input.a, 3u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global0.x))), _wgslsmith_f_op_f32(ceil(global0.x))))), true);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(~1i), 64222i), 1i);
    let var_2 = Struct_4(Struct_2(_wgslsmith_f_op_f32(trunc(-1289f)), Struct_1(35656u, var_0.b.b, vec2<bool>(true, true), vec2<u32>(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(132923u, 30u)]), firstLeadingBit(var_0.b.a)), _wgslsmith_f_op_f32(-global0.x)), any(var_0.b.c)), firstLeadingBit(~_wgslsmith_dot_vec3_i32(~vec3<i32>(42895i, 2147483647i, 5906i), vec3<i32>(1i, 1i, 1i))), select(select(vec2<bool>(true, true), select(vec2<bool>(global4[_wgslsmith_index_u32(13376u, 29u)], false), select(var_0.b.c, var_0.b.c, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12655u, 30u)], 29u)]), false), select(select(var_0.b.c, vec2<bool>(true, true), var_0.b.c), var_0.b.c, true)), var_0.b.c, all(vec2<bool>(true, global3.x))));
    let var_3 = Struct_3(var_2.a, global4[_wgslsmith_index_u32(reverseBits(var_0.b.b.x), 29u)], var_0.b, select(~(vec3<i32>(-1i) * -vec3<i32>(var_2.b, 14542i, 0i)), vec3<i32>(-select(var_2.b, var_2.b, true), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-39945i, var_2.b), -vec2<i32>(-2147483647i, var_2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.e + global0.x), 840f) > _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(var_2.a.a + var_0.a)))));
    let var_4 = u_input.a;
    return Struct_2(_wgslsmith_f_op_f32(floor(var_3.a.b.e)), Struct_1(~firstLeadingBit(~10781u), _wgslsmith_add_vec3_u32(abs(~vec3<u32>(u_input.a, 1u, global2[_wgslsmith_index_u32(var_0.b.b.x, 30u)])), (var_0.b.b << (var_0.b.b % vec3<u32>(32u))) | vec3<u32>(var_4, 27262u, var_3.c.b.x)), var_2.a.b.c, var_2.a.b.b.xy, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.a)))), any(!select(!var_0.b.c, select(vec2<bool>(true, var_3.c.c.x), vec2<bool>(var_2.a.b.c.x, false), true), var_2.c)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(func_2(), any(select(vec4<bool>(all(vec3<bool>(global3.x, true, true)), any(vec3<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 29u)], false, true)), true, true), vec4<bool>(select(global3.x, false, true), global3.x, false, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 30u)], 29u)]), false)), func_2().b, vec3<i32>(~(_wgslsmith_dot_vec3_i32(vec3<i32>(-51614i, 1i, -2147483647i), vec3<i32>(0i, -40989i, 1i)) << (_wgslsmith_clamp_u32(28658u, global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]) % 32u)), ~(~2147483647i), -2147483647i));
    var var_1 = -47322i;
    var var_2 = func_2();
    let var_3 = Struct_5(Struct_4(var_0.a, -2147483647i, func_2().b.c));
    var var_4 = u_input.a;
    return Struct_1(~11878u, var_3.a.a.b.b, vec2<bool>(var_2.c, ((var_3.a.b | var_3.a.b) | (var_3.a.b >> (var_0.a.b.d.x % 32u))) > 0i), firstTrailingBit(~vec2<u32>(global2[_wgslsmith_index_u32(81353u, 30u)], _wgslsmith_sub_u32(2104u, var_0.a.b.a))), 155f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~18348u & ~_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, u_input.a), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), firstLeadingBit(vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)]))));
    var var_1 = func_1();
    global2 = array<u32, 30>();
    let var_2 = _wgslsmith_mod_i32(abs(_wgslsmith_mult_i32(firstTrailingBit(abs(17718i)), 1i)), 1i);
    var var_3 = abs((vec4<u32>(select(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(55246u, 30u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(127795u, 30u)], 29u)]), _wgslsmith_mult_u32(18590u, var_0), countOneBits(2187u), countOneBits(53295u)) ^ firstTrailingBit(abs(vec4<u32>(4294967295u, 47276u, var_1.d.x, 4294967295u)))) ^ ~max(~vec4<u32>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(var_0, 30u)], 87562u, 59907u), _wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 30u)], 34761u, 4294967295u, 13589u), vec4<u32>(global2[_wgslsmith_index_u32(var_1.b.x, 30u)], 4294967295u, var_1.d.x, 76705u))));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-255f, global0.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_div_f32(global0.x, var_1.e)), -1000f))), Struct_1(_wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(88619u, 30u)], global2[_wgslsmith_index_u32(abs(var_3.x), 30u)]), select(~var_3.yxw, var_3.yyx, func_2().b.c.x), vec2<bool>(!select(var_1.c.x, true, global3.x), true), ~global1[_wgslsmith_index_u32(~0u, 3u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), !(!(global4[_wgslsmith_index_u32(~59219u, 29u)] & !var_1.c.x)));
    var var_5 = select(-(~(select(var_2, var_2, global4[_wgslsmith_index_u32(1u, 29u)]) << (4294967295u % 32u))), _wgslsmith_add_i32(3271i, var_2), _wgslsmith_f_op_f32(func_1().e + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(827f, var_1.e)))) < -1398f);
    global2 = array<u32, 30>();
    let var_6 = !func_2().b.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-min(-(~var_2), -abs(2147483647i)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.b.e) - global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1261f) * _wgslsmith_f_op_f32(trunc(-1539f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(140f * var_4.a))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e * 505f) - var_1.e)))));
}

