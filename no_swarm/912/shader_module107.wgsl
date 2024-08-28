struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
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

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(vec2<u32>(0u, 0u), vec3<f32>(1523f, 1650f, 1989f), vec3<i32>(8967i, -16183i, 23046i), vec2<f32>(193f, 529f), vec3<f32>(-1410f, -2297f, 660f)), Struct_1(vec2<u32>(102535u, 0u), vec3<f32>(-1388f, 1000f, 502f), vec3<i32>(0i, -32793i, 13429i), vec2<f32>(-540f, 2196f), vec3<f32>(-1000f, -370f, -419f))), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(362f, -147f, 338f), vec3<i32>(-1i, 1i, 1i), vec2<f32>(-1047f, 672f), vec3<f32>(461f, -343f, -1146f)), Struct_1(vec2<u32>(32833u, 4294967295u), vec3<f32>(-591f, -1680f, -1315f), vec3<i32>(i32(-2147483648), 0i, 48921i), vec2<f32>(-1034f, -1022f), vec3<f32>(782f, 645f, 725f))), Struct_2(Struct_1(vec2<u32>(10962u, 0u), vec3<f32>(-1089f, -991f, 273f), vec3<i32>(-56715i, 33578i, -23057i), vec2<f32>(707f, -2161f), vec3<f32>(531f, -903f, 914f)), Struct_1(vec2<u32>(0u, 4294967295u), vec3<f32>(2068f, 2200f, 1017f), vec3<i32>(17524i, -1i, -48075i), vec2<f32>(-560f, -553f), vec3<f32>(642f, 1000f, -606f))), Struct_2(Struct_1(vec2<u32>(44871u, 10712u), vec3<f32>(-668f, -1000f, -1000f), vec3<i32>(i32(-2147483648), 8339i, -22067i), vec2<f32>(-1057f, 382f), vec3<f32>(520f, 1000f, -1875f)), Struct_1(vec2<u32>(1u, 1u), vec3<f32>(-1275f, -269f, 1000f), vec3<i32>(0i, -1i, 2147483647i), vec2<f32>(449f, 1504f), vec3<f32>(465f, -1952f, -431f))), Struct_2(Struct_1(vec2<u32>(28194u, 7534u), vec3<f32>(1225f, -1211f, -274f), vec3<i32>(i32(-2147483648), 49513i, 0i), vec2<f32>(-436f, 830f), vec3<f32>(-1076f, 1666f, -952f)), Struct_1(vec2<u32>(0u, 58736u), vec3<f32>(876f, -141f, 186f), vec3<i32>(1i, 1i, 1i), vec2<f32>(-196f, -237f), vec3<f32>(613f, -1361f, -1000f))), Struct_2(Struct_1(vec2<u32>(4294967295u, 1u), vec3<f32>(1516f, -303f, -1147f), vec3<i32>(-45620i, 16248i, 1i), vec2<f32>(-975f, 1035f), vec3<f32>(-1791f, -1317f, -359f)), Struct_1(vec2<u32>(8332u, 26824u), vec3<f32>(1195f, 103f, -1098f), vec3<i32>(-40320i, 48987i, 2147483647i), vec2<f32>(-1537f, -601f), vec3<f32>(-481f, -516f, 738f))));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<u32>(0u, 22747u), vec3<f32>(-2287f, -1646f, -1921f), vec3<i32>(0i, -24373i, i32(-2147483648)), vec2<f32>(894f, 413f), vec3<f32>(-865f, 860f, 1233f)), Struct_1(vec2<u32>(1u, 29655u), vec3<f32>(487f, -749f, -422f), vec3<i32>(4764i, -1i, i32(-2147483648)), vec2<f32>(294f, 733f), vec3<f32>(1344f, 678f, 1653f)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    var var_0 = 4294967295u;
    let var_1 = arg_1;
    let var_2 = vec4<u32>(firstLeadingBit(~u_input.c), ~(~4294967295u), arg_0.a.a.x, ~(~arg_2.a.x));
    global2 = arg_1;
    global0 = Struct_1(abs(vec2<u32>(var_1.a.a.x, countOneBits(abs(arg_1.a.a.x)))), _wgslsmith_f_op_vec3_f32(sign(global2.a.b)), vec3<i32>(arg_1.a.c.x, _wgslsmith_mult_i32(min(1i, ~(-20113i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global2.a.c, vec3<i32>(arg_0.a.c.x, -1i, global2.b.c.x)), reverseBits(arg_1.a.c))), -2147483647i), global0.d, arg_0.b.e);
    return true;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = global0.c.x;
    var var_1 = Struct_2(arg_2, global2.b);
    let var_2 = vec4<bool>(true, 504f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_f_op_f32(-1949f * global2.b.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + 1471f))), select(all(vec2<bool>(true, all(vec2<bool>(false, true)))), func_3(global1[_wgslsmith_index_u32(~(~global2.a.a.x), 6u)], Struct_2(arg_3, global2.a), Struct_1(~global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.d.x, 1116f, arg_2.e.x)), u_input.a.zwx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-414f, -503f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.b.x, global2.a.d.x, 2148f)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, global0.a.x, 36518u), vec3<u32>(global2.b.a.x, arg_2.a.x, var_1.b.a.x)) > ~(33831u & u_input.c)), false);
    global1 = array<Struct_2, 6>();
    var var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(39880u, _wgslsmith_clamp_u32(66926u, 0u & global0.a.x, arg_3.a.x & arg_1.a.a.x) ^ max(0u, arg_1.b.a.x & 39711u), reverseBits(~_wgslsmith_sub_u32(12122u, 1u))), ~(min(~vec3<u32>(var_1.b.a.x, u_input.c, 36147u), vec3<u32>(global0.a.x, arg_1.b.a.x, u_input.c)) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(30659u, 0u, 4294967295u), vec3<u32>(0u, global2.b.a.x, var_1.a.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0.a.x, 30937u), vec3<u32>(arg_1.a.a.x, arg_3.a.x, arg_1.a.a.x))) % vec3<u32>(32u))), firstLeadingBit(~vec3<u32>(~global2.a.a.x, 70839u, u_input.c)));
    return i32(-1i) * -(~_wgslsmith_mod_i32(arg_1.a.c.x, firstTrailingBit(2147483647i)));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    global1 = array<Struct_2, 6>();
    let var_0 = true;
    var var_1 = global2.b;
    let var_2 = global2.b;
    var var_3 = reverseBits(vec2<i32>(_wgslsmith_add_i32(-global0.c.x, func_2(var_2.c, global1[_wgslsmith_index_u32(5874u, 6u)], Struct_1(vec2<u32>(28286u, 1u), global2.a.b, vec3<i32>(0i, global2.a.c.x, global0.c.x), var_1.b.zz, var_2.e), Struct_1(vec2<u32>(1u, 68044u), var_1.e, vec3<i32>(-19253i, var_2.c.x, u_input.b), vec2<f32>(var_2.b.x, var_2.d.x), vec3<f32>(var_2.e.x, global2.b.b.x, 759f)))), var_2.c.x) >> (~(~vec2<u32>(43436u, 1u)) % vec2<u32>(32u)));
    return _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~global2.b.a | _wgslsmith_mult_vec2_u32(global2.b.a, var_2.a), vec2<u32>(_wgslsmith_add_u32(9906u, u_input.c), ~91642u)), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a.x, 7284u, var_1.a.x), vec3<u32>(arg_0, 49273u, 0u) | vec3<u32>(0u, var_1.a.x, global0.a.x))), ~(~firstLeadingBit(firstLeadingBit(vec2<u32>(48086u, u_input.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 5749i;
    var var_1 = Struct_1(abs(select(~vec2<u32>(1u, global0.a.x), _wgslsmith_sub_vec2_u32(func_1(1u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, 14594u), global2.a.a)), any(vec2<bool>(true, true)) | false)), global2.b.e, -_wgslsmith_div_vec3_i32(select(min(global0.c, vec3<i32>(var_0, 1i, u_input.a.x)), -vec3<i32>(11728i, var_0, 63516i), false), -global2.a.c << (~vec3<u32>(global2.b.a.x, 101786u, 15232u) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a.b.x), 1417f)) - -107f), _wgslsmith_f_op_f32(sign(283f))), vec3<f32>(758f, _wgslsmith_f_op_f32(sign(global2.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -142f) * global0.d.x))));
    var var_2 = -(var_1.c.x & -2147483647i) << (~0u % 32u);
    let var_3 = ~(~(~countOneBits(vec3<u32>(global0.a.x, 36857u, 43860u))) ^ vec3<u32>(_wgslsmith_mult_u32(4279u, global0.a.x), firstLeadingBit(7027u), u_input.c));
    global0 = Struct_1(~(global0.a >> (vec2<u32>(countOneBits(28904u), ~var_1.a.x) % vec2<u32>(32u))), _wgslsmith_div_vec3_f32(vec3<f32>(-1824f, -196f, _wgslsmith_f_op_f32(var_1.e.x + var_1.e.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.d.x, global2.b.d.x, _wgslsmith_f_op_f32(floor(var_1.b.x)))))), -(vec3<i32>(abs(global0.c.x), ~var_0, 1i) ^ ~vec3<i32>(global0.c.x, -15503i, -44964i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.b.x + _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global2.a.b, vec3<f32>(var_1.d.x, global0.e.x, var_1.e.x), false)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, -409f, global0.e.x) * _wgslsmith_f_op_vec3_f32(-var_1.e)))));
    global0 = Struct_1(~vec2<u32>(global0.a.x, global0.a.x), global2.a.e, global2.b.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_1.d * _wgslsmith_f_op_vec2_f32(vec2<f32>(610f, -1479f) - global2.b.d)))))), global2.a.b);
    var var_4 = var_1.a.x;
    var var_5 = global0.e;
    global0 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(abs(1u)), -74082i);
}

