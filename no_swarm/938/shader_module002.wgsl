struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(658f, 1669f, -895f, -775f), vec4<f32>(-231f, -1000f, -1869f, 1033f), vec4<f32>(1000f, 461f, -1457f, 734f), vec4<f32>(770f, -235f, 630f, -857f), vec4<f32>(1255f, -988f, 1223f, 537f), vec4<f32>(265f, 1775f, 198f, 953f));

var<private> global1: array<u32, 19>;

var<private> global2: u32;

var<private> global3: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(38165u, 49902u, 42925u), vec3<u32>(4294967295u, 48394u, 1u), vec3<u32>(21134u, 0u, 15616u), vec3<u32>(0u, 22159u, 55524u), vec3<u32>(28128u, 1u, 50964u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(23455u, 0u, 0u), vec3<u32>(18197u, 50807u, 1u), vec3<u32>(5548u, 4294967295u, 47970u), vec3<u32>(14838u, 1u, 55332u), vec3<u32>(0u, 1u, 779u), vec3<u32>(48534u, 4294967295u, 0u), vec3<u32>(12518u, 4294967295u, 1u), vec3<u32>(10153u, 762u, 0u), vec3<u32>(1u, 23378u, 126140u), vec3<u32>(22366u, 0u, 14541u), vec3<u32>(28819u, 13044u, 1u), vec3<u32>(49285u, 14149u, 14953u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 59991u, 46279u), vec3<u32>(33503u, 0u, 23156u), vec3<u32>(16416u, 1u, 11086u), vec3<u32>(4294967295u, 30718u, 62482u), vec3<u32>(89427u, 0u, 1u), vec3<u32>(55265u, 45595u, 1u), vec3<u32>(7406u, 26729u, 4294967295u), vec3<u32>(0u, 3120u, 108085u), vec3<u32>(4294967295u, 0u, 34328u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: u32, arg_3: bool) -> i32 {
    var var_0 = arg_0;
    var var_1 = u_input.a;
    var var_2 = var_0.b;
    let var_3 = ~countOneBits(~select(arg_0.a.d.d.yz, abs(vec2<i32>(u_input.c, 17033i)), arg_1.xx));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b.b.wyz) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_0.a.d.b.x, 294f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(arg_0.a.b.zzw)), vec3<f32>(345f, var_0.b.d.b.x, -960f), !arg_1.xxz))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.yww - arg_0.b.b.xzy) + _wgslsmith_f_op_vec3_f32(-var_2.b.zww)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.b.zwx)))));
    return ~0i;
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = any(!select(select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(true, arg_0), false), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), all(vec2<bool>(true, false))), arg_0));
    let var_1 = !vec4<bool>(u_input.a.x != abs(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 19u)], 8153u)), true, true, select(arg_0, true || any(vec4<bool>(arg_0, true, false, false)), arg_0));
    var var_2 = select(-u_input.b.xxy, abs(vec3<i32>(21646i, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.e, u_input.d.x, -2147483647i), ~u_input.d), func_3(Struct_3(Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(57831u, 19u)], 32451u), vec4<f32>(-1288f, -1000f, 1123f, 1136f), 2147483647i, Struct_1(u_input.e, vec2<f32>(395f, 309f), vec4<u32>(u_input.a.x, 21448u, 20131u, 0u), u_input.b), false), Struct_2(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], 70164u), vec4<f32>(-1000f, -561f, 201f, 543f), u_input.b.x, Struct_1(2147483647i, vec2<f32>(138f, -537f), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 5683u, 86137u, 0u), u_input.b), var_1.x), u_input.b.x, 38975i), vec4<bool>(var_1.x, true, arg_0, false), 4294967295u, false))), all(select(var_1.yy, var_1.wx, select(!vec2<bool>(false, var_1.x), var_1.yx, vec2<bool>(arg_0, false)))));
    var var_3 = Struct_1(1i, vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1654f, -567f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1948f)) + _wgslsmith_f_op_f32(floor(-652f)))), max(u_input.a, _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.a.x, global1[_wgslsmith_index_u32(0u, 19u)], 44967u), abs(vec4<u32>(11080u, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(1846u, 19u)], global1[_wgslsmith_index_u32(95314u, 19u)]))), _wgslsmith_clamp_vec4_u32(u_input.a | u_input.a, firstLeadingBit(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], u_input.a.x, global1[_wgslsmith_index_u32(43607u, 19u)], 1u)), vec4<u32>(79010u, 0u, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 1u)))), ~(~(-firstLeadingBit(u_input.b))));
    var_3 = Struct_1(reverseBits(~u_input.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(var_3.b.x, _wgslsmith_div_f32(var_3.b.x, var_3.b.x))), -686f), var_3.b, var_1.wx)), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x | ~(~global1[_wgslsmith_index_u32(var_3.c.x, 19u)]), 19u)], reverseBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(2242u, 4294967295u, 82100u, 40656u))), 50651u, firstLeadingBit(u_input.a.x)), u_input.b);
    return min(var_3.c.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~select(u_input.a.zx, vec2<u32>(1u, var_3.c.x), vec2<bool>(arg_0, true)), _wgslsmith_mult_vec2_u32(var_3.c.xx, vec2<u32>(u_input.a.x, var_3.c.x) ^ vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 19u)], 19u)]))), abs(vec2<u32>(4294967295u, var_3.c.x) << (max(var_3.c.xw, u_input.a.zz) % vec2<u32>(32u)))));
}

