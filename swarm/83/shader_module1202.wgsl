struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: vec4<f32> = vec4<f32>(-763f, -1000f, 338f, 391f);

var<private> global2: array<vec4<f32>, 12> = array<vec4<f32>, 12>(vec4<f32>(414f, 109f, 727f, -1493f), vec4<f32>(164f, 1220f, -613f, -1067f), vec4<f32>(645f, -857f, -157f, 460f), vec4<f32>(1000f, 638f, 887f, 385f), vec4<f32>(991f, 808f, -1000f, 598f), vec4<f32>(-618f, 545f, -156f, -965f), vec4<f32>(448f, -1245f, -964f, 791f), vec4<f32>(-1958f, -397f, -1105f, -351f), vec4<f32>(3208f, 816f, 1303f, 167f), vec4<f32>(-442f, 1000f, 1323f, -1037f), vec4<f32>(126f, -1384f, -470f, 1102f), vec4<f32>(-935f, -289f, -300f, 652f));

var<private> global3: array<i32, 30> = array<i32, 30>(71243i, 2147483647i, i32(-2147483648), 18739i, -10183i, 2130i, 2992i, -102000i, -58419i, 0i, 2147483647i, 1i, 1i, 2147483647i, -23745i, -2328i, 8243i, 1i, -29801i, 24944i, 1i, -69221i, 53157i, i32(-2147483648), 0i, 1299i, 1i, -29497i, -32113i, 33886i);

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<bool> {
    global4 = vec2<bool>(true, true);
    let var_0 = Struct_4(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(global1.x, global1.x, global4.x)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1791f)), vec2<u32>(64975u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(109556u, 30305u, 0u), vec3<u32>(4294967295u, 25322u, 4294967295u))), 75955u, !(!(!vec2<bool>(global4.x, global4.x))), -firstLeadingBit(u_input.a) & ~global3[_wgslsmith_index_u32(~65697u, 30u)]));
    var var_1 = _wgslsmith_add_u32(1u, var_0.a.b.x);
    let var_2 = vec2<i32>(var_0.a.e, global3[_wgslsmith_index_u32(25026u, 30u)]) << ((var_0.a.b | var_0.a.b) % vec2<u32>(32u));
    var_1 = ~var_0.a.c;
    return !(!vec3<bool>((global3[_wgslsmith_index_u32(31863u, 30u)] | u_input.a) >= -var_0.a.e, !(21700u <= var_0.a.c), global4.x | true));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = firstTrailingBit(u_input.a);
    var var_1 = ~(-3218i);
    let var_2 = func_3();
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.a.x, arg_0.a.a.x, global1.x, -203f), arg_0.a.a))), vec4<f32>(_wgslsmith_div_f32(global1.x, 203f), 1000f, global1.x, _wgslsmith_f_op_f32(-arg_0.a.a.x)), select(select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, arg_0.a.d.x, arg_0.a.d.x, arg_0.a.d.x), vec4<bool>(false, global4.x, global4.x, false)), !vec4<bool>(arg_0.a.d.x, false, var_2.x, false), true))), vec2<u32>(_wgslsmith_mod_u32(abs(4294967295u), 31045u), arg_0.b.x), 0u, vec2<bool>((arg_0.b.x == arg_0.a.b.x) & all(var_2.yx), all(vec2<bool>(global4.x, global4.x))), -countOneBits(max(7943i, global3[_wgslsmith_index_u32(1u, 30u)]))));
    global3 = array<i32, 30>();
    return _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, ~13904i, var_3.a.e), max(firstTrailingBit(vec4<i32>(u_input.a, arg_0.a.e, u_input.a, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(arg_0.c.x, 30u)], 10769i), vec4<i32>(var_3.a.e, global3[_wgslsmith_index_u32(4294967295u, 30u)], -1i, -1161i)))), -318i), -1i, -global3[_wgslsmith_index_u32(17117u, 30u)]);
}

