struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: i32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(191f);

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> vec4<u32> {
    var var_0 = ~1u;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(9591u, 1u)], arg_1.d.a.x)), _wgslsmith_f_op_f32(arg_1.d.a.x - arg_1.d.a.x))))), 1569u, reverseBits(~u_input.d.x), reverseBits(~(-vec4<i32>(arg_1.d.c, arg_2, u_input.c.x, arg_2)) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.d.b, 0u, 100423u, arg_1.e.x), ~vec4<u32>(0u, 1u, arg_1.e.x, u_input.a)) % vec4<u32>(32u))), _wgslsmith_mult_i32(firstTrailingBit(arg_0), ~arg_2 | 0i) | min(u_input.c.x, 5409i));
    var var_2 = select(~abs(_wgslsmith_div_u32(1414u, 1u)), ~abs(u_input.a), true);
    var var_3 = countOneBits((~(~var_1.e) >> (~15571u % 32u)) >> (arg_1.d.b % 32u));
    var var_4 = countOneBits(~arg_1.d.d.xxz);
    return ~(~vec4<u32>(var_1.b, ~16157u, u_input.e, min(arg_1.e.x, arg_1.d.b)) << (vec4<u32>(u_input.a, ~arg_1.e.x, ~(~var_1.b), firstLeadingBit(~var_1.b)) % vec4<u32>(32u)));
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<bool> {
    global1 = arg_0.a;
    global0 = array<f32, 1>();
    let var_0 = min(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, arg_2.b, 41759u, arg_2.b) ^ vec4<u32>(u_input.e, u_input.e, u_input.a, 1103u), vec4<u32>(arg_2.b, 0u, arg_2.b, arg_0.a))), ~(~countOneBits(vec4<u32>(arg_0.a, arg_0.a, u_input.e, u_input.a)))) & (~func_3(arg_0.c, Struct_2(vec4<bool>(arg_1.x, arg_0.d, arg_1.x, true), arg_0.e, vec3<bool>(true, arg_0.d, arg_1.x), Struct_1(vec2<f32>(-268f, 2269f), 1u, arg_2.c, arg_2.d, -44946i), vec2<u32>(arg_2.b, 35854u)), -10308i) << (abs(func_3(-arg_0.c, Struct_2(vec4<bool>(true, arg_1.x, false, arg_0.d), arg_0.d, vec3<bool>(false, false, false), arg_2, vec2<u32>(arg_2.b, 1u)), _wgslsmith_mult_i32(55492i, arg_0.c))) % vec4<u32>(32u)));
    let var_1 = Struct_2(select(select(!vec4<bool>(arg_0.e, arg_1.x, arg_1.x, arg_1.x), select(!vec4<bool>(arg_0.e, arg_0.e, arg_1.x, arg_0.d), select(vec4<bool>(true, arg_1.x, arg_0.e, arg_1.x), vec4<bool>(arg_0.e, false, arg_1.x, false), true), vec4<bool>(arg_0.d, true, true, true)), select(!vec4<bool>(false, false, false, arg_0.d), select(vec4<bool>(arg_0.d, false, arg_0.e, arg_1.x), vec4<bool>(true, false, arg_1.x, false), vec4<bool>(false, arg_0.e, false, true)), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, !arg_0.e, all(vec2<bool>(arg_0.e, false)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, arg_0.e, false), vec4<bool>(arg_0.e, false, true, true), arg_1.x), vec4<bool>(arg_1.x, false, false, arg_1.x)), arg_0.a < ~8902u), arg_1.x), select(func_3(arg_0.c, Struct_2(vec4<bool>(true, true, arg_1.x, true), true, vec3<bool>(arg_1.x, true, arg_0.e), Struct_1(vec2<f32>(-2710f, arg_0.b), 0u, arg_0.c, arg_2.d, arg_2.c), var_0.zz), _wgslsmith_clamp_i32(-74288i, 12945i, u_input.d.x)).x != abs(120318u), true, arg_1.x), !(!(!(!vec3<bool>(false, true, arg_1.x)))), arg_2, ~countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.yxy, var_0.zzz), firstTrailingBit(u_input.a))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-var_1.d.a);
    return select(vec4<bool>(!all(var_1.a.yww), !arg_0.d || true, arg_0.e, select(u_input.d.x | 7755i, -19877i, false | arg_0.e) < 70723i), select(vec4<bool>(!var_1.a.x || all(vec2<bool>(true, true)), _wgslsmith_dot_vec3_i32(arg_2.d.zyw, vec3<i32>(17362i, 2147483647i, var_1.d.d.x)) <= arg_0.c, var_1.c.x, var_1.a.x), !select(!var_1.a, vec4<bool>(arg_0.d, true, false, var_1.a.x), false && var_1.b), !(!any(vec3<bool>(false, arg_1.x, arg_0.e)))), select(vec4<bool>(true, -arg_0.c > -arg_2.e, arg_0.d, true), var_1.a, vec4<bool>(!arg_0.d, any(select(vec3<bool>(arg_1.x, arg_0.e, arg_0.e), vec3<bool>(true, arg_1.x, true), vec3<bool>(var_1.b, false, var_1.c.x))), var_1.b, true)));
}

