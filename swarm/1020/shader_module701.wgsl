struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-1331f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<bool> {
    let var_0 = arg_0;
    global0 = array<f32, 1>();
    var var_1 = Struct_2(vec2<i32>(1i, select(_wgslsmith_sub_i32(25786i, arg_0.e), abs(-445i), arg_0.d.x)) ^ -(~vec2<i32>(arg_0.e, arg_0.e)), arg_1.x, vec3<f32>(_wgslsmith_div_f32(arg_0.c, -549f), _wgslsmith_f_op_f32(step(-1396f, var_0.c)), _wgslsmith_div_f32(442f, _wgslsmith_f_op_f32(round(var_0.c)))));
    var var_2 = u_input.a.x;
    let var_3 = Struct_2(select(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_1.a.x, var_1.a.x, u_input.c), vec4<i32>(-51600i, -1i, var_1.a.x, 2147483647i)), var_0.e ^ -17421i), firstTrailingBit(var_1.a), select(select(vec2<bool>(false, true), vec2<bool>(true, true), !vec2<bool>(arg_0.b, var_0.a.x)), var_0.a.xx, true)), select(~_wgslsmith_mult_u32(arg_1.x, ~47752u), 4294967295u, var_0.b), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-551f)), -1000f, _wgslsmith_f_op_f32(sign(1249f)))), var_1.c));
    return vec3<bool>(false, any(!(!arg_0.a)), var_0.d.x);
}

