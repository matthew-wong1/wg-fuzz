struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<u32>(0u, 50936u), false, 0u), 0i, vec3<u32>(4294967295u, 1u, 81763u), Struct_1(vec3<bool>(false, false, true), vec2<u32>(41632u, 72992u), true, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(15174u, 3363u), false, 9127u), -37525i, vec3<u32>(0u, 12960u, 3329u), Struct_1(vec3<bool>(false, true, true), vec2<u32>(1u, 34707u), true, 0u)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 129613u), false, 58200u), -11615i, vec3<u32>(55570u, 1u, 83765u), Struct_1(vec3<bool>(true, true, true), vec2<u32>(72620u, 4294967295u), false, 40049u)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(25456u, 0u), false, 28915u), 33643i, vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec3<bool>(false, false, false), vec2<u32>(47903u, 4294967295u), true, 40019u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 4294967295u), true, 4294967295u), -69747i, vec3<u32>(34148u, 4294967295u, 30129u), Struct_1(vec3<bool>(true, false, true), vec2<u32>(27716u, 10188u), false, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(220u, 4294967295u), true, 38807u), -28820i, vec3<u32>(4294967295u, 8211u, 10870u), Struct_1(vec3<bool>(true, false, true), vec2<u32>(24563u, 5045u), true, 62110u)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(26281u, 4294967295u), false, 4294967295u), 0i, vec3<u32>(0u, 21938u, 46429u), Struct_1(vec3<bool>(true, false, true), vec2<u32>(1u, 39017u), false, 7483u)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(12116u, 5415u), true, 1u), -66786i, vec3<u32>(0u, 72703u, 17635u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(20984u, 1u), false, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 46224u), false, 4294967295u), 13556i, vec3<u32>(0u, 0u, 26172u), Struct_1(vec3<bool>(true, true, false), vec2<u32>(5252u, 4294967295u), true, 63898u)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 1u), true, 4294967295u), 16050i, vec3<u32>(1u, 17416u, 18990u), Struct_1(vec3<bool>(true, false, true), vec2<u32>(39468u, 0u), false, 1u)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(35724u, 51515u), false, 29908u), 2147483647i, vec3<u32>(26668u, 57998u, 44070u), Struct_1(vec3<bool>(true, true, false), vec2<u32>(50508u, 8942u), true, 11934u)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<u32>(46920u, 4294967295u), false, 68296u), 1i, vec3<u32>(77147u, 15292u, 30999u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(0u, 82009u), false, 1u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(50789u, 27873u), false, 4294967295u), 1i, vec3<u32>(74276u, 20002u, 535u), Struct_1(vec3<bool>(false, true, true), vec2<u32>(25250u, 1u), false, 86984u)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<u32>(11279u, 37782u), false, 11478u), 0i, vec3<u32>(16308u, 1u, 49085u), Struct_1(vec3<bool>(false, true, true), vec2<u32>(35181u, 47135u), false, 59880u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(1u, 29066u), false, 40689u), 2147483647i, vec3<u32>(52122u, 3131u, 6573u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(61318u, 25692u), true, 9609u)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(51211u, 47687u), false, 30426u), 2147483647i, vec3<u32>(3984u, 62917u, 1u), Struct_1(vec3<bool>(true, true, false), vec2<u32>(5569u, 37356u), false, 1u)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<u32>(0u, 2603u), false, 2510u), 1i, vec3<u32>(49698u, 4294967295u, 39678u), Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 4294967295u), false, 18001u)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u), false, 16081u), -1i, vec3<u32>(71679u, 0u, 20519u), Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 0u), false, 0u)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(55281u, 1u), true, 1u), 0i, vec3<u32>(43464u, 17795u, 1699u), Struct_1(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 1u), true, 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(50281u, 1u), true, 1u), -1i, vec3<u32>(34175u, 10407u, 4294967295u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 42629u), false, 0u)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 0u), false, 4294967295u), 1i, vec3<u32>(4294967295u, 69129u, 1u), Struct_1(vec3<bool>(true, false, false), vec2<u32>(1u, 16730u), true, 63561u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(8510u, 32613u), false, 1u), -58529i, vec3<u32>(35666u, 4294967295u, 0u), Struct_1(vec3<bool>(false, true, true), vec2<u32>(0u, 58212u), false, 70518u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 6624u), false, 5120u), 1i, vec3<u32>(0u, 978u, 75660u), Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 0u), true, 41866u)), Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<u32>(4294967295u, 0u), true, 0u), i32(-2147483648), vec3<u32>(15297u, 4294967295u, 0u), Struct_1(vec3<bool>(false, true, false), vec2<u32>(30848u, 8548u), false, 1u)), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<u32>(0u, 28497u), false, 59006u), 0i, vec3<u32>(1110u, 1u, 22021u), Struct_1(vec3<bool>(true, true, true), vec2<u32>(5024u, 32199u), false, 45420u)), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<u32>(18201u, 4294967295u), false, 1u), 1i, vec3<u32>(1u, 1u, 1u), Struct_1(vec3<bool>(false, true, true), vec2<u32>(18188u, 4294967295u), false, 23453u)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 4294967295u), true, 35926u), -1i, vec3<u32>(0u, 46114u, 30128u), Struct_1(vec3<bool>(true, false, true), vec2<u32>(24902u, 0u), true, 0u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = 1i;
    global1 = array<Struct_2, 27>();
    var var_1 = _wgslsmith_f_op_f32(129f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b.x))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(-arg_0.b.x)))))));
    global0 = array<u32, 14>();
    var var_2 = Struct_4(Struct_2(Struct_1(select(select(arg_0.a.a.a, vec3<bool>(true, arg_0.a.d.c, arg_0.a.d.a.x), arg_0.a.a.a), arg_0.a.d.a, !arg_0.a.a.a), ~arg_0.a.a.b, true, firstLeadingBit(u_input.c)), u_input.b.x, max(countOneBits(arg_0.a.c), arg_0.a.c) ^ reverseBits(countOneBits(arg_0.a.c)), arg_0.a.d), vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.x, 1209f)) + -798f)))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(-var_2.b.x)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2) -> bool {
    global0 = array<u32, 14>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -858f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(Struct_2(Struct_1(arg_2.d.a, arg_0.xx, true, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29436u, 14u)], 14u)]), 10566i, arg_2.c, Struct_1(arg_2.a.a, arg_0.wx, arg_2.d.c, u_input.c)), vec3<f32>(1675f, 520f, -584f)))))));
    let var_1 = Struct_3(Struct_2(arg_2.d, 0i, select((arg_0.ywy << (vec3<u32>(arg_0.x, 61383u, 48444u) % vec3<u32>(32u))) | (arg_0.wwx & vec3<u32>(4294967295u, 70507u, arg_2.a.d)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 19141u), vec3<u32>(arg_0.x, 1u, 34790u)), true & arg_2.a.a.x), Struct_1(!(!vec3<bool>(arg_1, arg_1, arg_1)), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, arg_2.d.b.x)), false, 1u)), true, arg_2, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(33579u, global0[_wgslsmith_index_u32(133784u, 14u)] & arg_0.x, arg_2.c.x), firstLeadingBit(min(arg_2.c, arg_0.yyw))), 27u)], select(~global0[_wgslsmith_index_u32(arg_2.d.d, 14u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.x, arg_0.x), select(arg_0.yz << (arg_2.c.zz % vec2<u32>(32u)), ~arg_0.wz, false)), true));
    global1 = array<Struct_2, 27>();
    global0 = array<u32, 14>();
    return true;
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> vec4<bool> {
    var var_0 = !arg_1.x && true;
    return vec4<bool>(any(!select(!vec3<bool>(arg_1.x, false, false), vec3<bool>(true, true, arg_1.x), select(vec3<bool>(true, true, false), vec3<bool>(true, arg_1.x, false), vec3<bool>(true, false, arg_1.x)))), func_2(abs(vec4<u32>(u_input.c | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.c), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 14u)], 18571u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 14u)], 14u)], 14u)])), firstLeadingBit(33113u), u_input.c ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], 14u)])), !arg_1.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 27u)]), all(select(vec3<bool>(all(vec4<bool>(arg_1.x, false, true, false)), all(arg_1), u_input.c < u_input.c), !select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_1.x), false), !(global0[_wgslsmith_index_u32(u_input.c, 14u)] > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 14u)], 14u)]))), !arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1(u_input.b.x, !select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(global1[_wgslsmith_index_u32(5875u, 27u)], vec3<f32>(650f, 1349f, 602f)))) - -127f)) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(867f * _wgslsmith_f_op_f32(f32(-1f) * -1162f)), _wgslsmith_f_op_f32(step(-1217f, -1878f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-597f, _wgslsmith_f_op_f32(590f + -1454f))), _wgslsmith_f_op_f32(f32(-1f) * -470f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1285f * 365f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26763u, 14u)], 14u)], 27u)], vec3<f32>(2007f, 2346f, -2290f)))))))));
    let var_3 = global1[_wgslsmith_index_u32(~56u, 27u)];
    global1 = array<Struct_2, 27>();
    var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-219f, var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + 412f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x + -2027f)))))));
    var_0 = !select(select(vec4<bool>(select(var_3.d.a.x, var_0.x, true), false, !var_1, true), !select(vec4<bool>(var_1, true, var_0.x, true), vec4<bool>(var_3.d.a.x, var_1, var_1, var_0.x), true), var_0.x), !func_1(3693i, vec2<bool>(var_0.x, var_3.d.c)), max(u_input.a.x, var_3.b) != ~(~0i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~53051i), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(abs(var_3.c.x), ~u_input.c), countOneBits(global0[_wgslsmith_index_u32(27921u, 14u)])), ~var_3.a.b), var_2.x, vec3<u32>(countOneBits(_wgslsmith_add_u32(abs(4294967295u), u_input.c)), _wgslsmith_sub_u32(u_input.c, countOneBits(var_3.a.d)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(var_3.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.a.b.x, 54857u, 10896u), vec3<u32>(4294967295u, 14108u, u_input.c), var_3.c)), ~abs(var_3.c))));
}

