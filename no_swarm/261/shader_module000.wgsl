struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 9583u, 73124u, 1u);

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<i32>(3833i, -5331i, -15232i, -1i), vec3<u32>(0u, 54659u, 69966u), vec2<bool>(true, false)), Struct_1(vec4<i32>(0i, -63871i, 10576i, -58541i), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<bool>(false, false)), Struct_1(vec4<i32>(-17746i, 16843i, 0i, -6870i), vec3<u32>(1u, 6165u, 18604u), vec2<bool>(true, false)), Struct_1(vec4<i32>(0i, -44670i, 2147483647i, i32(-2147483648)), vec3<u32>(0u, 88622u, 1u), vec2<bool>(false, false)), Struct_1(vec4<i32>(6348i, -11513i, i32(-2147483648), 1i), vec3<u32>(38570u, 10450u, 1u), vec2<bool>(true, false)), Struct_1(vec4<i32>(-1i, 2147483647i, 2147483647i, 0i), vec3<u32>(1u, 1691u, 51067u), vec2<bool>(true, false)), Struct_1(vec4<i32>(36240i, -55460i, 57340i, 1i), vec3<u32>(9667u, 1u, 0u), vec2<bool>(false, false)), Struct_1(vec4<i32>(i32(-2147483648), 0i, 4201i, 45088i), vec3<u32>(0u, 0u, 10560u), vec2<bool>(false, true)), Struct_1(vec4<i32>(1i, -1i, 1i, 9491i), vec3<u32>(4294967295u, 10531u, 33391u), vec2<bool>(false, false)), Struct_1(vec4<i32>(-21815i, 28863i, -1i, -1i), vec3<u32>(1u, 93904u, 0u), vec2<bool>(true, true)), Struct_1(vec4<i32>(2147483647i, 60634i, 1i, 42863i), vec3<u32>(4294967295u, 9816u, 1u), vec2<bool>(true, false)), Struct_1(vec4<i32>(23921i, 21679i, -33716i, 26448i), vec3<u32>(1u, 29737u, 1u), vec2<bool>(true, true)), Struct_1(vec4<i32>(-36375i, 1i, 2147483647i, i32(-2147483648)), vec3<u32>(34252u, 3037u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec4<i32>(0i, -1i, 2147483647i, i32(-2147483648)), vec3<u32>(4107u, 34874u, 20692u), vec2<bool>(false, false)), Struct_1(vec4<i32>(-1i, 22142i, 1i, 50072i), vec3<u32>(0u, 1u, 1u), vec2<bool>(false, false)));

var<private> global2: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false));

