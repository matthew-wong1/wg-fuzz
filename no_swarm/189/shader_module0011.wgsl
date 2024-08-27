struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(-9103i, vec3<i32>(39718i, 56816i, 0i), Struct_1(vec4<f32>(756f, -571f, 2407f, -388f), false), Struct_1(vec4<f32>(-733f, 286f, 200f, -658f), true)), Struct_3(-1i, vec3<i32>(69861i, -1i, 2147483647i), Struct_1(vec4<f32>(-713f, 707f, -1000f, 1154f), false), Struct_1(vec4<f32>(-216f, 143f, -219f, 918f), false)), Struct_3(1i, vec3<i32>(-1i, 2147483647i, 0i), Struct_1(vec4<f32>(664f, -1724f, 740f, -595f), false), Struct_1(vec4<f32>(863f, 357f, -1547f, 1645f), false)), Struct_3(0i, vec3<i32>(19452i, i32(-2147483648), 88437i), Struct_1(vec4<f32>(567f, -235f, -1050f, -1960f), true), Struct_1(vec4<f32>(-586f, 1741f, 524f, 223f), false)), Struct_3(0i, vec3<i32>(i32(-2147483648), -1i, 4537i), Struct_1(vec4<f32>(2335f, 1890f, 477f, -932f), true), Struct_1(vec4<f32>(-1000f, 930f, -542f, -113f), false)), Struct_3(-17594i, vec3<i32>(76681i, 2147483647i, -61889i), Struct_1(vec4<f32>(271f, 1045f, -612f, -928f), true), Struct_1(vec4<f32>(1027f, -400f, -500f, -1000f), false)), Struct_3(0i, vec3<i32>(21590i, 32090i, 36864i), Struct_1(vec4<f32>(276f, -218f, -1452f, 1000f), false), Struct_1(vec4<f32>(478f, -478f, -682f, 907f), true)), Struct_3(-29783i, vec3<i32>(7557i, -19551i, -34769i), Struct_1(vec4<f32>(-649f, -828f, 1046f, -893f), false), Struct_1(vec4<f32>(-164f, -382f, 314f, 651f), false)), Struct_3(-40128i, vec3<i32>(30453i, 23872i, 0i), Struct_1(vec4<f32>(131f, 518f, 1459f, 813f), true), Struct_1(vec4<f32>(239f, -383f, 1739f, -342f), false)), Struct_3(0i, vec3<i32>(-1i, 0i, 0i), Struct_1(vec4<f32>(-1056f, 792f, -850f, -367f), false), Struct_1(vec4<f32>(-258f, 1068f, 816f, 392f), true)), Struct_3(0i, vec3<i32>(5447i, i32(-2147483648), 2147483647i), Struct_1(vec4<f32>(-231f, -1371f, -634f, 138f), true), Struct_1(vec4<f32>(1931f, -644f, -1022f, -360f), false)));

var<private> global1: vec4<u32> = vec4<u32>(38198u, 1u, 0u, 28194u);

var<private> global2: array<vec4<bool>, 32>;

var<private> global3: array<vec3<i32>, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 604f) * vec4<f32>(-213f, arg_0, arg_0, 1000f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 791f, arg_0, 1253f), vec4<f32>(arg_0, arg_0, 250f, arg_0))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(488f, 334f, arg_0, 1636f))), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0)), arg_0, -441f, _wgslsmith_f_op_f32(-arg_0)))))), !select(true, true, !any(vec2<bool>(false, false))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.zx));
    let var_2 = global0[_wgslsmith_index_u32(6606u, 11u)];
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-var_2.c.a.x))))), var_0.b);
    let var_4 = ~(~(~max(~vec4<u32>(global1.x, 52852u, global1.x, global1.x), ~vec4<u32>(global1.x, 6027u, 0u, global1.x))));
    return var_2.c.a.zxw;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec3<u32>) -> bool {
    global2 = array<vec4<bool>, 32>();
    global3 = array<vec3<i32>, 31>();
    let var_0 = ~(min(min(arg_3.x, arg_1.c.x), ~arg_3.x) & _wgslsmith_div_u32(4294967295u, arg_3.x));
    let var_1 = any(global2[_wgslsmith_index_u32(arg_1.c.x, 32u)]);
    return !any(!vec2<bool>(var_1, arg_2.a.a.x <= -124f));
}

