struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 1> = array<Struct_4, 1>(Struct_4(Struct_3(Struct_1(true, -5076i, vec3<f32>(543f, -138f, 1339f), 38741u, vec3<u32>(0u, 34152u, 26801u))), vec2<f32>(-853f, 1631f)));

var<private> global1: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true));

var<private> global2: Struct_4;

var<private> global3: array<vec3<bool>, 21>;

var<private> global4: array<f32, 24>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = global2.a.a.e.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f));
    let var_2 = abs(~u_input.a) << (~firstTrailingBit(select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1.d, global2.a.a.d, 5519u), vec4<u32>(0u, arg_1.d, 20377u, arg_1.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2.a.a.e.x, 1u, 3957u), vec4<u32>(1u, 1u, 4294967295u, 22461u)), false)) % vec4<u32>(32u));
    var var_3 = Struct_4(Struct_3(Struct_1(arg_1.a, 2147483647i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(arg_1.d, 24u)], 114f, 735f)), select(0u, global2.a.a.e.x, true) >> (19047u % 32u), ~min(vec3<u32>(1u, arg_1.e.x, arg_1.e.x), vec3<u32>(11538u, 1u, global2.a.a.d)))), arg_1.c.xx);
    let var_4 = select(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(global2.a.a.d, arg_1.e.x), min(arg_1.e.x, abs(global2.a.a.e.x))), 9u)], !select(vec3<bool>(global2.a.a.c.x != -2036f, true, !var_3.a.a.a), !vec3<bool>(global2.a.a.a, false, false), !global2.a.a.a | (global2.a.a.d > 5084u)), true);
    return _wgslsmith_mult_i32(var_2.x, _wgslsmith_dot_vec4_i32(u_input.a, select(vec4<i32>(1i, abs(-2147483647i), i32(-1i) * -27367i, _wgslsmith_mod_i32(10630i, -1i)), firstLeadingBit(vec4<i32>(1i, var_2.x, 68934i, 2147483647i)), any(vec2<bool>(true, true)))));
}

fn func_2(arg_0: Struct_5, arg_1: u32) -> Struct_3 {
    var var_0 = 1290i;
    let var_1 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -312f), Struct_3(Struct_1(!(global2.a.a.b == -26756i), ~func_3(-926i, Struct_1(false, global2.a.a.b, vec3<f32>(-1301f, -907f, -507f), arg_1, vec3<u32>(arg_1, arg_1, arg_0.b.a.d))), global2.a.a.c, 53753u, _wgslsmith_mult_vec3_u32(firstLeadingBit(global2.a.a.e), ~vec3<u32>(arg_0.b.a.e.x, 1u, 0u)))), firstLeadingBit(abs(global2.a.a.d)));
    global1 = array<vec3<bool>, 9>();
    var var_2 = vec4<i32>(u_input.b.x, 0i, global2.a.a.b, var_1.b.a.b);
    var var_3 = ~(var_1.b.a.e.x ^ global2.a.a.e.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, global2.a.a.e.x, var_1.b.a.e.x), ~vec3<u32>(269u, var_1.b.a.d, arg_0.b.a.d)), _wgslsmith_add_u32(min(4294967295u, 58649u), _wgslsmith_sub_u32(1u, 1u))), vec3<u32>(global2.a.a.e.x, select(~var_1.c, 42200u << (arg_1 % 32u), true), ~abs(arg_1))) % 32u);
    return Struct_3(Struct_1(~_wgslsmith_mult_u32(global2.a.a.e.x, 0u) == ~_wgslsmith_add_u32(arg_1, arg_0.c), min(arg_0.b.a.b, -2147483647i ^ abs(var_1.b.a.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(284f, arg_0.b.a.c.x)), global4[_wgslsmith_index_u32(29048u, 24u)], 838f)), ~(~var_1.c), vec3<u32>(~abs(35231u), 0u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(arg_1, arg_0.b.a.e.x, 4294967295u, 34548u), vec4<u32>(global2.a.a.e.x, 0u, arg_1, 37223u)), vec4<u32>(6232u, 4952u, global2.a.a.d, 1u)))));
}

