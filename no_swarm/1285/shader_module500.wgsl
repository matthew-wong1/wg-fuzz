struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, -1i, vec2<u32>(4294967295u, 4294967295u), 930f);

var<private> global1: Struct_1 = Struct_1(false, 2147483647i, vec2<u32>(41033u, 118337u), 1769f);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = vec2<bool>(all(!select(!vec2<bool>(arg_1.a, true), vec2<bool>(true, true), !arg_1.a)), false);
    var var_1 = Struct_1(false, _wgslsmith_dot_vec2_i32(~(~vec2<i32>(global0.b, -2147483647i)), _wgslsmith_add_vec2_i32(abs(vec2<i32>(-46440i, 11890i)), -vec2<i32>(global1.b, global1.b)) >> (~(~global1.c) % vec2<u32>(32u))), vec2<u32>(~(~40817u | _wgslsmith_clamp_u32(13414u, 7066u, 1u)), global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))));
    var var_2 = Struct_1(true, _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, arg_1.b, 41035i), vec4<i32>(u_input.a, global0.b, var_1.b, -1i) ^ vec4<i32>(arg_1.b, var_1.b, global0.b, 1i), vec4<i32>(0i, 61010i, global1.b, u_input.a)), max(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 0i, global0.b, var_1.b), firstLeadingBit(vec4<i32>(var_1.b, -6374i, arg_1.b, -1i))), vec4<i32>(~global1.b, countOneBits(2147483647i), var_1.b, max(global1.b, 4143i)))), arg_1.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global0.d)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.d - -175f))))))));
    let var_3 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(~0u, ~var_2.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 22109u, var_2.c.x, 19187u), max(vec4<u32>(var_2.c.x, var_1.c.x, 4294967295u, 35170u), vec4<u32>(arg_1.c.x, var_1.c.x, global1.c.x, global0.c.x))) << (reverseBits(_wgslsmith_sub_u32(arg_1.c.x, 4294967295u)) % 32u)), _wgslsmith_div_u32(var_2.c.x, u_input.d), 37197u, 1u << (var_1.c.x % 32u));
    let var_4 = u_input.c | ~min(_wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.c.x, u_input.d, var_1.c.x), var_3.zxy, false), vec3<u32>(global0.c.x, 7846u, var_3.x) | vec3<u32>(0u, var_1.c.x, 34556u)), firstLeadingBit(~var_3.x));
    return u_input.a | _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-4181i ^ u_input.a), -1i), 17518i);
}

fn func_2() -> vec3<u32> {
    global0 = Struct_1(global1.a, global1.b, global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2285f)), _wgslsmith_f_op_f32(-global1.d), all(vec4<bool>(true, global0.a, true, true)))) * -834f));
    global0 = Struct_1(global0.c.x <= ~(~firstTrailingBit(global0.c.x)), ~(~(1i | global1.b)) & global1.b, (countOneBits(global1.c) | select(_wgslsmith_div_vec2_u32(vec2<u32>(global0.c.x, 28543u), global0.c), abs(global1.c), vec2<bool>(global1.a, global0.a))) & ~(~min(global0.c, global0.c)), -228f);
    global0 = Struct_1(46091u > (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 7681u, 53091u, 54961u), vec4<u32>(global0.c.x, global1.c.x, 3357u, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1.c.x, 19422u, u_input.b, 1u), vec4<u32>(12111u, 16241u, global1.c.x, 8368u))) | 4294967295u), func_3(_wgslsmith_f_op_f32(-1273f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.d)) + _wgslsmith_f_op_f32(floor(global0.d)))), Struct_1(false, 23756i, _wgslsmith_mult_vec2_u32(global0.c, ~global1.c), -627f)), global0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.d)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(global1.d, global1.d)))))))));
    return _wgslsmith_mod_vec3_u32(vec3<u32>((~global1.c.x << (2156u % 32u)) << (u_input.b % 32u), ~(~1u), ~(~46232u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(5867u, 1u, 30324u), _wgslsmith_sub_vec3_u32(vec3<u32>(19023u, u_input.d, global0.c.x) >> (vec3<u32>(global1.c.x, 4853u, 1593u) % vec3<u32>(32u)), ~vec3<u32>(49889u, 4294967295u, 51119u))) << (~reverseBits(vec3<u32>(global1.c.x, u_input.c, 1u) ^ vec3<u32>(6159u, u_input.d, global1.c.x)) % vec3<u32>(32u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: u32) -> vec3<u32> {
    let var_0 = global0.a;
    var var_1 = ~u_input.b;
    let var_2 = Struct_1(global0.a, u_input.a, vec2<u32>(global0.c.x, 21751u), global1.d);
    let var_3 = Struct_1(false, -1i, vec2<u32>(global0.c.x, firstTrailingBit(var_2.c.x)), global1.d);
    var var_4 = var_3;
    return ~arg_2;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = vec3<i32>(-select(1i, u_input.a, any(vec2<bool>(global0.a, false))), firstTrailingBit(_wgslsmith_sub_i32(global1.b, global0.b)), 42084i);
    let var_1 = Struct_1(global0.a, _wgslsmith_mod_i32(countOneBits(-3213i), -15963i), vec2<u32>(u_input.c, firstTrailingBit(u_input.d)), global0.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-449f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d, global1.d)))), 2169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -632f) + -483f)));
    let var_3 = func_2();
    let var_4 = true;
    return Struct_1(any(vec3<bool>(select(global0.a, true, !var_1.a), false, all(select(vec3<bool>(false, global1.a, global0.a), vec3<bool>(false, true, true), vec3<bool>(global1.a, global1.a, var_4))))), _wgslsmith_dot_vec3_i32(var_0, var_0), _wgslsmith_add_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, u_input.c), vec2<u32>(arg_1.x, var_1.c.x))), select((arg_1.zy ^ var_1.c) >> (global1.c % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(min(vec2<u32>(0u, arg_1.x), arg_1.yz), ~var_3.yx), select(!vec2<bool>(false, global1.a), !vec2<bool>(var_4, var_1.a), any(vec4<bool>(false, global1.a, global0.a, false))))), global0.d);
}

