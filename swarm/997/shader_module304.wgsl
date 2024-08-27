struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: u32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 32>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = -(~vec3<i32>(-2147483647i, global0.a, global0.b.b.x));
    return Struct_1(6216u, min(var_0.yz & var_0.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x << (4294967295u % 32u), -1i), vec2<i32>(-2147483647i, var_0.x & global0.a))), arg_0);
}

fn func_3() -> u32 {
    let var_0 = Struct_4(i32(-1i) * -(global0.a << (u_input.b % 32u)), global0.c, func_1(global0.c.c), (i32(-1i) * -7250i) << (u_input.a % 32u), global1[_wgslsmith_index_u32(~0u, 32u)]);
    var var_1 = global0.e;
    var var_2 = Struct_4(i32(-1i) * -abs(~global0.b.b.x), Struct_1(_wgslsmith_mult_u32(var_1.b, var_1.b), -(_wgslsmith_div_vec2_i32(vec2<i32>(global0.d, global0.d), vec2<i32>(21849i, 12871i)) | global0.b.b), _wgslsmith_f_op_f32(-1661f * -1014f)), var_0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_mult_i32(0i, 27280i)), vec2<i32>(-2147483647i, global0.c.b.x)), vec2<i32>(_wgslsmith_add_i32(-2147483647i, var_0.b.b.x) & -global0.c.b.x, global0.d)), var_0.e);
    let var_3 = Struct_2(vec4<i32>(-8433i ^ _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_2.d, global0.c.b.x), -17527i), min(_wgslsmith_add_i32(-22833i, -var_0.a), var_0.a), var_2.b.b.x, ~(firstLeadingBit(var_0.c.b.x) | (i32(-1i) * -47897i))), !any(global0.e.a), ~(~var_0.b.a), ~(~_wgslsmith_mult_vec2_u32(min(vec2<u32>(var_0.c.a, var_2.c.a), vec2<u32>(1u, var_1.b)), vec2<u32>(var_2.b.a, var_2.c.a))));
    global0 = var_0;
    return _wgslsmith_dot_vec3_u32(countOneBits(select(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(5088u, 49561u, 53067u)), ~vec3<u32>(0u, u_input.b, 3074u)), ~firstLeadingBit(vec3<u32>(var_3.d.x, var_1.b, var_2.e.b)), true)), vec3<u32>(_wgslsmith_mod_u32(reverseBits(var_2.e.b), ~var_0.c.a) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, 26166u), vec3<u32>(69821u, var_2.e.b, var_1.b)), _wgslsmith_clamp_u32(1u, 0u, var_1.b) ^ var_3.d.x, 1u));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec4<i32> {
    var var_0 = func_3();
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(arg_1, -20868i, -7838i)), abs(~vec3<i32>(-13316i, -68310i, arg_1))), 2147483647i, 11974i), -486i);
    var var_2 = 1i;
    let var_3 = any(vec3<bool>(global0.e.c, !any(select(global0.e.a.wy, global0.e.a.zy, global0.e.c)), global0.e.c));
    var var_4 = vec2<f32>(-150f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f - _wgslsmith_f_op_f32(step(1140f, 851f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-877f, arg_0, var_3)) - arg_0)), 11846u <= ~_wgslsmith_sub_u32(4294967295u, global0.e.b))));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(max(-vec3<i32>(arg_1, -30689i, var_1.x), vec3<i32>(var_1.x, -2147483647i | arg_1, 1i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, arg_1, -1i), reverseBits(vec3<i32>(global0.b.b.x, -2147483647i, global0.b.b.x))) & vec3<i32>(_wgslsmith_div_i32(-2147483647i, 29669i), var_1.x, var_1.x)), -_wgslsmith_div_i32(arg_1 | (2147483647i >> (u_input.a % 32u)), 34962i), -26881i, max(reverseBits(global0.a | ~global0.a), 1i));
}

