struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 40460u;

var<private> global1: array<u32, 4> = array<u32, 4>(69606u, 0u, 65182u, 48391u);

var<private> global2: vec3<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.b.x)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 0u), u_input.a) >> (~arg_0.c.x % 32u), arg_0.d.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(29396u, 1u), max(19078u, 61940u)), max(4294967295u ^ global1[_wgslsmith_index_u32(21548u, 4u)], abs(u_input.a.x))), vec3<f32>(global2.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, -1086f)) * _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x)))), _wgslsmith_div_vec4_u32(vec4<u32>(~25303u ^ _wgslsmith_add_u32(global1[_wgslsmith_index_u32(arg_0.c.x, 4u)], 51855u), 62637u ^ global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, arg_0.d.x, global1[_wgslsmith_index_u32(12338u, 4u)]), 4u)], arg_0.c.x, u_input.b), vec4<u32>(~(~59940u), _wgslsmith_div_u32(4294967295u, arg_0.d.x), 37527u << (u_input.a.x % 32u), 36487u)), u_input.a);
    let var_1 = arg_0.b.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * var_1) * _wgslsmith_div_f32(arg_1, var_1)))))));
    let var_3 = Struct_1((abs(vec4<u32>(arg_0.a.x, 0u, 0u, u_input.a.x)) >> (arg_0.a % vec4<u32>(32u))) | select(arg_0.c, vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x), var_0.d.x, ~119307u, var_0.a.x), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(var_0.b * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(148f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, -309f)) - -813f), _wgslsmith_f_op_f32(min(-655f, _wgslsmith_div_f32(var_2.x, var_0.b.x))))), select(arg_0.c, vec4<u32>(max(~var_0.a.x, ~arg_0.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(26800u, u_input.b, 1u), vec3<u32>(32585u, global1[_wgslsmith_index_u32(0u, 4u)], 20750u)), 0u & _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(1u, var_0.d.x, 1u, u_input.a.x)), global1[_wgslsmith_index_u32(11922u, 4u)]), false), vec3<u32>(4294967295u, _wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(80209u, 4u)] & (var_0.d.x << (arg_0.d.x % 32u)), max(1u, reverseBits(0u))), ~(3381u << ((u_input.b | u_input.b) % 32u))));
    return Struct_1(~(~(~(vec4<u32>(30334u, 0u, 1u, u_input.a.x) << (var_3.c % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_0.b)), vec3<f32>(var_0.b.x, arg_0.b.x, arg_1), false))))), vec4<u32>(0u, select(global1[_wgslsmith_index_u32(max(u_input.a.x, ~0u), 4u)], ~select(0u, arg_0.c.x, false), false), 13448u, var_3.c.x), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_0.a.x, arg_0.c.x), arg_0.d.x) ^ _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_0.a.zy, vec2<u32>(383u, 7174u)), 0u), ~(~1u) ^ _wgslsmith_add_u32(var_0.c.x | arg_0.c.x, _wgslsmith_sub_u32(9438u, 1u)), 1u));
}

