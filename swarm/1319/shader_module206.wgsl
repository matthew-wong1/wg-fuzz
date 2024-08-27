struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(1000f, 1766f, 1275f), vec3<f32>(-467f, 1997f, 468f), vec3<f32>(131f, -188f, -627f), vec3<f32>(-1000f, 869f, -789f), vec3<f32>(1871f, -787f, -722f), vec3<f32>(1011f, 119f, 641f), vec3<f32>(157f, 1000f, -824f), vec3<f32>(-969f, 2187f, 597f), vec3<f32>(1522f, -859f, 1514f), vec3<f32>(-600f, -1420f, 351f), vec3<f32>(-1025f, -141f, 1885f), vec3<f32>(-1805f, -1000f, 489f), vec3<f32>(-911f, -516f, 750f), vec3<f32>(755f, 939f, 762f), vec3<f32>(-221f, 913f, 1322f), vec3<f32>(-114f, -501f, 445f), vec3<f32>(504f, -217f, 1211f), vec3<f32>(-876f, -1000f, 1523f), vec3<f32>(-458f, -476f, -271f), vec3<f32>(1000f, -566f, -1396f), vec3<f32>(-1792f, 422f, -491f), vec3<f32>(-379f, 991f, 220f), vec3<f32>(-384f, 771f, 326f), vec3<f32>(144f, 218f, 707f));

var<private> global2: array<Struct_3, 10>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b, select(u_input.b, u_input.b, any(vec2<bool>(false, true)))), 14u)], _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-407f, global0[_wgslsmith_index_u32(u_input.b.x, 14u)])))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1003f * global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = 4294967295u;
    global1 = array<vec3<f32>, 24>();
    global2 = array<Struct_3, 10>();
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(select(var_1, _wgslsmith_sub_u32(_wgslsmith_div_u32(var_1, u_input.b.x), _wgslsmith_add_u32(103523u, 0u)), !arg_0), 1114u, abs(var_1), _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 28118u, u_input.b.x), var_1 >> (19541u % 32u)) ^ _wgslsmith_dot_vec3_u32(~u_input.b, min(u_input.b, u_input.b))), abs(~(~(~vec4<u32>(u_input.b.x, u_input.b.x, 1u, var_1)))));
    return arg_0;
}

fn func_2() -> u32 {
    var var_0 = -vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_mult_i32(u_input.a, -u_input.a));
    let var_1 = 14081i;
    let var_2 = ~(~(~select(vec4<u32>(u_input.b.x, 14465u, 1u, 0u), vec4<u32>(1u, u_input.b.x, u_input.b.x, 1u), vec4<bool>(true, true, true, true))));
    global1 = array<vec3<f32>, 24>();
    let var_3 = Struct_1(func_3(4294967295u <= ~_wgslsmith_div_u32(2550u, var_2.x)), 29610u, max(~var_2.xyx, u_input.b), vec3<bool>(u_input.a != -1i, true, !func_3(true)));
    return ~4294967295u;
}