fn func_4(arg_0: i32) -> vec4<bool> {
    let var_0 = vec3<bool>(false, false, !((all(global0.e.a.yzw) == global0.e.c) || (any(global0.e.a.yyw) || !global0.e.a.x)));
    global0 = Struct_4(54032i, func_1(global0.c.c), Struct_1(0u, _wgslsmith_div_vec2_i32(global0.b.b, ~vec2<i32>(-34897i, arg_0) ^ abs(global0.c.b)), -1253f), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(56240i, 14405i, arg_0), vec3<i32>(-1i, 17284i, arg_0) >> (vec3<u32>(global0.c.a, 79483u, 0u) % vec3<u32>(32u)))) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), global0.b.b & firstLeadingBit(global0.c.b)), global0.e);
    global1 = array<Struct_3, 32>();
    var var_1 = var_0;
    global0 = Struct_4(_wgslsmith_clamp_i32(-5309i, -65304i >> (~global0.e.b % 32u), global0.d) & func_1(-900f).b.x, Struct_1(min(18546u, ~609u ^ _wgslsmith_mult_u32(u_input.a, global0.e.b)), ~global0.b.b, -898f), Struct_1(u_input.a ^ u_input.a, global0.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -387f)), -1i, Struct_3(vec4<bool>(true, false, !var_1.x, global0.e.c), ~(select(10421u, u_input.b, true) & _wgslsmith_add_u32(global0.e.b, global0.b.a)), all(vec4<bool>(!global0.e.c, !var_1.x, true, var_0.x))));
    return vec4<bool>(global0.e.c, global0.e.a.x, true, global0.e.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = Struct_1(34934u, vec2<i32>(max(global0.d, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, global0.d, -30375i), _wgslsmith_sub_vec3_i32(vec3<i32>(5443i, -4373i, global0.b.b.x), vec3<i32>(-50476i, -1i, 26130i)))), 22973i), 629f);
    var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -1638f));
    var var_2 = Struct_3(func_4(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, var_1.b.x, var_1.b.x, -1i), vec4<i32>(22129i, var_1.b.x, 21384i, global0.b.b.x)), func_2(-1000f, global0.a)), ~(~vec4<i32>(global0.b.b.x, 1i, -8012i, var_1.b.x)))), countOneBits(4294967295u), true);
    var var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(global0.b.c, var_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global0.c.c)), 205f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1368f, global0.b.c, 281f), vec3<f32>(819f, global0.b.c, global0.b.c))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2136f, global0.b.c, var_1.c)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c, -937f, -1999f))))))));
    let var_4 = -1293f;
    var var_5 = global0.b;
    let var_6 = var_3.x;
    var_1 = Struct_1(_wgslsmith_add_u32(var_1.a, var_2.b), -(global0.b.b | var_5.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + -572f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(min(-firstLeadingBit(var_1.b.x), global0.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 1u, var_5.a, 24573u) >> (vec4<u32>(52825u, var_0, 31813u, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a, var_2.b, 1u, 1u), vec4<u32>(17225u, 2432u, var_2.b, var_1.a))), ~max(vec4<u32>(var_5.a, 4294967295u, 36690u, 0u), vec4<u32>(4294967295u, 34856u, 54075u, var_1.a))) ^ min(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(24647u, 36003u, var_0, var_2.b), vec4<u32>(global0.e.b, var_0, var_2.b, var_1.a)), vec4<u32>(54416u, var_2.b, 0u, 1u), select(vec4<u32>(var_2.b, 17053u, 10116u, 1394u), vec4<u32>(1u, var_2.b, var_1.a, 0u), var_2.c)), ~abs(vec4<u32>(54173u, 85254u, var_0, var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_1(_wgslsmith_f_op_f32(var_5.c + 1830f)).c))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1585f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-645f, _wgslsmith_f_op_f32(-266f + -797f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.c * var_4)) - var_1.c)));
}

