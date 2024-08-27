struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 913f;

var<private> global1: array<bool, 4>;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(false, vec4<bool>(true, true, true, false), 33626u);

var<private> global4: array<u32, 19>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_4(global3.c > global4[_wgslsmith_index_u32(1u, 19u)], arg_0.yx, !vec4<bool>(global3.a, false, global3.a, !global1[_wgslsmith_index_u32(4322u, 4u)] != !global1[_wgslsmith_index_u32(global3.c, 4u)]), Struct_2(!select(!vec3<bool>(true, global1[_wgslsmith_index_u32(global3.c, 4u)], global1[_wgslsmith_index_u32(100485u, 4u)]), global3.b.wxz, vec3<bool>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.c, 19u)], 4u)], false, true)), !(!global3.b.xz), -vec3<i32>(_wgslsmith_mod_i32(u_input.a, 2147483647i), u_input.a, u_input.b), true, select(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 19u)], 19u)]), vec2<u32>(28308u, 41079u), vec2<u32>(global4[_wgslsmith_index_u32(1122u, 19u)], 0u)), ~vec2<u32>(global3.c, global4[_wgslsmith_index_u32(54287u, 19u)]), !vec2<bool>(global1[_wgslsmith_index_u32(global3.c, 4u)], global1[_wgslsmith_index_u32(global3.c, 4u)])), vec2<u32>(~4294967295u, global3.c | global3.c), vec2<bool>(any(global3.b), true))));
    let var_1 = Struct_1(19277i == (1i << (global3.c % 32u)), select(vec4<bool>(all(select(vec4<bool>(false, true, var_0.a, global3.b.x), var_0.c, false)), select(var_0.a, false, false) && (false && global3.a), false, all(select(vec2<bool>(false, true), global3.b.zz, var_0.d.b.x))), !(!vec4<bool>(var_0.d.b.x, false, global1[_wgslsmith_index_u32(8372u, 4u)], true)), select(global3.b, vec4<bool>(true, any(vec3<bool>(true, true, global3.b.x)), true, all(var_0.c)), global1[_wgslsmith_index_u32(64426u | ~var_0.d.e.x, 4u)])), ~global3.c);
    var var_2 = _wgslsmith_mod_i32(-7095i, max(0i, ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -29948i), vec3<i32>(-12364i, u_input.a, var_0.d.c.x)))));
    let var_3 = var_0.d;
    var var_4 = Struct_4(var_3.b.x, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-212f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(272f)), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(trunc(var_0.b.x))), vec4<bool>(!select(all(var_1.b.zx), true, false), 49546u >= _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, var_1.c, 4294967295u), abs(vec3<u32>(10532u, 0u, global3.c))), true, true), Struct_2(!(!(!var_0.c.yyx)), var_3.a.yx, _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(10918i, 43788i, -2147483647i)), var_3.c), true, var_3.e));
    return var_0.c;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = vec3<f32>(1f, arg_1.x, arg_1.x);
    let var_1 = (1u >> (~(~global4[_wgslsmith_index_u32(16286u, 19u)]) % 32u)) ^ global4[_wgslsmith_index_u32(~(~(~57324u)), 19u)];
    global3 = Struct_1(global3.a | global1[_wgslsmith_index_u32((~var_1 & 28664u) << (~global3.c % 32u), 4u)], global3.b, 1u);
    let var_2 = Struct_4(global3.a, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-622f, _wgslsmith_f_op_f32(max(-1000f, var_0.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yw + vec2<f32>(659f, var_0.x)))))), select(!select(!vec4<bool>(false, global3.a, true, global3.a), !vec4<bool>(global1[_wgslsmith_index_u32(55501u, 4u)], global1[_wgslsmith_index_u32(18325u, 4u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.c, 19u)], 4u)], global1[_wgslsmith_index_u32(526u, 4u)]), true), !func_3(arg_1), !vec4<bool>(true, all(global3.b.yz), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, global4[_wgslsmith_index_u32(28271u, 19u)]), 4u)], all(global3.b))), Struct_2(global3.b.zxx, vec2<bool>(global3.a && !global1[_wgslsmith_index_u32(var_1, 4u)], global3.b.x), -countOneBits(vec3<i32>(0i, 66062i, -2147483647i)) ^ ~vec3<i32>(0i, arg_3, 46274i), global1[_wgslsmith_index_u32(firstLeadingBit(35913u), 4u)], vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5500u, global4[_wgslsmith_index_u32(0u, 19u)], 11859u), vec3<u32>(0u, 4294967295u, var_1)), global3.c)));
    var var_3 = Struct_1(global1[_wgslsmith_index_u32(1u, 4u)], !vec4<bool>(var_2.a, all(vec3<bool>(var_2.d.d, global1[_wgslsmith_index_u32(50582u, 4u)], global3.a)), true, true), _wgslsmith_dot_vec2_u32((vec2<u32>(4294967295u, global4[_wgslsmith_index_u32(78739u, 19u)]) ^ ~vec2<u32>(var_1, 20242u)) | select(_wgslsmith_div_vec2_u32(vec2<u32>(3573u, arg_0.x), var_2.d.e), arg_0.zx, global3.a), _wgslsmith_div_vec2_u32(~(~arg_0.yz), arg_0.zw)));
    return var_2.b.x;
}

