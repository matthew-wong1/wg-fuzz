struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    var var_0 = Struct_4((~max(vec4<u32>(32813u, u_input.d, u_input.d, u_input.d), vec4<u32>(17647u, 4294967295u, u_input.d, 1u)) >> (~(~vec4<u32>(u_input.d, 10172u, 4294967295u, u_input.d)) % vec4<u32>(32u))) >> ((~(~vec4<u32>(u_input.d, u_input.d, 8478u, u_input.d)) & vec4<u32>(u_input.d | 3951u, min(u_input.d, 4402u), select(37218u, u_input.d, true), 13249u)) % vec4<u32>(32u)));
    var var_1 = !(!any(vec4<bool>(arg_3.a, arg_3.a, false, true)) & true);
    var_0 = Struct_4(var_0.a);
    var var_2 = vec3<f32>(-587f, -3096f, _wgslsmith_f_op_f32(-1905f * arg_2.b.x));
    let var_3 = Struct_5(5899u, false, _wgslsmith_add_i32(min(37078i | select(8220i, 2147483647i, arg_3.a), firstLeadingBit(select(arg_2.c, -16155i, true))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-arg_0.yz, countOneBits(vec2<i32>(arg_2.c, arg_0.x))), _wgslsmith_clamp_i32(arg_1.c & 4273i, ~arg_0.x, -22247i))));
    return abs(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_0.a.wyx, abs(~vec3<u32>(var_3.a, var_0.a.x, var_0.a.x))), (var_3.a >> (var_0.a.x % 32u)) & 1u, ~firstTrailingBit(~6992u)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: vec4<u32>) -> bool {
    let var_0 = !vec3<bool>(arg_3.x == ~(~u_input.d), any(select(!vec3<bool>(arg_1.a, true, arg_1.a), select(vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(false, false, false), true), vec3<bool>(false, arg_1.a, true))), all(vec2<bool>(true, true)));
    let var_1 = Struct_3(Struct_1(~_wgslsmith_div_i32(-50433i, arg_2) >> (select(u_input.d, ~4294967295u, arg_1.a) % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(758f, -344f, 660f) * vec3<f32>(-259f, 2507f, 2157f)))), reverseBits(arg_2)), arg_2, ~(~firstLeadingBit(abs(arg_3))), max(~(vec3<u32>(arg_3.x, 0u, arg_0) << (max(vec3<u32>(arg_3.x, arg_3.x, 40089u), arg_3.yxx) % vec3<u32>(32u))), ~vec3<u32>(_wgslsmith_add_u32(4294967295u, arg_0), arg_0, 54707u >> (arg_0 % 32u))));
    let var_2 = var_1;
    let var_3 = var_2.a.b;
    var var_4 = Struct_3(Struct_1(_wgslsmith_mult_i32(var_2.b, (2147483647i ^ var_2.a.c) << (79082u % 32u)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -136f))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a.b.x, var_1.a.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -992f))), 0i), -_wgslsmith_dot_vec4_i32(u_input.c, max(u_input.c, ~u_input.c)), ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(330u, 15582u), _wgslsmith_mod_u32(1u, 4699u)), firstLeadingBit(~4294967295u), ~arg_0, arg_0 >> (firstLeadingBit(var_1.c.x) % 32u)), vec3<u32>(arg_0, select(abs(12133u), _wgslsmith_dot_vec3_u32(var_1.c.xzy, vec3<u32>(32873u, var_1.d.x, 28179u)), true), ~arg_3.x) >> (vec3<u32>(u_input.d, 0u, ~arg_3.x) % vec3<u32>(32u)));
    return true;
}

