struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(8369i, 6155i);

var<private> global1: array<i32, 26>;

var<private> global2: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(0i, 0i), vec2<i32>(-1i, -49726i), vec2<i32>(-1i, 7695i), vec2<i32>(-29798i, i32(-2147483648)), vec2<i32>(-14659i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-37061i, 6183i), vec2<i32>(-44020i, -52156i), vec2<i32>(-16563i, -1i), vec2<i32>(0i, 2147483647i), vec2<i32>(1i, -6007i), vec2<i32>(-12113i, 0i), vec2<i32>(24030i, 3136i), vec2<i32>(50444i, 2047i), vec2<i32>(-637i, 15173i), vec2<i32>(-28585i, 4987i), vec2<i32>(-5150i, 1i), vec2<i32>(-10293i, 1i), vec2<i32>(29196i, 9691i), vec2<i32>(22076i, 4414i), vec2<i32>(2147483647i, 40718i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-3011i, i32(-2147483648)), vec2<i32>(13654i, 0i));

var<private> global3: u32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-371f, 161f, 1521f), _wgslsmith_f_op_vec3_f32(select(arg_2.c.a.xzy, vec3<f32>(_wgslsmith_f_op_f32(arg_0.d * -661f), _wgslsmith_f_op_f32(select(arg_2.d, arg_0.c.a.x, arg_2.c.b.x)), -1170f), vec3<bool>(29788i <= global0.x, !arg_2.c.b.x, false)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.d))) - _wgslsmith_f_op_f32(arg_1.c.a.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -220f), 2186f))))));
    var var_2 = select(vec4<bool>(arg_0.c.d, arg_1.c.d, arg_0.c.b.x, u_input.a != arg_0.b), vec4<bool>((1u & ~arg_1.b) <= arg_2.b, false, arg_2.c.b.x, false), !vec4<bool>(false, any(select(arg_0.c.b, vec3<bool>(false, false, true), true)), true, any(arg_1.c.b.yz)));
    var var_3 = arg_2.c;
    let var_4 = firstLeadingBit(-1i);
    return vec4<u32>(1u, _wgslsmith_div_u32(86893u, max(~arg_1.b, 0u) | ~4294967295u), 4294967295u, arg_1.b);
}

