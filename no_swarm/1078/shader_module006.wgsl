struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec3<u32>(14616u, 1u, 4294967295u), Struct_1(vec3<bool>(false, false, true), true), 1000f, Struct_1(vec3<bool>(false, false, false), true)), Struct_2(vec3<u32>(1u, 1u, 41308u), Struct_1(vec3<bool>(true, false, true), false), 1121f, Struct_1(vec3<bool>(false, true, true), true)), Struct_2(vec3<u32>(14188u, 4294967295u, 5426u), Struct_1(vec3<bool>(false, false, false), true), -1000f, Struct_1(vec3<bool>(false, false, true), false)), Struct_2(vec3<u32>(4294967295u, 31901u, 0u), Struct_1(vec3<bool>(true, false, false), true), -422f, Struct_1(vec3<bool>(false, true, true), false)), Struct_2(vec3<u32>(46557u, 0u, 4294967295u), Struct_1(vec3<bool>(true, false, false), true), -1945f, Struct_1(vec3<bool>(true, true, true), true)), Struct_2(vec3<u32>(1u, 24010u, 0u), Struct_1(vec3<bool>(true, false, true), true), -921f, Struct_1(vec3<bool>(false, true, false), true)), Struct_2(vec3<u32>(42216u, 5302u, 4294967295u), Struct_1(vec3<bool>(true, false, true), true), 1468f, Struct_1(vec3<bool>(false, false, true), false)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 69178u), Struct_1(vec3<bool>(false, true, false), true), 511f, Struct_1(vec3<bool>(false, true, false), true)), Struct_2(vec3<u32>(0u, 62u, 26930u), Struct_1(vec3<bool>(false, false, true), false), 465f, Struct_1(vec3<bool>(false, false, true), true)), Struct_2(vec3<u32>(0u, 1u, 1u), Struct_1(vec3<bool>(true, false, false), true), 1408f, Struct_1(vec3<bool>(true, false, false), false)), Struct_2(vec3<u32>(4454u, 62194u, 4294967295u), Struct_1(vec3<bool>(true, true, true), true), -668f, Struct_1(vec3<bool>(true, true, false), true)), Struct_2(vec3<u32>(4294967295u, 1u, 0u), Struct_1(vec3<bool>(false, true, true), false), -1532f, Struct_1(vec3<bool>(true, false, false), true)), Struct_2(vec3<u32>(11965u, 1u, 1u), Struct_1(vec3<bool>(true, false, true), false), 1703f, Struct_1(vec3<bool>(true, false, false), true)), Struct_2(vec3<u32>(0u, 74976u, 0u), Struct_1(vec3<bool>(false, true, false), true), -479f, Struct_1(vec3<bool>(true, true, true), true)), Struct_2(vec3<u32>(18193u, 31151u, 0u), Struct_1(vec3<bool>(true, false, false), true), -518f, Struct_1(vec3<bool>(false, false, true), false)), Struct_2(vec3<u32>(0u, 5244u, 0u), Struct_1(vec3<bool>(false, false, false), false), 1714f, Struct_1(vec3<bool>(true, false, true), true)), Struct_2(vec3<u32>(4294967295u, 1u, 0u), Struct_1(vec3<bool>(false, true, true), false), 552f, Struct_1(vec3<bool>(true, false, false), false)), Struct_2(vec3<u32>(3256u, 1u, 43113u), Struct_1(vec3<bool>(false, false, true), true), -622f, Struct_1(vec3<bool>(false, false, true), true)), Struct_2(vec3<u32>(0u, 0u, 14750u), Struct_1(vec3<bool>(false, true, true), true), 275f, Struct_1(vec3<bool>(true, true, true), true)), Struct_2(vec3<u32>(264u, 4294967295u, 3492u), Struct_1(vec3<bool>(true, true, true), true), 1000f, Struct_1(vec3<bool>(true, false, true), true)), Struct_2(vec3<u32>(7059u, 37261u, 4294967295u), Struct_1(vec3<bool>(false, true, false), false), 1890f, Struct_1(vec3<bool>(true, false, false), true)), Struct_2(vec3<u32>(0u, 2510u, 0u), Struct_1(vec3<bool>(true, false, false), false), -1000f, Struct_1(vec3<bool>(true, true, false), true)), Struct_2(vec3<u32>(107078u, 1u, 21014u), Struct_1(vec3<bool>(true, false, true), false), -101f, Struct_1(vec3<bool>(false, false, false), true)), Struct_2(vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec3<bool>(true, true, true), false), -567f, Struct_1(vec3<bool>(true, true, true), false)));

var<private> global1: array<vec4<bool>, 9>;

var<private> global2: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = arg_0.d;
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2.c)), 1513f, arg_0.c));
    var var_2 = vec3<f32>(653f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)));
    global0 = array<Struct_2, 24>();
    var var_3 = arg_2.d;
    return arg_1;
}

