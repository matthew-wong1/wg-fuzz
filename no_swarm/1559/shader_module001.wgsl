struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-435f, -1302f);

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec3<i32>(-1i, -5679i, -39737i), 1u, Struct_1(409f, vec2<u32>(1u, 26821u)), Struct_1(-922f, vec2<u32>(31914u, 47256u))), Struct_2(vec3<i32>(i32(-2147483648), 19839i, 12715i), 38303u, Struct_1(1070f, vec2<u32>(1u, 16168u)), Struct_1(519f, vec2<u32>(29547u, 62868u))), Struct_2(vec3<i32>(-11009i, i32(-2147483648), 2147483647i), 1u, Struct_1(-591f, vec2<u32>(0u, 2591u)), Struct_1(-916f, vec2<u32>(12734u, 11888u))), Struct_2(vec3<i32>(0i, -7901i, 0i), 19284u, Struct_1(1072f, vec2<u32>(0u, 10057u)), Struct_1(1094f, vec2<u32>(1u, 1u))), Struct_2(vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), 42631u, Struct_1(-2086f, vec2<u32>(41332u, 1u)), Struct_1(-329f, vec2<u32>(992u, 44691u))), Struct_2(vec3<i32>(1i, 2147483647i, 27640i), 8536u, Struct_1(990f, vec2<u32>(0u, 1u)), Struct_1(-167f, vec2<u32>(53927u, 4294967295u))), Struct_2(vec3<i32>(46531i, 3382i, i32(-2147483648)), 1u, Struct_1(-1311f, vec2<u32>(33091u, 12711u)), Struct_1(-314f, vec2<u32>(56118u, 1u))), Struct_2(vec3<i32>(50355i, -32237i, 22617i), 0u, Struct_1(-496f, vec2<u32>(0u, 10424u)), Struct_1(-1490f, vec2<u32>(1u, 0u))), Struct_2(vec3<i32>(-1i, 1i, 45097i), 1u, Struct_1(258f, vec2<u32>(1u, 32867u)), Struct_1(-886f, vec2<u32>(56822u, 54888u))), Struct_2(vec3<i32>(1444i, -4051i, -18012i), 1u, Struct_1(-744f, vec2<u32>(4368u, 1u)), Struct_1(-787f, vec2<u32>(1u, 19065u))), Struct_2(vec3<i32>(0i, -56656i, 2147483647i), 1u, Struct_1(-1403f, vec2<u32>(62521u, 8787u)), Struct_1(1000f, vec2<u32>(54137u, 27168u))));

var<private> global2: array<vec3<i32>, 29>;

var<private> global3: Struct_1;

var<private> global4: array<vec3<f32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global4 = array<vec3<f32>, 21>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_0.a)), ~global3.b);
    let var_1 = 12557u;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(736f, var_0.a) + global0.x), vec2<u32>(~5719u, _wgslsmith_add_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1741u, 10825u), vec2<u32>(1u, 1u))), ~abs(4294967295u))));
    global1 = array<Struct_2, 11>();
    return -(~(~vec2<i32>(u_input.c, u_input.c))) >> ((reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.b, vec2<u32>(var_1, global3.b.x)), 13151u)) >> (~_wgslsmith_mod_vec2_u32(arg_0.b, vec2<u32>(62194u, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u));
}

fn func_2() -> Struct_1 {
    let var_0 = vec4<i32>(u_input.c, ~1i, -_wgslsmith_dot_vec2_i32(~(~vec2<i32>(u_input.b, 1i)), func_3(Struct_1(129f, global3.b))), 2815i);
    let var_1 = vec2<bool>((all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))) || ((u_input.a << (global3.b.x % 32u)) < 4294967295u)) || all(vec4<bool>(true, false, true, any(vec2<bool>(false, false)))), false);
    var var_2 = !(!var_1.x);
    let var_3 = ~_wgslsmith_clamp_vec4_i32(firstTrailingBit(~(~var_0)), var_0 >> (countOneBits(vec4<u32>(global3.b.x, global3.b.x, 0u, 74519u)) % vec4<u32>(32u)), vec4<i32>(-1i, min(-9443i, 3865i) << (~u_input.a % 32u), -38904i, reverseBits(var_0.x)));
    var var_4 = global1[_wgslsmith_index_u32(1418u, 11u)];
    return var_4.c;
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_2(vec3<i32>(abs(0i), _wgslsmith_clamp_i32(~(~0i), firstLeadingBit(-u_input.c), -23421i), u_input.b), global3.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + -1093f), vec2<u32>(~(~97891u), ~min(0u, u_input.a))), func_2());
    var var_1 = var_0.d;
    global2 = array<vec3<i32>, 29>();
    var var_2 = -712f;
    let var_3 = global3.a;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(u_input.d, max(~(~(~17724u)), _wgslsmith_mod_u32(u_input.d, _wgslsmith_mult_u32(firstLeadingBit(u_input.d), ~global3.b.x))));
    var_0 = 1u;
    let var_1 = !any(vec3<bool>((0i | u_input.c) < (u_input.b | u_input.b), _wgslsmith_f_op_f32(select(1430f, global0.x, false)) > _wgslsmith_f_op_f32(f32(-1f) * -2421f), !any(vec4<bool>(false, true, true, false))));
    var var_2 = Struct_2(func_1(), ~global3.b.x, Struct_1(func_2().a, abs(func_2().b)), func_2());
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2531f, 748f))));
    global2 = array<vec3<i32>, 29>();
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global3.a, var_3.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.a, 580f) - vec2<f32>(1885f, -944f)))), vec2<f32>(_wgslsmith_f_op_f32(-2525f + global3.a), _wgslsmith_f_op_f32(334f + global0.x)), !vec2<bool>(var_1, var_1))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(840f, var_2.d.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.d.b, global4[_wgslsmith_index_u32(0u, 21u)], ~countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(25740u, var_2.d.b.x, global3.b.x), vec3<u32>(0u, 1u, global3.b.x))), var_2.a.x);
}