var<private> global3: Struct_2 = Struct_2(vec2<u32>(50402u, 1u), vec4<u32>(60235u, 4294967295u, 4294967295u, 4294967295u), false, vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -19944i), 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec4<bool> {
    global2 = array<vec4<bool>, 24>();
    let var_0 = arg_1.d.x;
    var var_1 = Struct_1(max(vec4<i32>(-1i, 1i, -36296i, arg_1.d.x), vec4<i32>(~min(1i, var_0), _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(arg_1.d.wz, vec2<i32>(global3.d.x, 0i))), _wgslsmith_sub_i32(-global3.d.x, abs(2147483647i)), var_0)), ~(global3.b.wwy << (vec3<u32>(_wgslsmith_mult_u32(global3.a.x, global0.x), ~global0.x, abs(u_input.b)) % vec3<u32>(32u))), select(!(!select(vec2<bool>(arg_1.c, global3.c), vec2<bool>(false, false), vec2<bool>(arg_1.c, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, global3.c), true), vec2<bool>(true, false & global3.c), select(!vec2<bool>(arg_1.c, false), select(vec2<bool>(global3.c, true), vec2<bool>(true, arg_1.c), arg_1.c), select(vec2<bool>(global3.c, false), vec2<bool>(false, true), vec2<bool>(arg_1.c, true)))), !vec2<bool>(true, select(arg_1.c, arg_1.c, false))));
    global1 = array<Struct_1, 15>();
    var var_2 = var_1.a.x;
    return vec4<bool>(all(var_1.c), any(vec3<bool>(!(var_1.c.x || true), global3.c, global3.c)), any(select(vec3<bool>(true, false, true), !(!vec3<bool>(var_1.c.x, false, var_1.c.x)), select(select(vec3<bool>(arg_1.c, arg_1.c, false), vec3<bool>(global3.c, global3.c, arg_1.c), vec3<bool>(true, global3.c, var_1.c.x)), vec3<bool>(true, true, true), !vec3<bool>(false, arg_1.c, false)))), true);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    global0 = global3.b;
    var var_0 = Struct_2(vec2<u32>(_wgslsmith_dot_vec4_u32(min(~arg_3.b, abs(vec4<u32>(4294967295u, global3.b.x, arg_2.x, 4294967295u))), ~(arg_3.b >> (arg_3.b % vec4<u32>(32u)))), ~1u), ~(arg_3.b >> (select(reverseBits(global3.b), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 98909u, 55695u, 1u), vec4<u32>(global3.a.x, global0.x, arg_2.x, u_input.c)), func_3(783f, Struct_2(global3.a, vec4<u32>(4294967295u, arg_3.a.x, 0u, 5828u), global3.c, vec4<i32>(-20493i, -26679i, -30251i, -11271i), arg_3.a.x))) % vec4<u32>(32u))), all(vec3<bool>((global3.c || arg_3.c) != (arg_3.c || arg_1), select(!arg_1, false, arg_1), false)), vec4<i32>(arg_3.d.x, global3.d.x, _wgslsmith_clamp_i32(17660i, global3.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global3.d.x, arg_3.d.x), arg_3.d.zx)) << ((32486u ^ u_input.e) % 32u), 2147483647i), arg_0 << (arg_3.b.x % 32u));
    let var_1 = vec3<i32>(arg_3.d.x, arg_3.d.x, 8690i);
    var var_2 = -abs(max(1i, min(u_input.d, var_0.d.x))) ^ -20197i;
    var var_3 = -(_wgslsmith_dot_vec4_i32(vec4<i32>(9252i, -19712i, 6137i, -9859i), vec4<i32>(var_1.x, u_input.d, global3.d.x, var_1.x)) ^ ~_wgslsmith_mod_i32(arg_3.d.x, 1i)) >> (~arg_2.x % 32u);
    return Struct_3(global1[_wgslsmith_index_u32(127770u, 15u)], select(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-642f + 279f), 514f)), Struct_2(arg_3.b.zy, ~global3.b, var_0.c, _wgslsmith_div_vec4_i32(var_0.d, arg_3.d), arg_2.x)).wz, func_3(_wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(abs(320f))), Struct_2(vec2<u32>(3558u, 0u) ^ vec2<u32>(arg_0, 4294967295u), select(global3.b, var_0.b, global2[_wgslsmith_index_u32(1u, 24u)]), false, global3.d, 17288u)).yy, global3.c), !select(any(vec3<bool>(arg_1, arg_3.c, true)) && any(vec2<bool>(arg_3.c, false)), any(vec2<bool>(true, true)), global3.c), arg_3, 1i);
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_4(func_2(~global3.e, global3.c, _wgslsmith_clamp_vec2_u32(~global0.zx, vec2<u32>(u_input.c, global3.e) & vec2<u32>(global0.x, 7780u), ~global3.a) << ((~global0.zx | ~vec2<u32>(43696u, 93153u)) % vec2<u32>(32u)), Struct_2(vec2<u32>(53555u, ~0u), _wgslsmith_div_vec4_u32(vec4<u32>(15690u, u_input.b, global0.x, 4294967295u), global3.b) >> (reverseBits(global3.b) % vec4<u32>(32u)), global3.c, vec4<i32>(1i, 2147483647i, global3.d.x, 0i) & _wgslsmith_sub_vec4_i32(global3.d, vec4<i32>(u_input.a, u_input.d, -2147483647i, 1i)), 42166u)), select(_wgslsmith_clamp_vec4_i32(global3.d, global3.d, _wgslsmith_sub_vec4_i32(-vec4<i32>(24589i, 2147483647i, -6911i, 2147483647i), vec4<i32>(u_input.a, 64428i, u_input.a, global3.d.x) >> (global3.b % vec4<u32>(32u)))), ~global3.d | ~(-vec4<i32>(global3.d.x, u_input.a, 1i, -1i)), vec4<bool>(any(select(global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)], vec4<bool>(global3.c, true, global3.c, true))), any(vec2<bool>(true, true)), global3.c, true)), !select(vec3<bool>(u_input.e != u_input.c, !global3.c, true), !select(vec3<bool>(global3.c, global3.c, false), vec3<bool>(false, false, false), vec3<bool>(true, global3.c, global3.c)), global3.c));
    let var_1 = func_2(var_0.a.a.b.x & _wgslsmith_mult_u32(abs(global3.e) | 1u, u_input.b), !select(false, var_0.a.d.c, ~52932u > var_0.a.a.b.x), abs(reverseBits(vec2<u32>(global3.e, ~42741u))), func_2(_wgslsmith_clamp_u32(global0.x, 65823u, 112677u), func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(2988u, 93222u), ~global3.b.zz), var_0.a.a.c.x || func_2(1u, false, global0.yx, Struct_2(vec2<u32>(27821u, 54755u), vec4<u32>(4294967295u, u_input.e, global0.x, var_0.a.a.b.x), global3.c, vec4<i32>(0i, 18921i, 24514i, 1i), 1u)).c, _wgslsmith_mult_vec2_u32(select(global3.a, vec2<u32>(19721u, 39746u), var_0.c.x), vec2<u32>(4294967295u, 20281u)), func_2(1u, var_0.c.x, vec2<u32>(37262u, global0.x), Struct_2(vec2<u32>(global3.b.x, global0.x), global3.b, var_0.c.x, vec4<i32>(-38972i, 0i, var_0.b.x, var_0.b.x), global0.x)).d).d.c, global3.a, var_0.a.d).d).d;
    let var_2 = true;
    global2 = array<vec4<bool>, 24>();
    let var_3 = 901f;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b.yzy;
    var_0 = vec3<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.e, 100174u, 4294967295u) >> (~vec3<u32>(u_input.b, global3.b.x, global3.e) % vec3<u32>(32u)), global0.xyw), ~(~0u), global3.a.x);
    var var_1 = func_1();
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~global0.wzy)), ~var_1.a.d.b.zxw), 24u)];
    var var_3 = func_1().a;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(417f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(528f)) * _wgslsmith_f_op_f32(1332f * _wgslsmith_f_op_f32(ceil(-937f))))));
    let var_5 = _wgslsmith_div_u32(4294967295u, func_2(52363u, !var_2.x, vec2<u32>(~0u, 1u), func_1().a.d).d.e ^ (~(~var_3.d.b.x) & global3.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(max(-var_1.a.d.d.x, global3.d.x ^ ~(-2147483647i)), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_3.d.d.x, var_3.d.d.x), var_3.a.a.zw) >> (~global3.a.x % 32u), ~(-36185i)), _wgslsmith_add_i32(-_wgslsmith_clamp_i32(var_3.d.d.x << (var_0.x % 32u), ~u_input.d, -2147483647i), _wgslsmith_mod_i32(u_input.a, ~u_input.a)));
}