fn func_1() -> vec4<u32> {
    global2 = Struct_4(func_2(Struct_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b.x * 1577f))), global2.a, 2293u), (countOneBits(1u) | _wgslsmith_add_u32(global2.a.a.e.x, global2.a.a.e.x)) | (_wgslsmith_dot_vec2_u32(global2.a.a.e.yz, global2.a.a.e.xx) | 1u)), vec2<f32>(833f, _wgslsmith_f_op_f32(abs(335f))));
    global0 = array<Struct_4, 1>();
    global4 = array<f32, 24>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(Struct_5(global4[_wgslsmith_index_u32(global2.a.a.d, 24u)], global2.a, 12457u), global2.a.a.d).a.c.x - _wgslsmith_f_op_f32(-global2.b.x)), global4[_wgslsmith_index_u32(~20668u, 24u)], _wgslsmith_div_f32(964f, global4[_wgslsmith_index_u32(1u, 24u)]) > _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(global2.a.a.e.x, 24u)], -170f)))), -1970f, -1196f, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1203u, global2.a.a.d | ~57579u), 24u)]) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1289f, global4[_wgslsmith_index_u32(global2.a.a.e.x, 24u)], -787f, 372f), vec4<f32>(773f, 1039f, global2.b.x, -1000f), vec4<bool>(true, false, global2.a.a.a, true))))))));
    var var_1 = u_input.b.x;
    return ~vec4<u32>(_wgslsmith_add_u32(~global2.a.a.e.x, abs(global2.a.a.d)) | _wgslsmith_dot_vec3_u32(global2.a.a.e, _wgslsmith_add_vec3_u32(vec3<u32>(global2.a.a.e.x, 42214u, global2.a.a.e.x), vec3<u32>(4294967295u, 0u, 17012u))), global2.a.a.d, 24132u, min(~reverseBits(global2.a.a.e.x), global2.a.a.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = select(_wgslsmith_sub_vec3_u32(vec3<u32>(~global2.a.a.d, ~global2.a.a.d << (countOneBits(global2.a.a.d) % 32u), 4294967295u), ~max(select(vec3<u32>(18639u, global2.a.a.e.x, global2.a.a.e.x), global2.a.a.e, global1[_wgslsmith_index_u32(global2.a.a.e.x, 9u)]), _wgslsmith_add_vec3_u32(vec3<u32>(6115u, 29277u, global2.a.a.d), vec3<u32>(0u, 9403u, 4294967295u)))), global2.a.a.e, !any(global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(4294967295u, 62007u), abs(global2.a.a.d)), 9u)]));
    let var_2 = Struct_1(false, u_input.b.x, global2.a.a.c, global2.a.a.e.x << (var_1.x % 32u), select(global2.a.a.e, ~(_wgslsmith_sub_vec3_u32(global2.a.a.e, vec3<u32>(var_1.x, 172092u, 0u)) << ((vec3<u32>(global2.a.a.e.x, var_1.x, global2.a.a.e.x) << (vec3<u32>(1u, 25925u, var_1.x) % vec3<u32>(32u))) % vec3<u32>(32u))), var_0));
    global3 = array<vec3<bool>, 21>();
    let var_3 = firstTrailingBit(max(min(2147483647i, ~min(-26406i, global2.a.a.b)), global2.a.a.b));
    var var_4 = -100f;
    global3 = array<vec3<bool>, 21>();
    let var_5 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -134f)))) + 2513f), Struct_3(global2.a.a), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, var_2.e.x, var_1.x, 18308u), _wgslsmith_add_vec4_u32(vec4<u32>(10994u, 4294967295u, var_1.x, 36713u), vec4<u32>(var_2.d, 1u, 1u, 4294967295u))), ~func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, -260f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_5.b.a.c.x), _wgslsmith_f_op_f32(select(global4[_wgslsmith_index_u32(0u, 24u)], -666f, true)), _wgslsmith_f_op_f32(max(var_5.a, -801f)), _wgslsmith_f_op_f32(max(var_2.c.x, 123f))), vec4<f32>(-220f, -541f, _wgslsmith_f_op_f32(trunc(var_5.b.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -818f))))), abs(vec2<i32>(func_3(-1i, var_2), var_5.b.a.b) & ((u_input.b.zx | u_input.a.ww) | _wgslsmith_mult_vec2_i32(u_input.b.xy, vec2<i32>(var_5.b.a.b, u_input.b.x)))));
}

