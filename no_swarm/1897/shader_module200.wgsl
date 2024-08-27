struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
    c: Struct_3,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<bool>, 28> = array<vec2<bool>, 28>(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global2: array<bool, 24> = array<bool, 24>(false, true, false, false, true, true, true, false, false, true, true, false, true, false, true, true, false, false, false, false, false, true, false, false);

var<private> global3: array<Struct_2, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    var var_0 = Struct_4(arg_1, ~(~min(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), Struct_3(-17416i, Struct_1(vec2<bool>(arg_0.x, !global2[_wgslsmith_index_u32(1u, 24u)]), max(~vec3<u32>(32848u, 7692u, 0u), abs(vec3<u32>(21254u, 41428u, 0u)))), u_input.a.x, global2[_wgslsmith_index_u32(reverseBits(~(~1u)), 24u)]), Struct_2(Struct_1(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], arg_0.x), vec3<u32>(1u, 1u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), select(global2[_wgslsmith_index_u32(4294967295u, 24u)], true, !(u_input.b.x == -2147483647i))), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 5255u), vec3<u32>(90285u, 94206u, 1u)), ~(~vec3<u32>(498u, 39504u, 13449u))), 28u)], vec3<u32>(_wgslsmith_mod_u32(reverseBits(1u), 4294967295u), 4294967295u, _wgslsmith_div_u32(~0u, _wgslsmith_sub_u32(61644u, 1u)))));
    global3 = array<Struct_2, 8>();
    var var_1 = select(arg_0.xzz, arg_0.xxx, !(!vec3<bool>(any(vec4<bool>(arg_0.x, true, true, true)), true, false)));
    return abs(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, var_0.b.x, 5713u, 0u)), ~(vec4<u32>(var_0.b.x, var_0.c.b.b.x, var_0.c.b.b.x, 0u) | vec4<u32>(1u, 4294967295u, var_0.e.b.x, var_0.d.a.b.x)))) | ~(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_0.e.b.x, var_0.b.x), vec2<u32>(0u, var_0.d.a.b.x)), firstLeadingBit(var_0.b)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<f32>) -> u32 {
    global2 = array<bool, 24>();
    let var_0 = firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(~arg_0, 23365u, _wgslsmith_add_u32(func_3(vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 24u)], false, global2[_wgslsmith_index_u32(arg_0, 24u)], true), arg_3.x), 51503u)), _wgslsmith_add_vec3_u32(abs(~vec3<u32>(1u, arg_0, 27494u)), (vec3<u32>(4294967295u, arg_0, arg_0) << (vec3<u32>(4294967295u, arg_0, arg_0) % vec3<u32>(32u))) | ~vec3<u32>(4294967295u, arg_0, arg_0))));
    global1 = array<vec2<bool>, 28>();
    global0 = all(vec3<bool>(!select(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(var_0.x, 24u)], true) || !any(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 24u)], false, false)), all(!select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 24u)], false, true, true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(var_0.x, 24u)], false), vec4<bool>(true, false, false, true))), !(!global2[_wgslsmith_index_u32(countOneBits(arg_0), 24u)])));
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_3.ywx);
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(~countOneBits(~vec2<u32>(var_0.x, arg_0)), vec2<u32>(_wgslsmith_mult_u32(arg_0, ~arg_0), var_0.x)));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = Struct_4(180f, select(vec2<u32>(1u, func_2(7290u, arg_0, u_input.a.yw, vec4<f32>(-1733f, 780f, -299f, arg_0)) ^ firstTrailingBit(1u)), ~(~vec2<u32>(66155u, 12257u)) & _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, 4294967295u)), vec2<u32>(32879u, 4294967295u), ~vec2<u32>(46915u, 4294967295u)), vec2<bool>((-194f <= arg_0) | !global2[_wgslsmith_index_u32(1u, 24u)], !(global2[_wgslsmith_index_u32(0u, 24u)] && true))), Struct_3(u_input.d.x >> (13461u % 32u), Struct_1(!global1[_wgslsmith_index_u32(1u, 28u)], vec3<u32>(1u, 1u, 1u)), -_wgslsmith_dot_vec4_i32(select(u_input.b, vec4<i32>(u_input.b.x, u_input.d.x, u_input.d.x, u_input.c), vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], true, true, false)), u_input.b), false), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 18986u), 8u)], Struct_1(!(!global1[_wgslsmith_index_u32(0u, 28u)]), vec3<u32>(~_wgslsmith_mod_u32(0u, 1u), func_3(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(20803u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], false), 1578f), 1u)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-246f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-911f, -1485f)), 116f)))));
    let var_2 = Struct_4(865f, _wgslsmith_clamp_vec2_u32(var_0.b, var_0.b, firstTrailingBit(~var_0.d.a.b.xy)), Struct_3(var_0.c.c, Struct_1(global1[_wgslsmith_index_u32(~(~1913u), 28u)], ~var_0.d.a.b), i32(-1i) * -firstLeadingBit(1i), global2[_wgslsmith_index_u32(func_3(select(!vec4<bool>(false, true, var_0.c.b.a.x, global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(var_0.e.a.x, var_0.e.a.x, true, true), select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.d.a.b.x, 24u)], true, global2[_wgslsmith_index_u32(11195u, 24u)]), vec4<bool>(var_0.c.d, true, true, global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec4<bool>(global2[_wgslsmith_index_u32(15348u, 24u)], var_0.c.b.a.x, true, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), 1167f)), 24u)]), global3[_wgslsmith_index_u32(var_0.b.x, 8u)], var_0.d.a);
    var var_3 = !select(!select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 24u)], true, var_0.e.a.x), vec3<bool>(var_2.d.a.a.x, var_0.c.d, true), any(vec4<bool>(false, var_0.c.d, true, var_0.c.d))), vec3<bool>(all(!vec2<bool>(var_2.e.a.x, true)), true, select(var_1.x < 500f, true, all(vec3<bool>(false, var_2.d.b, false)))), !(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], var_0.d.a.a.x, true)));
    var_3 = select(select(vec3<bool>(var_3.x, var_3.x, select(any(vec4<bool>(global2[_wgslsmith_index_u32(14048u, 24u)], var_2.d.a.a.x, global2[_wgslsmith_index_u32(0u, 24u)], true)), true, var_0.c.d == true)), select(vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.b.x | 3196u, 24u)], -951f >= var_1.x), !(!vec3<bool>(true, var_3.x, true)), vec3<bool>(true, select(var_2.c.d, var_0.c.d, false), any(vec2<bool>(var_3.x, true)))), vec3<bool>(any(vec3<bool>(true, var_3.x, var_0.c.d)), false, var_2.d.a.a.x)), !vec3<bool>(true, false && global2[_wgslsmith_index_u32(var_2.e.b.x, 24u)], true), select(any(select(vec4<bool>(false, false, var_3.x, var_0.c.d), vec4<bool>(var_3.x, global2[_wgslsmith_index_u32(4294967295u, 24u)], true, false), true)) || true, all(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_0.d.a.a.x, global2[_wgslsmith_index_u32(var_0.d.a.b.x, 24u)]), select(vec3<bool>(false, false, true), vec3<bool>(global2[_wgslsmith_index_u32(19029u, 24u)], var_0.c.d, false), false))), var_2.d.a.a.x));
    return all(!select(vec3<bool>(true, true, true), vec3<bool>(all(var_3.xy), true, global2[_wgslsmith_index_u32(43018u, 24u)]), any(vec4<bool>(var_3.x, var_3.x, var_0.e.a.x, global2[_wgslsmith_index_u32(39839u, 24u)]))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_5) -> Struct_5 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(ceil(429f)), _wgslsmith_f_op_f32(sign(-160f)), _wgslsmith_f_op_f32(f32(-1f) * -397f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1390f, -381f, 347f, 746f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(330f, -1658f, 1579f, 1473f) + vec4<f32>(153f, -380f, 828f, -1000f)))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1188f, _wgslsmith_div_f32(506f, -600f), _wgslsmith_f_op_f32(step(1057f, 197f)), _wgslsmith_f_op_f32(-1615f - 568f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -455f))), _wgslsmith_f_op_f32(floor(-485f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -929f)), _wgslsmith_f_op_f32(f32(-1f) * -693f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1026f, 161f, -954f, 896f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1119f, -801f, 334f, 1108f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(475f, -584f, -997f, 919f) * vec4<f32>(-174f, -1000f, 1649f, -1144f)))))));
    global0 = !func_1(var_0.x) && false;
    global1 = array<vec2<bool>, 28>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) - var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1573f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(floor(var_0.x)))))) - _wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = Struct_3(-(u_input.b.x >> ((~arg_2.b.x & 4294967295u) % 32u)), arg_1, u_input.c, countOneBits(arg_0) < 7253u);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(countOneBits(4294967295u), Struct_1(vec2<bool>(func_1(_wgslsmith_f_op_f32(f32(-1f) * -786f)), any(select(vec2<bool>(false, global2[_wgslsmith_index_u32(41371u, 24u)]), vec2<bool>(false, true), vec2<bool>(false, true)))), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(19571u, 16625u, 1u)), _wgslsmith_mod_vec3_u32(max(vec3<u32>(1u, 9473u, 83206u), vec3<u32>(11584u, 17395u, 0u)), vec3<u32>(1u, 1u, 1u)))), Struct_1(vec2<bool>(!(u_input.c <= u_input.d.x), true), ~min(vec3<u32>(26594u, 4294967295u, 1u), ~vec3<u32>(0u, 112481u, 48135u))), Struct_5(1u));
    global2 = array<bool, 24>();
    var var_1 = Struct_4(-1162f, vec2<u32>(1u, (var_0.a >> (4870u % 32u)) << (4294967295u % 32u)), Struct_3(-25284i, Struct_1(!vec2<bool>(global2[_wgslsmith_index_u32(var_0.a, 24u)], true), vec3<u32>(~var_0.a, func_4(var_0.a, Struct_1(vec2<bool>(false, true), vec3<u32>(3018u, 56462u, 1u)), Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(16135u, 24u)]), vec3<u32>(var_0.a, var_0.a, 0u)), Struct_5(4294967295u)).a, var_0.a)), -(i32(-1i) * -1i), any(vec4<bool>(u_input.c > u_input.d.x, global2[_wgslsmith_index_u32(29591u, 24u)] | true, true && global2[_wgslsmith_index_u32(41618u, 24u)], global2[_wgslsmith_index_u32(abs(66841u), 24u)]))), global3[_wgslsmith_index_u32(160888u, 8u)], Struct_1(select(vec2<bool>(true, 14320u <= var_0.a), global1[_wgslsmith_index_u32(~abs(var_0.a), 28u)], !(!global2[_wgslsmith_index_u32(var_0.a, 24u)])), vec3<u32>(reverseBits(var_0.a), 29933u << (abs(var_0.a) % 32u), ~var_0.a & var_0.a)));
    let var_2 = func_1(_wgslsmith_f_op_f32(-var_1.a));
    let var_3 = var_1.e;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(-abs(vec4<i32>(var_1.c.a, var_1.c.c, var_1.c.a, u_input.a.x)), min(select(vec4<i32>(26089i, var_1.c.a, var_1.c.c, 2147483647i), u_input.b, vec4<bool>(false, true, var_2, true)), vec4<i32>(-2147483647i, -10680i, 1i, 71056i))) ^ u_input.a, countOneBits(~(~(~vec3<u32>(var_1.b.x, 27619u, var_3.b.x)))), min(_wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(u_input.b.x, -10976i, -4737i, var_1.c.a)), var_1.c.a | _wgslsmith_mod_i32(var_1.c.c, -32755i)) ^ -(~u_input.c << (func_2(16168u, -580f, vec2<i32>(var_1.c.c, u_input.d.x), vec4<f32>(159f, -576f, var_1.a, 746f)) % 32u)), var_0.a, ~(u_input.a.x << (_wgslsmith_mod_u32(firstLeadingBit(var_0.a), 1u) % 32u)));
}