fn func_2() -> bool {
    let var_0 = ~_wgslsmith_dot_vec4_u32(func_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(309f, -486f) - vec2<f32>(995f, -340f)), _wgslsmith_sub_u32(u_input.a, 48274u), Struct_1(vec4<f32>(1504f, -1039f, -1252f, 1019f), vec3<bool>(false, true, false), -157f, false), 805f), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, 1690f)), 1u, Struct_1(vec4<f32>(1226f, 1929f, -1258f, -1242f), vec3<bool>(false, false, false), -1718f, false), _wgslsmith_f_op_f32(-2705f * 1133f)), Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(715f, -825f), vec2<f32>(-297f, -570f), false)), ~1u, Struct_1(vec4<f32>(115f, 1211f, 907f, 1158f), vec3<bool>(true, false, true), 1031f, true), -1000f), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-823f, -1000f, 1688f, 2197f)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-1006f * 1600f), true)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, ~8043u, u_input.a), min(firstLeadingBit(vec4<u32>(64317u, u_input.a, u_input.a, 1u)), firstTrailingBit(vec4<u32>(0u, 13608u, 11482u, u_input.a)))));
    let var_1 = global1[_wgslsmith_index_u32(1u, 26u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1350f, -143f, -809f, 1162f))) + vec4<f32>(_wgslsmith_f_op_f32(floor(952f)), -809f, _wgslsmith_f_op_f32(-1576f - -593f), 1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1211f, 1000f, -524f, -780f) * vec4<f32>(-462f, 757f, 888f, 955f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-126f, -416f, 1455f, 189f) * vec4<f32>(102f, -884f, -372f, 972f)) - _wgslsmith_div_vec4_f32(vec4<f32>(214f, 311f, 207f, -1008f), vec4<f32>(940f, -202f, 1145f, 321f))))), select(vec3<bool>(!any(vec4<bool>(true, false, false, true)), !any(vec4<bool>(true, false, false, false)), false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)), vec3<bool>(all(vec3<bool>(true, false, true)), true, true)), vec3<bool>(!all(vec2<bool>(true, true)), true, ~(-2147483647i) != global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0, 365u), 26u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-435f)))), true);
    return true;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global3 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 0u), ~12737u), 0u) >> (u_input.a % 32u);
    var var_0 = !select(!vec2<bool>(true, func_2()), vec2<bool>(true, true), vec2<bool>(!(u_input.a == 53609u), !(global0.x <= global0.x)));
    var var_1 = abs(vec4<i32>(-64201i, _wgslsmith_add_i32(-48626i, global1[_wgslsmith_index_u32(75337u, 26u)]), select(arg_0, 22741i, true), _wgslsmith_sub_i32(~global0.x, 67709i))) | -(vec4<i32>(-global1[_wgslsmith_index_u32(u_input.a, 26u)], _wgslsmith_clamp_i32(-2147483647i, arg_0, -7581i), global1[_wgslsmith_index_u32(u_input.a, 26u)], -global1[_wgslsmith_index_u32(u_input.a, 26u)]) | vec4<i32>(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_0), arg_0 | 2147483647i, _wgslsmith_div_i32(8563i, 2147483647i), global1[_wgslsmith_index_u32(~56963u, 26u)]));
    var var_2 = ~vec4<u32>(u_input.a, u_input.a, (~u_input.a << (countOneBits(u_input.a) % 32u)) ^ 100582u, ~4294967295u);
    var_1 = -countOneBits(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, 0i, var_1.x, global1[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -24226i, 20901i, -56064i), vec4<i32>(-2147483647i, 1i, 10223i, global0.x))) >> (func_3(Struct_2(vec2<f32>(830f, -312f), var_2.x, Struct_1(vec4<f32>(-1000f, 1909f, 119f, -717f), vec3<bool>(var_0.x, var_0.x, var_0.x), 1000f, var_0.x), -628f), Struct_2(vec2<f32>(609f, 637f), 0u, Struct_1(vec4<f32>(-595f, -316f, -330f, -224f), vec3<bool>(false, var_0.x, var_0.x), 2161f, false), -1544f), Struct_2(vec2<f32>(138f, 765f), var_2.x, Struct_1(vec4<f32>(-1000f, -1000f, -1097f, 977f), vec3<bool>(false, var_0.x, false), 948f, true), -413f), Struct_1(vec4<f32>(1062f, -1465f, 718f, 258f), vec3<bool>(false, false, true), -1306f, var_0.x)) % vec4<u32>(32u)));
    return Struct_1(vec4<f32>(-122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)) - -232f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -311f) * _wgslsmith_div_f32(1062f, 604f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -1455f, var_0.x)) * _wgslsmith_f_op_f32(ceil(1137f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-203f, -1476f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-277f, -1589f) * 1280f)))), select(!select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, false, true)), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false), var_0.x | true), !vec3<bool>(var_0.x, select(var_0.x, var_0.x, false), select(true, false, false)), any(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), func_2()))), _wgslsmith_f_op_f32(f32(-1f) * -510f), false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~u_input.a);
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1452f, -661f, 1056f), vec3<f32>(-650f, 205f, -1721f)))), vec3<f32>(-1354f, _wgslsmith_f_op_f32(f32(-1f) * -263f), _wgslsmith_f_op_f32(step(-866f, -934f))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_0.x)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f - -767f)), var_0.x);
    let var_1 = func_1(-_wgslsmith_mod_i32(max(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)]) | _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(20568u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)]), 0i));
    let var_2 = vec3<f32>(1000f, -879f, _wgslsmith_f_op_f32(-func_1(-2147483647i).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(-(vec3<i32>(-1i) * -vec3<i32>(global1[_wgslsmith_index_u32(1u, 26u)], 1i, global1[_wgslsmith_index_u32(u_input.a, 26u)])), vec3<i32>(_wgslsmith_add_i32(-52175i, global1[_wgslsmith_index_u32(u_input.a, 26u)] ^ -1i), global1[_wgslsmith_index_u32(~u_input.a | (20137u >> (u_input.a % 32u)), 26u)], global0.x ^ global1[_wgslsmith_index_u32(u_input.a, 26u)]), !var_1.b));
}

