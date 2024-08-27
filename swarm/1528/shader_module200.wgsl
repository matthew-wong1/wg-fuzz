struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: bool,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(i32(-2147483648), Struct_2(vec3<f32>(232f, 925f, -986f), Struct_1(17973i, 1i, vec3<f32>(-903f, 999f, -1428f)), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)), vec3<bool>(false, false, false), Struct_1(i32(-2147483648), 2147483647i, vec3<f32>(-625f, 1096f, -1000f)), Struct_2(vec3<f32>(1308f, 908f, 143f), Struct_1(1i, -6552i, vec3<f32>(-777f, 165f, 178f)), vec4<u32>(52121u, 0u, 0u, 1027u)));

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(vec3<u32>(23995u, 15783u, 17378u), vec2<bool>(false, true), vec4<u32>(4294967295u, 14863u, 21899u, 1u), false, -21942i), Struct_3(vec3<u32>(1u, 29969u, 0u), vec2<bool>(true, true), vec4<u32>(0u, 57207u, 0u, 4294967295u), true, 34360i), Struct_3(vec3<u32>(4294967295u, 43627u, 0u), vec2<bool>(false, true), vec4<u32>(21869u, 0u, 15675u, 1u), true, 44938i), Struct_3(vec3<u32>(12015u, 53360u, 16334u), vec2<bool>(false, true), vec4<u32>(20420u, 1u, 0u, 12871u), true, -10615i), Struct_3(vec3<u32>(35481u, 44359u, 50216u), vec2<bool>(false, true), vec4<u32>(27860u, 27304u, 0u, 46163u), true, 2147483647i), Struct_3(vec3<u32>(4294967295u, 4294967295u, 17518u), vec2<bool>(false, false), vec4<u32>(52167u, 4294967295u, 4294967295u, 0u), true, -27982i), Struct_3(vec3<u32>(1u, 0u, 4294967295u), vec2<bool>(false, true), vec4<u32>(23546u, 13983u, 1u, 19558u), false, 2147483647i), Struct_3(vec3<u32>(4650u, 2604u, 90210u), vec2<bool>(false, true), vec4<u32>(0u, 62078u, 0u, 1u), true, -25423i), Struct_3(vec3<u32>(34113u, 4294967295u, 28704u), vec2<bool>(false, false), vec4<u32>(29777u, 1u, 33223u, 1u), true, 2147483647i), Struct_3(vec3<u32>(1u, 16805u, 4294967295u), vec2<bool>(true, false), vec4<u32>(52320u, 0u, 0u, 0u), true, 21643i), Struct_3(vec3<u32>(0u, 0u, 1u), vec2<bool>(true, true), vec4<u32>(0u, 1u, 37424u, 19558u), true, 0i), Struct_3(vec3<u32>(32179u, 0u, 81502u), vec2<bool>(false, false), vec4<u32>(14993u, 1u, 48648u, 1u), false, -58591i), Struct_3(vec3<u32>(1u, 1u, 45978u), vec2<bool>(false, true), vec4<u32>(41801u, 28920u, 0u, 40191u), false, -21650i), Struct_3(vec3<u32>(40553u, 4294967295u, 46465u), vec2<bool>(false, true), vec4<u32>(0u, 8088u, 4294967295u, 33814u), false, 1i), Struct_3(vec3<u32>(1u, 0u, 12230u), vec2<bool>(false, true), vec4<u32>(0u, 45840u, 0u, 73783u), true, -1121i), Struct_3(vec3<u32>(52690u, 1u, 25499u), vec2<bool>(true, true), vec4<u32>(67767u, 32127u, 8167u, 0u), false, 18553i), Struct_3(vec3<u32>(1u, 50236u, 46538u), vec2<bool>(false, true), vec4<u32>(24236u, 11826u, 0u, 14088u), true, 0i), Struct_3(vec3<u32>(0u, 4294967295u, 4294967295u), vec2<bool>(false, true), vec4<u32>(1u, 60162u, 4294967295u, 18917u), true, i32(-2147483648)), Struct_3(vec3<u32>(54296u, 1u, 34240u), vec2<bool>(true, false), vec4<u32>(28913u, 1u, 74433u, 30403u), true, -11144i), Struct_3(vec3<u32>(34468u, 4294967295u, 4294967295u), vec2<bool>(false, false), vec4<u32>(30553u, 33812u, 5744u, 45223u), true, 0i), Struct_3(vec3<u32>(0u, 1u, 4294967295u), vec2<bool>(true, false), vec4<u32>(46432u, 13043u, 1u, 1u), false, 49705i), Struct_3(vec3<u32>(0u, 44024u, 77482u), vec2<bool>(false, false), vec4<u32>(23201u, 1u, 4294967295u, 4294967295u), false, 21406i), Struct_3(vec3<u32>(88264u, 94434u, 134306u), vec2<bool>(false, false), vec4<u32>(34329u, 35221u, 70046u, 48933u), true, 83894i), Struct_3(vec3<u32>(78154u, 27196u, 6093u), vec2<bool>(true, false), vec4<u32>(38933u, 38287u, 8044u, 18918u), false, i32(-2147483648)), Struct_3(vec3<u32>(1u, 4294967295u, 1u), vec2<bool>(false, true), vec4<u32>(21805u, 62350u, 4294967295u, 16784u), false, 5753i), Struct_3(vec3<u32>(0u, 16203u, 3479u), vec2<bool>(false, true), vec4<u32>(1u, 19087u, 70104u, 51159u), false, -58711i), Struct_3(vec3<u32>(9544u, 57455u, 4982u), vec2<bool>(true, true), vec4<u32>(4695u, 0u, 1u, 4294967295u), true, 0i), Struct_3(vec3<u32>(193u, 0u, 46376u), vec2<bool>(true, false), vec4<u32>(4294967295u, 4294967295u, 13368u, 34431u), false, i32(-2147483648)), Struct_3(vec3<u32>(0u, 1u, 24731u), vec2<bool>(true, true), vec4<u32>(0u, 4294967295u, 18194u, 1u), true, -1i));

