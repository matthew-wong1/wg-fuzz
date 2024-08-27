struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: bool;

var<private> global2: array<bool, 10>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> f32 {
    var var_0 = false;
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1119f - -1246f), arg_1.b.x, _wgslsmith_f_op_f32(-arg_2))), select(!select(select(arg_1.c, vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.c, 10u)]), vec3<bool>(arg_1.c.x, false, true)), arg_1.c, global2[_wgslsmith_index_u32(~4294967295u, 10u)]), vec3<bool>(arg_1.a, arg_1.c.x, arg_1.a), global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), 10u)]));
    let var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 10u)];
    var var_3 = Struct_1(all(select(vec4<bool>(true != arg_0.x, global2[_wgslsmith_index_u32(40373u, 10u)] == arg_1.a, arg_1.a, var_1.a && global2[_wgslsmith_index_u32(6419u, 10u)]), select(!vec4<bool>(false, true, true, var_1.c.x), !vec4<bool>(global2[_wgslsmith_index_u32(51350u, 10u)], arg_0.x, arg_0.x, true), arg_1.c.x), vec4<bool>(-888f < arg_2, true, u_input.d <= u_input.a, any(var_1.c)))), vec3<f32>(360f, arg_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x) - arg_2))), vec3<bool>(!select(138f <= var_1.b.x, true, var_1.c.x), arg_0.x, 1u > (4294967295u << ((u_input.b.x & u_input.c) % 32u))));
    let var_4 = u_input.b;
    return arg_1.b.x;
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(all(!vec2<bool>(!global2[_wgslsmith_index_u32(90901u, 10u)], true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1100f, 759f, -308f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(305f, 291f, 241f), vec3<f32>(757f, 1234f, -1055f)))))), vec3<bool>(false, all(vec2<bool>(true, true)), !all(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 10u)], false))));
    let var_1 = firstTrailingBit(u_input.d);
    global1 = all(select(vec4<bool>(select(any(var_0.c.zz), false, var_0.c.x), true, -150f != var_0.b.x, true), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 10u)], !global2[_wgslsmith_index_u32(u_input.b.x, 10u)], false, global2[_wgslsmith_index_u32(select(u_input.c, 4294967295u, true), 10u)]), var_0.c.x));
    var var_2 = var_0.c.zy;
    let var_3 = global0[_wgslsmith_index_u32(~u_input.b.x, 7u)];
    return ~_wgslsmith_mod_vec2_u32(firstLeadingBit(~u_input.b.yw), select(_wgslsmith_clamp_vec2_u32(firstTrailingBit(u_input.b.xz), abs(vec2<u32>(u_input.c, 4294967295u)), vec2<u32>(4294967295u, 1u)), firstTrailingBit(countOneBits(vec2<u32>(0u, u_input.b.x))), true));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.x, 7u)];
    let var_1 = !vec4<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.b.x, 10u)])), false, false, true);
    var var_2 = min(27738i, (20380i << (arg_0.x % 32u)) ^ abs(0i));
    let var_3 = select(vec4<u32>(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, arg_0.x, 39601u, 0u)), countOneBits(u_input.b)), ~select(22637u, 700u, true), 0u, u_input.c), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2 | 28082u, u_input.b.x, _wgslsmith_clamp_u32(1u, 6312u, 0u), countOneBits(arg_2)), u_input.b), vec4<u32>(1u, max(~u_input.c, arg_0.x << (arg_0.x % 32u)), abs(1u) | arg_0.x, countOneBits(14550u))), !any(!(!var_0.c.zy)));
    var var_4 = var_3;
    return var_3.x;
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = abs(_wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(54803i, -45332i), ~vec2<i32>(0i, arg_0)), countOneBits(vec2<i32>(arg_0 ^ -2147483647i, -arg_0))));
    let var_1 = Struct_1(!global2[_wgslsmith_index_u32(u_input.c, 10u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-947f, 2098f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1711f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1253f)) * _wgslsmith_div_f32(1280f, -1000f)))), vec3<bool>(false, false, any(vec4<bool>(true, false, !global2[_wgslsmith_index_u32(27315u, 10u)], true))));
    let var_2 = firstTrailingBit(var_0.x) >> ((~u_input.c >> (49455u % 32u)) % 32u);
    var var_3 = abs(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2, var_2, u_input.a, -22470i), vec4<i32>(-40122i, var_0.x, -2147483647i, 0i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, 47752i, var_0.x, 37542i), vec4<i32>(arg_0, arg_0, -26215i, 48903i))), _wgslsmith_add_i32(-1i, 2147483647i), _wgslsmith_clamp_i32(-12374i, -2147483647i, _wgslsmith_mult_i32(var_0.x, var_0.x)), abs(1i)) << (_wgslsmith_div_vec4_u32(~(~vec4<u32>(4294967295u, u_input.c, 76483u, 10119u)), vec4<u32>(~u_input.b.x, ~6153u, ~u_input.b.x, _wgslsmith_add_u32(u_input.b.x, u_input.b.x))) % vec4<u32>(32u)));
    let var_4 = func_4(_wgslsmith_clamp_vec2_u32(~(firstTrailingBit(vec2<u32>(49459u, u_input.b.x)) & _wgslsmith_mult_vec2_u32(u_input.b.yw, vec2<u32>(u_input.b.x, 28299u))), func_3(), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, u_input.c) ^ (u_input.b.ww ^ u_input.b.zy), firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.b.x, 0u))))), select(~var_3.zyw, select(firstTrailingBit(vec3<i32>(1i, u_input.a, -1i)), var_3.yzy, all(var_1.c.zy)) << (vec3<u32>(~4294967295u, 0u, u_input.c) % vec3<u32>(32u)), vec3<bool>(!(!var_1.c.x), false, false)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zw), u_input.c, ~u_input.c), u_input.b.wzw), _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.c), 0u)));
    return _wgslsmith_add_u32(var_4, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, abs(var_4), u_input.c), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.c, 0u), u_input.b)), _wgslsmith_add_u32(~_wgslsmith_add_u32(var_4, var_4), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 10>();
    let var_0 = _wgslsmith_f_op_f32(func_1(vec2<bool>(true, true), Struct_1(any(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 10u)], false, global2[_wgslsmith_index_u32(u_input.c, 10u)]))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-897f * 116f), _wgslsmith_f_op_f32(f32(-1f) * -675f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1574f, -2490f)), _wgslsmith_f_op_f32(-997f + -534f)))), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 10u)], true, !global2[_wgslsmith_index_u32(u_input.b.x, 10u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(720f, 551f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(654f, 1170f)), _wgslsmith_f_op_f32(f32(-1f) * -230f))))))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0 + -191f)))), _wgslsmith_f_op_f32(f32(-1f) * -224f), false)), _wgslsmith_f_op_f32(sign(var_0))));
    var var_2 = Struct_1(global2[_wgslsmith_index_u32(func_2(countOneBits(_wgslsmith_div_i32(min(u_input.a, u_input.a), ~(-2147483647i)))), 10u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_1, -690f, -819f))))), vec3<f32>(542f, var_0, _wgslsmith_f_op_f32(select(var_0, 317f, false))), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(92208u, 10u)]), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 10u)], true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 10u)], true, false), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 10u)], global2[_wgslsmith_index_u32(48938u, 10u)]), false)))), vec3<f32>(954f, _wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_1, var_1))))), vec3<bool>(!global2[_wgslsmith_index_u32(~u_input.b.x, 10u)], all(vec2<bool>(u_input.c == u_input.c, global2[_wgslsmith_index_u32(~110033u, 10u)])), true & (_wgslsmith_clamp_u32(60150u, u_input.b.x, 74341u) > (1u | u_input.c))));
    global2 = array<bool, 10>();
    global2 = array<bool, 10>();
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1289f)), var_2.b.x, all(!vec3<bool>(false, global2[_wgslsmith_index_u32(3794u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 10u)])))))), -660f);
    var var_4 = global0[_wgslsmith_index_u32(~(u_input.c & min(~(0u >> (u_input.c % 32u)), 56843u)), 7u)];
    let var_5 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzw, select(u_input.b.zzy, _wgslsmith_add_vec3_u32(~min(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), u_input.b.xzz), ~vec3<u32>(1u, 28512u, 4294967295u)), !var_2.c.x)), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.d, 1145i, 1i, 0i) & firstTrailingBit(vec4<i32>(u_input.a, 28685i, u_input.d, 4762i))), select(select(vec4<i32>(2147483647i, -1i, 5507i, 18344i), vec4<i32>(1i, 8984i, u_input.a, -1i), vec4<bool>(global2[_wgslsmith_index_u32(129933u, 10u)], var_4.c.x, var_2.c.x, var_5.a)) ^ vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 11052i), vec4<i32>(u_input.a, -34402i, u_input.a, -23095i)), vec4<i32>(0i, 40037i, 2147483647i, 1i)), (true & global2[_wgslsmith_index_u32(36229u, 10u)]) && (u_input.c >= 409u)), countOneBits(vec4<i32>(u_input.d, u_input.a, u_input.a, min(u_input.d, 2147483647i)))), _wgslsmith_div_u32(max(func_2(1i), ~(~4294967295u)), u_input.b.x), min(_wgslsmith_mod_u32(~u_input.b.x, ~u_input.c) ^ 1u, _wgslsmith_div_u32(~select(1u, 15965u, global2[_wgslsmith_index_u32(0u, 10u)]), 1u)), u_input.b.xx, u_input.b & u_input.b);
}

