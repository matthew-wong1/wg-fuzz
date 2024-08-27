struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<vec2<u32>, 28> = array<vec2<u32>, 28>(vec2<u32>(0u, 70930u), vec2<u32>(1u, 1u), vec2<u32>(18279u, 48986u), vec2<u32>(4294967295u, 0u), vec2<u32>(20082u, 1u), vec2<u32>(27903u, 17495u), vec2<u32>(53935u, 4294967295u), vec2<u32>(45265u, 18577u), vec2<u32>(3864u, 4294967295u), vec2<u32>(4294967295u, 49013u), vec2<u32>(0u, 66747u), vec2<u32>(44759u, 26387u), vec2<u32>(4294967295u, 0u), vec2<u32>(8715u, 4294967295u), vec2<u32>(22916u, 4294967295u), vec2<u32>(57706u, 0u), vec2<u32>(0u, 43773u), vec2<u32>(26655u, 23477u), vec2<u32>(94567u, 0u), vec2<u32>(39232u, 48300u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u), vec2<u32>(63160u, 25274u), vec2<u32>(1u, 1u), vec2<u32>(1u, 55187u), vec2<u32>(0u, 0u), vec2<u32>(47047u, 90480u), vec2<u32>(1u, 1u));

var<private> global2: vec3<f32>;

var<private> global3: array<i32, 23>;

var<private> global4: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(i32(-2147483648), -5392i, -10981i, 65318i), vec4<i32>(1i, 1i, 33600i, -45689i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = 721f;
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1611f, global2.x, global2.x) * vec3<f32>(arg_1.x, var_0, global2.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 165f, var_0) - vec3<f32>(arg_1.x, 2230f, global2.x)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-288f, 1000f, -1259f), vec3<f32>(936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-231f + var_0) * global2.x), _wgslsmith_f_op_f32(f32(-1f) * -558f)), all(vec4<bool>(all(vec3<bool>(true, false, false)), true, u_input.c != u_input.c, !arg_2.c.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(442f, 195f, 1733f) * vec3<f32>(var_0, global2.x, 936f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, global2.x)))))));
    var_1 = vec3<f32>(1000f, -1000f, var_1.x);
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -414f)));
    return u_input.c;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> u32 {
    let var_0 = Struct_2(false, !vec3<bool>(any(vec2<bool>(true, true)), -u_input.b >= abs(1i), any(vec4<bool>(true, true, true, true))), ~(~_wgslsmith_mult_i32(1i, 57074i)), Struct_1(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true)), true, !vec3<bool>(global3[_wgslsmith_index_u32(1u, 23u)] != -21807i, true, false)), Struct_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), true), (u_input.b > ~u_input.b) && (_wgslsmith_mult_u32(u_input.c, 0u) > arg_2.x), vec3<bool>(true, any(vec4<bool>(true, true, true, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))))));
    let var_1 = Struct_3(_wgslsmith_mult_vec4_i32(select(select(global4[_wgslsmith_index_u32(u_input.c, 2u)], vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(865u, 23u)], -29246i, 1i), vec4<bool>(true, var_0.d.c.x, var_0.b.x, var_0.b.x)) & -vec4<i32>(-1i, -1i, global3[_wgslsmith_index_u32(0u, 23u)], -4525i), global4[_wgslsmith_index_u32(func_3(select(vec2<bool>(true, true), vec2<bool>(false, true), var_0.b.zy), vec2<f32>(global2.x, 1000f), Struct_3(global4[_wgslsmith_index_u32(4294967295u, 2u)], 35014u, Struct_1(vec3<bool>(var_0.a, var_0.a, false), var_0.e.a.x, var_0.e.c), arg_2.yzx, Struct_2(var_0.e.a.x, vec3<bool>(true, false, var_0.d.c.x), 5388i, var_0.e, Struct_1(vec3<bool>(var_0.d.b, true, true), var_0.d.b, vec3<bool>(var_0.d.b, true, var_0.d.a.x))))), 2u)], select(select(vec4<bool>(var_0.d.c.x, var_0.b.x, var_0.a, var_0.a), vec4<bool>(true, false, var_0.b.x, var_0.d.c.x), true), !vec4<bool>(false, var_0.d.c.x, var_0.a, var_0.e.b), u_input.b == 33989i)), ~vec4<i32>(-2147483647i, -var_0.c, -13498i, _wgslsmith_sub_i32(u_input.d.x, -18970i))), u_input.c, Struct_1(var_0.b, -4472i < ~(u_input.b | u_input.a.x), !var_0.e.a), ~(arg_2.yxx ^ (~vec3<u32>(arg_1.x, 1u, u_input.c) << (firstLeadingBit(arg_2.zzw) % vec3<u32>(32u)))), Struct_2(!var_0.b.x, !(!vec3<bool>(var_0.a, var_0.a, var_0.e.a.x)), max(~(var_0.c << (0u % 32u)), 0i), var_0.d, var_0.d));
    return u_input.c;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = arg_1;
    let var_1 = 21280u;
    global0 = func_4(vec3<f32>(-533f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) - -3057f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, global2.x)))), ~global1[_wgslsmith_index_u32(~(~u_input.c), 28u)], vec4<u32>(~9362u ^ (37725u & func_3(vec2<bool>(false, true), global2.zx, Struct_3(vec4<i32>(24175i, u_input.d.x, global3[_wgslsmith_index_u32(4294967295u, 23u)], arg_1.c), var_1, arg_1.e, vec3<u32>(20611u, 1u, 8874u), var_0))), _wgslsmith_add_u32(~1u, var_1) << (~u_input.c % 32u), ~select(_wgslsmith_sub_u32(var_1, u_input.c), _wgslsmith_mult_u32(var_1, var_1), arg_1.d.b), var_1));
    let var_2 = vec3<bool>(var_0.d.b, true, var_0.b.x);
    let var_3 = Struct_3(reverseBits(global4[_wgslsmith_index_u32(abs(u_input.c), 2u)]), u_input.c, var_0.e, vec3<u32>(15249u, 4294967295u, select(_wgslsmith_mult_u32(~var_1, func_4(vec3<f32>(1551f, global2.x, global2.x), global1[_wgslsmith_index_u32(u_input.c, 28u)], vec4<u32>(var_1, var_1, 0u, 0u))), ~var_1 << (12342u % 32u), all(!vec4<bool>(var_0.e.a.x, var_2.x, var_0.b.x, var_0.a)))), var_0);
    return select(var_2.zy, select(!vec2<bool>(arg_1.e.b, all(vec2<bool>(false, var_2.x))), select(var_3.e.b.xz, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_0.e.b, false)), !vec2<bool>(var_2.x, false)), vec2<bool>(true, true)), var_0.b.x);
}