fn func_1(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = vec3<i32>(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, 1u), 30u)], (~_wgslsmith_mult_i32(global3[_wgslsmith_index_u32(14949u, 30u)], 44505i) & -2147483647i) >> (~_wgslsmith_add_u32(~55317u, 1u) % 32u), -func_2(Struct_2(Struct_1(global2[_wgslsmith_index_u32(1u, 12u)], vec2<u32>(74701u, 0u), 37909u, vec2<bool>(false, true), global3[_wgslsmith_index_u32(66974u, 30u)]), max(vec2<u32>(33238u, 4294967295u), vec2<u32>(14235u, 63954u)), ~vec3<u32>(1683u, 4294967295u, 4294967295u))));
    global3 = array<i32, 30>();
    var var_1 = ~vec4<u32>(countOneBits(74183u), abs(abs(0u)), _wgslsmith_div_u32(abs(_wgslsmith_add_u32(11657u, 4845u)), countOneBits(1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), 47698u, _wgslsmith_add_u32(54579u, 1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(39169u, 31696u), vec2<u32>(15176u, 4294967295u)), min(61547u, 1u), 1u)));
    let var_2 = Struct_2(Struct_1(global2[_wgslsmith_index_u32(16851u, 12u)], var_1.xx, 11023u, !(!vec2<bool>(global4.x, global4.x)), -36277i), vec2<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.yw, vec2<u32>(0u, 2132u)), ~70567u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), vec4<u32>(63192u, 29403u, 0u, var_1.x)))), reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_1.x, 1u), var_1.yww), var_1.wyx), ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 76453u, 0u), vec3<u32>(67244u, var_1.x, 0u)))));
    let var_3 = select(!any(select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(var_2.a.d.x, true, global4.x), var_2.a.d.x)) && var_2.a.d.x, false, global4.x);
    return -vec3<i32>(abs(var_2.a.e), var_0.x, var_0.x);
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<u32>(1u, 1u, 1u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f - _wgslsmith_f_op_f32(-global1.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -414f, -1000f, -214f)), global2[_wgslsmith_index_u32(min(var_0.x, var_0.x), 12u)]))), var_0.yz & (_wgslsmith_mult_vec2_u32(vec2<u32>(0u, var_0.x) & var_0.xy, vec2<u32>(4294967295u, 56499u)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 49999u) >> (vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u)), var_0.xy, vec2<u32>(4294967295u, var_0.x)) % vec2<u32>(32u))), ~(~abs(_wgslsmith_mult_u32(var_0.x, var_0.x))), select(select(func_3().xz, vec2<bool>(global1.x > 588f, global4.x), true), select(vec2<bool>(true, !global4.x), vec2<bool>(global4.x, true || global4.x), global4.x), all(!(!vec3<bool>(true, false, global4.x)))), 78268i);
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-380f, 1035f, var_1, 102f)), vec4<f32>(var_2.a.x, 673f, var_2.a.x, 606f), !var_2.d.x))))), vec2<u32>(_wgslsmith_mod_u32(1u, ~(~var_2.c)), ~abs(reverseBits(4294967295u))), var_2.c, var_2.d, min(max(arg_0.x, -12330i), 1i));
    var_2 = Struct_1(global2[_wgslsmith_index_u32(var_0.x, 12u)], _wgslsmith_mod_vec2_u32(var_2.b, ~(~_wgslsmith_clamp_vec2_u32(var_2.b, var_0.zy, var_0.xz))), var_2.b.x, select(vec2<bool>(true, false), !var_2.d, var_2.d.x), -func_2(Struct_2(Struct_1(var_2.a, var_0.yx, var_0.x, vec2<bool>(false, var_2.d.x), -15818i), var_0.xx, vec3<u32>(30620u, 4294967295u, 39802u))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-145f, global1.x, 1309f, var_2.a.x) * var_2.a) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(253f, -791f, 1000f, var_1)))))) + global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(1u, 0u)), 12u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_div_u32(var_2.c << (1u % 32u), 1u), firstLeadingBit(firstTrailingBit(var_2.c))), firstLeadingBit(~(~var_0.yy))), 0u, !var_2.d, arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.a, _wgslsmith_mod_i32(u_input.a & 1i, u_input.a), global4.x);
    let var_1 = Struct_3(func_4(-func_1(_wgslsmith_f_op_vec2_f32(-global1.yz))), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(floor(671f)), global1.x, _wgslsmith_f_op_f32(-745f + global1.x))), countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 64834u), vec2<u32>(12261u, 88061u))), firstTrailingBit(countOneBits(firstLeadingBit(4294967295u))), func_3().yz, ~(func_1(global1.wy).x >> (min(0u, 0u) % 32u))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(-1000f, -401f)), -489f, -473f, global1.x), ~vec2<u32>(1u, 1u), 116439u, !vec2<bool>(global4.x, global4.x), firstTrailingBit(u_input.a)), ~(~vec2<u32>(0u, 1u)), vec3<u32>(8382u, ~countOneBits(52842u), 53319u)));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.c.a.a, var_1.c.a.a) * var_1.c.a.a), global2[_wgslsmith_index_u32(~(~var_1.c.c.x), 12u)]), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -2864f)), var_1.c.a.a.x, 1f, _wgslsmith_f_op_f32(-func_4(vec3<i32>(global3[_wgslsmith_index_u32(var_1.b.b.x, 30u)], var_1.c.a.e, u_input.a)).a.x)))));
    let var_2 = !select(select(select(!vec4<bool>(false, global4.x, false, true), vec4<bool>(true, true, global4.x, global4.x), global4.x), !select(vec4<bool>(false, false, false, var_1.a.d.x), vec4<bool>(var_1.c.a.d.x, false, var_1.c.a.d.x, global4.x), vec4<bool>(false, false, true, global4.x)), global4.x), vec4<bool>(_wgslsmith_f_op_f32(-628f + var_1.b.a.x) <= var_1.a.a.x, true, false | global4.x, !var_1.a.d.x && all(var_1.c.a.d)), select(vec4<bool>(true, all(vec2<bool>(var_1.b.d.x, true)), true, 46973i < var_1.a.e), select(!vec4<bool>(global4.x, true, false, false), vec4<bool>(var_1.b.d.x, true, false, true), vec4<bool>(true, global4.x, var_1.a.d.x, false)), !any(vec2<bool>(false, var_1.a.d.x))));
    global4 = !var_1.b.d;
    var var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(~4903u, vec3<f32>(var_1.c.a.a.x, var_1.c.a.a.x, _wgslsmith_f_op_f32(-var_1.c.a.a.x)), firstLeadingBit(vec2<i32>(-var_1.a.e, 2147483647i)) | _wgslsmith_sub_vec2_i32(vec2<i32>(func_4(vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(var_1.b.c, 30u)], 1i)).e, max(u_input.a, -6505i)), vec2<i32>(var_3.e, -12704i)), _wgslsmith_div_vec4_f32(var_1.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(var_3.b.x & 4294967295u, 12u)] + var_3.a) - vec4<f32>(_wgslsmith_f_op_f32(max(global1.x, 1000f)), _wgslsmith_div_f32(var_1.a.a.x, -1000f), var_1.a.a.x, -787f))), -firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.e, 1i, u_input.a), select(vec3<i32>(2187i, var_3.e, global3[_wgslsmith_index_u32(var_1.b.c, 30u)]), vec3<i32>(u_input.a, 2147483647i, var_1.c.a.e), true))));
}

