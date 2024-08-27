struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(false, vec2<u32>(54770u, 1u), vec2<u32>(1u, 1u), Struct_1(true), Struct_1(true)), Struct_2(true, vec2<u32>(1u, 4981u), vec2<u32>(13472u, 4294967295u), Struct_1(true), Struct_1(false)), Struct_2(true, vec2<u32>(78495u, 54439u), vec2<u32>(60007u, 1u), Struct_1(false), Struct_1(false)), Struct_2(false, vec2<u32>(44621u, 4294967295u), vec2<u32>(13035u, 15137u), Struct_1(false), Struct_1(true)), Struct_2(false, vec2<u32>(85525u, 5155u), vec2<u32>(4294967295u, 1u), Struct_1(true), Struct_1(true)), Struct_2(false, vec2<u32>(105881u, 74202u), vec2<u32>(10370u, 86110u), Struct_1(false), Struct_1(true)), Struct_2(true, vec2<u32>(140219u, 4294967295u), vec2<u32>(31204u, 1u), Struct_1(false), Struct_1(false)), Struct_2(true, vec2<u32>(1u, 1u), vec2<u32>(74894u, 1u), Struct_1(false), Struct_1(true)), Struct_2(true, vec2<u32>(18022u, 0u), vec2<u32>(1u, 0u), Struct_1(true), Struct_1(true)), Struct_2(true, vec2<u32>(0u, 14187u), vec2<u32>(0u, 4294967295u), Struct_1(false), Struct_1(true)), Struct_2(false, vec2<u32>(0u, 0u), vec2<u32>(53499u, 0u), Struct_1(true), Struct_1(false)), Struct_2(true, vec2<u32>(36536u, 4294967295u), vec2<u32>(6626u, 4294967295u), Struct_1(true), Struct_1(true)), Struct_2(true, vec2<u32>(0u, 2198u), vec2<u32>(0u, 14838u), Struct_1(true), Struct_1(true)), Struct_2(false, vec2<u32>(1u, 1u), vec2<u32>(61125u, 88306u), Struct_1(true), Struct_1(false)), Struct_2(false, vec2<u32>(67160u, 33911u), vec2<u32>(4294967295u, 4294967295u), Struct_1(false), Struct_1(false)), Struct_2(true, vec2<u32>(47617u, 4294967295u), vec2<u32>(8059u, 0u), Struct_1(false), Struct_1(false)), Struct_2(true, vec2<u32>(4294967295u, 1u), vec2<u32>(45332u, 19664u), Struct_1(true), Struct_1(true)), Struct_2(false, vec2<u32>(0u, 0u), vec2<u32>(20592u, 0u), Struct_1(false), Struct_1(true)), Struct_2(true, vec2<u32>(0u, 1u), vec2<u32>(0u, 75527u), Struct_1(false), Struct_1(true)), Struct_2(false, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, 1u), Struct_1(false), Struct_1(true)), Struct_2(false, vec2<u32>(33970u, 48279u), vec2<u32>(23408u, 4294967295u), Struct_1(false), Struct_1(false)), Struct_2(false, vec2<u32>(4294967295u, 70887u), vec2<u32>(24597u, 0u), Struct_1(false), Struct_1(true)), Struct_2(false, vec2<u32>(28778u, 0u), vec2<u32>(4294967295u, 35498u), Struct_1(true), Struct_1(false)), Struct_2(true, vec2<u32>(6175u, 0u), vec2<u32>(72102u, 1u), Struct_1(true), Struct_1(false)), Struct_2(false, vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u), Struct_1(true), Struct_1(false)), Struct_2(true, vec2<u32>(93572u, 0u), vec2<u32>(0u, 0u), Struct_1(true), Struct_1(true)), Struct_2(true, vec2<u32>(21189u, 4294967295u), vec2<u32>(1u, 12321u), Struct_1(true), Struct_1(true)));

