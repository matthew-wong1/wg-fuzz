struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(1617f, 0i, vec4<bool>(true, false, true, false), vec2<u32>(30175u, 23837u), vec4<i32>(1i, i32(-2147483648), 0i, -8681i)), -4777i, 1i, vec3<u32>(76683u, 4294967295u, 1u)), Struct_3(Struct_1(-1118f, 31060i, vec4<bool>(true, false, false, true), vec2<u32>(32291u, 0u), vec4<i32>(-1i, 1i, -9155i, -11464i)), 2147483647i, 35524i, vec3<u32>(57041u, 23357u, 0u)), Struct_3(Struct_1(-780f, -1i, vec4<bool>(true, false, true, true), vec2<u32>(0u, 0u), vec4<i32>(1i, i32(-2147483648), 1i, 32330i)), 0i, 0i, vec3<u32>(63197u, 4294967295u, 2442u)), Struct_3(Struct_1(212f, -67979i, vec4<bool>(false, true, false, true), vec2<u32>(1u, 4294967295u), vec4<i32>(2147483647i, 27130i, 36563i, 1i)), 9415i, -36460i, vec3<u32>(68471u, 18703u, 1u)), Struct_3(Struct_1(-371f, 0i, vec4<bool>(false, false, false, false), vec2<u32>(1u, 6347u), vec4<i32>(0i, 1i, -3316i, 0i)), -3817i, 20632i, vec3<u32>(4294967295u, 4294967295u, 79321u)), Struct_3(Struct_1(-310f, -1i, vec4<bool>(true, false, false, true), vec2<u32>(1u, 34581u), vec4<i32>(-1i, -28252i, -65623i, -49976i)), -51886i, -35293i, vec3<u32>(4294967295u, 4294967295u, 55586u)), Struct_3(Struct_1(-914f, 2147483647i, vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 1u), vec4<i32>(1i, -20967i, 0i, -1i)), -1i, 2147483647i, vec3<u32>(4771u, 25245u, 13710u)), Struct_3(Struct_1(-1000f, 45730i, vec4<bool>(true, false, true, false), vec2<u32>(0u, 1u), vec4<i32>(2147483647i, 1i, 11960i, -54142i)), -18690i, -22309i, vec3<u32>(52704u, 0u, 52080u)));

var<private> global1: Struct_3 = Struct_3(Struct_1(-680f, i32(-2147483648), vec4<bool>(false, false, true, true), vec2<u32>(35586u, 1u), vec4<i32>(14983i, 0i, -1i, 2147483647i)), 0i, i32(-2147483648), vec3<u32>(4294967295u, 27895u, 14554u));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 3>;

var<private> global4: array<i32, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    global2 = global3[_wgslsmith_index_u32(global1.d.x, 3u)];
    global0 = array<Struct_3, 8>();
    let var_0 = global0[_wgslsmith_index_u32(1u, 8u)];
    global2 = global3[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x | global2.d.x, 1u, ~1735u, 2436u), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(3265u, 0u, global1.a.d.x, 4294967295u))) << (~_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(var_0.d.x, global1.d.x, 158u, 1u)) % 32u)) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(63643u, var_0.d.x, 30593u, global1.d.x) & vec4<u32>(18670u, 0u, u_input.d, global2.d.x), vec4<u32>(u_input.d, u_input.e.x, global1.d.x, global1.d.x & 46065u)) % 32u), 3u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(min(global2.a, global1.a.a)), global2.a) + vec3<f32>(857f, _wgslsmith_f_op_f32(exp2(var_0.a.a)), 1360f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.a, var_0.a.a)), -449f, -4172f))));
    return any(global1.a.c.zxy);
}