fn func_1(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(arg_0.xy - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.zz), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(210f, arg_0.x), vec2<f32>(-1658f, 551f), true)), !vec2<bool>(false, global1.a)))))), func_4(vec3<u32>(reverseBits(4294967295u), firstLeadingBit(global1.c.x), global0.c.x), !vec3<bool>(false == global0.a, global0.a, true), reverseBits(~vec3<u32>(23067u, global1.c.x, 36320u) ^ ~vec3<u32>(u_input.c, global1.c.x, u_input.d)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 38011u, u_input.d), func_2())));
    global1 = Struct_1(true, global1.b, vec2<u32>(_wgslsmith_sub_u32(1u, var_0.c.x), u_input.d), var_0.d);
    let var_1 = ~(~var_0.c.x);
    var var_2 = func_5(arg_0.xz, vec3<u32>(var_1, 3194u, global1.c.x));
    global1 = func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(f32(-1f) * -209f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(254f)))) - vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(-var_2.d))), vec3<u32>(30000u, 4294967295u, 68743u));
    return ~reverseBits(-vec4<i32>(i32(-1i) * -48121i, global0.b, -1235i, 2147483647i));
}

fn func_6(arg_0: vec4<i32>) -> f32 {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-global1.d), global0.d))), ~_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 0u, global0.c.x), vec3<u32>(67882u, global0.c.x, global1.c.x)), vec3<u32>(60779u, global1.c.x, u_input.d)), select(countOneBits(vec3<u32>(u_input.b, 61979u, 24074u)), vec3<u32>(1u, global1.c.x, global0.c.x), global1.a & false)));
    let var_1 = !var_0.a;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f))))) <= _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-global0.d));
    let var_3 = var_0;
    var var_4 = u_input.d;
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(false, -22806i, _wgslsmith_mult_vec2_u32(vec2<u32>(32055u, 22636u), ~global1.c), _wgslsmith_f_op_f32(func_6(func_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.d), global1.d, _wgslsmith_div_f32(505f, 957f))))));
    var var_0 = vec4<bool>(false, global0.a, true, all(!(!vec2<bool>(global1.a, global0.a))));
    global0 = func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d * global0.d)), global1.d) - vec2<f32>(-375f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1551f))))), ~(~select(vec3<u32>(4294967295u, u_input.b, 54266u), max(vec3<u32>(87320u, global0.c.x, 107925u), vec3<u32>(202u, 4294967295u, global1.c.x)), vec3<bool>(true, global1.a, var_0.x))));
    let var_1 = abs(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(abs(-8652i), u_input.a)));
    var_0 = !vec4<bool>(!global0.a, global1.a, all(var_0.zxw), 2147483647i >= _wgslsmith_dot_vec4_i32(vec4<i32>(32660i, 17485i, 2147483647i, var_1), -vec4<i32>(-2147483647i, u_input.a, var_1, -980i)));
    global0 = Struct_1(false, _wgslsmith_mod_i32(-1i, var_1 & 2147483647i), vec2<u32>(~4294967295u, 1u), global1.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, global0.c.x, global0.c.x) | vec3<u32>(17368u, 4294967295u, 1u), func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.d, -553f, global1.a))))), countOneBits(vec2<i32>(global1.b, -15571i)));
}