fn func_2() -> vec3<i32> {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2609f, _wgslsmith_f_op_f32(trunc(1728f))))), 326f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(30938u, 24u)], -120f, Struct_2(vec3<u32>(1u, 0u, 5529u), Struct_1(vec3<bool>(true, true, false), false), -165f, Struct_1(vec3<bool>(false, true, false), false)))))), -616f);
    global0 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -239f)))));
    let var_2 = Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), true), all(vec3<bool>(true, any(vec3<bool>(false, false, true)), true)));
    global0 = array<Struct_2, 24>();
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -8874i), vec3<i32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.a)), ~vec3<i32>(-5726i, u_input.a, 21589i)), select(vec3<i32>(2147483647i, 1i, u_input.a), abs(vec3<i32>(14891i, u_input.a, u_input.a)), var_2.a)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-1i, 13586i), u_input.a, abs(u_input.a)), vec3<i32>(min(-9774i, -2147483647i), _wgslsmith_mod_i32(84425i, 2147483647i), 1150i)), _wgslsmith_mod_vec3_i32((-vec3<i32>(u_input.a, u_input.a, u_input.a) ^ select(vec3<i32>(u_input.a, -2147483647i, -12814i), vec3<i32>(3521i, u_input.a, u_input.a), vec3<bool>(var_2.b, false, false))) ^ reverseBits(vec3<i32>(u_input.a, 31459i, u_input.a)), _wgslsmith_div_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(60374i, 957i, u_input.a)), vec3<i32>(u_input.a, u_input.a, 0i)), ~vec3<i32>(u_input.a, u_input.a, 2147483647i) >> (~vec3<u32>(1u, 16834u, 27618u) % vec3<u32>(32u)))), -select(vec3<i32>(0i, -15071i, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(-12787i, u_input.a, 2147483647i), vec3<i32>(16511i, 2147483647i, u_input.a), min(vec3<i32>(26460i, u_input.a, 2147483647i), vec3<i32>(2147483647i, -13666i, u_input.a))), false & all(var_2.a.zz)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    global0 = array<Struct_2, 24>();
    var var_0 = Struct_2(min(vec3<u32>(arg_2.a.x, _wgslsmith_clamp_u32(~arg_2.a.x, ~arg_2.a.x, ~1u), _wgslsmith_mult_u32(abs(76826u), _wgslsmith_mod_u32(arg_2.a.x, 13800u))), vec3<u32>(arg_2.a.x, ~114296u, ~(~57641u))), arg_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(187f, arg_2.c, any(select(vec3<bool>(arg_2.b.b, arg_2.d.a.x, arg_2.d.a.x), arg_2.d.a, vec3<bool>(true, arg_2.d.b, false))))))), arg_2.d);
    global2 = ~_wgslsmith_sub_u32(var_0.a.x, 1u) != _wgslsmith_mod_u32(0u, abs(_wgslsmith_add_u32(max(var_0.a.x, 0u), 15853u ^ var_0.a.x)));
    var var_1 = Struct_1(vec3<bool>(arg_2.b.b && arg_2.b.b, true, all(vec2<bool>(all(vec2<bool>(arg_2.b.b, false)), true))), arg_2.b.b);
    var_1 = var_0.d;
    return Struct_2(firstLeadingBit(arg_2.a), var_0.b, -1150f, Struct_1(select(arg_2.b.a, vec3<bool>(var_0.d.a.x && var_0.b.a.x, arg_2.d.a.x, any(vec3<bool>(false, true, true))), vec3<bool>(!arg_2.d.b, var_1.b, all(vec4<bool>(true, true, var_0.d.a.x, true)))), true));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 24>();
    var var_0 = func_4(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a, -1i), ~(-46083i)), -u_input.a), firstLeadingBit(vec2<i32>(-2147483647i, u_input.a)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))), func_2(), Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(~59292u, _wgslsmith_dot_vec4_u32(vec4<u32>(23064u, 34143u, 2640u, 4294967295u), vec4<u32>(4294967295u, 24243u, 4294967295u, 43533u)), 12293u), min(vec3<u32>(23243u, 29022u, 1856u), ~vec3<u32>(0u, 31437u, 18992u))), Struct_1(vec3<bool>(true, select(false, false, true), true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-919f * _wgslsmith_f_op_f32(1074f + 288f)) + 1f), Struct_1(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), true)));
    var var_1 = Struct_2(min(min(~var_0.a, vec3<u32>(~var_0.a.x, 0u, firstTrailingBit(2170u))), ~select(_wgslsmith_mod_vec3_u32(var_0.a, var_0.a), var_0.a << (vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x) % vec3<u32>(32u)), var_0.b.b)), Struct_1(vec3<bool>(var_0.d.a.x, !var_0.d.b, all(vec4<bool>(var_0.d.a.x, true, true, var_0.b.b))), false), -698f, Struct_1(var_0.d.a, var_0.b.b));
    global2 = any(global1[_wgslsmith_index_u32(var_0.a.x, 9u)]);
    var var_2 = _wgslsmith_mod_vec4_i32(max(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, 2147483647i) & vec4<i32>(-10750i, 0i, 1i, u_input.a), firstTrailingBit(vec4<i32>(-2147483647i, -2147483647i, -36684i, 14203i))), ~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, 25008i), vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i))) >> ((abs(select(vec4<u32>(var_1.a.x, 4294967295u, 0u, 38243u), vec4<u32>(var_1.a.x, var_0.a.x, 1u, var_0.a.x), global1[_wgslsmith_index_u32(var_1.a.x, 9u)])) & ~select(vec4<u32>(6174u, 145727u, 0u, var_0.a.x), vec4<u32>(var_0.a.x, 76646u, var_0.a.x, 7094u), var_1.b.b)) % vec4<u32>(32u)), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -32512i, u_input.a) & vec4<i32>(-2147483647i, u_input.a, u_input.a, 2147483647i), ~vec4<i32>(u_input.a, u_input.a, u_input.a, -31536i), vec4<i32>(u_input.a, u_input.a, u_input.a, -958i)), countOneBits(-vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u & var_1.a.x, var_1.a.x, var_0.a.x << (var_0.a.x % 32u), abs(var_1.a.x)), vec4<u32>(50904u, var_1.a.x, ~var_1.a.x, abs(0u))) % vec4<u32>(32u)));
    return var_1.d;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: u32) -> bool {
    global0 = array<Struct_2, 24>();
    let var_0 = arg_1;
    let var_1 = Struct_2(vec3<u32>(_wgslsmith_add_u32(arg_3, arg_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, arg_3, 47610u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_2.x, arg_3, arg_3), vec3<u32>(1u, 7867u, 50174u))), firstLeadingBit(1u)) << (max(reverseBits(select(vec3<u32>(arg_2.x, arg_3, 110930u), vec3<u32>(arg_2.x, arg_3, arg_3), arg_1.x)), vec3<u32>(~1u, 1u, 58458u ^ arg_2.x)) % vec3<u32>(32u)), Struct_1(!func_1().a, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(495f, 1217f, arg_1.x))))), Struct_1(func_4(vec2<i32>(1i, -1i), _wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, -1i, 33282i), vec3<i32>(u_input.a, 2147483647i, 0i), var_0.x), ~vec3<i32>(u_input.a, 0i, -2147483647i)), func_4(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(0i, -1i), ~vec3<i32>(-54882i, u_input.a, u_input.a), func_4(vec2<i32>(0i, -2147483647i), vec3<i32>(u_input.a, 0i, u_input.a), global0[_wgslsmith_index_u32(4294967295u, 24u)]))).d.a, false));
    let var_2 = 20550i;
    var var_3 = arg_0.a.xy;
    return 1u != (_wgslsmith_dot_vec2_u32(arg_2, arg_2) | 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_5(func_1(), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(5959u), _wgslsmith_clamp_u32(4294967295u, 17863u, 29734u)), 9u)], ~vec2<u32>(38244u, 21497u), 1u), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -645f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1464f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(445f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(889f, 400f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) - func_4(vec2<i32>(u_input.a, func_2().x) >> (~(~vec2<u32>(53430u, 86783u)) % vec2<u32>(32u)), -(~vec3<i32>(-37920i, u_input.a, -28077i) & _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(28488i, 2147483647i, u_input.a))), Struct_2(vec3<u32>(1u, 46976u, select(0u, 1u, false)), Struct_1(vec3<bool>(true, true, true), select(false, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1117f * 493f) - _wgslsmith_f_op_f32(sign(-1550f))), func_1())).c);
    let var_2 = func_5(Struct_1(func_1().a, select(func_1().b, true, u_input.a == u_input.a) && true), vec4<bool>(true, true, true, true), ~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(51878u, 94198u, 0u), vec3<u32>(21963u, 21198u, 56317u)), 0u >> (1u % 32u))), ~(~6756u));
    var var_3 = -1003f;
    let var_4 = false;
    var var_5 = Struct_2(~(~vec3<u32>(~14391u, 1u, ~33645u)), Struct_1(!select(!vec3<bool>(false, var_4, true), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_4, false, var_2), var_2), vec3<bool>(var_4, false, var_2)), all(select(!vec4<bool>(false, false, var_2, var_4), !global1[_wgslsmith_index_u32(1u, 9u)], true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -276f), -890f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1f))))), Struct_1(select(vec3<bool>(any(vec3<bool>(true, false, true)), true, true), vec3<bool>(false, func_5(Struct_1(vec3<bool>(false, true, var_2), true), vec4<bool>(var_2, var_4, true, true), vec2<u32>(4294967295u, 0u), 18211u), any(global1[_wgslsmith_index_u32(52993u, 9u)])), true), var_4));
    let x = u_input.a;
    s_output = StorageBuffer(8179u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_5.c)), _wgslsmith_f_op_f32(round(531f)), var_5.c))), _wgslsmith_f_op_f32(-var_5.c), -select(vec2<i32>(u_input.a ^ u_input.a, _wgslsmith_add_i32(-2147483647i, u_input.a)), ~min(vec2<i32>(17442i, -1i), vec2<i32>(-1i, u_input.a)), true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1415f)))));
}

