struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: f32;

var<private> global4: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(1u, 4294967295u, 41237u, 4294967295u), vec4<u32>(0u, 1u, 67446u, 1u), vec4<u32>(1u, 13277u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(9774u, 68333u, 49649u, 4294967295u), vec4<u32>(28439u, 34776u, 4294967295u, 7349u), vec4<u32>(41617u, 2452u, 4294967295u, 1u), vec4<u32>(4294967295u, 86889u, 4363u, 56626u), vec4<u32>(1u, 0u, 12859u, 93296u), vec4<u32>(10375u, 74338u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 17046u, 0u), vec4<u32>(3243u, 6077u, 23235u, 4294967295u), vec4<u32>(3252u, 32101u, 4294967295u, 24344u), vec4<u32>(0u, 0u, 26073u, 4294967295u), vec4<u32>(0u, 1u, 1u, 15362u), vec4<u32>(18303u, 1u, 8319u, 0u), vec4<u32>(0u, 0u, 27164u, 61666u), vec4<u32>(35569u, 90129u, 1u, 791u), vec4<u32>(0u, 4294967295u, 17671u, 43295u), vec4<u32>(17491u, 9124u, 1u, 104458u), vec4<u32>(1u, 1u, 44146u, 24938u), vec4<u32>(1u, 29812u, 1u, 55124u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(30553u, 48358u, 4294967295u, 85028u), vec4<u32>(1u, 36932u, 56790u, 0u), vec4<u32>(4294967295u, 43384u, 0u, 111047u), vec4<u32>(1u, 29529u, 0u, 4294967295u), vec4<u32>(0u, 29692u, 30277u, 20934u), vec4<u32>(39963u, 4294967295u, 0u, 52053u), vec4<u32>(121040u, 37090u, 14639u, 12658u), vec4<u32>(1u, 81612u, 38856u, 1u), vec4<u32>(0u, 0u, 31639u, 0u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: u32) -> bool {
    global1 = any(select(vec4<bool>(true, !global2.x, !(true & global2.x), true), !(!(!vec4<bool>(global2.x, false, false, global2.x))), vec4<bool>(global2.x, true, global2.x, (u_input.a ^ arg_2) >= ~4294967295u)));
    let var_0 = Struct_1(select(vec2<bool>(global2.x, global2.x && !global2.x), !select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec2<bool>(global2.x, global2.x))), ~firstLeadingBit(2147483647i) != _wgslsmith_clamp_i32(arg_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-50873i, u_input.b.x, -8686i), arg_1), arg_1.x)), firstLeadingBit(4294967295u), ~select(vec3<u32>(47605u, 98927u, 57727u) | (vec3<u32>(4294967295u, 1u, 6950u) ^ vec3<u32>(92506u, arg_2, arg_2)), ~arg_0, vec3<bool>(global2.x, !global2.x, !global2.x)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-391f + 1390f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1075f))))), 1665f);
    var var_2 = max(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(arg_1.x, u_input.b.x), arg_1.x >> (u_input.a % 32u))) & u_input.b.xw, vec2<i32>(u_input.b.x, ~arg_1.x) & arg_1.yz);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-562f)))))));
    return !(!global2.x);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(1u, Struct_1(select(vec2<bool>(true, global2.x), vec2<bool>(select(global2.x, true, global2.x), func_3(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), 18366u)), vec2<bool>(false, u_input.a >= 46677u)), u_input.a, ~(vec3<u32>(11450u, 13891u, 1u) & vec3<u32>(0u, u_input.a, u_input.a)) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, 4294967295u), firstTrailingBit(vec3<u32>(4294967295u, 0u, 4294967295u)))), global4[_wgslsmith_index_u32(~12187u, 32u)], (firstLeadingBit(vec3<u32>(u_input.a, 101598u, 60615u)) & max(~vec3<u32>(45698u, 15243u, 1u), ~vec3<u32>(u_input.a, 1u, u_input.a))) ^ vec3<u32>(0u, 75583u, firstTrailingBit(56389u)), u_input.b.wx);
    let var_1 = Struct_1(var_0.b.a, abs(36392u), firstTrailingBit(abs(max(vec3<u32>(var_0.c.x, 56846u, var_0.c.x), vec3<u32>(u_input.a, u_input.a, var_0.c.x))) | ~(~var_0.d)));
    global4 = array<vec4<u32>, 32>();
    global2 = var_0.b.a;
    global0 = _wgslsmith_div_u32(~(~_wgslsmith_mult_u32(firstTrailingBit(17033u), ~var_1.b)), var_0.a);
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> vec3<u32> {
    global3 = 1f;
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-181f, -166f)))));
    let var_2 = var_0.b.a;
    let var_3 = all(!select(!(!vec3<bool>(arg_2.a.x, global2.x, var_0.b.a.x)), !select(vec3<bool>(arg_2.a.x, global2.x, true), vec3<bool>(var_0.b.a.x, false, true), false), vec3<bool>(global2.x, arg_0.a.x, var_0.b.b == arg_2.c.x)));
    return _wgslsmith_sub_vec3_u32((vec3<u32>(_wgslsmith_clamp_u32(arg_0.b, var_0.a, arg_0.c.x), 22238u, 4294967295u) | vec3<u32>(~arg_2.c.x, _wgslsmith_sub_u32(u_input.a, arg_2.b), 75886u)) << (~vec3<u32>(var_0.a, ~0u, _wgslsmith_mod_u32(arg_2.b, var_0.b.c.x)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(arg_0.c | select(vec3<u32>(15656u, 24396u, u_input.a), vec3<u32>(38531u, 7132u, var_0.a), var_0.a > arg_0.c.x), ~vec3<u32>(max(29980u, 49257u), 61004u, 0u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    global4 = array<vec4<u32>, 32>();
    global4 = array<vec4<u32>, 32>();
    var var_0 = _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(-73979i, u_input.b.x, u_input.b.x), 18194i))), 1i | select(-countOneBits(u_input.b.x), i32(-1i) * -3082i, all(!arg_1.a)));
    let var_1 = vec4<bool>(arg_1.a.x, true, all(vec3<bool>(true, u_input.a == arg_0, (2207u | arg_1.c.x) == abs(1u))), true);
    global0 = 1u;
    return StorageBuffer(global4[_wgslsmith_index_u32(~arg_0, 32u)], u_input.b, vec2<u32>(1u, 24039u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -688f;
    let var_0 = 4771u;
    global4 = array<vec4<u32>, 32>();
    let x = u_input.a;
    s_output = func_4(max(u_input.a, u_input.a) ^ reverseBits(4294967295u), Struct_1(vec2<bool>(true, true), 21150u, func_1(Struct_1(vec2<bool>(true, true), select(u_input.a, u_input.a, global2.x), ~vec3<u32>(4294967295u, 4294967295u, 1u)), u_input.b.yxx, Struct_1(!vec2<bool>(global2.x, false), var_0, ~vec3<u32>(u_input.a, u_input.a, var_0)))));
}

