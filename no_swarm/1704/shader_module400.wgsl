struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, false, vec2<bool>(true, false), vec3<bool>(false, false, true));

var<private> global1: array<Struct_1, 22>;

var<private> global2: Struct_1 = Struct_1(false, true, vec2<bool>(true, true), vec3<bool>(true, true, true));

var<private> global3: array<Struct_1, 1>;

var<private> global4: vec4<i32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<u32> {
    global0 = global3[_wgslsmith_index_u32(u_input.d.x, 1u)];
    let var_0 = u_input.c.xyz;
    global1 = array<Struct_1, 22>();
    var var_1 = global3[_wgslsmith_index_u32(40821u, 1u)];
    global0 = global3[_wgslsmith_index_u32(7765u, 1u)];
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(~(u_input.a.x | 61690u), ~(~var_0.x) & (_wgslsmith_div_u32(4294967295u, u_input.a.x) ^ 1u), u_input.c.x, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.x, 45158u), var_0.x))), u_input.c, _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 66800u, _wgslsmith_clamp_u32(~23826u, var_0.x, 4294967295u), 5076u), ~u_input.d));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> i32 {
    global4 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(min(vec4<i32>(-2147483647i, global4.x, u_input.b, global4.x) | vec4<i32>(global4.x, u_input.b, global4.x, 3586i), vec4<i32>(-11302i, -17402i, -44733i, u_input.e) << (vec4<u32>(u_input.a.x, 4294967295u, 1u, 80u) % vec4<u32>(32u))), vec4<i32>(-1i) * -vec4<i32>(2147483647i, global4.x, global4.x, u_input.e)), min(vec4<i32>(_wgslsmith_mod_i32(global4.x, -2147483647i), _wgslsmith_mod_i32(u_input.b, 21009i), _wgslsmith_mod_i32(2147483647i, -2147483647i), _wgslsmith_mult_i32(global4.x, -32867i)), vec4<i32>(-global4.x, ~global4.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, global4.x, -2147483647i), global4.wxy), 2147483647i))) | _wgslsmith_mult_vec4_i32(max(vec4<i32>(-1i) * -vec4<i32>(12761i, -10755i, u_input.b, 14946i), vec4<i32>(_wgslsmith_dot_vec3_i32(global4.wwz, vec3<i32>(-859i, u_input.b, global4.x)), reverseBits(-2147483647i), firstTrailingBit(global4.x), i32(-1i) * -1i)), vec4<i32>(-35823i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.e), _wgslsmith_div_vec2_i32(vec2<i32>(-51503i, 43737i), vec2<i32>(u_input.e, 20074i))), _wgslsmith_dot_vec3_i32(global4.xwz, global4.zxy), u_input.b));
    let var_0 = 0i;
    var var_1 = global0.c.x;
    global4 = firstTrailingBit(_wgslsmith_div_vec4_i32(-vec4<i32>(0i, 0i, 35952i, -3754i), _wgslsmith_sub_vec4_i32(select(vec4<i32>(64953i, 2147483647i, u_input.b, global4.x), vec4<i32>(var_0, global4.x, var_0, u_input.e), vec4<bool>(global2.d.x, global2.d.x, global2.d.x, global0.c.x)), vec4<i32>(var_0, 10406i, -1i, var_0)) >> (~select(u_input.a, vec4<u32>(1u, 57942u, u_input.d.x, 4294967295u), true) % vec4<u32>(32u))));
    let var_2 = Struct_2(u_input.c.yy >> (~vec2<u32>(firstTrailingBit(u_input.c.x), arg_0) % vec2<u32>(32u)));
    return -1i;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> Struct_2 {
    global2 = global3[_wgslsmith_index_u32(35518u, 1u)];
    let var_0 = _wgslsmith_add_i32(~(~_wgslsmith_add_i32(-44026i, _wgslsmith_sub_i32(-25229i, u_input.b))), _wgslsmith_dot_vec2_i32(global4.yw, abs(-vec2<i32>(-2147483647i, global4.x)) | global4.xy));
    var var_1 = ~(47073u & arg_0.x);
    let var_2 = _wgslsmith_mult_i32(func_4(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.c, u_input.a), func_3()) >> (arg_0.x % 32u), -2396f, Struct_1(true, true, !global2.d.yz, global2.d), -1000f), arg_1);
    let var_3 = ~u_input.a;
    return Struct_2(vec2<u32>(~arg_0.x, firstTrailingBit(~arg_0.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_2) -> bool {
    global4 = _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_sub_i32(arg_2, ~33828i), 1i, global4.x, global4.x)), vec4<i32>(u_input.e, -3437i, ~(~(u_input.e << (43793u % 32u))), -1i));
    global1 = array<Struct_1, 22>();
    global2 = Struct_1(!(!any(vec3<bool>(false, global2.d.x, global2.d.x))), global2.b && true, global0.c, global2.d);
    var var_0 = Struct_1(!(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_3.a.x, arg_0.a.x), arg_3.a.x << (13848u % 32u)) < countOneBits(4294967295u)), any(vec3<bool>(false, (-2147483647i | global4.x) < _wgslsmith_dot_vec3_i32(global4.wyw, vec3<i32>(u_input.e, u_input.b, u_input.b)), ~u_input.c.x == arg_3.a.x)), global0.c, global2.d);
    var var_1 = Struct_1(true, var_0.a, vec2<bool>(global2.b, arg_2 < u_input.b), select(var_0.d, global2.d, vec3<bool>(all(select(vec4<bool>(global0.a, var_0.c.x, var_0.b, false), vec4<bool>(true, true, true, var_0.c.x), global2.b)), all(select(vec2<bool>(false, true), vec2<bool>(global2.d.x, var_0.d.x), true)), !select(false, false, true))));
    return global2.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(37438u, select(firstLeadingBit(u_input.a.x), _wgslsmith_mult_u32(4294967295u, 0u), true)), ~(~u_input.a.ww)));
    var var_1 = 0u;
    global3 = array<Struct_1, 1>();
    global0 = Struct_1(global2.b, func_5(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(681f, 255f, -231f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -2291f))), global4.x ^ min(_wgslsmith_add_i32(1i, global4.x), -18696i), func_2(vec4<u32>(_wgslsmith_mod_u32(61912u, var_0.a.x), ~u_input.a.x, ~u_input.a.x, _wgslsmith_clamp_u32(var_0.a.x, 68920u, u_input.d.x)), 36067i)), global0.d.xx, vec3<bool>(func_5(var_0, arg_0, -5717i, var_0), true, global2.d.x & true));
    let var_2 = ~u_input.d;
    return 22270u < var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(vec4<f32>(990f, -1044f, _wgslsmith_f_op_f32(995f - -954f), 477f), Struct_1(!global0.b, true, global2.d.zx, !vec3<bool>(global2.b, false, true)), global3[_wgslsmith_index_u32(~(1u >> (u_input.a.x % 32u)), 1u)]) & false, any(vec3<bool>(!(!global2.a), func_1(vec4<f32>(1161f, -1000f, -1000f, 936f), Struct_1(true, global2.a, vec2<bool>(false, true), global2.d), global1[_wgslsmith_index_u32(u_input.d.x << (u_input.c.x % 32u), 22u)]), global0.c.x)), select(global0.d.zx, global2.d.yx, !func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1110f, -812f, 1722f, 1000f)), global3[_wgslsmith_index_u32(abs(u_input.a.x), 1u)], global3[_wgslsmith_index_u32(u_input.c.x, 1u)])), select(global0.d, global0.d, func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(390f, -521f, -180f, -294f), vec4<f32>(-370f, 1025f, -975f, -1731f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(686f, -925f, 1000f, -465f), vec4<f32>(252f, 825f, 737f, 1072f)))), Struct_1(global2.a, func_5(Struct_2(u_input.d.yw), vec4<f32>(1361f, 2735f, -959f, -1246f), 48253i, Struct_2(vec2<u32>(1u, u_input.c.x))), !vec2<bool>(false, global2.b), select(vec3<bool>(true, global0.b, false), global2.d, true)), Struct_1(global2.b, true, !vec2<bool>(global0.c.x, global0.b), vec3<bool>(global0.a, false, global2.d.x)))));
    var var_1 = Struct_1(!(!global2.d.x), global0.b | any(!vec4<bool>(true, var_0.a, true, true)), select(global2.d.zx, vec2<bool>(func_5(Struct_2(u_input.c.wz), vec4<f32>(973f, 1175f, -1129f, -1111f), _wgslsmith_mult_i32(global4.x, u_input.b), Struct_2(vec2<u32>(u_input.a.x, 0u))), global2.d.x), global2.a && global0.c.x), !select(select(!vec3<bool>(true, false, global2.c.x), !vec3<bool>(false, false, global2.d.x), vec3<bool>(global0.c.x, true, var_0.b)), select(global2.d, !global0.d, global2.a || global2.c.x), abs(1u) <= select(76569u, u_input.d.x, true)));
    var var_2 = var_0.a;
    var_1 = Struct_1(true, (-2147483647i > _wgslsmith_div_i32(~global4.x, global4.x)) && var_1.b, global0.d.xy, !(!(!global2.d)));
    var var_3 = _wgslsmith_f_op_f32(round(-161f));
    var var_4 = vec4<u32>(reverseBits(_wgslsmith_clamp_u32(u_input.a.x, 48706u, 5842u) ^ abs(_wgslsmith_dot_vec4_u32(u_input.d, u_input.a))), ~4294967295u, u_input.d.x, ~(~_wgslsmith_add_u32(46342u, u_input.a.x)));
    var_2 = global2.b && global2.a;
    let var_5 = select(!vec4<bool>(func_5(Struct_2(vec2<u32>(u_input.c.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-732f, 1437f, 382f, -551f) * vec4<f32>(1346f, -396f, -650f, 1000f)), ~7269i, Struct_2(vec2<u32>(u_input.a.x, u_input.d.x))), false, true, !(true && global2.c.x)), !select(vec4<bool>(all(vec3<bool>(false, false, false)), var_1.d.x || var_0.b, global0.c.x, all(global0.c)), vec4<bool>(global0.a, true, var_1.c.x, !var_0.c.x), any(select(vec4<bool>(true, true, global0.c.x, false), vec4<bool>(var_1.c.x, false, var_1.a, global2.d.x), vec4<bool>(global0.c.x, global0.b, true, false)))), _wgslsmith_f_op_f32(trunc(608f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1077f, 626f)) * 561f));
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(-vec4<i32>(2147483647i, -50010i, 30607i, 23738i)), vec4<i32>(_wgslsmith_add_i32(-1i, u_input.b), global4.x, min(u_input.e, global4.x), _wgslsmith_div_i32(global4.x, -14138i)), !(!vec4<bool>(true, true, var_0.c.x, true))) | (vec4<i32>(-46406i, -u_input.b, u_input.e, u_input.e) & -vec4<i32>(global4.x, global4.x, 16565i, u_input.e)), 0u << (_wgslsmith_mult_u32(~_wgslsmith_sub_u32(var_4.x, 24413u), var_4.x) % 32u), countOneBits(_wgslsmith_mod_vec2_i32(countOneBits(reverseBits(global4.yy)), (global4.wx | vec2<i32>(u_input.e, global4.x)) >> (select(vec2<u32>(var_4.x, u_input.a.x), u_input.c.yy, var_5.ww) % vec2<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-318f, 899f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 308f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1012f * 193f))), 1f, -1101f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-591f, 1560f)))));
}