fn func_2() -> Struct_1 {
    let var_0 = 4294967295u;
    global0 = array<Struct_3, 11>();
    let var_1 = global1.x ^ global1.x;
    var var_2 = true;
    global0 = array<Struct_3, 11>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -207f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-831f, -1091f)) - -1429f), 1703f, 1130f))), func_4(vec2<u32>(var_1, var_0), Struct_2(true, ~2059u, vec4<u32>(1u, 1u, 1u, 1u) & ~vec4<u32>(global1.x, var_0, global1.x, 1u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-724f, 984f, 1219f, 936f)), true), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(927f)), vec3<f32>(-1640f, 1068f, 1709f)))), Struct_4(Struct_1(vec4<f32>(732f, 883f, -841f, 2041f), true), 1i), vec3<u32>(22816u, ~var_0, global1.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_3 {
    var var_0 = func_2();
    let var_1 = ~(firstLeadingBit(vec3<i32>(select(2147483647i, arg_2, true), 1i, -1i)) | -reverseBits(vec3<i32>(0i, u_input.b.x, -3139i)));
    global1 = ~countOneBits(vec4<u32>(~reverseBits(global1.x), 43814u, ~(~global1.x), _wgslsmith_div_u32(76673u | global1.x, 59403u & global1.x)));
    global1 = ~firstLeadingBit(~_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, 27366u, global1.x, global1.x), abs(vec4<u32>(global1.x, 4294967295u, global1.x, 25860u))));
    let var_2 = global1.zx;
    return Struct_3(u_input.a.x, -_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-27772i, -7089i, u_input.b.x), var_1), vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2, arg_2), u_input.b.xz), var_1.x)), arg_1, arg_0);
}