fn func_4(arg_0: u32, arg_1: bool) -> bool {
    global3 = array<Struct_1, 3>();
    let var_0 = Struct_1(1000f, _wgslsmith_div_i32(u_input.a.x, -2147483647i) | u_input.b, !vec4<bool>(true, true, true, any(select(vec3<bool>(global1.a.c.x, global2.c.x, arg_1), global1.a.c.xzw, vec3<bool>(arg_1, global2.c.x, arg_1)))), u_input.e.wz, u_input.a);
    var var_1 = reverseBits(countOneBits(vec3<i32>(-23286i, -38463i, 1i)) & _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i, u_input.a.x, 1i)), firstTrailingBit(countOneBits(vec3<i32>(var_0.e.x, global1.a.e.x, u_input.a.x))), vec3<i32>(global4[_wgslsmith_index_u32(4294967295u & u_input.d, 9u)], var_0.e.x, select(global4[_wgslsmith_index_u32(arg_0, 9u)], 0i, arg_1))));
    let var_2 = global1.a;
    let var_3 = true & (var_0.a < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -258f) * _wgslsmith_f_op_f32(-var_2.a)) * _wgslsmith_f_op_f32(ceil(var_0.a))));
    return !any(!vec2<bool>(global2.c.x && true, !global2.c.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: bool) -> u32 {
    var var_0 = Struct_1(global2.a, global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(28954u, firstTrailingBit(global1.d.x)), ~(~arg_0.x) << (47075u % 32u)), 9u)], select(select(vec4<bool>(false, all(global2.c.zzy), global1.a.c.x, true), !global1.a.c, !(!global2.c.x)), global2.c, false), _wgslsmith_mod_vec2_u32(~countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(10580u, 14847u), vec2<u32>(21728u, global2.d.x))), _wgslsmith_mult_vec2_u32(abs(firstLeadingBit(vec2<u32>(94115u, u_input.d))), max(select(u_input.c.wy, vec2<u32>(u_input.c.x, 4294967295u), true), vec2<u32>(global1.a.d.x, 85020u)))), ~(~(-global2.e)));
    global1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(global2.a + 1530f), !var_0.c.x))), u_input.b, vec4<bool>(all(global1.a.c), !(!arg_1), true, true | (false & var_0.c.x)), u_input.c.xx, global1.a.e), _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_dot_vec2_i32(global2.e.zz, vec2<i32>(u_input.a.x, 2147483647i)), -30314i, u_input.b), -global2.e.xxy), u_input.a.x, ~(~(~select(u_input.c.xwy, vec3<u32>(1u, 26743u, u_input.e.x), global1.a.c.xzy))));
    let var_1 = -1i;
    let var_2 = ~var_0.d;
    var var_3 = vec3<i32>(27110i, _wgslsmith_dot_vec4_i32(global1.a.e, ~vec4<i32>(i32(-1i) * -15163i, i32(-1i) * -1i, countOneBits(66981i), 1i)), i32(-1i) * -2147483647i);
    return var_0.d.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(9207u, 3u)], global4[_wgslsmith_index_u32(func_5(~vec3<u32>(_wgslsmith_mult_u32(35127u, global1.d.x), global2.d.x >> (65762u % 32u), global1.d.x), func_4(0u, func_3(!vec3<bool>(false, global2.c.x, global2.c.x)))), 9u)], u_input.b, firstLeadingBit(~abs(~global1.d)));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a) - var_0.a.a), Struct_1(541f, _wgslsmith_dot_vec3_i32(vec3<i32>(-16409i, global2.e.x & global2.b, ~(-2147483647i)), -_wgslsmith_clamp_vec3_i32(global2.e.xzw, global2.e.wwy, var_0.a.e.wwz)), !vec4<bool>(any(vec2<bool>(global1.a.c.x, global2.c.x)), global2.a > global2.a, true, global1.a.c.x), vec2<u32>(34229u, 0u), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_add_i32(1i, -63248i), ~global1.a.e.x, abs(global1.b)), countOneBits(vec4<i32>(-47687i, -2147483647i, -20041i, 3064i)))), _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(global1.d.xz, vec2<u32>(6778u, global2.d.x)), ~(~(~7u))));
    global4 = array<i32, 9>();
    var var_2 = global3[_wgslsmith_index_u32(func_5(firstTrailingBit(global1.d), !(any(vec3<bool>(true, var_0.a.c.x, global2.c.x)) && false)), 3u)];
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(1f)), 809f));
    return var_0.a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.b.d.x, 8u)];
    let var_1 = -1817i;
    let var_2 = global0[_wgslsmith_index_u32(select(arg_2.x, min(func_2().d.x, 1u) & _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(105719u, var_0.d.x)), var_0.a.d), true), 8u)];
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(401f + -794f), 620f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(ceil(global2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a)) - -1057f)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, var_2.a.a, var_2.a.a, global1.a.a))))))));
    let var_4 = _wgslsmith_add_i32(_wgslsmith_div_i32(var_2.b, reverseBits(arg_0.b.b)), func_2().e.x) << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_2.a.d.x, global1.a.d.x), ~arg_1.d.x, u_input.e.x) % 32u);
    return 4294967295u;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global1 = global0[_wgslsmith_index_u32(func_6(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -3025f), func_2(), 4294967295u), func_2(), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.e.zyz, global1.d, vec3<u32>(u_input.e.x, global1.a.d.x, 20278u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 3353u, global2.d.x), vec3<u32>(1u, 22624u, global2.d.x), vec3<u32>(global1.d.x, u_input.c.x, 34135u))) >> (global1.d % vec3<u32>(32u)), ~u_input.c.zyx, vec3<u32>(59963u, ~global2.d.x, ~(global2.d.x | 76865u)))), 8u)];
    let var_0 = -20612i;
    let var_1 = select(global1.a.c.wx, func_2().c.yx, global1.a.c.yx);
    let var_2 = -19031i < _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~(-global2.e.xyw), vec3<i32>(_wgslsmith_mult_i32(27244i, u_input.b), max(global2.b, global1.c), u_input.a.x)), select(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2.e.x, var_0, global1.b), vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 9u)], -35098i, global1.b)), reverseBits(u_input.a.zxx)), min(~vec3<i32>(u_input.b, 21522i, global1.a.b), ~vec3<i32>(-2967i, global1.b, -2147483647i)), !(false | global2.c.x)));
    global3 = array<Struct_1, 3>();
    return func_2();
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_2(-1751f, arg_0, ~arg_1 | ~3038u);
    global4 = array<i32, 9>();
    let var_2 = arg_0.c.xxy;
    global1 = Struct_3(func_1(0i), _wgslsmith_div_i32(countOneBits(_wgslsmith_add_i32(u_input.b, 6686i)), firstTrailingBit(-2147483647i) ^ (~global4[_wgslsmith_index_u32(arg_1, 9u)] << (_wgslsmith_add_u32(4294967295u, u_input.c.x) % 32u))), global2.e.x, vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(37696u, 1u, 14061u), vec3<u32>(global2.d.x, var_1.c, u_input.d)), _wgslsmith_add_vec3_u32(global1.d, vec3<u32>(13245u, 10440u, var_1.c))), 0u), ~_wgslsmith_mod_u32(select(4294967295u, 8444u, arg_0.c.x), func_6(Struct_2(global2.a, Struct_1(-1515f, arg_0.e.x, vec4<bool>(true, true, false, var_1.b.c.x), var_1.b.d, u_input.a), 1u), Struct_1(315f, var_1.b.b, global2.c, u_input.c.ww, var_1.b.e), u_input.c.wxw)), ~global2.d.x));
    return global1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_7(func_1(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global4[_wgslsmith_index_u32(70708u, 9u)], 2147483647i, -2147483647i, global4[_wgslsmith_index_u32(3510u, 9u)])) & ~global1.a.e, firstLeadingBit(vec4<i32>(0i, 18023i, 23008i, global1.c) >> (u_input.e % vec4<u32>(32u))))), 1446u, global1.a.e);
    global3 = array<Struct_1, 3>();
    global4 = array<i32, 9>();
    var var_0 = ~min(1u << (global2.d.x % 32u), ~firstLeadingBit(20745u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f))) * _wgslsmith_f_op_f32(f32(-1f) * -2432f));
    global1 = Struct_3(func_2(), i32(-1i) * -15540i, -1740i, select(global1.d, ~(~global1.d), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.a.a * global2.a), _wgslsmith_f_op_f32(-global1.a.a))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(372f)), 220f)));
    global3 = array<Struct_1, 3>();
    global4 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-345f, _wgslsmith_f_op_f32(-global2.a)))), u_input.e.zz & u_input.c.wy, u_input.e.xxw, vec3<u32>(u_input.d, 4465u, global1.a.d.x), ~min(min(~global4[_wgslsmith_index_u32(18312u, 9u)], abs(-29854i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 22641i), u_input.a.ww)));
}

