struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: vec4<u32>,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    global0 = array<i32, 9>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -507f))))), -2468f);
    global0 = array<i32, 9>();
    global0 = array<i32, 9>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(104f, var_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1302f, 136f) - vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1128f, var_0), vec2<f32>(var_0, -1000f)))), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(false, true), vec2<bool>(true, true)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, -2025f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-374f, var_0), vec2<f32>(var_0, -1497f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1379f, var_0)) + -594f))));
    return u_input.c.wwy;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> i32 {
    global0 = array<i32, 9>();
    let var_0 = vec2<bool>(false, !all(!vec4<bool>(arg_1.x, arg_0, true, arg_1.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1708f, -635f, -1936f, -1150f), vec4<f32>(1025f, -579f, -227f, 292f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1466f + 728f), _wgslsmith_f_op_f32(-150f - 1639f), _wgslsmith_div_f32(-674f, -1175f), _wgslsmith_f_op_f32(round(-699f))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_i32(func_3(), _wgslsmith_add_vec3_i32(~u_input.c.zzz, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], -8960i, u_input.c.x) << (vec3<u32>(1u, 7058u, 47247u) % vec3<u32>(32u)))), !any(!arg_1), var_0.x, _wgslsmith_div_i32(18026i, _wgslsmith_sub_i32(~23380i, -global0[_wgslsmith_index_u32(u_input.d, 9u)]))), vec3<u32>(u_input.a, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.d, 59608u), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), 24850u, select(arg_1.x, arg_1.x, arg_1.x)), reverseBits(~u_input.d) & u_input.a), Struct_1(max(_wgslsmith_div_vec3_i32(u_input.c.zwy << (vec3<u32>(4294967295u, u_input.a, 59561u) % vec3<u32>(32u)), vec3<i32>(u_input.b.x, -90488i, global0[_wgslsmith_index_u32(67435u, 9u)])), max(vec3<i32>(39797i, global0[_wgslsmith_index_u32(u_input.d, 9u)], u_input.c.x), u_input.c.zyw)), true, false, _wgslsmith_mult_i32(-6333i, global0[_wgslsmith_index_u32(min(u_input.d, 1u), 9u)]) >> (u_input.a % 32u)), Struct_1(select(max(u_input.c.xzx >> (vec3<u32>(25643u, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(global0[_wgslsmith_index_u32(15741u, 9u)], -21901i, u_input.b.x)), -vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 9u)], global0[_wgslsmith_index_u32(3332u, 9u)], global0[_wgslsmith_index_u32(u_input.d, 9u)]), arg_1.x), true, var_0.x, _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -(u_input.c.x & u_input.b.x))), ~_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 4294967295u) | vec2<u32>(u_input.a, u_input.d), firstLeadingBit(vec2<u32>(7390u, 0u))), vec2<u32>(4294967295u, ~u_input.d)));
    var_2 = Struct_2(var_2.c, var_2.b, Struct_1(vec3<i32>(-19140i, abs(i32(-1i) * -2147483647i), 7524i), !(!any(vec3<bool>(true, arg_0, true))), false, 0i), Struct_1(vec3<i32>(21643i, var_2.a.d, u_input.c.x), false, all(select(select(vec2<bool>(arg_1.x, arg_0), vec2<bool>(arg_0, false), arg_0), arg_1, !arg_1)), -abs(u_input.c.x)), vec2<u32>(4294967295u, min(firstTrailingBit(~u_input.d), _wgslsmith_mult_u32(u_input.a, u_input.a))));
    return _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, -2147483647i), firstLeadingBit(var_2.d.a.zx), !arg_1) ^ reverseBits(max(u_input.c.xy, vec2<i32>(global0[_wgslsmith_index_u32(223u, 9u)], 0i))), u_input.b) >> (u_input.d % 32u);
}

