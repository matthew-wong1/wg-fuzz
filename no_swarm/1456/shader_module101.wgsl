struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-51106i, 39601i, -43752i, -1i, i32(-2147483648), 272i, i32(-2147483648), -11352i, i32(-2147483648), -1i, i32(-2147483648), -22110i, 4800i, 20192i, -31322i);

var<private> global1: Struct_1 = Struct_1(4294967295u, vec3<f32>(476f, 106f, 388f), false);

var<private> global2: bool;

var<private> global3: u32;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    var var_0 = !any(select(!vec3<bool>(false, global1.c, true), vec3<bool>(any(vec4<bool>(true, true, true, false)), !arg_1.c, arg_1.c), vec3<bool>(global1.c, -554f <= arg_1.b.x, false)));
    var_0 = all(!vec3<bool>(any(select(vec4<bool>(global1.c, arg_1.c, false, global1.c), vec4<bool>(arg_1.c, global1.c, true, false), true)), global1.c, arg_1.c));
    global2 = all(vec4<bool>(global1.c, any(!vec3<bool>(global1.c, false, true)), !(!arg_1.c), (0i & global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 15u)]) != ~global0[_wgslsmith_index_u32(u_input.b.x, 15u)]));
    var var_1 = firstLeadingBit(countOneBits(vec4<u32>(firstTrailingBit(u_input.a & global1.a), 0u, arg_0, 1u)));
    var_0 = false;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1023f))));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> vec3<f32> {
    var var_0 = Struct_2(Struct_1(1u, _wgslsmith_div_vec3_f32(vec3<f32>(1352f, _wgslsmith_f_op_f32(-arg_2), 169f), global1.b), !global1.c), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(25010u, global1.a), ~u_input.b.x));
    global2 = global1.c;
    global0 = array<i32, 15>();
    let var_1 = 4294967295u;
    var var_2 = Struct_1(4294967295u >> (~var_1 % 32u), _wgslsmith_f_op_vec3_f32(-global1.b), true);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_2.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2308f - 915f) - var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1928f - 1676f) - 1762f), -463f) + _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.b, vec3<f32>(var_2.b.x, var_2.b.x, 521f))))), select(select(vec3<bool>(false, all(vec4<bool>(global1.c, var_2.c, var_2.c, true)), var_0.a.c), vec3<bool>(all(vec4<bool>(var_2.c, var_2.c, global1.c, global1.c)), var_2.c, true), !(var_0.b == 23422u)), !(!select(vec3<bool>(true, false, var_2.c), vec3<bool>(global1.c, var_2.c, true), vec3<bool>(true, var_0.a.c, var_0.a.c))), !vec3<bool>(any(vec4<bool>(var_0.a.c, var_2.c, false, var_0.a.c)), !var_2.c, false))));
}

fn func_2() -> u32 {
    global3 = min(_wgslsmith_clamp_u32(~(~(~u_input.b.x)), ~global1.a >> (~u_input.a % 32u), select(u_input.b.x, _wgslsmith_div_u32(4294967295u, _wgslsmith_mod_u32(1u, 2500u)), global1.c)), _wgslsmith_mod_u32(4294967295u, u_input.a));
    var var_0 = Struct_1(~0u, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.a, Struct_1(4294967295u, vec3<f32>(global1.b.x, global1.b.x, global1.b.x), global1.c)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(620f)) * _wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_mult_vec3_i32(select(reverseBits(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 15u)], -1i, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.a, 15u)], 1i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(0u, 15u)], 9955i)), any(vec4<bool>(true, false, global1.c, true))), _wgslsmith_mod_vec3_i32(min(vec3<i32>(-4476i, 1i, global0[_wgslsmith_index_u32(20411u, 15u)]), vec3<i32>(global0[_wgslsmith_index_u32(19089u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], -15377i)), firstTrailingBit(vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 10946i, -2147483647i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, 500f))), 2145f), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, 29209i), abs(-30002i)), i32(-1i) * -global0[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_sub_i32(abs(global0[_wgslsmith_index_u32(10559u, 15u)]), abs(-25688i))))), select(false, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(50455u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)]), global0[_wgslsmith_index_u32(max(8283u, 4294967295u), 15u)]) < ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), vec2<i32>(60277i, global0[_wgslsmith_index_u32(1u, 15u)])), global1.c || true));
    let var_1 = Struct_2(Struct_1(~var_0.a, var_0.b, global0[_wgslsmith_index_u32(global1.a, 15u)] > _wgslsmith_sub_i32(-1i, global0[_wgslsmith_index_u32(44495u, 15u)])), 37925u);
    var var_2 = ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_0.a << (_wgslsmith_sub_u32(43480u, u_input.a) % 32u), u_input.b.x) & 22286u, 15u)];
    var var_3 = vec2<i32>(_wgslsmith_mod_i32(~(~global0[_wgslsmith_index_u32(44068u, 15u)]), -43403i), ~reverseBits(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(var_1.a.a, 25420u), 15u)]));
    return 101323u;
}

