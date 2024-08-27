struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, true, false, false);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(413f, 439f), vec2<u32>(12724u, 4294967295u), vec2<u32>(26006u, 14393u), vec4<u32>(30752u, 31476u, 1u, 0u), vec2<u32>(1u, 4294967295u));

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<f32>(-189f, 280f), vec2<u32>(49280u, 1u), vec2<u32>(28262u, 0u), vec4<u32>(0u, 63127u, 7291u, 1815u), vec2<u32>(0u, 29334u)), Struct_1(vec2<f32>(1000f, -486f), vec2<u32>(28763u, 40874u), vec2<u32>(1u, 63289u), vec4<u32>(36993u, 32009u, 41993u, 1u), vec2<u32>(8176u, 43363u)), Struct_1(vec2<f32>(1000f, -529f), vec2<u32>(1u, 65989u), vec2<u32>(1u, 4294967295u), vec4<u32>(15649u, 1u, 0u, 1u), vec2<u32>(16671u, 0u)), Struct_1(vec2<f32>(-1315f, 784f), vec2<u32>(0u, 18805u), vec2<u32>(39226u, 0u), vec4<u32>(1u, 1u, 0u, 42090u), vec2<u32>(1u, 0u)), Struct_1(vec2<f32>(621f, 454f), vec2<u32>(1u, 1u), vec2<u32>(3238u, 4294967295u), vec4<u32>(0u, 0u, 14356u, 1u), vec2<u32>(4294967295u, 28514u)), Struct_1(vec2<f32>(576f, -165f), vec2<u32>(34086u, 1u), vec2<u32>(30277u, 4294967295u), vec4<u32>(47052u, 4294967295u, 0u, 0u), vec2<u32>(16022u, 4294967295u)), Struct_1(vec2<f32>(-454f, -1000f), vec2<u32>(36449u, 28626u), vec2<u32>(86567u, 25858u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec2<u32>(39981u, 0u)), Struct_1(vec2<f32>(-1930f, 180f), vec2<u32>(13918u, 1u), vec2<u32>(1u, 4294967295u), vec4<u32>(66523u, 0u, 1u, 1u), vec2<u32>(1489u, 1u)), Struct_1(vec2<f32>(-454f, 841f), vec2<u32>(20458u, 19818u), vec2<u32>(28129u, 38160u), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec2<u32>(0u, 100068u)), Struct_1(vec2<f32>(129f, -447f), vec2<u32>(91410u, 4294967295u), vec2<u32>(35562u, 71239u), vec4<u32>(1u, 1u, 4294967295u, 13174u), vec2<u32>(4828u, 22616u)), Struct_1(vec2<f32>(113f, 1000f), vec2<u32>(7676u, 50755u), vec2<u32>(1u, 64055u), vec4<u32>(12852u, 4294967295u, 4294967295u, 4294967295u), vec2<u32>(38169u, 4294967295u)), Struct_1(vec2<f32>(-973f, 1674f), vec2<u32>(16211u, 0u), vec2<u32>(0u, 1u), vec4<u32>(4294967295u, 0u, 43522u, 58571u), vec2<u32>(20084u, 4294967295u)), Struct_1(vec2<f32>(-1339f, 1108f), vec2<u32>(38150u, 1u), vec2<u32>(4139u, 63660u), vec4<u32>(4294967295u, 1337u, 50685u, 0u), vec2<u32>(46999u, 0u)), Struct_1(vec2<f32>(527f, 557f), vec2<u32>(31771u, 28280u), vec2<u32>(29078u, 140707u), vec4<u32>(4294967295u, 22886u, 45493u, 4294967295u), vec2<u32>(12493u, 46780u)), Struct_1(vec2<f32>(-671f, 882f), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 24178u), vec4<u32>(48361u, 1u, 4294967295u, 1u), vec2<u32>(15640u, 24584u)), Struct_1(vec2<f32>(436f, 782f), vec2<u32>(1u, 4294967295u), vec2<u32>(46566u, 1u), vec4<u32>(4784u, 0u, 558u, 23691u), vec2<u32>(39282u, 4294967295u)), Struct_1(vec2<f32>(-906f, -280f), vec2<u32>(1u, 44400u), vec2<u32>(0u, 37475u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec2<u32>(2469u, 4294967295u)), Struct_1(vec2<f32>(-951f, 876f), vec2<u32>(4294967295u, 12783u), vec2<u32>(0u, 0u), vec4<u32>(1u, 0u, 119608u, 0u), vec2<u32>(75631u, 1u)), Struct_1(vec2<f32>(245f, 377f), vec2<u32>(1u, 4294967295u), vec2<u32>(44189u, 29198u), vec4<u32>(24220u, 97353u, 30335u, 1u), vec2<u32>(47144u, 4294967295u)), Struct_1(vec2<f32>(148f, 858f), vec2<u32>(81786u, 57742u), vec2<u32>(7419u, 27364u), vec4<u32>(4294967295u, 915u, 4294967295u, 18285u), vec2<u32>(4294967295u, 49664u)), Struct_1(vec2<f32>(410f, -168f), vec2<u32>(0u, 1u), vec2<u32>(35282u, 0u), vec4<u32>(18422u, 0u, 4294967295u, 9994u), vec2<u32>(80707u, 1u)), Struct_1(vec2<f32>(696f, 214f), vec2<u32>(24058u, 1u), vec2<u32>(1u, 9708u), vec4<u32>(22617u, 8860u, 90275u, 1u), vec2<u32>(23911u, 14164u)), Struct_1(vec2<f32>(1380f, 284f), vec2<u32>(0u, 56717u), vec2<u32>(57405u, 1u), vec4<u32>(4294967295u, 0u, 14405u, 0u), vec2<u32>(0u, 45601u)), Struct_1(vec2<f32>(157f, 221f), vec2<u32>(32172u, 4294967295u), vec2<u32>(27934u, 0u), vec4<u32>(0u, 4294967295u, 67403u, 0u), vec2<u32>(58951u, 1u)), Struct_1(vec2<f32>(1000f, 409f), vec2<u32>(1u, 1u), vec2<u32>(4867u, 0u), vec4<u32>(0u, 1u, 0u, 12950u), vec2<u32>(12938u, 31430u)));