fn func_1() -> bool {
    global3 = array<i32, 23>();
    var var_0 = Struct_1(vec3<bool>(any(vec2<bool>(true, false)) || true, true, false && any(vec2<bool>(true, false))), any(!func_2(-global4[_wgslsmith_index_u32(1u, 2u)], Struct_2(true, vec3<bool>(true, false, false), -11050i, Struct_1(vec3<bool>(true, false, false), true, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false), true, vec3<bool>(true, true, false))))), vec3<bool>(false, true, !any(vec3<bool>(true, true, true))));
    global2 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x * 613f)))), global2.x)));
    let var_1 = vec4<bool>(u_input.c < ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(24089u, 24171u), vec2<u32>(u_input.c, 4294967295u))), !var_0.a.x, true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1101f, global2.x)) * _wgslsmith_f_op_f32(step(global2.x, 455f))))) < -1944f);
    var_0 = Struct_1(vec3<bool>(true, true, true), !all(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.b, var_0.a.x)), vec3<bool>(!(-366f < _wgslsmith_f_op_f32(trunc(global2.x))), true && !all(var_0.c), var_0.b));
    return any(vec4<bool>(true, var_1.x, !var_0.a.x, !any(var_0.a.zy) & var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.c;
    global1 = array<vec2<u32>, 28>();
    var var_0 = firstLeadingBit(firstLeadingBit(countOneBits(u_input.c)));
    var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(~select(1109u, u_input.c, false), _wgslsmith_div_u32(45000u, ~(~u_input.c))), 0u);
    var var_1 = Struct_3(countOneBits(global4[_wgslsmith_index_u32(u_input.c, 2u)]), ~(_wgslsmith_sub_u32(~12816u, _wgslsmith_mod_u32(u_input.c, u_input.c)) << (u_input.c % 32u)), Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), true, vec3<bool>(!any(vec3<bool>(true, true, true)), true, func_1())), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, _wgslsmith_mod_u32(max(u_input.c, u_input.c), ~u_input.c), u_input.c), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 15620u, u_input.c) ^ vec3<u32>(59183u, 43729u, u_input.c), abs(vec3<u32>(u_input.c, 53594u, u_input.c))))), Struct_2(any(vec3<bool>(u_input.c < u_input.c, false, true)), select(vec3<bool>(all(vec4<bool>(true, true, false, false)), global3[_wgslsmith_index_u32(u_input.c, 23u)] <= 2147483647i, all(vec4<bool>(true, true, false, true))), vec3<bool>(any(vec2<bool>(false, false)), true, func_1()), true), 1i, Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), true, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), Struct_1(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, false, false)), true, vec3<bool>(true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, vec2<i32>(0i, -global3[_wgslsmith_index_u32(var_1.b, 23u)]));
}