fn func_1(arg_0: bool) -> Struct_5 {
    global2 = ~select(~4294967295u, 0u, arg_0);
    global2 = 24403u;
    global2 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, global1[_wgslsmith_index_u32(1u, 19u)]) | global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 19u)], 1u) ^ u_input.a.x;
    let var_0 = Struct_4(~u_input.a.ywx);
    var var_1 = ~vec4<u32>(func_2(arg_0), global1[_wgslsmith_index_u32(var_0.a.x, 19u)], _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, var_0.a.x), 19u)], ~(41067u << (var_0.a.x % 32u))), 0u);
    return Struct_5(Struct_2(vec2<u32>(countOneBits(~var_1.x), firstTrailingBit(~var_0.a.x)), _wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(var_1.x, 6u)])), 0i, Struct_1(-(~2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(359f, -1000f)))), ~u_input.a, -_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.e, -2147483647i, -2147483647i, u_input.e))), arg_0), Struct_3(Struct_2(~vec2<u32>(var_1.x, 44434u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(289f, 568f, -572f, -922f))), max(~(-18472i), _wgslsmith_div_i32(u_input.e, u_input.c)), Struct_1(u_input.d.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-430f, -1853f) * vec2<f32>(-1571f, -2138f)), ~vec4<u32>(global1[_wgslsmith_index_u32(var_0.a.x, 19u)], var_0.a.x, global1[_wgslsmith_index_u32(0u, 19u)], u_input.a.x), vec4<i32>(u_input.d.x, u_input.d.x, u_input.c, 2147483647i)), true), Struct_2(select(vec2<u32>(100358u, 49895u), vec2<u32>(var_1.x, 1u), arg_0) ^ vec2<u32>(u_input.a.x, global1[_wgslsmith_index_u32(var_0.a.x, 19u)]), global0[_wgslsmith_index_u32(~var_1.x, 6u)], u_input.c & u_input.b.x, Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-354f, 763f))), max(vec4<u32>(60141u, global1[_wgslsmith_index_u32(4294967295u, 19u)], var_0.a.x, u_input.a.x), vec4<u32>(36455u, var_0.a.x, u_input.a.x, 0u)), firstLeadingBit(u_input.b)), any(vec4<bool>(true, true, true, true))), 0i, u_input.e >> (var_1.x % 32u)), Struct_1(u_input.d.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1249f, 1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1104f, 1000f, arg_0))))), _wgslsmith_sub_vec4_u32(u_input.a, abs(vec4<u32>(var_0.a.x, 4294967295u, u_input.a.x, global1[_wgslsmith_index_u32(0u, 19u)]))) >> (select(~u_input.a, ~vec4<u32>(0u, var_1.x, var_1.x, 9181u), !vec4<bool>(arg_0, arg_0, arg_0, false)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(u_input.b, _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(u_input.e, u_input.e, u_input.d.x, -2147483647i), ~u_input.b))), 50931u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(abs(u_input.a.x) <= (u_input.a.x & (global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 19u)] & u_input.a.x)));
    var var_1 = func_1(func_1(var_0.b.b.b.x >= -434f).b.b.e).b;
    let var_2 = u_input.b.yyz >> (global3[_wgslsmith_index_u32(~func_2(!(var_0.b.a.b.x != -2363f)), 28u)] % vec3<u32>(32u));
    var var_3 = !(!vec3<bool>(true, all(select(vec4<bool>(var_1.a.e, false, true, true), vec4<bool>(true, var_0.b.b.e, var_1.a.e, false), vec4<bool>(false, var_0.a.e, false, var_1.a.e))), false));
    global3 = array<vec3<u32>, 28>();
    let var_4 = var_0.b;
    let var_5 = vec2<u32>(_wgslsmith_mult_u32(var_1.a.a.x, 31530u), var_1.b.d.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b.b.b.x + -538f));
}