fn func_1() -> vec3<i32> {
    let var_0 = -vec3<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.d, 9u)], -2147483647i), firstLeadingBit(~_wgslsmith_div_i32(64409i, -17429i)), _wgslsmith_add_i32(0i, func_2(true, vec2<bool>(false, true))));
    global0 = array<i32, 9>();
    let var_1 = _wgslsmith_clamp_vec3_i32(u_input.c.ywy, select(u_input.c.xwy, u_input.c.zzz, true), firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.c.wxy, u_input.c.ywy))) >> (_wgslsmith_add_vec3_u32(abs(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.d, 1u, 76090u)), vec3<u32>(u_input.d, 38820u, 43426u), ~vec3<u32>(u_input.a, u_input.d, 4294967295u))), ~(vec3<u32>(27595u, 5783u, 41183u) << ((vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(54720u, 0u, 37812u)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    global0 = array<i32, 9>();
    var var_2 = Struct_3(~_wgslsmith_mod_vec3_u32(abs(~vec3<u32>(u_input.a, 0u, 4181u)), ~vec3<u32>(u_input.d, 62989u, u_input.a) >> (countOneBits(vec3<u32>(4294967295u, 1u, u_input.a)) % vec3<u32>(32u))));
    return vec3<i32>(u_input.b.x, -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_2.a.x, 9u)] & var_0.x, var_0.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.xy, select(vec2<i32>(18838i, var_0.x), vec2<i32>(29518i, global0[_wgslsmith_index_u32(60093u, 9u)]), true)) << (var_2.a.x % 32u), global0[_wgslsmith_index_u32(var_2.a.x, 9u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 9>();
    let var_0 = Struct_1(vec3<i32>(0i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(31660i, u_input.b.x, global0[_wgslsmith_index_u32(35632u, 9u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], -1i, global0[_wgslsmith_index_u32(0u, 9u)])), select(u_input.c.wxw, u_input.c.wwx, true)), ~(-6777i)) & func_1(), select(!select(any(vec2<bool>(true, false)), all(vec2<bool>(false, false)), true), true, (true & any(vec2<bool>(false, true))) || true), true, ~global0[_wgslsmith_index_u32(~(~u_input.d), 9u)]);
    global0 = array<i32, 9>();
    var var_1 = _wgslsmith_clamp_vec4_u32(~(~select(vec4<u32>(41322u, u_input.d, 28142u, 1u), abs(vec4<u32>(4294967295u, 100521u, 4294967295u, 0u)), !vec4<bool>(true, var_0.b, var_0.c, true))), vec4<u32>(~u_input.d, ~u_input.d, min(~19863u, firstTrailingBit(u_input.a)), u_input.d) | vec4<u32>(u_input.d >> (_wgslsmith_clamp_u32(u_input.d, u_input.a, u_input.d) % 32u), u_input.d ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.d), vec3<u32>(u_input.d, 51652u, u_input.d)), 0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(5660u, 12917u, 97874u, u_input.a), vec4<u32>(u_input.a, 54151u, u_input.a, 11267u))), vec4<u32>(u_input.a, firstLeadingBit(~u_input.a), 0u, ~(~u_input.d >> (0u % 32u))));
    let var_2 = Struct_4(vec3<u32>(31476u, ~0u, ~_wgslsmith_dot_vec2_u32(var_1.wx, vec2<u32>(4294967295u, 4294967295u))), Struct_3(max(min(vec3<u32>(u_input.d, u_input.d, 37603u), select(var_1.zww, vec3<u32>(u_input.a, 2494u, 1u), var_0.c)), var_1.xyw)), vec4<u32>(~40787u, u_input.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 4294967295u), ~min(var_1.yy, vec2<u32>(16009u, var_1.x))), _wgslsmith_mod_u32(~u_input.d, ~(~76837u))), Struct_3(var_1.wyw), !var_0.c);
    var var_3 = _wgslsmith_f_op_f32(sign(1f));
    global0 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec4<u32>(0u, var_1.x, 4294967295u, 68990u) | vec4<u32>(var_1.x, 33196u, 10484u, u_input.a)), _wgslsmith_mod_vec2_u32(~var_2.d.a.yx, vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.a, var_1.wxy) | u_input.a, var_1.x)), u_input.d);
}

