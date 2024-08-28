struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(38649i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 34268i), vec2<i32>(i32(-2147483648), -21888i), vec2<i32>(-24785i, 2147483647i), vec2<i32>(2147483647i, 12676i), vec2<i32>(21844i, 0i), vec2<i32>(-26104i, 1i), vec2<i32>(0i, -1i), vec2<i32>(i32(-2147483648), -49218i), vec2<i32>(-11817i, -30420i), vec2<i32>(-15744i, 5647i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(87201i, -12235i), vec2<i32>(-1i, -40496i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(0i, 5030i), vec2<i32>(-432i, 0i), vec2<i32>(1i, i32(-2147483648)));

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

var<private> global2: Struct_2 = Struct_2(Struct_1(2147483647i, vec2<f32>(937f, -103f), true), vec2<i32>(0i, 1i), Struct_1(-18645i, vec2<f32>(-1530f, -513f), false), Struct_1(0i, vec2<f32>(-367f, -138f), true), 0i);

var<private> global3: Struct_3 = Struct_3(86792u, vec2<f32>(1391f, 293f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: bool, arg_3: i32) -> vec2<bool> {
    global2 = Struct_2(global2.a, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(firstTrailingBit(arg_1), _wgslsmith_mult_i32(arg_1, -2147483647i)), arg_3), select(global2.d.a, arg_1, global2.a.c)), Struct_1(52839i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.b * _wgslsmith_f_op_vec2_f32(-global3.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(13513u, 1u) & vec2<u32>(global3.a, u_input.a.x), abs(vec2<u32>(26327u, 68667u))) == (global3.a >> (~83817u % 32u))), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, 88090i), arg_1, i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(-global3.b), !all(select(vec2<bool>(global2.a.c, arg_2), vec2<bool>(arg_0, global2.d.c), vec2<bool>(true, false)))), -2147483647i);
    let var_0 = _wgslsmith_f_op_f32(global3.b.x + global2.d.b.x);
    global2 = Struct_2(Struct_1(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global3.b, vec2<f32>(-803f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-786f, var_0) - global2.c.b)) + global2.c.b), arg_0), ~vec2<i32>(_wgslsmith_dot_vec2_i32(global2.b, vec2<i32>(22489i, 1i)) & _wgslsmith_mod_i32(-2147483647i, global2.d.a), -6609i), global2.a, Struct_1(~(i32(-1i) * -1i) | _wgslsmith_clamp_i32(54503i, -28123i, i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global3.b), vec2<f32>(647f, _wgslsmith_f_op_f32(min(global2.a.b.x, var_0))))), true), arg_3 >> (_wgslsmith_sub_u32(~1u, firstLeadingBit(~u_input.d)) % 32u));
    global1 = array<vec3<bool>, 12>();
    var var_1 = min(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(-21176i, global2.b.x, -2147483647i) | vec3<i32>(2147483647i, global2.a.a, arg_1)) >> (~(~vec3<u32>(u_input.d, 0u, global3.a)) % vec3<u32>(32u)), abs(vec3<i32>(61867i, 46914i, ~(-42288i))), _wgslsmith_mult_vec3_i32(-vec3<i32>(-19025i, arg_3, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(global2.e, global2.b.x, -2147483647i), vec3<i32>(global2.c.a, arg_3, 0i))) ^ vec3<i32>(1i, max(12402i, 1i), ~arg_1)), vec3<i32>(-8118i ^ (24319i << (u_input.d % 32u)), max(_wgslsmith_mult_i32(global2.b.x, global2.c.a), _wgslsmith_sub_i32(arg_3, 22523i)), -24993i) & ~vec3<i32>(arg_3, -24986i, 1i));
    return !(!vec2<bool>(arg_2, false));
}

fn func_2() -> i32 {
    global1 = array<vec3<bool>, 12>();
    let var_0 = ~18667u;
    let var_1 = Struct_2(Struct_1(33451i, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, global2.d.b.x) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.a.b - global3.b), global3.b, func_3(false, global2.c.a, global2.a.c, global2.b.x)))), !(global2.a.b.x < _wgslsmith_f_op_f32(1767f + -1368f))), vec2<i32>(global2.d.a, global2.e), Struct_1(firstTrailingBit(-(global2.d.a << (var_0 % 32u))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-225f, 1265f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.b.x, -2149f) + global3.b))))), -max(1i, global2.b.x) < ~(global2.a.a << (4294967295u % 32u))), Struct_1(_wgslsmith_div_i32(-12786i, 657i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)))), global2.d.c), global2.e);
    global3 = Struct_3(~77199u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.b.x, 1204f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.x));
    return ~(~var_1.c.a);
}

