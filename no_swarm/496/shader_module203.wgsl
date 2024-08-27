struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
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

var<private> global0: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(vec4<i32>(-7786i, i32(-2147483648), 2147483647i, -1i), vec4<bool>(true, false, true, true), Struct_1(1i, 945f), vec2<i32>(-30613i, -1i), 105f), Struct_2(vec4<i32>(56778i, i32(-2147483648), 1i, 19164i), vec4<bool>(true, false, false, false), Struct_1(1i, -839f), vec2<i32>(24580i, 1i), -436f), Struct_2(vec4<i32>(i32(-2147483648), -32743i, -1i, 44960i), vec4<bool>(true, false, false, true), Struct_1(96412i, 497f), vec2<i32>(2147483647i, -1i), -607f), Struct_2(vec4<i32>(i32(-2147483648), 2147483647i, 19622i, 2147483647i), vec4<bool>(true, true, true, true), Struct_1(2147483647i, -2155f), vec2<i32>(18950i, i32(-2147483648)), -404f), Struct_2(vec4<i32>(6501i, -57139i, 47196i, i32(-2147483648)), vec4<bool>(false, false, false, false), Struct_1(65390i, 348f), vec2<i32>(-45995i, -845i), -1298f), Struct_2(vec4<i32>(0i, i32(-2147483648), 0i, -40859i), vec4<bool>(false, false, false, false), Struct_1(-1i, -1141f), vec2<i32>(2147483647i, 0i), -506f), Struct_2(vec4<i32>(-53984i, 26213i, 4749i, i32(-2147483648)), vec4<bool>(true, true, false, true), Struct_1(0i, 296f), vec2<i32>(i32(-2147483648), -1i), -1080f), Struct_2(vec4<i32>(38317i, 1982i, 2147483647i, -79360i), vec4<bool>(false, true, true, true), Struct_1(1i, 1107f), vec2<i32>(-8649i, 1i), 1062f), Struct_2(vec4<i32>(-35578i, 29883i, 1i, -4423i), vec4<bool>(true, false, false, true), Struct_1(17377i, -412f), vec2<i32>(-47047i, 26046i), -1780f), Struct_2(vec4<i32>(-17530i, 8230i, 1i, -2069i), vec4<bool>(false, false, false, false), Struct_1(1431i, -581f), vec2<i32>(i32(-2147483648), 31442i), 797f), Struct_2(vec4<i32>(2147483647i, 2147483647i, 27093i, 2147483647i), vec4<bool>(true, false, true, false), Struct_1(2147483647i, -364f), vec2<i32>(1i, 20603i), -685f), Struct_2(vec4<i32>(3397i, i32(-2147483648), 2147483647i, -18053i), vec4<bool>(true, false, false, true), Struct_1(53008i, 1263f), vec2<i32>(21936i, -12016i), -282f), Struct_2(vec4<i32>(1i, 1i, 14562i, -34613i), vec4<bool>(false, true, true, true), Struct_1(i32(-2147483648), -971f), vec2<i32>(8977i, 3309i), 1545f), Struct_2(vec4<i32>(-5539i, -1i, -25265i, 0i), vec4<bool>(true, false, true, false), Struct_1(4769i, -1680f), vec2<i32>(-1i, -1i), -474f), Struct_2(vec4<i32>(1i, 24038i, 35559i, 2147483647i), vec4<bool>(false, false, true, true), Struct_1(1i, 1063f), vec2<i32>(1i, -12531i), -627f), Struct_2(vec4<i32>(-1i, i32(-2147483648), -5907i, 0i), vec4<bool>(true, false, true, false), Struct_1(0i, -972f), vec2<i32>(16060i, 2147483647i), 1000f));

var<private> global1: bool;

var<private> global2: array<i32, 16> = array<i32, 16>(2147483647i, 4387i, 0i, 1i, 12510i, 11469i, 1i, 0i, 22943i, 1412i, 31598i, i32(-2147483648), 4963i, 0i, 42809i, -2021i);

var<private> global3: Struct_1;

