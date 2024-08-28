struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(1631u, 0u, 23025u, 0u, 29854u, 53895u, 0u, 1u, 104422u, 2237u, 0u, 49870u, 1u, 0u, 89520u, 4294967295u, 53480u, 0u, 36043u);

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, true), Struct_1(vec2<bool>(true, true), vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(4001u, 1u), false), vec2<bool>(false, true));

var<private> global2: Struct_1;

var<private> global3: array<i32, 24> = array<i32, 24>(i32(-2147483648), 1i, -34977i, 1i, i32(-2147483648), -20235i, i32(-2147483648), 61525i, -11418i, i32(-2147483648), i32(-2147483648), -1i, -11207i, 1i, 38673i, 2147483647i, 11557i, -39441i, i32(-2147483648), -40167i, -12353i, 0i, i32(-2147483648), -1i);

var<private> global4: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(835i, 2147483647i), vec2<i32>(71393i, -21284i), vec2<i32>(-9641i, -1i), vec2<i32>(29785i, 0i), vec2<i32>(i32(-2147483648), 24331i), vec2<i32>(-32660i, 1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(8499i, -3981i), vec2<i32>(32733i, i32(-2147483648)), vec2<i32>(2147483647i, 1798i), vec2<i32>(66040i, 10291i), vec2<i32>(3925i, -31388i), vec2<i32>(31440i, 41187i), vec2<i32>(-24604i, -14478i), vec2<i32>(-44972i, 0i), vec2<i32>(-1i, 31347i), vec2<i32>(-1i, -6193i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -2897i), vec2<i32>(-1i, 12780i), vec2<i32>(-1i, 17031i), vec2<i32>(0i, 18744i), vec2<i32>(11906i, -43268i), vec2<i32>(1i, 1i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> bool {
    var var_0 = ~(~arg_0.a.d.x);
    let var_1 = arg_1;
    var var_2 = Struct_1(vec2<bool>(global1.c.x, !(!global2.e)), global1.b.c.yx, vec3<u32>(0u, u_input.a.x, 1u), u_input.a.wx, !global1.b.e);
    let var_3 = Struct_5(_wgslsmith_add_vec3_u32(~u_input.a.yzz, countOneBits(_wgslsmith_mod_vec3_u32(~u_input.c.wyy, ~u_input.c.yxw))), true, Struct_2(var_2.a, Struct_1(select(select(vec2<bool>(global1.c.x, var_2.a.x), vec2<bool>(true, false), false), !arg_0.a.a, false | global2.e), ~(vec2<u32>(6035u, var_2.d.x) << (vec2<u32>(4500u, global2.c.x) % vec2<u32>(32u))), arg_0.a.c, max(vec2<u32>(arg_0.a.c.x, 1u), global1.b.d) & (vec2<u32>(112928u, u_input.a.x) & var_2.d), all(vec3<bool>(false, true, arg_0.a.a.x))), select(vec2<bool>(all(vec3<bool>(global1.a.x, true, true)), true), vec2<bool>(var_2.e, any(vec4<bool>(false, global2.a.x, false, global1.c.x))), vec2<bool>(global1.a.x, true))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-var_1.x), 2364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.x)))), vec4<i32>(-(i32(-1i) * -1i), u_input.b.x, 1i, global3[_wgslsmith_index_u32(reverseBits(28556u), 24u)]));
    let var_4 = _wgslsmith_div_u32(~(~(~reverseBits(59023u))), 26709u);
    return global2.a.x;
}

fn func_2() -> vec3<bool> {
    let var_0 = global1.b;
    var var_1 = !all(vec3<bool>(!any(vec3<bool>(global2.e, var_0.e, true)), false, func_3(Struct_3(Struct_1(global2.a, vec2<u32>(0u, global0[_wgslsmith_index_u32(var_0.d.x, 19u)]), global1.b.c, var_0.d, global1.b.e)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1330f, -194f, 129f) - vec3<f32>(-129f, 535f, 1426f)))));
    let var_2 = Struct_5(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 1u, 0u), global1.b.c), firstTrailingBit(vec3<u32>(25139u, global0[_wgslsmith_index_u32(global1.b.c.x, 19u)], 30215u))), ~global2.c, select(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(30086u, 19u)], u_input.a.x), u_input.c.wzz, true) | ~u_input.a.www), global1.a.x, Struct_2(!(!global1.b.a), global1.b, var_0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(1000f + 1163f), _wgslsmith_f_op_f32(-1450f * -299f), -304f, _wgslsmith_f_op_f32(max(645f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 992f, 1186f, 876f))))), vec4<i32>(1i, -1i, global3[_wgslsmith_index_u32(firstTrailingBit(10777u), 24u)], ~firstLeadingBit(_wgslsmith_div_i32(u_input.e, u_input.b.x))));
    global3 = array<i32, 24>();
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1194f)) * _wgslsmith_f_op_f32(var_2.d.x - 566f));
    return vec3<bool>(true, var_0.e, true);
}

fn func_1() -> Struct_1 {
    global4 = array<vec2<i32>, 25>();
    global3 = array<i32, 24>();
    let var_0 = _wgslsmith_div_vec3_u32(~(vec3<u32>(~global2.b.x, 80804u, ~0u) | ~_wgslsmith_clamp_vec3_u32(global2.c, vec3<u32>(51830u, 1u, 1u), global2.c)), vec3<u32>(28117u & ~_wgslsmith_mult_u32(u_input.a.x, global0[_wgslsmith_index_u32(7530u, 19u)]), 4294967295u, u_input.c.x));
    let var_1 = func_2();
    var var_2 = abs(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 24u)], u_input.e), u_input.b.wzx)) >> ((1u ^ global1.b.b.x) % 32u);
    return Struct_1(func_2().zx, ~abs(firstLeadingBit(select(u_input.c.yz, u_input.c.xw, vec2<bool>(true, true)))), u_input.a.ywz, global1.b.b, !any(select(vec3<bool>(false, global2.e, true), !vec3<bool>(false, global1.c.x, global1.b.a.x), any(global1.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 19>();
    var var_0 = Struct_2(!global1.b.a, func_1(), global2.a);
    var var_1 = true | global1.a.x;
    let var_2 = vec3<u32>(global2.d.x, countOneBits(global1.b.c.x) << (0u % 32u), ~0u);
    let var_3 = var_0.b.c.x | global1.b.c.x;
    let var_4 = Struct_3(var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b.d.x, 0u, max(abs(~firstLeadingBit(var_2.x)), ~_wgslsmith_add_u32(abs(global1.b.b.x), ~63232u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1319f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1742f), 141f)))), 883f), reverseBits(4294967295u));
}