fn func_1() -> i32 {
    let var_0 = Struct_2(Struct_1((139f == _wgslsmith_f_op_f32(1752f * global0[_wgslsmith_index_u32(4294967295u, 14u)])) | ((u_input.b.x >> (57605u % 32u)) > abs(u_input.b.x)), func_2(), vec3<u32>(1u, u_input.b.x >> (1u % 32u), _wgslsmith_mult_u32(1u, abs(935u))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-879f, -744f)))), Struct_1(true, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 27078u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.b.x, 0u, 0u) >> (vec4<u32>(1u, u_input.b.x, 31126u, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(1u, u_input.b.x, 56257u)), u_input.b), vec3<bool>(any(vec2<bool>(false, true)), (u_input.b.x <= u_input.b.x) == true, select(func_3(true), true, func_3(false)))), Struct_1(any(vec2<bool>(true, true)) || false, 58442u, vec3<u32>(~u_input.b.x, ~(1u | u_input.b.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x, ~u_input.b.x)), vec3<bool>(any(vec2<bool>(true, false)), all(vec3<bool>(true, false, false)), (u_input.a ^ -2937i) < (u_input.a ^ 43291i))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)])), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(var_0.d.b, 24u)])))))));
    var var_2 = Struct_4(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, var_0.c.b, var_0.d.b, u_input.b.x), vec4<u32>(var_0.a.c.x, 22491u, 4294967295u, var_0.a.c.x), vec4<u32>(u_input.b.x, u_input.b.x, var_0.d.c.x, u_input.b.x)), reverseBits(vec4<u32>(var_0.a.c.x, 1u, 47037u, u_input.b.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.b, 1u), vec2<u32>(17411u, 4294967295u)), _wgslsmith_clamp_u32(43394u, 0u, 55604u), u_input.b.x, u_input.b.x | var_0.d.c.x)), ~u_input.b.x, ~(~42273u)), var_0.d, select(vec3<bool>(!(u_input.b.x <= 24083u), var_0.d.d.x && (var_0.c.d.x != false), (var_0.d.d.x | var_0.a.a) | select(false, true, true)), !var_0.d.d, select(!select(var_0.a.d, var_0.a.d, var_0.a.d), var_0.d.d, var_0.c.d)), vec2<f32>(_wgslsmith_f_op_f32(468f - global0[_wgslsmith_index_u32(~(~0u), 14u)]), global0[_wgslsmith_index_u32(var_0.c.b, 14u)]));
    var var_3 = _wgslsmith_clamp_u32(~(~u_input.b.x), ~1u, var_2.b.c.x);
    var var_4 = select(abs(vec2<i32>(u_input.a >> (10649u % 32u), u_input.a)), vec2<i32>(reverseBits(-firstLeadingBit(u_input.a)), _wgslsmith_mod_i32(~firstLeadingBit(u_input.a), ~u_input.a ^ _wgslsmith_sub_i32(-1i, u_input.a))), var_0.d.d.zy);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(func_1(), -u_input.a, -26031i << (u_input.b.x % 32u)) >> (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), min(6398u, u_input.b.x)) % 32u), 2147483647i), abs(u_input.a), u_input.a);
    var var_1 = vec4<i32>(_wgslsmith_mult_i32(19213i, 1i), _wgslsmith_sub_i32(1i, firstLeadingBit(~1i)), u_input.a, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.a, -1i, -56371i), max(vec4<i32>(u_input.a, u_input.a, -32866i, 1i), vec4<i32>(-2147483647i, -2147483647i, -2147483647i, -1i))) | _wgslsmith_div_i32(abs(var_0.x ^ -16355i), 2147483647i));
    var var_2 = select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true))), vec4<bool>(any(vec3<bool>(false, false, false)), false, false, any(vec2<bool>(false, true))), vec4<bool>(true, true, true, 1668f >= global0[_wgslsmith_index_u32(73272u, 14u)])), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), true), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, true), vec4<bool>(func_3(false), 1i > var_0.x, func_3(true), global0[_wgslsmith_index_u32(0u, 14u)] != global0[_wgslsmith_index_u32(u_input.b.x, 14u)]))), all(vec2<bool>(true, true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~u_input.b.x, 14u)], _wgslsmith_f_op_f32(-1000f + 504f), var_2.x))), -1142f, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(598f)) * 1385f)));
    var_1 = ~vec4<i32>(u_input.a, _wgslsmith_mult_i32(-82757i, firstTrailingBit(var_0.x)), 27401i, i32(-1i) * -(~var_1.x));
    var var_4 = Struct_1(var_2.x, u_input.b.x, firstTrailingBit(u_input.b), select(var_2.yzy, !vec3<bool>(var_2.x, -445f < var_3.x, var_2.x), !var_2.xwy));
    global2 = array<Struct_3, 10>();
    let var_5 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(var_5);
}