fn func_1(arg_0: i32) -> i32 {
    global3 = Struct_3(global3.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(-595f)), 894f));
    global2 = Struct_2(Struct_1(global2.e, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c.b), vec2<f32>(global2.c.b.x, global2.c.b.x)) - _wgslsmith_f_op_vec2_f32(select(global2.d.b, vec2<f32>(global2.c.b.x, global2.d.b.x), !vec2<bool>(true, global2.a.c)))), true), abs(abs(-vec2<i32>(2147483647i, global2.b.x))), Struct_1(0i, vec2<f32>(_wgslsmith_f_op_f32(floor(global2.c.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -162f)), global2.a.c), Struct_1(func_2(), global3.b, _wgslsmith_f_op_f32(200f + _wgslsmith_f_op_f32(717f - -852f)) == _wgslsmith_f_op_f32(-531f * global3.b.x)), ~(-1i));
    global2 = Struct_2(global2.d, -(~countOneBits(firstTrailingBit(vec2<i32>(global2.b.x, -1i)))), global2.d, Struct_1(select(arg_0, 65687i, global2.d.c || global2.c.c), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.b.x, 468f), global3.b, true)), _wgslsmith_f_op_vec2_f32(select(global3.b, global3.b, true)), vec2<bool>(true, true))))), !(!(!global2.d.c))), _wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, -29918i), ~global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec2<i32>(0i, 0i)), vec2<i32>(16416i, -24855i) & abs(-vec2<i32>(global2.a.a, 0i))));
    global3 = Struct_3(u_input.d, global3.b);
    var var_0 = Struct_4(Struct_2(global2.c, firstLeadingBit(global0[_wgslsmith_index_u32(20889u, 21u)]), global2.a, global2.a, 1i));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-func_1(global2.e) << (global3.a % 32u)) >> (u_input.d % 32u);
    let var_1 = Struct_4(Struct_2(Struct_1(-_wgslsmith_add_i32(2147483647i, global2.a.a), global2.a.b, global2.d.c), vec2<i32>(_wgslsmith_add_i32(global2.b.x, global2.d.a & global2.a.a), countOneBits(global2.e)), global2.c, global2.c, firstTrailingBit(reverseBits(1i))));
    var var_2 = var_1.a.c.c;
    var_2 = true;
    let var_3 = Struct_3(22060u, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.a.a.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-811f)), 905f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.b.x, global2.c.b.x), -1000f)) + _wgslsmith_f_op_f32(global3.b.x - _wgslsmith_f_op_f32(abs(1000f))))));
    let var_4 = select(!select(vec4<bool>(var_1.a.c.c, func_3(false, var_1.a.d.a, global2.d.c, var_1.a.a.a).x, var_1.a.d.c, var_1.a.d.c), vec4<bool>(true, true, all(vec4<bool>(false, false, true, true)), all(vec2<bool>(global2.c.c, false))), vec4<bool>(false, false, global2.b.x > -6966i, false)), vec4<bool>(false, true, true, abs(-var_1.a.c.a) <= (_wgslsmith_dot_vec3_i32(vec3<i32>(20725i, -13330i, global2.c.a), vec3<i32>(1i, 72965i, 0i)) | global2.d.a)), true);
    let var_5 = Struct_3(_wgslsmith_dot_vec2_u32(u_input.c.yw, ~firstLeadingBit(vec2<u32>(73355u, 3802u) ^ u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(-663f * 1614f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-784f - _wgslsmith_f_op_f32(step(263f, 287f)))))));
    var var_6 = select(abs(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_1.a.e, 1455i, var_1.a.b.x), ~vec4<i32>(-53558i, global2.a.a, global2.a.a, var_1.a.b.x)), vec4<i32>(var_1.a.c.a, -21926i, _wgslsmith_sub_i32(1i, -1i), var_1.a.a.a & -32957i))), vec4<i32>(global2.c.a, var_1.a.c.a, global2.e, global2.a.a) << (u_input.c % vec4<u32>(32u)), select(vec4<bool>(var_1.a.d.c & func_3(false, 1i, true, global2.a.a).x, true, global2.c.c, all(!vec3<bool>(var_1.a.c.c, true, var_4.x))), var_4, !select(select(vec4<bool>(var_1.a.a.c, false, false, var_1.a.d.c), var_4, var_1.a.d.c), select(var_4, vec4<bool>(true, var_1.a.a.c, true, false), vec4<bool>(false, false, global2.a.c, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xwz, global3.a & 5820u, ~(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(5869u, 33065u, global3.a, global3.a), u_input.c, u_input.c), abs(u_input.c), var_1.a.c.b.x != -1445f) ^ ~(u_input.c | u_input.c)));
}