var<private> global3: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(70678u, 43355u, 1u), vec3<u32>(0u, 68122u, 1u), vec3<u32>(0u, 1u, 40713u));

var<private> global4: array<i32, 17>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global2 = array<Struct_1, 25>();
    let var_0 = firstLeadingBit(-25181i);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.d, _wgslsmith_mod_vec4_u32(global1.d | select(vec4<u32>(global1.b.x, 1u, global1.b.x, 0u), vec4<u32>(36262u, global1.c.x, global1.b.x, 2819u), false), min(min(global1.d, vec4<u32>(global1.e.x, global1.d.x, 34433u, global1.e.x) >> (vec4<u32>(34567u, global1.c.x, global1.e.x, 37058u) % vec4<u32>(32u))), vec4<u32>(global1.d.x, 4294967295u, global1.e.x, 12321u)))), 25u)];
    let var_2 = Struct_2(2147483647i);
    global1 = global2[_wgslsmith_index_u32(~var_1.c.x, 25u)];
    return _wgslsmith_dot_vec2_i32(u_input.a.xx | _wgslsmith_mult_vec2_i32(arg_0.xx, max(vec2<i32>(-1i, 7319i), vec2<i32>(604i, arg_0.x))), -_wgslsmith_sub_vec2_i32(abs(vec2<i32>(arg_0.x, arg_0.x)), ~u_input.a.yx)) & 25956i;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.a.x, 33461i);
    var var_1 = Struct_2(var_0.x);
    var var_2 = Struct_2(~0i);
    let var_3 = Struct_2(firstTrailingBit(func_3(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, arg_0.x, var_0.x), vec3<i32>(0i, -2147483647i, 34009i)))));
    var_2 = var_3;
    return global2[_wgslsmith_index_u32(~global1.b.x >> (~_wgslsmith_add_u32(0u, reverseBits(_wgslsmith_mod_u32(global1.d.x, 0u))) % 32u), 25u)];
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(global4[_wgslsmith_index_u32(0u, 17u)]);
    var var_1 = vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(775f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.x + 181f), global1.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1144f));
    global2 = array<Struct_1, 25>();
    let var_2 = func_2(u_input.a);
    var var_3 = ~firstLeadingBit(~(~global1.b.x)) >> (_wgslsmith_dot_vec4_u32(global1.d, global1.d) % 32u);
    return func_2(-vec3<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, var_0.a, -42559i), vec4<i32>(u_input.a.x, 1i, var_0.a, var_0.a)), var_0.a, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    let var_0 = 1185f;
    global1 = func_1();
    global2 = array<Struct_1, 25>();
    let var_1 = Struct_2(u_input.a.x);
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(var_0 - -1012f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) + _wgslsmith_f_op_f32(select(global1.a.x, var_0, global0[_wgslsmith_index_u32(1u, 4u)]))))), min(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(44416u, global1.c.x, 27930u), vec3<u32>(global1.b.x, global1.b.x, global1.b.x), global3[_wgslsmith_index_u32(global1.b.x, 3u)]), select(vec3<u32>(global1.b.x, global1.c.x, global1.d.x), global3[_wgslsmith_index_u32(global1.d.x, 3u)], global0[_wgslsmith_index_u32(global1.d.x, 4u)])), 1u, global1.b.x), ~vec4<u32>(98743u, 4294967295u, 1u, 22435u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.a.x, global1.a.x, var_0), vec3<f32>(-217f, 114f, -1765f))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1541f, -171f, -541f), vec3<f32>(global1.a.x, 203f, global1.a.x))), global1.a.x < 1991f)) * vec3<f32>(-829f, -402f, _wgslsmith_f_op_f32(-global1.a.x)))));
}