fn func_1(arg_0: vec3<i32>) -> Struct_3 {
    let var_0 = !global1[_wgslsmith_index_u32(1u, 4u)];
    global1 = array<bool, 4>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(~vec4<u32>(6146u, global3.c, 4294967295u, global4[_wgslsmith_index_u32(global3.c, 19u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(-454f, -1272f, 825f, -1205f) - vec4<f32>(-1000f, 1115f, 112f, 415f)), global3.c >> (38454u % 32u), arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1308f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * _wgslsmith_f_op_f32(-520f - -396f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-612f, _wgslsmith_f_op_f32(ceil(1843f))), _wgslsmith_f_op_f32(-2839f - -604f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-250f, -343f) * 608f))));
    var var_1 = 664f;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(227f - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1089f * 660f), _wgslsmith_f_op_f32(select(1601f, -968f, global3.a)))))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1113f, _wgslsmith_f_op_f32(trunc(1222f)))), Struct_2(!vec3<bool>(!var_0, false & global3.a, arg_0.x != u_input.a), !(!(!vec2<bool>(false, var_0))), _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(1i), ~(-12834i), _wgslsmith_clamp_i32(u_input.c, u_input.d, u_input.d)), countOneBits(vec3<i32>(-1i, arg_0.x, u_input.a)) | (arg_0 << (vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(1u, 19u)], 26928u) % vec3<u32>(32u)))), all(select(!vec4<bool>(true, global1[_wgslsmith_index_u32(global3.c, 4u)], var_0, global3.a), vec4<bool>(var_0, global1[_wgslsmith_index_u32(36482u, 4u)], var_0, false), false)), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global3.c, 31007u), vec2<u32>(global3.c, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)], 19u)], 19u)], 19u)])) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 8290u), vec2<u32>(global3.c, 0u)), ~vec2<u32>(global4[_wgslsmith_index_u32(57672u, 19u)], global4[_wgslsmith_index_u32(global3.c, 19u)]))), !vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(~global3.c, 4u)]), all(vec4<bool>(var_0, global1[_wgslsmith_index_u32(11340u, 4u)], any(!global3.b), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(_wgslsmith_sub_i32(~0i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.c, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.a), vec3<i32>(-2147483647i, 63148i, u_input.c)))), select(u_input.d, _wgslsmith_clamp_i32(~(-2147483647i), abs(u_input.a), _wgslsmith_mult_i32(-1i, 23200i)), true), ~(-u_input.b)));
    global3 = Struct_1(!global1[_wgslsmith_index_u32(~(~(4294967295u >> (global3.c % 32u))), 4u)], global3.b, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.b.e.x, 0u, 4294967295u), vec3<u32>(18446u, 1u, 1u)), abs(vec3<u32>(24718u, global3.c, 0u))) | 0u, global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(14885u, 19u)], 19u)]));
    let var_1 = Struct_4(!(countOneBits(4294967295u) <= (var_0.b.e.x << (~4294967295u % 32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x - var_0.a.x), func_1(var_0.b.c).a.x)), 1000f)), global3.b, Struct_2(select(!var_0.b.a, vec3<bool>(var_0.a.x >= var_0.a.x, !global1[_wgslsmith_index_u32(0u, 4u)], global3.b.x), any(vec3<bool>(global3.b.x, global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(4294967295u, 4u)]))), !vec2<bool>(true, global4[_wgslsmith_index_u32(50092u, 19u)] > 1u), firstTrailingBit(select(vec3<i32>(u_input.b, 2147483647i, u_input.a), var_0.b.c, u_input.b > 7296i)), !var_0.b.d, select(abs(vec2<u32>(var_0.b.e.x, 1u)), vec2<u32>(var_0.b.e.x, _wgslsmith_sub_u32(1u, global3.c)), !any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b.e.x, 4u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4053u, 19u)], 19u)], 4u)])))));
    let var_2 = vec2<i32>(~(u_input.b | max(min(5649i, 16649i), min(var_1.d.c.x, var_0.b.c.x))), _wgslsmith_mod_i32(~min(var_1.d.c.x, ~2147483647i), ~(-1i | var_0.b.c.x)));
    let var_3 = 1u;
    var var_4 = Struct_5(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, func_1(var_1.d.c).b.e.x, ~global4[_wgslsmith_index_u32(0u, 19u)], max(global3.c, 38659u)), reverseBits(select(vec4<u32>(4294967295u, global4[_wgslsmith_index_u32(38843u, 19u)], 11670u, 10316u), vec4<u32>(global3.c, 1u, global3.c, 56276u), false))), var_1.d.c.x);
    let var_5 = !select(select(!vec3<bool>(true, true, var_1.a), func_1(var_1.d.c).c.xxw, var_0.c.x), select(select(vec3<bool>(true, global3.b.x, global1[_wgslsmith_index_u32(0u, 4u)]), var_0.c.ywx, false), func_1(~var_0.b.c).b.a, global3.b.zwy), var_0.c.yzy);
    var var_6 = Struct_5(~var_1.d.e.x, var_1.d.c.x);
    global0 = _wgslsmith_f_op_f32(189f * var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1243f, var_0.b.e, ~_wgslsmith_div_vec2_i32(-var_0.b.c.zy, ~vec2<i32>(1i, -54072i)));
}