var<private> global2: array<i32, 25> = array<i32, 25>(-1i, 5112i, 44040i, -1i, -19285i, 0i, -103690i, 0i, 0i, -15417i, 2147483647i, -53922i, -25744i, i32(-2147483648), i32(-2147483648), 1i, -11445i, 2147483647i, 22640i, -20326i, i32(-2147483648), 2147483647i, 1i, -18962i, 65415i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_5 {
    return Struct_5(arg_1 >> (vec4<u32>(1u, abs(max(45149u, 28758u)), 1u, global0.e.c.x) % vec4<u32>(32u)), global0.c, -23405i >> (~(_wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(80822u, arg_1.x)) & 4294967295u) % 32u));
}

fn func_2(arg_0: Struct_5) -> vec4<u32> {
    let var_0 = ~arg_0.a.x;
    global1 = array<Struct_3, 29>();
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = ~1i;
    return ~vec4<u32>(~1u, var_0, ~global0.b.c.x, ~func_1(arg_0.b.x, ~global0.e.c, vec3<i32>(147i, var_1.c, -2147483647i), Struct_1(1i, global2[_wgslsmith_index_u32(53321u, 25u)], vec3<f32>(-1480f, 1000f, global0.e.a.x))).a.x);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_sub_i32(28632i, global0.b.b.a)), 2147483647i, global0.d.c);
    var var_1 = !(!global0.c.x & (global0.c.x && arg_1.b.x));
    let var_2 = Struct_4(~_wgslsmith_clamp_i32(global0.e.b.b, reverseBits(2147483647i), 1i) ^ _wgslsmith_clamp_i32(abs(-var_0.b), -_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(global2[_wgslsmith_index_u32(1u, 25u)], -36305i)), 15058i), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(352f)))), global0.e.b, vec4<u32>(89556u, ~_wgslsmith_dot_vec2_u32(arg_1.a.xx, arg_1.a.yx), firstTrailingBit(u_input.a), firstTrailingBit(82648u & arg_0.x))), !global0.c, Struct_1(_wgslsmith_mod_i32(abs(select(global0.b.b.a, 0i, arg_1.b.x)), var_0.b), abs(global2[_wgslsmith_index_u32(4287u, 25u)]), _wgslsmith_f_op_vec3_f32(-global0.e.a)), global0.e);
    var_1 = !global0.c.x;
    global1 = array<Struct_3, 29>();
    return Struct_4(countOneBits(min(-_wgslsmith_add_i32(arg_1.e, 42872i), firstLeadingBit(_wgslsmith_mod_i32(10123i, global2[_wgslsmith_index_u32(14273u, 25u)])))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(step(1849f, var_2.d.c.x)), global0.b.b.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(global0.b.a.x * 1000f))), var_2.d, _wgslsmith_sub_vec4_u32(vec4<u32>(max(var_2.e.c.x, arg_1.c.x), abs(0u), ~u_input.a, arg_1.a.x | u_input.a), select(arg_0, ~var_2.e.c, select(vec4<bool>(global0.c.x, var_2.c.x, arg_1.b.x, false), vec4<bool>(true, arg_1.d, false, arg_1.d), vec4<bool>(true, true, global0.c.x, true))))), vec3<bool>(global0.c.x, false, global0.c.x), Struct_1(arg_1.e, global2[_wgslsmith_index_u32(~global0.e.c.x, 25u)], vec3<f32>(-1867f, var_0.c.x, 2422f)), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(abs(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(345u, 25u)], 95079i)) | -(~global2[_wgslsmith_index_u32(global0.b.c.x, 25u)]), -4981i) ^ global0.d.b;
    global2 = array<i32, 25>();
    let var_1 = -1000f;
    global2 = array<i32, 25>();
    var var_2 = 58208u;
    global0 = func_3(min(global0.e.c, ~(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 14236u)) >> (func_2(func_1(true, global0.b.c, vec3<i32>(0i, -33258i, -2147483647i), global0.e.b)) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(108484u, 29u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_u32(vec3<u32>(~global0.b.c.x, ~4294967295u, _wgslsmith_add_u32(u_input.a, u_input.a)), global0.b.c.yzy));
}