fn func_2() -> bool {
    global0 = array<f32, 1>();
    var var_0 = Struct_1(select(select(func_3(Struct_1(vec3<bool>(true, true, true), false, -547f, vec4<bool>(false, false, true, false), u_input.c), abs(vec3<u32>(u_input.b.x, 56164u, 1u))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_3(Struct_1(vec3<bool>(true, true, true), true, global0[_wgslsmith_index_u32(23070u, 1u)], vec4<bool>(true, false, false, false), -1i), _wgslsmith_add_vec3_u32(u_input.a.zyw, vec3<u32>(23759u, u_input.a.x, 1u))).x), vec3<bool>(50829u != ~u_input.b.x, true, true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(856u, 1u)] * _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 1u)]))))), vec4<bool>(false, !(!all(vec4<bool>(false, false, true, true))), global0[_wgslsmith_index_u32(~u_input.b.x, 1u)] <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-929f))), true), -2147483647i | _wgslsmith_sub_i32(u_input.c | u_input.c, _wgslsmith_dot_vec2_i32(max(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.c, -20625i)), vec2<i32>(u_input.c, -561i))));
    var_0 = Struct_1(!var_0.d.zwx, false, global0[_wgslsmith_index_u32(~0u, 1u)], vec4<bool>(false, any(vec4<bool>(var_0.d.x, true, -1i > u_input.c, true)), select(!var_0.a.x, true, false), true), var_0.e);
    let var_1 = !any(func_3(Struct_1(func_3(Struct_1(var_0.d.xxz, false, global0[_wgslsmith_index_u32(0u, 1u)], vec4<bool>(true, false, var_0.d.x, true), u_input.c), vec3<u32>(65731u, u_input.b.x, u_input.b.x)), var_0.a.x, _wgslsmith_f_op_f32(floor(357f)), var_0.d, i32(-1i) * -1i), vec3<u32>(18417u & u_input.b.x, u_input.b.x & u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a))));
    var_0 = Struct_1(var_0.d.wxx, all(!vec3<bool>(true, var_1, select(false, true, false))), _wgslsmith_f_op_f32(-var_0.c), select(!select(vec4<bool>(true, false, var_1, var_1), vec4<bool>(var_1, var_0.a.x, var_0.d.x, true), !vec4<bool>(var_1, var_1, var_0.b, var_0.d.x)), var_0.d, var_0.d), ~19425i);
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = select(!select(vec2<bool>(select(true, true, true), true), vec2<bool>(true, true), !select(true, false, false)), !vec2<bool>(func_2(), all(vec2<bool>(false, false))), vec2<bool>(!select(936f > arg_0.c.x, all(vec2<bool>(true, false)), any(vec3<bool>(false, false, false))), !(!any(vec2<bool>(true, true)))));
    var_0 = vec2<bool>(var_0.x, var_0.x);
    let var_1 = Struct_1(!vec3<bool>(true, false || any(vec4<bool>(true, false, false, var_0.x)), true || func_3(Struct_1(vec3<bool>(false, false, var_0.x), false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec4<bool>(var_0.x, var_0.x, false, false), 49924i), u_input.a.wwy).x), var_0.x, 896f, vec4<bool>(true, !var_0.x, var_0.x, any(vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), func_3(Struct_1(vec3<bool>(true, var_0.x, false), true, global0[_wgslsmith_index_u32(93195u, 1u)], vec4<bool>(var_0.x, false, var_0.x, true), u_input.c), u_input.a.xzy).x))), _wgslsmith_clamp_i32(arg_0.a.x, _wgslsmith_sub_i32(u_input.c, -3255i) ^ -31196i, -(1i >> (select(arg_0.b, u_input.a.x, true) % 32u))));
    var var_2 = var_1;
    global0 = array<f32, 1>();
    return !var_2.d.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, true), true)), false, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, countOneBits(select(28078u, u_input.b.x, true) << (max(u_input.a.x, u_input.b.x) % 32u))), 1u)], vec4<bool>(true, true, true, true), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, 0i, u_input.c), vec3<i32>(31596i, u_input.c, u_input.c), vec3<bool>(false, false, true)) >> (u_input.a.zww % vec3<u32>(32u)), (vec3<i32>(u_input.c, -1i, u_input.c) ^ vec3<i32>(u_input.c, 24029i, -2147483647i)) ^ ~vec3<i32>(-2147483647i, u_input.c, u_input.c)), -40296i));
    var var_1 = func_1(Struct_2(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(6256i, 0i), vec2<i32>(38711i, 0i), vec2<i32>(var_0.e, var_0.e)) ^ (vec2<i32>(-36912i, u_input.c) | vec2<i32>(13553i, 1i)), firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -46024i), vec2<i32>(2147483647i, 10702i)))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 40026u, u_input.b.x), u_input.a.zyx | u_input.a.zww), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(39904u, 1u)], var_0.c, -1603f)))))), min(abs(-vec3<i32>(24616i, u_input.c, var_0.e)), -abs(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, 25790i), vec3<i32>(var_0.e, 2147483647i, var_0.e)))));
    var var_2 = Struct_2(_wgslsmith_sub_vec2_i32(vec2<i32>(~21998i, u_input.c << (1u % 32u)), min(~vec2<i32>(2147483647i, u_input.c), select(vec2<i32>(var_0.e, 2147483647i), vec2<i32>(9211i, var_0.e), vec2<bool>(false, var_1.x)))) << (~(~(~u_input.a.zy)) % vec2<u32>(32u)), 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1692f, 2119f, -1209f) + vec3<f32>(-532f, 800f, global0[_wgslsmith_index_u32(33124u, 1u)])) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1572f, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -1140f), vec3<f32>(612f, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], -298f))))) + vec3<f32>(-1154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1357f - global0[_wgslsmith_index_u32(13855u, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -257f)))));
    let var_3 = vec3<u32>(39601u, var_2.b, _wgslsmith_div_u32(var_2.b, 0u)) >> (vec3<u32>(select(min(1u, max(u_input.b.x, u_input.b.x)), var_2.b, false), 97321u, 3072u) % vec3<u32>(32u));
    global0 = array<f32, 1>();
    let var_4 = var_2.b;
    global0 = array<f32, 1>();
    global0 = array<f32, 1>();
    let var_5 = vec3<bool>(all(!(!vec4<bool>(var_1.x, var_0.b, var_1.x, true))), false, var_3.x > var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(-vec3<i32>(min(var_0.e, -5974i), -var_2.a.x, ~var_2.a.x), -vec3<i32>(var_2.a.x, -1i >> (1u % 32u), u_input.c)));
}