fn func_1() -> Struct_2 {
    let var_0 = !(!vec3<bool>(true, global1.c, global1.c));
    var var_1 = Struct_2(Struct_1(~(~firstLeadingBit(0u)), _wgslsmith_f_op_vec3_f32(min(global1.b, global1.b)), !any(select(var_0.xz, var_0.yz, var_0.x))), u_input.a);
    global3 = u_input.a;
    global2 = var_0.x;
    var var_2 = _wgslsmith_dot_vec4_u32(min(~vec4<u32>(~1u, ~1u, func_2(), global1.a), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 1u, 1u), reverseBits(vec4<u32>(var_1.a.a, 1u, u_input.b.x, global1.a))) << (~_wgslsmith_mult_vec4_u32(vec4<u32>(1478u, 65759u, 12278u, 97237u), vec4<u32>(global1.a, 9422u, 1u, 0u)) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(0u << (var_1.a.a % 32u)), firstLeadingBit(_wgslsmith_mult_u32(global1.a, u_input.b.x)), ~global1.a, 1u & _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), reverseBits(~vec4<u32>(global1.a, 47868u, u_input.a, 43167u)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4001u, 27996u, u_input.b.x), vec4<u32>(26863u, 4294967295u, 1u, 60343u) ^ vec4<u32>(0u, 1u, u_input.a, u_input.b.x)) % vec4<u32>(32u))));
    return Struct_2(Struct_1(~max(func_2(), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1188f, global1.b.x, 1000f), global1.b) - vec3<f32>(-1413f, -2327f, var_1.a.b.x))), any(select(vec4<bool>(true, var_0.x, global1.c, var_0.x), !vec4<bool>(var_1.a.c, true, global1.c, global1.c), select(vec4<bool>(true, false, var_0.x, false), vec4<bool>(global1.c, false, false, var_0.x), true)))), global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = (func_1().a.b.x > 161f) & !(!(!(global0[_wgslsmith_index_u32(var_0.b, 15u)] == 2147483647i)));
    let var_1 = func_1().a;
    var var_2 = vec3<i32>(-77171i, -1i, reverseBits(-1i));
    var_2 = select(vec3<i32>(-_wgslsmith_clamp_i32(-19483i, firstTrailingBit(var_2.x), -global0[_wgslsmith_index_u32(var_1.a, 15u)]), firstTrailingBit(_wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec2_i32(var_2.yy, var_2.xy))), -741i), vec3<i32>(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(global0[_wgslsmith_index_u32(var_1.a, 15u)], -859i)), ~var_2.xx), countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~0u, abs(1u)), 15u)]), var_2.x), !select(vec3<bool>(any(vec4<bool>(var_0.a.c, var_0.a.c, false, false)), !var_1.c, true), select(!vec3<bool>(var_0.a.c, var_0.a.c, false), vec3<bool>(false, var_1.c, var_1.c), any(vec2<bool>(true, true))), !(740f == global1.b.x)));
    let var_3 = var_0.a.b.x;
    let var_4 = max(i32(-1i) * -1i, global0[_wgslsmith_index_u32(~(~global1.a), 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(min(select(abs(select(vec3<u32>(var_1.a, 12590u, 4294967295u), vec3<u32>(4294967295u, var_0.a.a, 24494u), vec3<bool>(var_0.a.c, var_0.a.c, true))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(23123u, var_1.a, 63104u), vec3<u32>(u_input.a, 4294967295u, 28401u), ~vec3<u32>(25029u, 43859u, 21417u)), !vec3<bool>(global1.c, true, false)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 0u, _wgslsmith_div_u32(7232u, var_1.a)), abs(vec3<u32>(var_1.a, u_input.b.x, u_input.a)) << (countOneBits(vec3<u32>(var_1.a, 236u, 1u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.a, 4294967295u, var_0.a.a), vec3<u32>(1u, 46471u, 45066u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, var_0.a.b.x, 808f, global1.b.x))) - vec4<f32>(184f, global1.b.x, -723f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1340f, -234f, var_0.a.b.x, var_0.a.b.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1341f, -406f, 328f, global1.b.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b.x, -1127f, -1237f, -2000f)), vec4<f32>(var_0.a.b.x, 1206f, 702f, -1100f), vec4<bool>(false, true, false, var_0.a.c))), vec4<f32>(global1.b.x, 880f, -1652f, _wgslsmith_div_f32(1348f, -477f)), all(select(vec4<bool>(true, true, global1.c, var_0.a.c), vec4<bool>(false, var_1.c, var_0.a.c, var_0.a.c), vec4<bool>(true, global1.c, var_1.c, true)))))), ~(var_0.b >> ((firstTrailingBit(11618u) ^ (var_1.a & 0u)) % 32u)));
}