var<private> global2: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<u32>) -> vec4<i32> {
    global1 = array<Struct_2, 27>();
    let var_0 = ~(-vec2<i32>(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(-52397i, -1i, -57532i)), vec3<i32>(-8253i, -24040i, 1i)), -_wgslsmith_clamp_i32(-14808i, -23561i, -31340i)));
    global1 = array<Struct_2, 27>();
    global2 = all(vec3<bool>(true, true, true));
    let var_1 = !select(select(vec3<bool>(-2147483647i >= var_0.x, false, 28451i < var_0.x), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), select(vec3<bool>(true, false, any(vec2<bool>(false, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), true), true);
    return vec4<i32>(firstTrailingBit(var_0.x), ~(-1i), -2147483647i, var_0.x) | _wgslsmith_sub_vec4_i32(vec4<i32>(-4389i, var_0.x, ~(~2147483647i), ~(-4669i)), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, -1i, var_0.x, -2147483647i), vec4<i32>(var_0.x, var_0.x, var_0.x, -2147483647i)), i32(-1i) * -1i), 30926i, var_0.x, firstLeadingBit(68156i)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> i32 {
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    global0 = array<Struct_2, 5>();
    global1 = array<Struct_2, 27>();
    var var_0 = reverseBits(abs(~vec4<u32>(u_input.a.x & u_input.a.x, arg_0.b.x, ~76137u, max(arg_0.c.x, arg_0.b.x))));
    return reverseBits(0i);
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<i32>(_wgslsmith_mult_i32(-82010i, func_4(global0[_wgslsmith_index_u32(38084u, 5u)], Struct_3(Struct_1(false), func_3(vec3<f32>(-1663f, -845f, -708f), 642f, vec4<u32>(19190u, u_input.a.x, u_input.a.x, 4294967295u)), 1i, Struct_1(false), vec2<bool>(true, true)), Struct_1(true), false)), 0i << (abs(u_input.a.x) % 32u), abs(29396i));
    var_0 = firstTrailingBit(min(vec3<i32>(~462i, var_0.x, -(~0i)), -countOneBits(select(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(1i, -1i, var_0.x), true))));
    var var_1 = !select(vec2<bool>(true, true), vec2<bool>(true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true)))), vec2<bool>(true, true));
    return Struct_2(var_1.x, _wgslsmith_mod_vec2_u32(~vec2<u32>(select(1u, 1u, var_1.x), 1u), u_input.a.xy), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a.zx, countOneBits(u_input.a.zy)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x), select(vec2<u32>(31281u, 2243u), u_input.a.xx, var_1.x)) | (~vec2<u32>(u_input.a.x, 45421u) ^ (u_input.a.yx << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)))), vec2<u32>(_wgslsmith_dot_vec4_u32(~u_input.a, u_input.a), firstLeadingBit(u_input.a.x) | firstLeadingBit(4092u))), Struct_1(var_1.x), Struct_1(true));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_1 {
    let var_0 = u_input.a.zzx;
    let var_1 = func_2();
    let var_2 = 4294967295u;
    global2 = true;
    global0 = array<Struct_2, 5>();
    return Struct_1(any(arg_2.e));
}

fn func_1() -> Struct_1 {
    var var_0 = 1i;
    var var_1 = Struct_2(false, min(u_input.a.zy, vec2<u32>(1u, 1u)) & select(vec2<u32>(~30589u, firstTrailingBit(u_input.a.x)), ~vec2<u32>(62866u, u_input.a.x) & vec2<u32>(u_input.a.x, u_input.a.x), false), select(~vec2<u32>(39797u, u_input.a.x), min(~vec2<u32>(54134u, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)), all(vec3<bool>(true, true, true))) ^ vec2<u32>(~u_input.a.x ^ u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), u_input.a.x, 5545u)), func_5(2412i, func_2(), Struct_3(Struct_1(any(vec3<bool>(false, true, true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -23764i, -2147483647i, 14786i), -vec4<i32>(-24529i, 2147483647i, 14356i, 8172i), vec4<i32>(0i, 0i, 0i, 17506i)), 20404i, Struct_1(select(false, false, false)), vec2<bool>(true, true))), Struct_1(select(true, any(vec3<bool>(true, true, true)), true)));
    var var_2 = 0u ^ _wgslsmith_dot_vec2_u32(~reverseBits(~u_input.a.zx), ~func_2().b);
    var_2 = var_1.c.x;
    let var_3 = vec2<i32>(~(firstTrailingBit(16352i) ^ (-1i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(-4045i, 0i), vec2<i32>(-33853i, 57313i)))), -(~(-2147483647i)));
    return Struct_1(true);
}