fn func_1(arg_0: vec2<i32>) -> vec2<u32> {
    global0 = array<f32, 1>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-358f)) * global0[_wgslsmith_index_u32(u_input.e, 1u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 1u)]), -493f));
    var var_1 = Struct_4(Struct_3(Struct_2(!func_2(Struct_5(u_input.e, -360f, -2147483647i, false, true), vec2<bool>(false, true), Struct_1(var_0.zz, 29449u, 1i, vec4<i32>(32847i, arg_0.x, 8553i, u_input.b.x), arg_0.x)), all(vec4<bool>(true, false, false, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.zx, vec2<f32>(-366f, global0[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<bool>(true, true))), u_input.e, 27448i, -vec4<i32>(0i, u_input.b.x, -2147483647i, -5925i), arg_0.x), ~func_3(10975i, Struct_2(vec4<bool>(true, true, false, false), false, vec3<bool>(false, true, false), Struct_1(vec2<f32>(var_0.x, var_0.x), u_input.a, 73573i, vec4<i32>(-1i, arg_0.x, u_input.d.x, 19076i), arg_0.x), vec2<u32>(u_input.e, 4294967295u)), arg_0.x).wz), Struct_2(func_2(Struct_5(u_input.a, global0[_wgslsmith_index_u32(u_input.e, 1u)], 2147483647i, true, true), vec2<bool>(true, true), Struct_1(var_0.zz, 1u, arg_0.x, vec4<i32>(u_input.d.x, arg_0.x, u_input.b.x, 54886i), -2147483647i)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), func_2(Struct_5(0u, global0[_wgslsmith_index_u32(u_input.a, 1u)], u_input.d.x, true, false), vec2<bool>(true, true), Struct_1(var_0.yx, u_input.e, -2147483647i, vec4<i32>(u_input.c.x, -24308i, -51645i, 0i), 28708i)).xyy, Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.yx), 1u << (1u % 32u), u_input.d.x, countOneBits(vec4<i32>(arg_0.x, u_input.b.x, -1i, 10923i)), i32(-1i) * -1560i), firstTrailingBit(vec2<u32>(u_input.e, 23848u)) << ((vec2<u32>(4294967295u, u_input.e) | vec2<u32>(26029u, u_input.a)) % vec2<u32>(32u))), firstTrailingBit(50619u), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.x, 430f))), _wgslsmith_mult_u32(countOneBits(0u), ~u_input.a), i32(-1i) * -5050i, ~firstTrailingBit(vec4<i32>(15261i, arg_0.x, 0i, u_input.c.x)), 1i), false), u_input.e);
    global1 = _wgslsmith_mult_u32(u_input.e, _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a | 19595u), reverseBits(26303u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_1.a.c, var_1.a.b.d.b, var_1.b), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.b, 4193u, 4294967295u), vec4<u32>(var_1.b, u_input.a, u_input.a, 1u))), ~(~3550u)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(25741u, u_input.e, 1u, var_1.a.b.d.b)), max(vec4<u32>(u_input.a, 4294967295u, 70751u, var_1.b), vec4<u32>(53213u, 4294967295u, var_1.b, 10081u))) << (vec4<u32>(firstLeadingBit(var_1.b), ~var_1.a.a.e.x, max(u_input.a, 75536u), var_1.a.a.d.b) % vec4<u32>(32u))));
    let var_2 = Struct_4(var_1.a, ~var_1.b);
    return ~vec2<u32>(_wgslsmith_mult_u32(var_1.b, var_1.a.d.b), u_input.e);
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> StorageBuffer {
    global1 = ~u_input.e | ~(~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 1u, u_input.e, u_input.e)), vec4<u32>(31993u, u_input.e, 40866u, 60855u)));
    var var_0 = true;
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(0u, u_input.a, any(func_2(Struct_5(70282u, 950f, arg_1, false, false), vec2<bool>(true, true), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.e, 1u)], -834f), 4294967295u, 1i, vec4<i32>(-78435i, 48935i, arg_1, 0i), 1i)))), u_input.e), 1u)];
    var var_2 = 0i;
    var var_3 = firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, 0u, 41570u, max(64214u ^ u_input.e, max(u_input.e, u_input.e))), (~vec4<u32>(4294967295u, 1u, 0u, 1u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 81716u, 64856u, 34924u), vec4<u32>(u_input.a, u_input.a, 0u, u_input.e)) % vec4<u32>(32u))) >> (~func_3(0i, Struct_2(vec4<bool>(false, true, false, false), true, vec3<bool>(false, false, false), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.e, 1u)], 135f), u_input.a, arg_0.x, vec4<i32>(0i, u_input.d.x, arg_0.x, arg_1), u_input.b.x), vec2<u32>(40930u, u_input.e)), -2147483647i) % vec4<u32>(32u))));
    return StorageBuffer(~abs(39599u & (u_input.e ^ var_3.x)), 3387i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(~(~(-u_input.d.yx)) >> (min(select(func_1(vec2<i32>(u_input.d.x, u_input.c.x)), ~vec2<u32>(u_input.e, 0u), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), ~(~vec2<u32>(u_input.e, u_input.a))) % vec2<u32>(32u)), abs(u_input.c.x));
}

