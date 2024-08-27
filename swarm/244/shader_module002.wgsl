struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(vec4<bool>(true, false, false, false), Struct_1(15541u, -408f, vec4<bool>(false, true, true, true), false, vec4<f32>(-1469f, 139f, -477f, 637f))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(42323u, -568f, vec4<bool>(true, false, true, true), true, vec4<f32>(209f, 2174f, 1627f, -1844f))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(4294967295u, -759f, vec4<bool>(false, true, true, false), false, vec4<f32>(-1046f, 1954f, -927f, 996f))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(1u, 1000f, vec4<bool>(true, false, false, false), false, vec4<f32>(-2478f, 329f, 1600f, 536f))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(4294967295u, -712f, vec4<bool>(true, true, false, true), false, vec4<f32>(604f, 1000f, -281f, -1397f))), Struct_2(vec4<bool>(true, false, false, false), Struct_1(4294967295u, 280f, vec4<bool>(false, true, false, true), false, vec4<f32>(-1118f, 1000f, -135f, 1570f))), Struct_2(vec4<bool>(true, false, true, false), Struct_1(4294967295u, 1052f, vec4<bool>(false, true, true, false), false, vec4<f32>(-2370f, -568f, -1147f, 1000f))), Struct_2(vec4<bool>(false, false, false, true), Struct_1(68888u, -973f, vec4<bool>(false, false, false, false), false, vec4<f32>(1000f, 774f, -638f, 1000f))), Struct_2(vec4<bool>(true, false, false, true), Struct_1(32485u, -1669f, vec4<bool>(false, false, true, true), true, vec4<f32>(994f, 124f, 1000f, -2932f))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(4819u, 2146f, vec4<bool>(true, true, true, true), true, vec4<f32>(-130f, -1752f, -474f, -1963f))));

var<private> global2: Struct_1;

var<private> global3: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-1694f, 2558f, -118f, -316f), vec4<f32>(1000f, 1513f, 1187f, -1384f), vec4<f32>(260f, -1564f, 426f, -317f), vec4<f32>(423f, 532f, -1000f, -2450f), vec4<f32>(2140f, 260f, -196f, -720f));

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> f32 {
    let var_0 = arg_0.b.b;
    global0 = array<bool, 12>();
    var var_1 = ~vec3<u32>(arg_0.b.b.a, var_0.a, ~(4294967295u | arg_1)) << ((select(_wgslsmith_sub_vec3_u32(~vec3<u32>(20995u, global2.a, arg_1), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 32997u, global4.a), vec3<u32>(arg_0.b.b.a, 28418u, 4294967295u))), select(~vec3<u32>(global2.a, 0u, global4.a), reverseBits(vec3<u32>(17497u, 0u, arg_0.b.b.a)), true), !select(global2.c.yzw, arg_0.c, true)) | vec3<u32>(_wgslsmith_add_u32(0u, global2.a), arg_0.b.b.a, 1u)) % vec3<u32>(32u));
    var_1 = abs(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2.a, global2.a, 4294967295u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(49262u, arg_1, var_1.x), vec3<u32>(arg_0.b.b.a, global4.a, 41557u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 3389u), vec3<u32>(24967u, var_1.x, var_1.x)) | vec3<u32>(arg_0.b.b.a, arg_1, 32125u), select(vec3<u32>(67920u, arg_0.b.b.a, var_1.x), vec3<u32>(arg_1, arg_1, global2.a), arg_0.c.x) & abs(vec3<u32>(global4.a, 1u, global2.a))), ~_wgslsmith_mult_vec3_u32(min(vec3<u32>(var_1.x, 14785u, 4294967295u), vec3<u32>(26691u, 60162u, arg_1)), abs(vec3<u32>(var_1.x, 4294967295u, global2.a)))));
    let var_2 = !select(true, var_0.c.x | arg_0.b.b.d, true);
    return arg_0.b.b.e.x;
}

fn func_2() -> bool {
    var var_0 = Struct_2(select(!(!select(vec4<bool>(true, global2.c.x, global0[_wgslsmith_index_u32(global2.a, 12u)], false), vec4<bool>(global4.c.x, global2.c.x, global2.c.x, true), global2.c)), select(vec4<bool>(global4.d || global2.c.x, any(global2.c.zy), global2.c.x, true), vec4<bool>(!global2.c.x, false || global4.d, global4.d & false, false), true), true | global4.d), Struct_1(~_wgslsmith_add_u32(_wgslsmith_add_u32(21788u, global4.a), global4.a), _wgslsmith_f_op_f32(func_3(Struct_4(-u_input.a.x, global1[_wgslsmith_index_u32(64544u, 10u)], !global4.c.zxw), 4294967295u)), select(select(!global2.c, select(global4.c, vec4<bool>(false, global2.d, global0[_wgslsmith_index_u32(15212u, 12u)], global4.d), global2.c), global2.d), vec4<bool>(global4.c.x, false == global0[_wgslsmith_index_u32(1u, 12u)], true, global2.d), !(global4.a < 14171u)), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b, _wgslsmith_f_op_f32(func_3(Struct_4(-1i, Struct_2(vec4<bool>(global4.c.x, global2.d, global4.d, true), Struct_1(54595u, 253f, vec4<bool>(global2.c.x, true, global0[_wgslsmith_index_u32(global2.a, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), global4.d, global4.e)), vec3<bool>(false, global0[_wgslsmith_index_u32(global4.a, 12u)], global4.c.x)), global2.a)), -509f, _wgslsmith_f_op_f32(f32(-1f) * -1289f)))));
    var var_1 = !select(select(var_0.a, select(vec4<bool>(global4.d, var_0.a.x, true, global0[_wgslsmith_index_u32(47589u, 12u)]), vec4<bool>(var_0.a.x, false, global0[_wgslsmith_index_u32(global4.a, 12u)], false), !global0[_wgslsmith_index_u32(35300u, 12u)]), vec4<bool>(global2.c.x, true, true, true)), vec4<bool>(global4.d, false, true, _wgslsmith_add_u32(4294967295u, 0u) >= firstTrailingBit(0u)), var_0.a);
    global0 = array<bool, 12>();
    global1 = array<Struct_2, 10>();
    var var_2 = select(!vec3<bool>(!all(vec3<bool>(false, true, true)), all(vec3<bool>(true, false, var_1.x)), any(!vec2<bool>(false, var_0.b.d))), vec3<bool>(global4.e.x == _wgslsmith_f_op_f32(-1f), global4.d, true), false);
    return var_0.b.a < 1u;
}

