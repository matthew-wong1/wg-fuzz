struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: u32;

var<private> global2: array<i32, 24> = array<i32, 24>(-1i, -26941i, -1i, 2147483647i, 2147483647i, 2147483647i, -31614i, 0i, 26076i, 6293i, 6521i, 7808i, 2147483647i, 41069i, -1i, i32(-2147483648), 3861i, 2147483647i, 20i, 2147483647i, 10958i, -15069i, -13461i, 2147483647i);

var<private> global3: vec4<u32>;

var<private> global4: array<bool, 18> = array<bool, 18>(false, true, false, false, true, false, false, true, false, true, false, false, false, false, false, false, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    global3 = _wgslsmith_clamp_vec4_u32(u_input.c | reverseBits(abs(u_input.c)), reverseBits(vec4<u32>(~global3.x, global3.x, _wgslsmith_mult_u32(69688u, 53878u), 1u)) | ~(vec4<u32>(4294967295u, 0u, 1u, u_input.c.x) & _wgslsmith_div_vec4_u32(u_input.c, u_input.c)), _wgslsmith_mod_vec4_u32(u_input.c, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 1u, global3.x), ~u_input.c)) | u_input.c);
    global0 = select(select(vec2<bool>(any(vec4<bool>(true, true, true, true)), any(!vec4<bool>(global0.x, global4[_wgslsmith_index_u32(0u, 18u)], true, false))), vec2<bool>(false, true), select(select(vec2<bool>(global0.x, global0.x), select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, false), true), false), !vec2<bool>(true, global4[_wgslsmith_index_u32(0u, 18u)]), vec2<bool>(true, false))), vec2<bool>(all(select(!vec3<bool>(global0.x, false, global4[_wgslsmith_index_u32(u_input.a.x, 18u)]), !vec3<bool>(true, global0.x, global4[_wgslsmith_index_u32(3269u, 18u)]), select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(false, false, false), global0.x))), false), select(!vec2<bool>(any(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 18u)], global4[_wgslsmith_index_u32(u_input.b, 18u)], false)), true), select(vec2<bool>(select(global0.x, global0.x, true), true), !vec2<bool>(global0.x, global0.x), all(vec3<bool>(true, true, true))), vec2<bool>(global4[_wgslsmith_index_u32(select(46332u, global3.x, true), 18u)], true)));
    let var_0 = all(!select(!vec4<bool>(false, true, false, global0.x), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, false, !global0.x), select(!vec4<bool>(global4[_wgslsmith_index_u32(3278u, 18u)], false, global4[_wgslsmith_index_u32(u_input.a.x, 18u)], global4[_wgslsmith_index_u32(29456u, 18u)]), !vec4<bool>(global4[_wgslsmith_index_u32(116478u, 18u)], true, global4[_wgslsmith_index_u32(0u, 18u)], false), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 18075u), 18u)])));
    let var_1 = ~1u;
    global4 = array<bool, 18>();
    return global0.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_0.b.wz), ~vec2<u32>(u_input.a.x, 0u) >> (firstTrailingBit(firstLeadingBit(global3.zz)) % vec2<u32>(32u))), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.d.d.x, global3.x, _wgslsmith_mult_u32(42000u, u_input.c.x) & ~u_input.b), ~_wgslsmith_mult_vec4_u32(vec4<u32>(107202u, u_input.a.x, arg_0.b.x, 0u) << (vec4<u32>(global3.x, 0u, u_input.c.x, 33818u) % vec4<u32>(32u)), u_input.c)));
    let var_1 = global0.x;
    global2 = array<i32, 24>();
    let var_2 = Struct_1(~var_0.d.ww, var_0.b, min(1u, 46418u), select(arg_0.b, _wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, global3.x, global3.x, u_input.b), u_input.c), vec4<u32>(reverseBits(4294967295u), 33606u, max(66472u, var_0.c), arg_0.b.x)), func_3()));
    let var_3 = Struct_1(vec2<u32>(arg_0.b.x, ~(~global3.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1 * arg_1)))), ~u_input.a.x, ~(var_2.d ^ _wgslsmith_sub_vec4_u32(abs(vec4<u32>(global3.x, 35529u, var_0.c, 0u)), var_2.d)));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    global4 = array<bool, 18>();
    let var_0 = 29076u;
    let var_1 = global2[_wgslsmith_index_u32(0u, 24u)];
    global2 = array<i32, 24>();
    let var_2 = !(!select(vec2<bool>(false, global4[_wgslsmith_index_u32(select(arg_0.a.x, 4294967295u, global4[_wgslsmith_index_u32(global3.x, 18u)]), 18u)]), !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), false), any(vec4<bool>(false, true, true, global4[_wgslsmith_index_u32(7441u, 18u)]))));
    return global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(abs(61772u), global3.x), u_input.c.x), 24u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = -(-(~countOneBits(vec4<i32>(19806i, 10045i, global2[_wgslsmith_index_u32(arg_1.x, 24u)], -21616i))) & -vec4<i32>(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(96908u, 24u)], global2[_wgslsmith_index_u32(u_input.c.x, 24u)]), _wgslsmith_mod_i32(1i, 28956i), global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]));
    global0 = vec2<bool>(global0.x, (func_4(func_2(Struct_2(-399f, vec4<u32>(1u, 38193u, arg_1.x, arg_1.x), global0.x, Struct_1(global3.wy, arg_0.zx, 121586u, vec4<u32>(49673u, 1u, 0u, u_input.a.x)), arg_0.x), vec2<f32>(-1252f, arg_0.x)), global3.wzy) == _wgslsmith_dot_vec2_i32(var_0.zz, vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(global3.x, 24u)]))) | func_3());
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x)))));
    global0 = !vec2<bool>(all(!select(vec4<bool>(global4[_wgslsmith_index_u32(1u, 18u)], global4[_wgslsmith_index_u32(0u, 18u)], false, global0.x), vec4<bool>(global0.x, global4[_wgslsmith_index_u32(15303u, 18u)], true, global0.x), vec4<bool>(true, global0.x, global4[_wgslsmith_index_u32(arg_1.x, 18u)], true))), false);
    let var_2 = -min(var_0.x, 0i) >= -34471i;
    return Struct_3(u_input.b, _wgslsmith_dot_vec3_i32(-(countOneBits(var_0.xwz) & max(var_0.zwx, vec3<i32>(global2[_wgslsmith_index_u32(global3.x, 24u)], 16650i, var_0.x))), var_0.wwy), func_2(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)), _wgslsmith_add_vec4_u32(vec4<u32>(26247u, 1u, 1u, global3.x), vec4<u32>(u_input.a.x, global3.x, u_input.a.x, 1u)), var_2, Struct_1(select(global3.yw, vec2<u32>(25585u, arg_1.x), vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 18u)], true)), _wgslsmith_f_op_vec2_f32(arg_0.xx - vec2<f32>(-284f, var_1)), ~arg_1.x, ~vec4<u32>(18086u, arg_1.x, u_input.c.x, u_input.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec2_f32(-arg_0.wz)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    global3 = u_input.c;
    let var_0 = Struct_2(_wgslsmith_div_f32(arg_0.b.x, func_2(Struct_2(-2293f, ~u_input.c, 41542i >= arg_1.b, func_2(Struct_2(203f, vec4<u32>(76182u, 2023u, 36499u, global3.x), true, Struct_1(vec2<u32>(arg_1.c.c, arg_0.d.x), vec2<f32>(714f, -274f), 4294967295u, vec4<u32>(0u, u_input.a.x, arg_1.a, global3.x)), -1267f), vec2<f32>(494f, 156f)), func_1(vec4<f32>(130f, -464f, arg_0.b.x, arg_1.c.b.x), u_input.c.zw).c.b.x), arg_1.c.b).b.x), arg_0.d, !global0.x, func_2(Struct_2(_wgslsmith_div_f32(arg_1.c.b.x, arg_0.b.x), ~arg_0.d >> (arg_0.d % vec4<u32>(32u)), false, Struct_1(~arg_0.a, _wgslsmith_f_op_vec2_f32(-arg_0.b), _wgslsmith_dot_vec4_u32(arg_1.c.d, vec4<u32>(global3.x, arg_1.a, 4294967295u, 49431u)), ~vec4<u32>(global3.x, 59063u, 4294967295u, arg_1.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1468f * arg_1.c.b.x)))), arg_1.c.b), func_2(Struct_2(arg_0.b.x, vec4<u32>(0u, arg_1.a, arg_0.c, u_input.a.x) | vec4<u32>(0u, 1u, 40567u, global3.x), global4[_wgslsmith_index_u32(~1u, 18u)], arg_1.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.c.b.x - -967f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.c.b)), _wgslsmith_f_op_vec2_f32(select(arg_1.c.b, arg_0.b, vec2<bool>(false, true)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(219f, arg_1.c.b.x)))).b.x);
    var var_1 = arg_0.a.x;
    let var_2 = var_0;
    global3 = _wgslsmith_mod_vec4_u32(arg_1.c.d, arg_1.c.d);
    return _wgslsmith_mult_u32(~arg_0.a.x, arg_0.d.x) >> (~global3.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~func_5(Struct_1(countOneBits(vec2<u32>(global3.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(905f, 1999f)), u_input.b, _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(19775u, global3.x, global3.x, 1u)), _wgslsmith_sub_vec4_u32(u_input.c, vec4<u32>(u_input.b, 54334u, global3.x, 1u)))), func_1(vec4<f32>(572f, _wgslsmith_f_op_f32(sign(338f)), _wgslsmith_div_f32(1316f, -672f), 1000f), u_input.a));
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1521f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2594f * -1437f)), 685f))));
    var var_1 = !vec2<bool>(var_0.x > _wgslsmith_f_op_f32(func_1(vec4<f32>(1451f, -952f, var_0.x, var_0.x), vec2<u32>(global3.x, 1u)).c.b.x * _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_div_f32(-451f, var_0.x) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1279f))));
    let var_2 = func_2(Struct_2(_wgslsmith_f_op_f32(133f * -856f), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 34407u), 4294967295u, firstLeadingBit(1u), ~global3.x), u_input.c), !global0.x, func_2(Struct_2(var_0.x, ~vec4<u32>(global3.x, 4294967295u, global3.x, 0u), true, Struct_1(u_input.c.zy, var_0.xy, global3.x, u_input.c), _wgslsmith_f_op_f32(976f * var_0.x)), _wgslsmith_f_op_vec2_f32(select(var_0.xz, _wgslsmith_f_op_vec2_f32(var_0.zx * var_0.yz), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(var_0.x, -1723f, var_0.x, var_0.x), vec2<u32>(69616u, 33563u)).c.b.x - _wgslsmith_f_op_f32(506f - var_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1972f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -283f))));
    global3 = ~(~var_2.d);
    let var_3 = global4[_wgslsmith_index_u32(var_2.d.x, 18u)] & global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(global2[_wgslsmith_index_u32(global3.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), vec2<i32>(-77738i, -1i)), firstLeadingBit(_wgslsmith_sub_vec2_i32(-vec2<i32>(-4454i, global2[_wgslsmith_index_u32(1123u, 24u)]), select(vec2<i32>(global2[_wgslsmith_index_u32(0u, 24u)], -24494i), vec2<i32>(-61416i, 1i), true)))), ~_wgslsmith_mult_u32(~global3.x, global3.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -304f), var_0.x, _wgslsmith_div_f32(-269f, 1673f), _wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_2.b.x, var_2.b.x, 180f)))))), u_input.c.xzw, -_wgslsmith_mult_i32(~global2[_wgslsmith_index_u32(0u, 24u)], 0i) >> (~(~0u) % 32u));
}