fn func_6(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(false, u_input.a.yw, ~vec2<u32>(firstTrailingBit(16326u) | ~1u, 0u), Struct_1(any(select(vec2<bool>(false, false), vec2<bool>(true, true), !vec2<bool>(arg_0.d.a, true)))), arg_0.d);
    global1 = array<Struct_2, 27>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    let var_1 = vec2<bool>(false, true);
    return vec2<bool>(!(64820u <= u_input.a.x), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-907f * -432f))))), -1752f);
    global2 = false;
    global1 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(6159i, _wgslsmith_sub_i32(0i, 54188i))));
    global0 = array<Struct_2, 5>();
    var var_2 = global1[_wgslsmith_index_u32(47676u, 27u)];
    let var_3 = select(func_6(Struct_2(false, ~vec2<u32>(0u, u_input.a.x), ~vec2<u32>(1u, 1u), Struct_1(!var_2.e.a), func_1())), vec2<bool>(func_5(-2495i, func_2(), Struct_3(func_5(63959i, Struct_2(false, var_2.c, vec2<u32>(0u, 98375u), var_2.e, Struct_1(var_2.e.a)), Struct_3(Struct_1(var_2.d.a), vec4<i32>(var_1, var_1, var_1, 2147483647i), var_1, Struct_1(var_2.a), vec2<bool>(var_2.e.a, false))), vec4<i32>(var_1, var_1, var_1, 1i), 2147483647i, Struct_1(true), vec2<bool>(var_2.a, true))).a, func_5(-var_1, func_2(), Struct_3(var_2.d, vec4<i32>(var_1, 1i, var_1, -1i) << (u_input.a % vec4<u32>(32u)), var_1, var_2.d, vec2<bool>(var_2.a, true))).a), false);
    var var_4 = func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.x)))), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(872f, -1021f, var_0.x), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1367f, var_0.x))))), select(select(vec3<bool>(false, var_2.a, false), vec3<bool>(var_3.x, true, var_2.a), var_3.x), !(!vec3<bool>(var_3.x, true, false)), select(vec3<bool>(var_2.e.a, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))), var_0.x, max(vec4<u32>(select(4294967295u, var_2.c.x, var_3.x), abs(1u), var_2.b.x, ~(~u_input.a.x)), ~select(u_input.a, u_input.a, !vec4<bool>(false, var_2.d.a, var_2.e.a, false)))).yzz;
    var var_5 = ~var_4.zy;
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a, vec4<u32>(4294967295u, abs(1u), min(1u << (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(12648u, u_input.a.x, u_input.a.x, var_2.b.x), vec4<u32>(u_input.a.x, var_2.b.x, u_input.a.x, u_input.a.x))), reverseBits(var_2.b.x)), select(!vec4<bool>(var_2.d.a, var_3.x, var_3.x, true), select(select(vec4<bool>(false, false, var_2.e.a, var_2.e.a), vec4<bool>(true, var_2.a, var_2.a, var_3.x), vec4<bool>(false, false, false, false)), !vec4<bool>(false, true, var_2.e.a, var_3.x), var_3.x), func_6(func_2()).x)), max(vec3<i32>(25972i, ~min(1i, 30160i), -reverseBits(var_1)), vec3<i32>(_wgslsmith_mod_i32(var_5.x | -157i, var_5.x | var_4.x), abs(_wgslsmith_mult_i32(var_1, var_4.x)), var_4.x)));
}

