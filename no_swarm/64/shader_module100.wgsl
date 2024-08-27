struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -2194f;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(vec3<u32>(29495u, 28052u, 0u), Struct_1(0u), Struct_1(49690u), vec2<bool>(false, true), vec4<i32>(59431i, -5313i, 1237i, i32(-2147483648))), Struct_3(vec3<u32>(12226u, 0u, 13706u), Struct_1(13024u), Struct_1(1u), vec2<bool>(false, false), vec4<i32>(1i, 1583i, i32(-2147483648), -40022i)), Struct_3(vec3<u32>(11994u, 93639u, 1634u), Struct_1(0u), Struct_1(0u), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -4882i, -4991i, -4186i)), Struct_3(vec3<u32>(0u, 33146u, 0u), Struct_1(1u), Struct_1(0u), vec2<bool>(true, false), vec4<i32>(-41474i, -1302i, 40440i, 19248i)), Struct_3(vec3<u32>(0u, 19943u, 4294967295u), Struct_1(0u), Struct_1(0u), vec2<bool>(true, false), vec4<i32>(-1i, i32(-2147483648), 1i, 25400i)), Struct_3(vec3<u32>(4294967295u, 34724u, 74071u), Struct_1(7233u), Struct_1(16723u), vec2<bool>(true, true), vec4<i32>(0i, -345i, 2147483647i, 54640i)), Struct_3(vec3<u32>(1u, 1u, 99995u), Struct_1(48226u), Struct_1(4294967295u), vec2<bool>(true, true), vec4<i32>(0i, 0i, 0i, 7941i)), Struct_3(vec3<u32>(1u, 1u, 0u), Struct_1(1u), Struct_1(4294967295u), vec2<bool>(true, true), vec4<i32>(60333i, i32(-2147483648), -39954i, 0i)), Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(1u), Struct_1(4294967295u), vec2<bool>(false, false), vec4<i32>(24065i, i32(-2147483648), 49614i, -1i)), Struct_3(vec3<u32>(8846u, 86635u, 1u), Struct_1(59330u), Struct_1(20400u), vec2<bool>(false, true), vec4<i32>(38823i, 0i, 49714i, 1i)), Struct_3(vec3<u32>(63062u, 4294967295u, 0u), Struct_1(4294967295u), Struct_1(0u), vec2<bool>(true, false), vec4<i32>(1i, i32(-2147483648), 8532i, 0i)), Struct_3(vec3<u32>(1u, 1u, 1u), Struct_1(1u), Struct_1(0u), vec2<bool>(false, false), vec4<i32>(2147483647i, 2147483647i, -36017i, 62392i)), Struct_3(vec3<u32>(50133u, 146125u, 1u), Struct_1(71925u), Struct_1(1u), vec2<bool>(true, true), vec4<i32>(30903i, 0i, 29321i, 0i)), Struct_3(vec3<u32>(0u, 43929u, 4294967295u), Struct_1(69430u), Struct_1(51846u), vec2<bool>(true, true), vec4<i32>(2207i, -9495i, 2147483647i, i32(-2147483648))), Struct_3(vec3<u32>(0u, 0u, 0u), Struct_1(4294967295u), Struct_1(163574u), vec2<bool>(true, false), vec4<i32>(1i, i32(-2147483648), -33248i, 25645i)), Struct_3(vec3<u32>(17907u, 0u, 18229u), Struct_1(4294967295u), Struct_1(0u), vec2<bool>(true, false), vec4<i32>(6941i, i32(-2147483648), 2147483647i, 38246i)), Struct_3(vec3<u32>(76249u, 59872u, 1u), Struct_1(8948u), Struct_1(1u), vec2<bool>(true, false), vec4<i32>(0i, i32(-2147483648), -5591i, 9565i)), Struct_3(vec3<u32>(8900u, 11938u, 1u), Struct_1(51610u), Struct_1(1246u), vec2<bool>(true, false), vec4<i32>(45080i, -6972i, i32(-2147483648), 1i)), Struct_3(vec3<u32>(1u, 9116u, 0u), Struct_1(4294967295u), Struct_1(4294967295u), vec2<bool>(true, false), vec4<i32>(-29769i, -1i, -1i, -1i)), Struct_3(vec3<u32>(4294967295u, 57739u, 1u), Struct_1(45731u), Struct_1(44841u), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 20399i, 1i, -43008i)), Struct_3(vec3<u32>(4294967295u, 0u, 1u), Struct_1(0u), Struct_1(0u), vec2<bool>(false, true), vec4<i32>(1i, 0i, 0i, 56318i)), Struct_3(vec3<u32>(1u, 0u, 0u), Struct_1(43416u), Struct_1(4294967295u), vec2<bool>(true, false), vec4<i32>(-28450i, 35900i, 2147483647i, -54596i)), Struct_3(vec3<u32>(94334u, 4294967295u, 84812u), Struct_1(0u), Struct_1(73075u), vec2<bool>(true, true), vec4<i32>(2147483647i, 12838i, -9636i, 0i)));

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_1(1u);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f))))), arg_0.x);
    global3 = array<Struct_2, 22>();
    var var_2 = var_0.a;
    global0 = arg_0.x;
    return var_0.a;
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> u32 {
    var var_0 = firstLeadingBit(countOneBits(vec3<i32>(select(38267i, u_input.b, arg_3), 1i, 1i)) << (vec3<u32>(9847u, ~arg_1, arg_0.c.x) % vec3<u32>(32u)));
    var_0 = global1.xzw ^ vec3<i32>(i32(-1i) * -global1.x, global1.x, -(i32(-1i) * -23343i));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(arg_0.a), _wgslsmith_add_u32(arg_2.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 53670u) | arg_0.b.yz, max(arg_0.c.xy, vec2<u32>(arg_0.a, arg_1))))), 23u)];
    let var_2 = select(0u, 4294967295u ^ _wgslsmith_div_u32(var_1.b.a, _wgslsmith_dot_vec2_u32(var_1.a.zy, vec2<u32>(37925u, 4294967295u))), !all(!select(vec2<bool>(arg_3, true), var_1.d, true)));
    let var_3 = !select(select(!(!vec4<bool>(true, false, false, var_1.d.x)), select(select(vec4<bool>(true, var_1.d.x, arg_3, true), vec4<bool>(arg_3, false, true, true), var_1.d.x), vec4<bool>(false, arg_3, var_1.d.x, arg_3), arg_3), !all(vec2<bool>(true, var_1.d.x))), vec4<bool>(!all(vec3<bool>(true, var_1.d.x, false)), !var_1.d.x, arg_3, false), ~_wgslsmith_mult_u32(arg_2.a, 24122u) > ~(~arg_1));
    return var_1.b.a;
}