fn func_1() -> bool {
    global0 = array<bool, 12>();
    global3 = array<vec4<f32>, 5>();
    global1 = array<Struct_2, 10>();
    var var_0 = Struct_1(~reverseBits(_wgslsmith_mult_u32(firstTrailingBit(76071u), global2.a)), 591f, vec4<bool>(!select(all(vec2<bool>(false, true)), !global0[_wgslsmith_index_u32(23862u, 12u)], true), func_2(), !(true != any(global4.c.zy)), select(true, true & all(vec3<bool>(global4.c.x, global2.c.x, global4.c.x)), !(!global0[_wgslsmith_index_u32(global4.a, 12u)]))), false, global2.e);
    var var_1 = Struct_3(vec4<bool>(_wgslsmith_div_f32(var_0.e.x, -1522f) > _wgslsmith_f_op_f32(-var_0.e.x), true, (u_input.a.x >= countOneBits(u_input.a.x)) && !(!global2.c.x), !global2.d), global1[_wgslsmith_index_u32(~(~global4.a), 10u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.b, global4.e.x, var_0.b), vec3<f32>(-981f, var_0.e.x, 1934f))))), vec3<f32>(-351f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.e.x, 287f) + _wgslsmith_f_op_f32(abs(global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(185f)) * _wgslsmith_f_op_f32(var_0.b * global2.e.x)))), global4.e, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global4.a, global4.a, 1u), 10u)]);
    return 1u != global4.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> StorageBuffer {
    var var_0 = reverseBits(4294967295u);
    var var_1 = ~(~select(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.a, 25851u, arg_0.b.a), vec3<u32>(arg_0.b.a, global2.a, 110824u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global4.a, global2.a, 9268u) & vec3<u32>(global4.a, 4294967295u, 113009u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.a, global2.a, 32981u), vec3<u32>(54629u, 4294967295u, global2.a))), select(!vec3<bool>(arg_1, true, true), select(global2.c.ywz, vec3<bool>(true, global2.c.x, false), vec3<bool>(true, arg_1, arg_1)), all(vec4<bool>(arg_1, false, arg_0.b.c.x, global0[_wgslsmith_index_u32(arg_0.b.a, 12u)])))));
    let var_2 = Struct_3(!vec4<bool>(!func_1(), true, any(arg_0.a.wz), arg_0.b.c.x), Struct_2(global2.c, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 24578u, var_1.x, 20252u), vec4<u32>(0u, var_1.x, var_1.x, arg_0.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -1255f), select(global2.c, arg_0.b.c, true), any(select(global2.c.zzw, global4.c.xyw, vec3<bool>(true, false, false))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_div_f32(-360f, global2.e.x), global4.b, _wgslsmith_f_op_f32(sign(1191f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.b, global2.b, arg_0.b.e.x))))), _wgslsmith_f_op_vec4_f32(global2.e + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b.e * vec4<f32>(global2.e.x, global4.e.x, 908f, 795f)) * vec4<f32>(-497f, -490f, arg_0.b.e.x, -2510f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.e.x, global4.e.x, -1308f, global2.e.x) * vec4<f32>(-169f, global2.b, -1000f, 614f)), vec4<f32>(876f, -1000f, arg_0.b.e.x, global2.e.x)))), global1[_wgslsmith_index_u32(abs(~global4.a), 10u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(661f, global4.e.x)), _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(1358f - global2.b)));
    global4 = var_2.e.b;
    return StorageBuffer(reverseBits(vec4<i32>(select(u_input.a.x, select(u_input.a.x, u_input.a.x, true), true), ~(-u_input.a.x), 6759i, -20681i)), var_2.b.b.a, global2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global3[_wgslsmith_index_u32(global2.a, 5u)], _wgslsmith_div_vec4_f32(global2.e, var_2.e.b.e), false)), var_2.d) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f + 207f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -295f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-692f)))), _wgslsmith_f_op_f32(min(global4.b, _wgslsmith_f_op_f32(-global4.e.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 5>();
    var var_0 = 0u & ~_wgslsmith_sub_u32(global4.a, global2.a);
    let x = u_input.a;
    s_output = func_4(global1[_wgslsmith_index_u32(global2.a, 10u)], any(vec4<bool>(select(true, func_1(), global0[_wgslsmith_index_u32(countOneBits(0u), 12u)]), false, global4.d, true)));
}