fn func_5(arg_0: Struct_3) -> vec4<u32> {
    let var_0 = !(_wgslsmith_mod_i32(_wgslsmith_sub_i32(~arg_0.b.x, 118i), _wgslsmith_dot_vec3_i32(u_input.b, global3[_wgslsmith_index_u32(global1.x | global1.x, 31u)])) >= _wgslsmith_mult_i32(-7007i, min(select(u_input.b.x, -2147483647i, arg_0.d.b), 1i)));
    var var_1 = max(min(~max(vec4<u32>(global1.x, global1.x, 1u, 45075u) >> (vec4<u32>(1u, global1.x, global1.x, 9019u) % vec4<u32>(32u)), vec4<u32>(global1.x, global1.x, global1.x, global1.x) >> (vec4<u32>(global1.x, 0u, 1u, 1u) % vec4<u32>(32u))), select(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global1.x, 4294967295u, 29402u, 4294967295u)), vec4<u32>(1u, global1.x, global1.x, global1.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.x, global1.x, 4294967295u), vec4<u32>(35682u, global1.x, 1u, 0u)), all(select(vec2<bool>(true, arg_0.c.b), vec2<bool>(arg_0.c.b, true), false)))), ~(~(~countOneBits(vec4<u32>(12093u, 1u, 1u, global1.x)))));
    global0 = array<Struct_3, 11>();
    global3 = array<vec3<i32>, 31>();
    let var_2 = _wgslsmith_add_vec4_u32(~select(~vec4<u32>(1u, global1.x, 4294967295u, 0u) << (vec4<u32>(49889u, global1.x, 61876u, 4294967295u) % vec4<u32>(32u)), select(select(vec4<u32>(global1.x, global1.x, var_1.x, global1.x), vec4<u32>(769u, var_1.x, global1.x, var_1.x), arg_0.d.b), countOneBits(vec4<u32>(var_1.x, 62307u, 68233u, 1u)), var_0), !arg_0.d.b), vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 1u, global1.x) & vec4<u32>(global1.x, var_1.x, global1.x, var_1.x), ~vec4<u32>(39354u, 14975u, global1.x, 34987u))), firstLeadingBit(~(~var_1.x)), abs(_wgslsmith_mod_u32(var_1.x, 15611u)), _wgslsmith_div_u32(max(firstLeadingBit(global1.x), global1.x | var_1.x), 1u)));
    return ~abs(var_2);
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> StorageBuffer {
    let var_0 = func_1(arg_1.d, arg_1.d, countOneBits(1i));
    var var_1 = arg_2;
    var var_2 = arg_1;
    var var_3 = global1.xzx;
    var var_4 = abs(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.b, var_2.b, arg_2, 4294967295u), ~arg_1.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(14550u, 0u, arg_1.b, var_2.c.x), var_2.c, arg_1.c)))) & vec4<u32>(~arg_1.c.x, global1.x ^ ~_wgslsmith_div_u32(arg_1.c.x, global1.x), abs(arg_1.c.x), 17197u);
    return StorageBuffer(vec2<f32>(_wgslsmith_div_f32(-321f, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x))), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~(u_input.a.zyz << (arg_1.c.wxz % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(var_0.b.x, -1i, u_input.b.x) ^ var_0.b), var_0.b), _wgslsmith_mult_vec3_i32(select(vec3<i32>(u_input.b.x, 32371i, 2147483647i), ~vec3<i32>(u_input.b.x, u_input.b.x, var_0.b.x), var_0.d.b || false), vec3<i32>(-1i << (0u % 32u), 1i, func_1(Struct_1(arg_1.d.a, true), Struct_1(var_2.d.a, false), -1i).b.x)), ~countOneBits(vec3<i32>(-30726i, u_input.a.x, var_0.b.x) >> (var_4.zwx % vec3<u32>(32u)))), var_4.x, 0i & u_input.a.x, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<u32>(_wgslsmith_dot_vec3_u32(global1.yzy, global1.wxx), global1.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global1.zy, ~global1.wx), 12337u, ~_wgslsmith_dot_vec2_u32(global1.xw << (vec2<u32>(global1.x, 4294967295u) % vec2<u32>(32u)), ~vec2<u32>(0u, 0u))), select(global1.x, _wgslsmith_clamp_u32(40985u, ~(global1.x << (1u % 32u)), _wgslsmith_mult_u32(4294967295u, global1.x)), true));
    global2 = array<vec4<bool>, 32>();
    var var_0 = global1.x & abs(global1.x);
    var_0 = 0u;
    global0 = array<Struct_3, 11>();
    var_0 = countOneBits(16939u);
    global3 = array<vec3<i32>, 31>();
    var var_1 = Struct_4(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), any(vec3<bool>(true, true, true))), abs(_wgslsmith_div_i32(firstLeadingBit(~9014i), u_input.b.x)));
    var_0 = 1u;
    let x = u_input.a;
    s_output = func_6(var_1.a.a.x, Struct_2(var_1.a.b, ~abs(~1u), _wgslsmith_mult_vec4_u32(select(~vec4<u32>(1u, global1.x, global1.x, 0u), vec4<u32>(1u, 4294967295u, global1.x, 4294967295u) ^ vec4<u32>(33905u, global1.x, 0u, global1.x), var_1.a.b), func_5(func_1(Struct_1(var_1.a.a, var_1.a.b), Struct_1(vec4<f32>(-2657f, 1000f, var_1.a.a.x, -1000f), false), var_1.b))), Struct_1(var_1.a.a, func_2().b), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2001f - 226f))), var_1.a.a.x, var_1.a.a.x)), 18314u);
}