var<private> global4: array<vec4<f32>, 5>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> vec4<u32> {
    global1 = any(select(!arg_0.b, select(!arg_0.b, arg_0.b, arg_0.b.x & true), arg_0.b)) & ((-53209i ^ _wgslsmith_clamp_i32(~11893i, global2[_wgslsmith_index_u32(u_input.d.x, 16u)] << (u_input.b.x % 32u), global2[_wgslsmith_index_u32(u_input.b.x, 16u)])) < arg_0.c.a);
    var var_0 = arg_0.c;
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    return abs(_wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.c.x, u_input.d.x ^ 0u, 96674u, ~4294967295u), abs(u_input.b)), vec4<u32>(_wgslsmith_clamp_u32(4294967295u, reverseBits(0u), ~120618u), ~_wgslsmith_mod_u32(u_input.b.x, 82139u), u_input.d.x, u_input.b.x)));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = Struct_2(-select(vec4<i32>(1i, arg_0.a, 0i, -arg_0.a), countOneBits(vec4<i32>(arg_0.a, global3.a, -589i, global3.a)) << (func_3(Struct_2(vec4<i32>(arg_0.a, -1i, 1i, 48677i), vec4<bool>(true, true, true, false), arg_0, vec2<i32>(25771i, global3.a), -2066f), vec3<f32>(1052f, -196f, arg_0.b)) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), true), true)), arg_0, ~_wgslsmith_mod_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(25748u & u_input.c.x, 16u)], ~u_input.a), ~(~vec2<i32>(6211i, global2[_wgslsmith_index_u32(4294967295u, 16u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(874f + global3.b))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-764f, -799f))));
    var var_1 = -_wgslsmith_mult_i32(i32(-1i) * -31293i, firstTrailingBit(u_input.a));
    var var_2 = Struct_2(_wgslsmith_mod_vec4_i32(select(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(-8800i, -2147483647i, arg_0.a, arg_0.a), vec4<i32>(-56058i, u_input.a, -23720i, arg_0.a)), 1i, 31719i | var_0.c.a), ~var_0.a, select(false, var_0.b.x | true, select(var_0.b.x, false, false))), vec4<i32>(global3.a | -2147483647i, 0i, var_0.c.a, -97339i)), !select(!vec4<bool>(false, var_0.b.x, false, true), var_0.b, all(var_0.b.zx)), Struct_1(var_0.a.x >> (12101u % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -905f)))), select(var_0.d, -(~select(var_0.a.zz, var_0.a.wx, var_0.b.x)), !all(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false)) != var_0.b.x), 300f);
    var var_3 = !vec4<bool>(2147483647i < (-42970i << (u_input.d.x % 32u)), _wgslsmith_add_u32(u_input.c.x, u_input.c.x) >= u_input.c.x, !var_2.b.x & all(var_0.b.yz), !var_0.b.x);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * var_0.e))), vec2<f32>(1000f, 1355f), any(var_0.b.yxw))) + vec2<f32>(arg_0.b, _wgslsmith_f_op_f32(step(-1394f, 900f))));
    return vec3<i32>(-5591i, firstLeadingBit(~firstLeadingBit(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(4665u, 16u)], var_0.a.x))), abs(~_wgslsmith_dot_vec2_i32(~var_0.a.wz, reverseBits(var_0.a.xz))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32) -> vec2<i32> {
    var var_0 = vec2<i32>(arg_2, _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, -59515i, -arg_2), (func_2(arg_0) & (vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], global3.a, arg_2) << (u_input.d.yxz % vec3<u32>(32u)))) & vec3<i32>(-global2[_wgslsmith_index_u32(u_input.b.x, 16u)], ~global3.a, 1i & arg_0.a)));
    let var_1 = reverseBits(~(~_wgslsmith_mult_u32(1u, u_input.d.x))) | (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, u_input.d.x), ~u_input.c) & ((_wgslsmith_mod_u32(123281u, 4294967295u) ^ u_input.d.x) & _wgslsmith_mod_u32(~4294967295u, 72410u)));
    var var_2 = arg_0;
    var var_3 = Struct_1(1i, arg_0.b);
    var var_4 = Struct_2(vec4<i32>(select(var_2.a, ~(-13346i), true), 89537i, ~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], -2147483647i), var_3.a), arg_1, arg_0, vec2<i32>(~u_input.a, -21913i), _wgslsmith_f_op_f32(f32(-1f) * -1347f));
    return vec2<i32>(2147483647i, select(-(arg_0.a | var_0.x), 2409i, true) >> (~38065u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2127f), _wgslsmith_f_op_f32(floor(global3.b)), !(!(global3.b < 252f)))));
    global0 = array<Struct_2, 16>();
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(32411i, -15926i)), func_1(Struct_1(u_input.a, -1502f), vec4<bool>(false, false, true, true), -71271i), vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 16u)], -2147483647i)), vec2<i32>(u_input.a, 24287i)))), 860f);
    global1 = any(vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), true)), _wgslsmith_clamp_i32(~32203i, _wgslsmith_mult_i32(-1i, global2[_wgslsmith_index_u32(4294967295u, 16u)]), min(20201i, global3.a)) == 40590i, all(vec2<bool>(true, true))));
    let var_2 = Struct_1(i32(-1i) * -37498i, _wgslsmith_f_op_f32(trunc(-1502f)));
    let var_3 = _wgslsmith_div_i32(firstTrailingBit(15422i), firstTrailingBit(reverseBits(~var_1.a))) == _wgslsmith_add_i32(var_1.a, global2[_wgslsmith_index_u32(~u_input.b.x, 16u)]);
    global1 = all(vec3<bool>(select(!(var_3 != false), all(vec3<bool>(true, true, true)), var_3), true, !((u_input.c.x > u_input.d.x) || (var_3 & var_3))));
    var var_4 = firstTrailingBit(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(0i, u_input.a, global3.a, -22459i), vec4<i32>(global2[_wgslsmith_index_u32(76882u << (u_input.b.x % 32u), 16u)], func_2(var_2).x, 2147483647i, 1i))));
    global2 = array<i32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(countOneBits(~reverseBits(vec3<i32>(-24873i, 203i, 1313i))), select((vec3<i32>(0i, global2[_wgslsmith_index_u32(99416u, 16u)], var_4.x) ^ vec3<i32>(0i, 1i, -1i)) ^ (var_4.yyz >> (vec3<u32>(u_input.b.x, 1u, u_input.c.x) % vec3<u32>(32u))), ~select(vec3<i32>(76495i, -2147483647i, 1i), vec3<i32>(-48721i, -1i, -1i), var_3), true), vec3<i32>(var_4.x, min(global2[_wgslsmith_index_u32(u_input.c.x, 16u)] << (u_input.c.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(19917u, 16u)], -2904i, var_1.a), vec3<i32>(-2677i, var_4.x, global3.a))), -global3.a)));
}

