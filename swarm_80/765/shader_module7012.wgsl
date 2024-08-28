struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: Struct_2;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = Struct_1(4294967295u, ~_wgslsmith_div_vec4_u32((vec4<u32>(arg_1.c.c, 30578u, 28825u, 39836u) ^ vec4<u32>(arg_1.c.a, arg_0.c.b.x, 16834u, 0u)) >> (_wgslsmith_clamp_vec4_u32(global1.c.b, vec4<u32>(u_input.c.x, 25569u, 0u, u_input.c.x), global1.c.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, 42232u), _wgslsmith_add_u32(862u, 3286u), ~u_input.a.x, 41767u)), abs(27914u), all(select(select(vec2<bool>(true, true), !vec2<bool>(arg_1.d.x, global1.c.d), arg_0.d.xz), vec2<bool>(!global1.d.x, any(vec4<bool>(false, arg_1.c.d, true, true))), !global1.c.d)));
    let var_1 = global0[_wgslsmith_index_u32(15757u, 30u)];
    let var_2 = Struct_1(10219u, arg_1.c.b, ~var_0.b.x, any(!select(vec4<bool>(false, false, var_0.d, false), vec4<bool>(global1.c.d, true, true, false), true)) != any(vec2<bool>(var_1.d, global1.c.a == 73926u)));
    let var_3 = _wgslsmith_div_vec2_f32(global2.wx, _wgslsmith_f_op_vec2_f32(-global2.zz));
    let var_4 = Struct_2(u_input.b, _wgslsmith_mult_vec3_i32(firstLeadingBit(global1.b), vec3<i32>(-global1.a, ~(-1i), -2147483647i)), arg_1.c, !vec3<bool>(var_2.d, true, true));
    return vec3<u32>(~(~1u), 37845u, 0u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(-46925i, (global1.b >> (func_3(Struct_2(u_input.b, vec3<i32>(u_input.b, -2147483647i, 2147483647i), global0[_wgslsmith_index_u32(u_input.c.x, 30u)], vec3<bool>(global1.c.d, true, global1.c.d)), Struct_2(global1.a, vec3<i32>(2147483647i, -1i, global1.b.x), Struct_1(global1.c.c, global1.c.b, u_input.c.x, global1.d.x), global1.d)) % vec3<u32>(32u))) >> (vec3<u32>(~firstLeadingBit(0u), u_input.c.x, 54244u) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(_wgslsmith_mod_u32(global1.c.a, u_input.c.x))), 30u)], global1.d);
    let var_1 = select(~(~firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(18009u, 2534u, 29587u), vec3<u32>(4294967295u, 1u, global1.c.c)))), var_0.c.b.www, all(!select(select(vec3<bool>(var_0.d.x, var_0.d.x, global1.c.d), vec3<bool>(global1.c.d, global1.d.x, true), false), select(vec3<bool>(true, global1.c.d, global1.c.d), vec3<bool>(var_0.d.x, global1.c.d, var_0.d.x), true), select(vec3<bool>(global1.c.d, false, var_0.c.d), var_0.d, global1.d.x))));
    var var_2 = _wgslsmith_clamp_i32(select(i32(-1i) * -1i, _wgslsmith_mod_i32(-5691i, min(-9519i, -42999i & global1.a)), select(!select(true, global1.d.x, global1.c.d), ~global1.c.b.x >= _wgslsmith_mult_u32(0u, 0u), true)), _wgslsmith_sub_i32(32515i, -firstTrailingBit(_wgslsmith_clamp_i32(-19571i, 48283i, global1.a))), select(3136i, -global1.b.x, !select(var_0.c.d, var_0.c.d, true)) >> (30510u % 32u));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.x + global2.x))), 2625f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2629f, global2.x)) - _wgslsmith_f_op_f32(-global2.x)), global2.x)));
    var var_3 = var_0.c;
    return Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_3.a, ~0u), var_0.c.a, 0u), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(global1.c.b.yww), var_0.c.b.xyx), ~u_input.a.x), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(29780u, var_3.b.x, 4294967295u, 5011u)), ~var_3.b) ^ _wgslsmith_dot_vec2_u32(global1.c.b.zw, reverseBits(vec2<u32>(49221u, global1.c.c))), 110u, global1.c.c), firstTrailingBit(select(abs(firstLeadingBit(global1.c.b.x)), var_1.x, true)), false);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(~1i, abs(vec3<i32>(42285i, i32(-1i) * -20874i, firstLeadingBit(u_input.b))), global1.c, !vec3<bool>(_wgslsmith_f_op_f32(-global2.x) == 952f, all(select(global1.d.xx, global1.d.yx, vec2<bool>(false, arg_1.d))), any(vec2<bool>(true, true))));
    global2 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, global2.x)) * _wgslsmith_f_op_f32(exp2(global2.x))))), 855f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x))))))));
    global1 = Struct_2(global1.b.x, -vec3<i32>(~(2147483647i << (var_0.c.c % 32u)), _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), -1i, -2147483647i), var_0.b.x), global1.c, global1.d);
    let var_1 = _wgslsmith_add_vec4_i32(countOneBits(~firstLeadingBit(select(vec4<i32>(-19352i, global1.b.x, 970i, var_0.a), vec4<i32>(global1.a, -6785i, global1.b.x, global1.a), vec4<bool>(true, false, var_0.d.x, var_0.c.d)))), vec4<i32>(_wgslsmith_div_i32(~2147483647i, _wgslsmith_sub_i32(var_0.b.x, i32(-1i) * -2147483647i)), 0i, -global1.a, ~72160i));
    var var_2 = var_0.c.a & (8692u | u_input.c.x);
    return Struct_2(-(i32(-1i) * -34214i), vec3<i32>(var_1.x, -1i, 0i), func_2(), select(select(!vec3<bool>(true, arg_1.d, false), select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(false, false, var_0.d.x), true), select(vec3<bool>(false, global1.c.d, true), vec3<bool>(false, arg_0, true), arg_1.d), var_0.d), var_0.d), global1.d, !all(select(vec3<bool>(false, var_0.d.x, global1.d.x), global1.d, arg_1.d))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    global1 = func_4(arg_0.d.x, func_2());
    let var_0 = global1.d.xz;
    global0 = array<Struct_1, 30>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1341f, global2.x, global2.x, -1198f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(290f, global2.x, global2.x, global2.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1069f, 1375f, global2.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-684f, global2.x, global2.x, global2.x) + vec4<f32>(global2.x, global2.x, global2.x, global2.x)) * vec4<f32>(-1000f, -960f, 687f, global2.x)) - vec4<f32>(_wgslsmith_f_op_f32(abs(965f)), -458f, _wgslsmith_f_op_f32(global2.x + -1815f), _wgslsmith_div_f32(197f, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, 152f, 1520f))), vec4<bool>(true, _wgslsmith_f_op_f32(min(-226f, global2.x)) != _wgslsmith_f_op_f32(-1097f * 159f), _wgslsmith_sub_u32(arg_1.c, 74823u) == 3733u, func_2().d))));
    global2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(global2.x + -210f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-797f))))))));
    return vec4<bool>(arg_1.d, var_0.x, all(vec2<bool>(false, true)), all(vec3<bool>(false, true, global1.c.d)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_2(global1.a, _wgslsmith_mult_vec3_i32(~(abs(global1.b) | (vec3<i32>(1i, u_input.b, -1i) << (vec3<u32>(arg_1.a, arg_2, global1.c.b.x) % vec3<u32>(32u)))), vec3<i32>(_wgslsmith_dot_vec3_i32(global1.b, global1.b), u_input.b, ~_wgslsmith_add_i32(global1.a, 2147483647i))), func_2(), !vec3<bool>(!all(arg_0), true, all(arg_0.zx)));
    let var_1 = _wgslsmith_div_vec2_u32(~min(_wgslsmith_add_vec2_u32(arg_1.b.yx, firstLeadingBit(vec2<u32>(arg_1.a, arg_1.a))), ~var_0.c.b.ww & vec2<u32>(1u, arg_2)), ~var_0.c.b.yy);
    return Struct_2(~u_input.b, reverseBits(var_0.b), Struct_1(~(var_0.c.b.x ^ countOneBits(4294967295u)), _wgslsmith_sub_vec4_u32(arg_1.b, vec4<u32>(reverseBits(var_1.x), arg_2, max(1u, 8878u), var_0.c.c)), 27578u, true), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!select(!func_1(Struct_2(global1.a, vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_1(global1.c.a, vec4<u32>(u_input.c.x, 0u, global1.c.a, 1u), 4294967295u, global1.c.d), vec3<bool>(global1.c.d, true, global1.d.x)), global1.c), !(!vec4<bool>(global1.c.d, global1.c.d, false, false)), select(vec4<bool>(false, global1.c.d, global1.d.x, true), vec4<bool>(false, global1.d.x, true, global1.d.x), vec4<bool>(global1.c.d, global1.d.x, false, true))), func_2(), func_4(countOneBits(43479u) != ~global1.c.b.x, Struct_1(65030u, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 40222u, 1u, 4294967295u), _wgslsmith_clamp_vec4_u32(global1.c.b, vec4<u32>(global1.c.b.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.c.x, 104424u, global1.c.a, 61272u))), 1u, any(vec2<bool>(global1.d.x, global1.c.d)) || global1.c.d)).c.c);
    global0 = array<Struct_1, 30>();
    var var_1 = 4294967295u | _wgslsmith_sub_u32(~(~_wgslsmith_div_u32(global1.c.b.x, 9514u)), global1.c.b.x | _wgslsmith_div_u32(~u_input.c.x, ~u_input.a.x));
    var_1 = max(1u, _wgslsmith_dot_vec2_u32(abs(~(vec2<u32>(var_0.c.a, u_input.c.x) | var_0.c.b.zw)), vec2<u32>(func_4(global1.c.d, Struct_1(u_input.a.x, vec4<u32>(26146u, 10778u, 64301u, 50663u), 89808u, var_0.d.x)).c.b.x, ~1u)));
    var_1 = ~50197u;
    var var_2 = Struct_1(17703u, func_2().b, 1u, global1.c.d);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_div_f32(-698f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1106f)) + _wgslsmith_f_op_f32(global2.x - global2.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(340f, global2.x)))), _wgslsmith_f_op_f32(step(global2.x, 476f)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-35058i, ~_wgslsmith_add_i32(28830i >> (var_0.c.a % 32u), 1i)), ~17023i, _wgslsmith_mult_i32(firstTrailingBit(-global1.a >> (~1u % 32u)), u_input.b << (~_wgslsmith_mult_u32(global1.c.b.x, 1u) % 32u)), countOneBits(global1.b.x), global1.b.x);
}