fn func_1() -> vec4<bool> {
    global3 = array<Struct_2, 22>();
    var var_0 = Struct_1(~func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f)))));
    let var_1 = Struct_5(vec4<bool>(all(vec4<bool>(true, any(vec2<bool>(true, false)), false, true)), all(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), true, !all(vec2<bool>(false, false))), 4294967295u, Struct_1(1u));
    var var_2 = firstLeadingBit(i32(-1i) * -2147483647i);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -990f)), _wgslsmith_f_op_f32(-575f - _wgslsmith_f_op_f32(f32(-1f) * -1240f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1131f * 573f), _wgslsmith_f_op_f32(-1000f * -1513f))), -1000f), vec4<f32>(_wgslsmith_f_op_f32(-1580f - 341f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(255f, -636f)) * -447f), -931f, -1655f), all(vec2<bool>(true, true))))));
    return vec4<bool>(_wgslsmith_clamp_u32(~_wgslsmith_div_u32(4294967295u, 15235u), func_3(Struct_4(var_0.a, vec4<u32>(var_1.b, 105471u, var_0.a, var_1.c.a), vec3<u32>(var_1.c.a, var_1.b, 0u)), ~57910u, Struct_1(108328u), false), _wgslsmith_dot_vec3_u32(vec3<u32>(9091u, 67299u, var_0.a), max(vec3<u32>(50018u, var_1.b, var_1.b), vec3<u32>(var_0.a, var_0.a, 0u)))) >= ~min(var_0.a, ~55792u), all(select(vec2<bool>(true == var_1.a.x, var_1.a.x & var_1.a.x), !select(vec2<bool>(var_1.a.x, var_1.a.x), var_1.a.zy, false), select(var_1.a.yw, vec2<bool>(var_1.a.x, var_1.a.x), true))), true, any(var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -317f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -807f))))), -377f);
    var var_1 = u_input.b;
    var var_2 = Struct_5(select(func_1(), func_1(), !vec4<bool>(any(vec2<bool>(false, true)), global1.x != global1.x, true, true)), ~(~(~(~98927u))), Struct_1(~(~(59494u >> (0u % 32u)))));
    global3 = array<Struct_2, 22>();
    var_2 = Struct_5(var_2.a, var_2.c.a, var_2.c);
    let var_3 = Struct_3(~vec3<u32>(~var_2.c.a ^ var_2.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, var_2.b, var_2.b), vec3<u32>(1u, 0u, var_2.b)), select(~60622u, func_2(vec2<f32>(787f, 1000f)), -2147483647i < global1.x)), var_2.c, Struct_1(abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, var_2.b, var_2.b), vec3<u32>(var_2.c.a, var_2.b, 0u)))), vec2<bool>(select(any(var_2.a.yx), all(vec2<bool>(var_2.a.x, var_2.a.x)), var_2.a.x) | var_2.a.x, var_2.a.x), vec4<i32>(38834i, -69886i, u_input.b, firstTrailingBit(global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(7868i);
}