fn func_1(arg_0: vec2<u32>) -> vec4<u32> {
    let var_0 = func_3(Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, 16905u, 40001u), vec4<u32>(4294967295u, 0u, 33287u, global1[_wgslsmith_index_u32(14492u, 4u)])) << (~(~vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1161f, global2.x, 1618f), vec3<f32>(523f, 592f, global2.x), true))))), vec4<u32>(arg_0.x, _wgslsmith_div_u32(reverseBits(global1[_wgslsmith_index_u32(arg_0.x, 4u)]), 102887u), arg_0.x, _wgslsmith_add_u32(min(36364u, 1u), countOneBits(36491u))), u_input.a), _wgslsmith_f_op_f32(-632f - _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(33512u, 0u, arg_0.x, global1[_wgslsmith_index_u32(20158u, 4u)]), vec3<f32>(712f, global2.x, global2.x), vec4<u32>(48236u, u_input.b, 28878u, u_input.b), vec3<u32>(arg_0.x, 31499u, arg_0.x)), Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 4u)], 4u)], global1[_wgslsmith_index_u32(1u, 4u)], 0u, arg_0.x), vec3<f32>(-1723f, 329f, global2.x), vec4<u32>(u_input.b, 51686u, global1[_wgslsmith_index_u32(arg_0.x, 4u)], u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 39922u)), Struct_1(vec4<u32>(arg_0.x, 25983u, 0u, 68779u), vec3<f32>(global2.x, 1000f, global2.x), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), u_input.a), Struct_1(vec4<u32>(32144u, 4294967295u, 19948u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23119u, 4u)], 4u)]), vec3<f32>(-1078f, -506f, -144f), vec4<u32>(global1[_wgslsmith_index_u32(16540u, 4u)], 29762u, global1[_wgslsmith_index_u32(0u, 4u)], u_input.a.x), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.x, 4u)], 4u)], 4294967295u, arg_0.x))))))))));
    global1 = array<u32, 4>();
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(1806f, 1000f, var_0.b.x), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.b, vec3<f32>(global2.x, global2.x, 1927f))) + _wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)))), var_0.b)));
    var var_1 = var_0;
    let var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(~min(reverseBits(2749u), 1u)), 4u)];
    return select(select(vec4<u32>(var_0.a.x, ~(~4294967295u), ~44174u, _wgslsmith_mult_u32(arg_0.x, 4294967295u) >> (4294967295u % 32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.d.x, var_0.d.x, u_input.a.x, 1u), vec4<u32>(38092u, 1u, 1u, global1[_wgslsmith_index_u32(arg_0.x, 4u)])), false), var_0.a, select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, false, true), var_1.b.x <= -1045f), select(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), u_input.c.x != u_input.c.x), vec4<bool>(true, true, true, true), false), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false), true), vec4<bool>(true, any(vec4<bool>(true, true, false, true)), true, true), vec4<bool>(all(vec4<bool>(true, false, true, false)), false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 0u;
    var var_0 = Struct_1(vec4<u32>(37613u, ~(~countOneBits(u_input.a.x)), ~(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(100509u, 4u)], 11690u)), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 4u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * 956f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1097f, -211f, global2.x)))), vec3<f32>(_wgslsmith_f_op_f32(567f + 1f), _wgslsmith_f_op_f32(step(global2.x, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f)))), func_1((~u_input.a.xx >> (_wgslsmith_mod_vec2_u32(u_input.a.xy, u_input.a.zz) % vec2<u32>(32u))) ^ min(reverseBits(vec2<u32>(39536u, 48752u)), ~u_input.a.zy)), vec3<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 4u)], 4u)], ~4870u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 34196u, u_input.b) >> (vec3<u32>(1u, 52903u, u_input.b) % vec3<u32>(32u)), u_input.a & u_input.a), u_input.a.x) << (u_input.a % vec3<u32>(32u)));
    global2 = vec3<f32>(1f, var_0.b.x, -1454f);
    global2 = var_0.b;
    let var_1 = func_3(Struct_1(var_0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, -323f, global2.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 798f, global2.x)))), var_0.c, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b >> (63894u % 32u), abs(u_input.b), reverseBits(31482u)), u_input.a)), var_0.b.x);
    let var_2 = Struct_1(vec4<u32>(~65920u, abs(_wgslsmith_mult_u32(func_1(vec2<u32>(12295u, 56140u)).x, ~7385u)), ~_wgslsmith_dot_vec3_u32(func_1(vec2<u32>(var_1.c.x, 30727u)).yxz, select(var_0.a.wzx, u_input.a, vec3<bool>(false, true, true))), var_0.d.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-102f + -668f)), -281f, global2.x)), _wgslsmith_add_vec4_u32(var_1.a, _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(u_input.a.x, u_input.b, 46336u, 4294967295u), vec4<u32>(9553u, 60536u, u_input.a.x, 5123u)) >> (func_1(vec2<u32>(u_input.b, var_1.d.x)) % vec4<u32>(32u)), max(firstTrailingBit(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(var_1.d.x, 4u)], 8362u, 29904u)), firstTrailingBit(vec4<u32>(25692u, u_input.a.x, 63685u, var_1.c.x))))), vec3<u32>(0u, 4294967295u, 1u));
    global1 = array<u32, 4>();
    let var_3 = -24022i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(var_1.d.x, var_0.c.x)), _wgslsmith_div_f32(960f, -394f), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~u_input.a.yz, reverseBits(var_2.c.wx), var_0.a.wy), abs(vec2<u32>(u_input.b, var_2.a.x)) & ~vec2<u32>(var_1.c.x, 4294967295u), u_input.a.xy | vec2<u32>(var_1.a.x, 0u)), firstLeadingBit(func_3(var_1, 1000f).a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1309f)), _wgslsmith_f_op_f32(-var_2.b.x)) + var_1.b.x), func_3(Struct_1(_wgslsmith_mod_vec4_u32(var_1.c, vec4<u32>(var_0.d.x, var_1.a.x, u_input.a.x, 1u)), vec3<f32>(1000f, -945f, var_2.b.x), var_0.a, var_1.c.zww ^ vec3<u32>(global1[_wgslsmith_index_u32(52153u, 4u)], var_2.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), var_0.b.x).b.x));
}

