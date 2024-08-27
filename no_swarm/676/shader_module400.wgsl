struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(-857f, 210f), vec4<bool>(false, false, false, true), 40798i, vec3<f32>(-1000f, -800f, -335f), 466f));

var<private> global2: f32 = 236f;

var<private> global3: array<i32, 24> = array<i32, 24>(16370i, 2147483647i, i32(-2147483648), -20573i, 1i, -4548i, -1320i, i32(-2147483648), -23425i, -36705i, 9528i, 1i, i32(-2147483648), 2147483647i, -12014i, -35356i, 42712i, 76218i, 74257i, -21200i, i32(-2147483648), 55960i, 55426i, 35752i);

var<private> global4: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(7436u, 22489u, 23713u, 73971u), vec4<u32>(40935u, 21995u, 4294967295u, 16527u), vec4<u32>(34854u, 1u, 4294967295u, 21782u), vec4<u32>(0u, 0u, 11959u, 4294967295u), vec4<u32>(0u, 34837u, 89716u, 15113u), vec4<u32>(4294967295u, 20551u, 1u, 0u), vec4<u32>(15045u, 1u, 3982u, 104612u), vec4<u32>(24363u, 26480u, 0u, 49741u), vec4<u32>(28212u, 61579u, 55409u, 4294967295u), vec4<u32>(16736u, 43125u, 15240u, 37708u), vec4<u32>(0u, 86336u, 1u, 0u), vec4<u32>(11187u, 22576u, 1u, 1u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(14983u, 39850u, 534u, 1u), vec4<u32>(58610u, 12121u, 60721u, 1u), vec4<u32>(4294967295u, 37828u, 4294967295u, 54065u), vec4<u32>(1u, 6513u, 45259u, 4294967295u), vec4<u32>(20752u, 0u, 1u, 1u), vec4<u32>(1u, 16339u, 56032u, 99249u), vec4<u32>(3044u, 1u, 60030u, 44714u), vec4<u32>(20223u, 0u, 0u, 22843u), vec4<u32>(7325u, 125739u, 10783u, 4294967295u), vec4<u32>(31985u, 5160u, 1u, 71301u), vec4<u32>(25674u, 0u, 11132u, 71154u), vec4<u32>(0u, 4294967295u, 64838u, 16024u), vec4<u32>(4294967295u, 9694u, 0u, 4294967295u), vec4<u32>(0u, 38440u, 849u, 1u), vec4<u32>(4294967295u, 23990u, 0u, 18819u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec2<bool> {
    var var_0 = -440f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1207f * arg_0.x) * _wgslsmith_f_op_f32(select(868f, -1226f, global1.a.b.x)))) * arg_1);
    var var_1 = global0[_wgslsmith_index_u32(~(abs(_wgslsmith_clamp_u32(0u, 0u, 64815u)) >> (max(_wgslsmith_clamp_u32(68157u, 16722u, 4294967295u), reverseBits(4294967295u)) % 32u)) | ~(~_wgslsmith_div_u32(~0u, firstTrailingBit(0u))), 11u)];
    var var_2 = Struct_5(_wgslsmith_add_i32(global1.a.c, 29892i | global1.a.c));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(896f * -661f), _wgslsmith_f_op_f32(-var_1.a.a.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-861f, arg_0.x))), var_1.a.d.xz, vec2<bool>(true, true))), var_1.a.b, -30980i ^ _wgslsmith_add_i32(global3[_wgslsmith_index_u32(1u, 24u)], -_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 24u)], var_2.a, 0i, -1i), vec4<i32>(0i, -2147483647i, global3[_wgslsmith_index_u32(3555u, 24u)], var_1.a.c))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.a.x)) - 1501f)), 186f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.e) * global1.a.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global1.a.a.x)), 1138f, all(!vec4<bool>(true, true, var_1.a.b.x, true))))));
    global1 = Struct_2(Struct_1(var_3.d.zx, global1.a.b, 5278i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-428f, var_1.a.d.x, 643f), vec3<f32>(var_1.a.a.x, 966f, arg_0.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1, arg_1, arg_1)))) * vec3<f32>(global1.a.a.x, 261f, _wgslsmith_f_op_f32(arg_1 * 377f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -641f), -2151f, !var_3.b.x))));
    return global1.a.b.xy;
}

fn func_2() -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -903f)), _wgslsmith_f_op_vec2_f32(-global1.a.d.zy), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1288f, global1.a.d.x, global1.a.e, global1.a.e)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, global1.a.e, 521f, global1.a.a.x) - vec4<f32>(392f, global1.a.d.x, 1602f, global1.a.a.x))), global1.a.e))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global1.a.e + _wgslsmith_f_op_f32(-1479f - global1.a.e)), global1.a.e), select(select(vec4<bool>(global1.a.b.x, global1.a.b.x, global1.a.b.x, false), !vec4<bool>(false, global1.a.b.x, global1.a.b.x, global1.a.b.x), true), select(vec4<bool>(global1.a.b.x, global1.a.b.x, global1.a.b.x, global1.a.b.x), vec4<bool>(global1.a.b.x, true, global1.a.b.x, global1.a.b.x), global1.a.b.x), global1.a.b), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, 0u, 4294967295u)), vec3<u32>(0u, 1u, min(61981u, 0u))), 24u)], global1.a.d, -773f), select(global1.a.b.yy, vec2<bool>(any(global1.a.b.zzx), global1.a.b.x), false), global1.a.b, 0i);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a.e)) * var_0.b.d.x)));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4120u), vec2<u32>(1u, 1u)), 0u), 55613u), 11u)];
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.e));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.a.x, -677f)));
    return ~0u;
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> Struct_4 {
    return Struct_4(arg_2.a, Struct_1(global1.a.d.zz, arg_2.b.b, ~(-6431i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-481f, _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(round(-2672f)))), _wgslsmith_div_f32(global1.a.e, _wgslsmith_f_op_f32(219f + _wgslsmith_f_op_f32(round(-300f))))), global1.a.b.ww, arg_3.d, global1.a.c);
}

