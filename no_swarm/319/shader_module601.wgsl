struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<Struct_3, 19>;

var<private> global2: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(4294967295u, 0i), Struct_1(59800u, 4314i), Struct_1(4294967295u, -9544i), Struct_1(0u, -61613i), Struct_1(57733u, -23568i), Struct_1(20107u, 0i), Struct_1(0u, 11247i), Struct_1(86699u, 18407i), Struct_1(1u, -1i), Struct_1(0u, -1i), Struct_1(1u, 7936i), Struct_1(1u, 0i), Struct_1(49048u, -11520i), Struct_1(0u, 23420i), Struct_1(0u, -24057i), Struct_1(24893u, 1i), Struct_1(1u, 0i), Struct_1(4294967295u, -39104i), Struct_1(1u, 4652i));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global2 = array<Struct_1, 19>();
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~reverseBits(15198u)), 1u), 19u)];
    var var_1 = ~var_0.a.x;
    var var_2 = global2[_wgslsmith_index_u32(~4294967295u, 19u)];
    var var_3 = true;
    return -28890i;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: vec3<u32>) -> i32 {
    global0 = _wgslsmith_div_i32(arg_2, u_input.a);
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(_wgslsmith_sub_u32(0u, arg_3.x)), arg_3.x | (87768u << (~arg_3.x % 32u))) | arg_3.x, 19u)];
    let var_1 = -vec4<i32>(u_input.a, -1i << (~(arg_3.x >> (arg_3.x % 32u)) % 32u), i32(-1i) * -_wgslsmith_sub_i32(var_0.b, arg_2), 1i);
    global0 = func_3() & 1i;
    let var_2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(0u, var_0.a, arg_3.x)), ~(~arg_3)), vec3<u32>(~_wgslsmith_add_u32(0u, arg_3.x), firstLeadingBit(4294967295u), arg_3.x));
    return -1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<i32>) -> Struct_1 {
    return Struct_1(_wgslsmith_mult_u32(max(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 52649u, 9223u, 4294967295u), ~vec4<u32>(42942u, 0u, 4294967295u, 1u)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(49762u, 4294967295u)), vec2<u32>(0u, 4294967295u))), firstLeadingBit(_wgslsmith_add_u32(~4294967295u, 1u))), _wgslsmith_mod_i32(max(-15312i, -1i), (arg_0.x & u_input.a) | func_2(false, vec2<f32>(292f, -994f), arg_1, vec3<u32>(4294967295u, 1u, 4294967295u))) & _wgslsmith_mod_i32(arg_1, 2274i));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    global2 = array<Struct_1, 19>();
    var var_0 = arg_1.b;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-459f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), arg_0, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), arg_0)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -288f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1949f), _wgslsmith_f_op_f32(f32(-1f) * -1772f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)) * 346f), _wgslsmith_div_f32(-406f, 763f)));
    let var_2 = Struct_2(vec4<i32>(arg_3.b, -2147483647i, u_input.a, max(arg_3.b, arg_2.b) >> (((arg_1.a | arg_1.a) >> (~arg_3.a % 32u)) % 32u)), reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(countOneBits(0u), ~1u, arg_2.a), vec3<u32>(4294967295u, arg_3.a, firstLeadingBit(1u)))), arg_3.b == 1i, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, firstTrailingBit(36017u), 4294967295u | arg_2.a, 1u), reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 7396u), vec4<u32>(19002u, 158475u, 4294967295u, 0u), vec4<u32>(0u, arg_1.a, 4294967295u, arg_3.a)))), ~4294967295u, arg_1.a));
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(~0u, 0u)), max(firstLeadingBit(countOneBits(vec2<u32>(44160u, arg_1.a))), ~_wgslsmith_mod_vec2_u32(var_2.b.zz, vec2<u32>(arg_2.a, 4294967295u))), ~_wgslsmith_mult_vec2_u32(var_2.b.yz, vec2<u32>(4294967295u, 4294967295u) << (var_2.b.xx % vec2<u32>(32u)))), var_2.b.yy);
    return vec2<bool>(true, true);
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-205f, 2223f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1262f, 2248f))))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(-904f, 1085f)), _wgslsmith_f_op_f32(1438f * -403f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1566f, 1318f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(440f, 167f))));
    global2 = array<Struct_1, 19>();
    var var_2 = !select(func_5(-1014f, global2[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 11842u, 22541u, 66318u))), 19u)], func_4(vec2<i32>(2147483647i, u_input.a) << (vec2<u32>(14625u, 47145u) % vec2<u32>(32u)), func_2(true, var_1, -2147483647i, vec3<u32>(31594u, 1u, 20332u)), -vec3<i32>(34451i, u_input.a, u_input.a)), func_4(vec2<i32>(2147483647i, u_input.a), 810i, vec3<i32>(-15902i, -6196i, u_input.a) >> (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u)))), !func_5(-1331f, global2[_wgslsmith_index_u32(1u, 19u)], Struct_1(104152u, u_input.a), Struct_1(4294967295u, u_input.a)), vec2<bool>(true, any(vec2<bool>(true, true))));
    return global2[_wgslsmith_index_u32(23129u, 19u)];
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_3 {
    var var_0 = ~arg_1.a.xzx >> (~(~vec3<u32>(1u, _wgslsmith_mult_u32(25307u, arg_1.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(10032u, 91561u, 460u, 4294967295u), vec4<u32>(arg_1.d, 0u, 1u, arg_0.a)))) % vec3<u32>(32u));
    let var_1 = vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(exp2(arg_2.x)));
    let var_2 = any(vec3<bool>(all(!(!vec3<bool>(arg_1.c, false, arg_1.c))), arg_1.c, arg_1.c));
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(1000f - 1f) > _wgslsmith_div_f32(-1109f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x)))), -1i == _wgslsmith_add_i32(func_3(), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_1.a.x, 0i), arg_0.b, ~25465i)), arg_1.c, false);
    var_3 = select(select(select(vec4<bool>(arg_1.c, true, !var_2, 661f <= arg_2.x), vec4<bool>(any(vec4<bool>(var_2, true, false, false)), all(vec4<bool>(arg_1.c, var_2, var_2, false)), any(vec2<bool>(false, var_2)), any(vec3<bool>(true, true, var_2))), arg_1.c), vec4<bool>(var_3.x, arg_2.x <= -1257f, !(u_input.a < arg_1.a.x), func_5(var_1.x, Struct_1(arg_0.a, 1i), global2[_wgslsmith_index_u32(5801u & arg_0.a, 19u)], Struct_1(4294967295u, -29456i)).x), _wgslsmith_f_op_f32(var_1.x + var_1.x) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x * -1000f))), !vec4<bool>(true, !select(true, true, arg_1.c), any(var_3.zxx), var_3.x), select(select(select(vec4<bool>(arg_1.c, arg_1.c, var_3.x, var_3.x), !vec4<bool>(arg_1.c, var_3.x, arg_1.c, var_3.x), true), select(vec4<bool>(var_2, true, true, false), select(vec4<bool>(true, var_3.x, var_2, arg_1.c), vec4<bool>(false, var_2, false, false), false), true), select(select(vec4<bool>(true, arg_1.c, var_2, arg_1.c), vec4<bool>(var_3.x, arg_1.c, true, arg_1.c), false), vec4<bool>(true, var_2, false, false), !vec4<bool>(true, true, var_2, arg_1.c))), !vec4<bool>(true, false, var_2 || arg_1.c, true), any(select(vec2<bool>(false, false), func_5(var_1.x, arg_0, Struct_1(arg_1.d, u_input.a), Struct_1(45158u, -2147483647i)), vec2<bool>(arg_1.c, false)))));
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, ~(74620u ^ arg_0.a), 1u), _wgslsmith_sub_u32(reverseBits(arg_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1.d, 25596u), abs(arg_1.b)) << (1u % 32u))), 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(), Struct_2(-min(_wgslsmith_mult_vec4_i32(vec4<i32>(-21690i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(11982i, 2147483647i, u_input.a, u_input.a), vec4<i32>(-1i, u_input.a, 2147483647i, -2147483647i))), abs(~firstLeadingBit(vec3<u32>(49167u, 4294967295u, 1u))), true, 1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(743f, -286f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1748f, 980f) * vec2<f32>(-130f, -365f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1381f, -1000f) - vec2<f32>(1000f, -658f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-346f, 262f) - vec2<f32>(-1714f, 971f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2121f, -850f), vec2<f32>(901f, -995f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(225f, -610f), vec2<f32>(-1000f, 1260f)))), true)));
    global1 = array<Struct_3, 19>();
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, func_1().b, _wgslsmith_clamp_i32(-var_0.b.b, ~0i, min(var_0.b.b, var_0.c.b)) & func_6(var_0.c, Struct_2(vec4<i32>(var_0.b.b, 8737i, var_0.c.b, u_input.a), vec3<u32>(86031u, 0u, 60921u), true, 1u), var_0.e).b.b, 2147483647i), -_wgslsmith_add_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 31164i, var_0.b.b, 1i), vec4<i32>(u_input.a, -1i, u_input.a, var_0.b.b)), vec4<i32>(var_0.c.b, u_input.a, var_0.b.b, -1i)), vec4<i32>(~5977i, var_0.c.b & 64903i, var_0.b.b, ~163i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, var_0.e.x, -2261f) - vec3<f32>(var_0.e.x, var_0.e.x, var_0.e.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1707f, -671f, -1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.e.x, 385f, var_0.e.x), vec3<f32>(var_0.e.x, 194f, var_0.e.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.x, var_0.e.x, 136f))))), var_0.b.b, func_6(func_6(func_4(-vec2<i32>(u_input.a, var_0.c.b), countOneBits(u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(20670i, u_input.a, 1i))), Struct_2(vec4<i32>(u_input.a, var_0.b.b, u_input.a, var_0.b.b) & vec4<i32>(var_0.b.b, 1i, 0i, u_input.a), vec3<u32>(var_0.d, var_0.c.a, var_0.a.x), var_0.e.x <= var_0.e.x, reverseBits(var_0.b.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.e * var_0.e))).c, Struct_2(~reverseBits(vec4<i32>(-34699i, u_input.a, var_0.b.b, u_input.a)), vec3<u32>(~73311u, select(var_0.d, 0u, true), var_0.c.a), !any(vec3<bool>(false, false, true)), 18892u), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.e)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-163f, 1467f), var_0.e)))))).a.x, var_0.d);
}

