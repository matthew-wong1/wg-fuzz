struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(0u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(61355u, 57155u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 8940u, 30814u), vec4<u32>(0u, 35299u, 4294967295u, 1u), vec4<u32>(250u, 1u, 0u, 25579u), vec4<u32>(52943u, 23407u, 0u, 4294967295u), vec4<u32>(95100u, 1u, 19448u, 81809u), vec4<u32>(26872u, 32599u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 1468u), vec4<u32>(51301u, 4294967295u, 2395u, 1u), vec4<u32>(6128u, 0u, 1u, 4294967295u), vec4<u32>(54004u, 56447u, 152971u, 1u), vec4<u32>(99449u, 25329u, 47244u, 0u), vec4<u32>(3620u, 0u, 4294967295u, 4294967295u), vec4<u32>(24u, 38580u, 4294967295u, 5176u), vec4<u32>(86802u, 0u, 24744u, 1u), vec4<u32>(16291u, 10538u, 4294967295u, 4294967295u), vec4<u32>(71649u, 23313u, 18353u, 55365u), vec4<u32>(4901u, 12366u, 56839u, 4294967295u), vec4<u32>(1441u, 1u, 36345u, 28392u), vec4<u32>(29354u, 4294967295u, 1u, 1u), vec4<u32>(15560u, 122110u, 28732u, 27882u), vec4<u32>(4294967295u, 0u, 1u, 81657u), vec4<u32>(16704u, 1725u, 0u, 1971u), vec4<u32>(1u, 8932u, 1257u, 4294967295u), vec4<u32>(15435u, 4294967295u, 7668u, 0u), vec4<u32>(79530u, 4294967295u, 0u, 4294967295u), vec4<u32>(64630u, 80909u, 70852u, 42059u));

var<private> global1: Struct_4 = Struct_4(Struct_3(vec3<u32>(0u, 1u, 6237u), Struct_1(false, vec2<i32>(45391i, 29770i)), Struct_2(Struct_1(true, vec2<i32>(43821i, 2147483647i)), Struct_1(true, vec2<i32>(0i, 19009i)), Struct_1(false, vec2<i32>(-1i, i32(-2147483648))), Struct_1(true, vec2<i32>(0i, 2147483647i)))), 1i, -708f, vec3<i32>(-1i, -14936i, 69095i), Struct_1(true, vec2<i32>(35057i, 1i)));

var<private> global2: Struct_1;