fn func_2(arg_0: i32, arg_1: vec3<i32>) -> vec2<i32> {
    var var_0 = 1i;
    let var_1 = ~u_input.d;
    var var_2 = func_4(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 1u, 18692u) << (func_3(u_input.c, Struct_1(0i, vec3<f32>(313f, 1062f, 950f), arg_0), Struct_1(arg_0, vec3<f32>(-325f, 575f, -775f), u_input.b.x), Struct_2(false)) % vec4<u32>(32u)), vec4<u32>(4294967295u, _wgslsmith_div_u32(var_1, 67655u), min(u_input.d, 4294967295u), ~u_input.d)), _wgslsmith_sub_u32(max(_wgslsmith_sub_u32(25898u, 2957u), ~6179u), ~abs(var_1))), Struct_2(_wgslsmith_dot_vec4_i32(u_input.c | vec4<i32>(-16995i, 45907i, -45823i, -2883i), u_input.c) != -2147483647i), ~reverseBits(u_input.e), ~func_3(vec4<i32>(arg_0, -u_input.c.x, _wgslsmith_dot_vec2_i32(arg_1.zz, vec2<i32>(57917i, 26003i)), _wgslsmith_mult_i32(-35250i, u_input.b.x)), Struct_1(u_input.a | -12607i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-102f, -578f, -1526f))), 1i >> (0u % 32u)), Struct_1(~arg_1.x, vec3<f32>(-153f, -1299f, 1380f), ~arg_0), Struct_2(true)));
    let var_3 = firstTrailingBit(firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.c, countOneBits(u_input.c)))) | arg_0;
    var_0 = min(-1i, -14421i);
    return ~(-u_input.c.xy);
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: f32) -> bool {
    var var_0 = 1i;
    let var_1 = vec3<f32>(arg_3, -1459f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1600f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - arg_1.a.b.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.a.b.x, arg_0)), 691f))));
    var var_2 = ~(~func_2(arg_1.b, -abs(vec3<i32>(-2147483647i, 5910i, arg_1.b))));
    var var_3 = max(arg_2 | 79457u, ~48192u);
    let var_4 = any(!vec4<bool>(true, _wgslsmith_f_op_f32(-arg_3) >= _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, select(true, true, true)));
    return var_4;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: bool, arg_3: Struct_5) -> Struct_5 {
    let var_0 = 4294967295u;
    var var_1 = all(!select(!(!vec3<bool>(false, arg_2, arg_3.b)), select(select(vec3<bool>(arg_3.b, arg_3.b, false), vec3<bool>(arg_2, arg_2, arg_1), vec3<bool>(false, arg_2, true)), vec3<bool>(true, true, true), vec3<bool>(false, arg_3.b, arg_3.b)), !vec3<bool>(false, true, arg_2)));
    var var_2 = Struct_2(all(select(vec4<bool>(func_4(arg_3.a, Struct_2(arg_3.b), arg_3.c, vec4<u32>(u_input.d, 0u, var_0, u_input.d)), arg_1, true, true), vec4<bool>(!arg_3.b, select(true, true, arg_2), any(vec4<bool>(arg_2, true, false, true)), arg_3.b), false)));
    var_2 = Struct_2((reverseBits(1i) < arg_3.c) && (true || arg_3.b));
    var_1 = arg_1;
    return Struct_5(firstLeadingBit(_wgslsmith_div_u32(~u_input.d, select(_wgslsmith_clamp_u32(51843u, u_input.d, 112079u), arg_3.a, false))), arg_3.b, _wgslsmith_div_i32(~(~(u_input.a | arg_3.c)), min(_wgslsmith_mult_i32(firstLeadingBit(u_input.e), -arg_3.c), -25076i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1035f, 1359f) + vec2<f32>(-1486f, 607f)) * vec2<f32>(-1666f, -1000f)))), !any(vec3<bool>(false, func_1(-143f, Struct_3(Struct_1(u_input.e, vec3<f32>(-1000f, -1000f, 465f), -1i), 15910i, vec4<u32>(18164u, u_input.d, 61904u, 0u), vec3<u32>(u_input.d, 60065u, u_input.d)), u_input.d, 557f), true)), !(abs(-58497i) < u_input.b.x), Struct_5(u_input.d, all(vec4<bool>(true, true, func_1(654f, Struct_3(Struct_1(u_input.a, vec3<f32>(-680f, -333f, 188f), 0i), -20560i, vec4<u32>(u_input.d, 4294967295u, u_input.d, 132132u), vec3<u32>(u_input.d, u_input.d, u_input.d)), u_input.d, 1501f), true)), u_input.c.x));
    let var_1 = Struct_1(_wgslsmith_mod_i32(abs(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)), var_0.b, true, Struct_5(var_0.a, true, -38269i)).c), _wgslsmith_mult_i32(-countOneBits(2147483647i), func_2(var_0.c, u_input.b).x ^ u_input.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -603f), _wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(-742f - -487f))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 517f, true)) * -1781f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-573f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(565f)) + _wgslsmith_f_op_f32(f32(-1f) * -1511f)))), _wgslsmith_dot_vec3_i32(u_input.c.zyx, vec3<i32>(var_0.c, var_0.c, u_input.c.x) << (vec3<u32>(6135u, 54185u, var_0.a) % vec3<u32>(32u))) >> (_wgslsmith_mod_u32(func_3(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -14059i, 58902i, var_0.c), vec4<i32>(-30200i, -25034i, u_input.a, u_input.a)), Struct_1(46498i, vec3<f32>(749f, -1820f, 466f), var_0.c), Struct_1(-20856i, vec3<f32>(-1000f, -407f, 1301f), 1i), Struct_2(var_0.b)).x, u_input.d) % 32u));
    var var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_1.b.x)), 776f)) - var_1.b.x));
    let var_4 = vec3<u32>(1u ^ (func_3(u_input.c, var_1, Struct_1(var_0.c, var_1.b, var_0.c), Struct_2(var_0.b)).x << (1u % 32u)), ~(~u_input.d) >> (var_0.a % 32u), _wgslsmith_div_u32(var_0.a, ~u_input.d << (0u % 32u))) << (_wgslsmith_clamp_vec3_u32(~(~(~vec3<u32>(u_input.d, 4294967295u, var_0.a))), vec3<u32>(u_input.d, firstTrailingBit(~var_0.a), func_5(_wgslsmith_f_op_vec2_f32(-var_1.b.xx), all(vec2<bool>(true, false)), var_0.b, Struct_5(8143u, var_0.b, var_0.c)).a), max(~vec3<u32>(var_0.a, var_0.a, 0u) << (abs(vec3<u32>(4294967295u, 57882u, 1u)) % vec3<u32>(32u)), ~(vec3<u32>(811u, 0u, var_0.a) & vec3<u32>(21385u, 84773u, 39775u)))) % vec3<u32>(32u));
    let var_5 = Struct_1(~1i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, 113f, var_1.b.x) + var_1.b) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(var_1.b.x, 676f, 807f))))), var_1.b, select(select(!vec3<bool>(false, var_0.b, true), select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, false, true)), false), vec3<bool>(true, true, true), !(var_0.b | false)))), u_input.e);
    let var_6 = Struct_2(!(firstLeadingBit(var_4.x) >= _wgslsmith_dot_vec3_u32(abs(var_4), ~vec3<u32>(46184u, 25036u, var_0.a))));
    var var_7 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-232f - 383f) - -1306f) + var_5.b.x))), 365f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.a, 4294967295u, var_0.a, 101100u) ^ ~vec4<u32>(5929u, 1u, u_input.d, 112154u), reverseBits(vec4<u32>(13093u, 4294967295u, 4294967295u, var_0.a))) ^ func_3(_wgslsmith_sub_vec4_i32(u_input.c, ~u_input.c), Struct_1(-2325i, var_5.b, var_0.c), var_1, Struct_2(var_6.a)), -_wgslsmith_mod_i32(-44374i, _wgslsmith_div_i32(~(-1i), _wgslsmith_mult_i32(u_input.a, u_input.b.x))), _wgslsmith_f_op_f32(max(var_5.b.x, _wgslsmith_f_op_f32(abs(var_1.b.x)))));
}