fn func_1(arg_0: i32, arg_1: bool) -> StorageBuffer {
    var var_0 = func_4(Struct_5(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.a.xy, select(vec2<i32>(u_input.b, global3[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<i32>(u_input.c, 1i), global1.a.b.yx) ^ u_input.a.yw)), _wgslsmith_div_u32(abs(~select(1u, 1u, arg_1)), _wgslsmith_mod_u32(select(_wgslsmith_mult_u32(47647u, 4768u), _wgslsmith_mod_u32(12200u, 4294967295u), global1.a.b.x & global1.a.b.x), func_2())), Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global1.a.d.yz)), vec2<f32>(-104f, global1.a.e)), Struct_1(_wgslsmith_f_op_vec2_f32(select(global1.a.d.xy, global1.a.a, false)), global1.a.b, -47717i, global1.a.d, global1.a.a.x), global1.a.b.yw, vec4<bool>(arg_1, true, true, global1.a.b.x), i32(-1i) * -2147483647i), Struct_4(global1.a.a, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.d.xz * global1.a.d.zz) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.a.x, 1000f), vec2<f32>(-161f, global1.a.e)))), !vec4<bool>(true, false, global1.a.b.x, global1.a.b.x), ~(-1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a.a.x, global1.a.d.x, -1632f), global1.a.d)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-547f, 1879f, -1304f)))), _wgslsmith_f_op_f32(floor(global1.a.a.x))), global1.a.b.xw, vec4<bool>(!(false != global1.a.b.x), true, global1.a.b.x, true), abs(arg_0)));
    var var_1 = -19826i;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(98860u, 1u, 1u) & 1u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(79902u, 10227u), ~abs(32944u))), _wgslsmith_mod_vec2_u32(select(max(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 8131u)), vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(560u, 0u), vec2<u32>(1u, 29649u)), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2001f, 3455f, var_0.a.x, var_0.b.e)), _wgslsmith_f_op_f32(floor(var_0.b.e)))), vec2<u32>(1u, 1u) & max(_wgslsmith_clamp_vec2_u32(vec2<u32>(19715u, 1u), vec2<u32>(14970u, 56912u), vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 1u)))), 11u)];
    let var_3 = select(var_0.b.b.yy, !vec2<bool>(!(!var_2.a.b.x), false), func_4(Struct_5(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.yxx, vec3<i32>(-4353i, var_2.a.c, u_input.d.x)), -1i, global1.a.c | global1.a.c)), firstTrailingBit(~firstLeadingBit(17957u)), Struct_4(func_4(Struct_5(2147483647i), ~0u, Struct_4(global1.a.d.yz, global1.a, var_0.d.wy, global1.a.b, u_input.d.x), Struct_4(vec2<f32>(global1.a.a.x, 742f), Struct_1(vec2<f32>(-797f, 570f), vec4<bool>(global1.a.b.x, true, arg_1, var_2.a.b.x), global1.a.c, vec3<f32>(global1.a.e, 289f, var_2.a.e), -106f), global1.a.b.xz, var_2.a.b, 40085i)).a, Struct_1(_wgslsmith_f_op_vec2_f32(-var_2.a.d.xz), global1.a.b, min(49647i, -29945i), global1.a.d, _wgslsmith_f_op_f32(-var_2.a.e)), global1.a.b.xw, var_0.d, global3[_wgslsmith_index_u32(0u, 24u)]), Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, 1000f) - vec2<f32>(1000f, -2065f)), global1.a.d.yx), Struct_1(_wgslsmith_f_op_vec2_f32(min(global1.a.d.zz, vec2<f32>(var_0.b.d.x, -554f))), !global1.a.b, var_0.b.c, _wgslsmith_f_op_vec3_f32(-var_0.b.d), _wgslsmith_f_op_f32(abs(-329f))), vec2<bool>(any(vec2<bool>(var_0.d.x, true)), false), func_4(Struct_5(global1.a.c), abs(0u), Struct_4(global1.a.a, Struct_1(var_0.b.d.yz, var_2.a.b, 2147483647i, var_0.b.d, 143f), var_2.a.b.zy, var_0.b.b, -1i), Struct_4(vec2<f32>(773f, var_2.a.d.x), global1.a, vec2<bool>(true, false), global1.a.b, var_2.a.c)).b.b, 2147483647i)).c);
    var var_4 = 1f;
    return StorageBuffer(var_0.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.e, -1254f)))), global1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1375f)), _wgslsmith_f_op_f32(f32(-1f) * -534f)) * -304f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global1.a.d.x, -478f))))))), global1.a.b.x));
    global3 = array<i32, 24>();
    let var_0 = all(!(!(!select(global1.a.b.xwy, vec3<bool>(true, false, global1.a.b.x), vec3<bool>(global1.a.b.x, global1.a.b.x, global1.a.b.x)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.a.e, 1081f, var_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1828f))))) + global1.a.d.x));
    let var_2 = _wgslsmith_add_vec3_i32(u_input.a.wwz, ~u_input.a.xzz);
    let x = u_input.a;
    s_output = func_1(-_wgslsmith_mod_i32(-30815i, u_input.d.x), true);
}