var<private> global3: array<bool, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    global3 = array<bool, 28>();
    global3 = array<bool, 28>();
    let var_0 = global2.b.x;
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    return _wgslsmith_f_op_f32(f32(-1f) * -704f);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 401f, -1390f, arg_1.x))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(165f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(491f, -1000f))), _wgslsmith_f_op_f32(step(arg_1.x, global1.c)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, global1.c, 1213f, -2344f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(291f, -962f, arg_1.x, -1000f), vec4<f32>(global1.c, 217f, arg_1.x, 235f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, global1.c, arg_1.x, arg_1.x))), global2.a))));
    var var_1 = ~global1.a.a;
    var_1 = vec3<u32>(global1.a.a.x, ~_wgslsmith_add_u32(global1.a.a.x, 4294967295u), 86108u);
    global0 = array<vec4<u32>, 29>();
    var var_2 = Struct_5(countOneBits(global1.d));
    return global1.a.c.a.a && true;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = ~_wgslsmith_sub_u32(max(0u, ~(~global1.a.a.x)), global1.a.a.x);
    global2 = global1.a.c.c;
    var var_1 = vec4<bool>(arg_1.x, any(vec3<bool>(var_0 <= _wgslsmith_mult_u32(global1.a.a.x, 1u), all(select(vec2<bool>(false, true), arg_1.zz, true)), global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~42785u, ~1u, max(var_0, global1.a.a.x)), 28u)])), global2.a, !all(arg_1.wzx));
    let var_2 = Struct_4(Struct_3(abs(_wgslsmith_clamp_vec3_u32(global1.a.a, vec3<u32>(global1.a.a.x, global1.a.a.x, global1.a.a.x), vec3<u32>(var_0, 0u, 30331u))) ^ global1.a.a, Struct_1(true, vec2<i32>(u_input.a, abs(23618i))), Struct_2(Struct_1(any(vec2<bool>(true, false)), _wgslsmith_mod_vec2_i32(global1.e.b, vec2<i32>(49588i, -42216i))), Struct_1(true, vec2<i32>(global2.b.x, global1.b)), Struct_1(1u <= global1.a.a.x, -vec2<i32>(2147483647i, global1.d.x)), Struct_1(true, global2.b))), 86047i >> ((~var_0 ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(61339u, 1u, global1.a.a.x, 56962u), vec4<u32>(global1.a.a.x, global1.a.a.x, global1.a.a.x, var_0))) % 32u), global1.c, ~(-vec3<i32>(max(65033i, u_input.a), global2.b.x, 58291i)), Struct_1(!(!global3[_wgslsmith_index_u32(abs(global1.a.a.x), 28u)]), abs(global1.d.xy)));
    var var_3 = global1.a.c;
    return countOneBits(global1.d);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_sub_vec3_u32(global1.a.a, vec3<u32>(1u, global1.a.a.x, arg_0.x) << (~vec3<u32>(4294967295u, 1u, 0u) % vec3<u32>(32u))), global1.e, Struct_2(global1.e, global1.a.b, Struct_1(true, vec2<i32>(-45282i, -7860i)), Struct_1(!global3[_wgslsmith_index_u32(55442u, 28u)], vec2<i32>(-38638i, 2147483647i)))), global2.b.x ^ -20135i, 715f, vec3<i32>(countOneBits(global1.e.b.x), _wgslsmith_sub_i32(global1.e.b.x, ~(-1435i)), 5648i & _wgslsmith_dot_vec2_i32(global2.b, global1.a.c.d.b)), Struct_1(!(u_input.a == -14242i), -vec2<i32>(arg_1.x, ~global1.a.b.b.x)));
    global2 = Struct_1(select(false, global3[_wgslsmith_index_u32(54986u, 28u)], false), global1.e.b & arg_1);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(907f - global1.c)))), -1409f);
    var var_2 = ~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(25240u, (_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(107831u, 29u)], vec4<u32>(var_0.a.a.x, 17286u, 0u, global1.a.a.x)) << (4294967295u % 32u)) ^ ~0u), 29u)];
    var var_3 = Struct_5(func_4(global1.c, vec4<bool>(true, true, func_3(var_0.e.b.x, vec2<f32>(var_1.x, 1000f)) || true, true)));
    return Struct_2(Struct_1(func_3(-28973i, _wgslsmith_f_op_vec2_f32(vec2<f32>(1594f, -363f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, -1034f)))), var_3.a.xy), var_0.a.c.b, Struct_1(~(-1i) >= _wgslsmith_dot_vec3_i32(vec3<i32>(22636i, var_3.a.x, var_0.e.b.x), vec3<i32>(global2.b.x, var_0.e.b.x, 2147483647i) >> (vec3<u32>(76772u, var_0.a.a.x, global1.a.a.x) % vec3<u32>(32u))), vec2<i32>(-var_3.a.x, var_3.a.x) ^ abs(global2.b & var_0.d.yy)), var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(~global1.a.a.zx, vec2<i32>(19501i, 1i), _wgslsmith_f_op_f32(func_1()) == _wgslsmith_f_op_f32(-global1.c));
    let var_1 = -global2.b.x != (i32(-1i) * -8323i);
    global0 = array<vec4<u32>, 29>();
    let var_2 = Struct_5(_wgslsmith_sub_vec3_i32(-vec3<i32>(-global2.b.x, var_0.b.b.x, global1.d.x), min(~global1.d | _wgslsmith_mult_vec3_i32(vec3<i32>(global1.e.b.x, 1i, global1.b), global1.d), global1.d)));
    var var_3 = vec3<bool>(global3[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_dot_vec3_i32(global1.d, vec3<i32>(1i, global1.a.b.b.x, global1.d.x) ^ ~vec3<i32>(var_0.d.b.x, var_0.c.b.x, global1.e.b.x)) <= -23589i, var_1);
    var_3 = vec3<bool>(!any(vec4<bool>(var_0.c.b.x < var_0.a.b.x, !var_0.d.a, true, 107492u <= global1.a.a.x)), func_2(vec2<u32>(max(411u, 73379u) | _wgslsmith_add_u32(global1.a.a.x, 1u), global1.a.a.x), var_0.c.b & ~_wgslsmith_mult_vec2_i32(global2.b, var_2.a.yy), true).d.a, (global3[_wgslsmith_index_u32(select(0u, global1.a.a.x, var_1), 28u)] != false) | !all(!var_3.zz));
    let x = u_input.a;
    s_output = StorageBuffer(global1.d.x, select(-(~vec4<i32>(var_2.a.x, u_input.a, global1.a.b.b.x, -3971i)) >> (~vec4<u32>(global1.a.a.x, 20109u, 4294967295u, global1.a.a.x) % vec4<u32>(32u)), vec4<i32>(min(-49083i >> (1u % 32u), var_2.a.x), -(i32(-1i) * -30509i), -1689i, global2.b.x), vec4<bool>(true, func_3(u_input.a, vec2<f32>(732f, -1868f)), func_3(var_2.a.x, vec2<f32>(1000f, global1.c)) | (global1.a.a.x > global1.a.a.x), all(select(vec3<bool>(false, true, global3[_wgslsmith_index_u32(1u, 28u)]), vec3<bool>(global1.e.a, global2.a, var_3.x), var_3.x)))), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1124f, -1843f) - vec2<f32>(1033f, global1.c)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c, global1.c) * vec2<f32>(-592f, -586f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(883f, -184f), vec2<f32>(623f, global1.c), true)))))));
}

