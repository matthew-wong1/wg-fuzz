struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool = false;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = -18059i;
    global0 = Struct_4(-408f, global0.b, 0u ^ (~(~arg_3.c) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(68396u, arg_2.d, u_input.a, 44772u) ^ vec4<u32>(arg_3.c, 0u, 0u, 73213u), vec4<u32>(0u, arg_3.c, 77173u, arg_2.d))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2076f, _wgslsmith_f_op_f32(-global0.a))))), Struct_2(~arg_0.a.x, _wgslsmith_f_op_f32(-1568f + _wgslsmith_div_f32(arg_3.a, _wgslsmith_f_op_f32(arg_0.c.x * 647f)))), arg_3.c);
    var_0 = arg_2.a.x;
    global1 = !arg_1;
    return ~(~(~min(vec4<u32>(92748u, arg_3.c, 41895u, global0.c) & vec4<u32>(40418u, global0.c, u_input.b.x, 4294967295u), vec4<u32>(22350u, u_input.c.x, u_input.c.x, global0.c))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = arg_1.x;
    var var_1 = Struct_1(vec2<i32>(arg_0.x ^ global0.b.a, -global0.b.a), global0.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.b, _wgslsmith_f_op_f32(622f - 2314f), _wgslsmith_f_op_f32(global0.b.b * global0.b.b), 184f))), min(func_3(Struct_1(vec2<i32>(-2147483647i, global0.b.a), _wgslsmith_f_op_f32(step(global0.b.b, global0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, -128f, global0.b.b, global0.a) + vec4<f32>(113f, -828f, -1000f, -1331f)), arg_1.x), ~1i < _wgslsmith_sub_i32(0i, arg_0.x), Struct_1(select(vec2<i32>(22504i, 1i), vec2<i32>(-48018i, arg_0.x), vec2<bool>(false, true)), _wgslsmith_f_op_f32(f32(-1f) * -1583f), vec4<f32>(global0.b.b, -1230f, global0.b.b, global0.b.b), 0u), Struct_4(_wgslsmith_f_op_f32(round(global0.b.b)), global0.b, ~96738u)).x, u_input.c.x));
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-552f - global0.a), vec4<f32>(_wgslsmith_f_op_f32(ceil(1219f)), -384f, _wgslsmith_f_op_f32(trunc(var_1.c.x)), _wgslsmith_f_op_f32(ceil(531f))), ~_wgslsmith_div_u32(reverseBits(firstTrailingBit(44903u)), _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(87802u, 1u, var_1.d))));
    global0 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1423f))))), global0.b, 1u);
    let var_3 = Struct_3(~(~(firstTrailingBit(vec2<i32>(46347i, var_1.a.x)) ^ vec2<i32>(17295i, 3081i))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.c.x)), -957f)));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_1 {
    global1 = !(-37836i > (-1i & global0.b.a));
    let var_0 = _wgslsmith_f_op_f32(-1536f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(734f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.b))))));
    global0 = Struct_4(_wgslsmith_f_op_f32(func_4(vec4<i32>(global0.b.a << (u_input.b.x % 32u), i32(-1i) * -1i, ~_wgslsmith_sub_i32(global0.b.a, global0.b.a), -global0.b.a), vec2<u32>(_wgslsmith_div_u32(u_input.c.x & 40387u, ~1u), ~(~69486u)), vec4<u32>(13965u, ~(~arg_0), _wgslsmith_dot_vec4_u32(func_3(Struct_1(vec2<i32>(-1i, 1i), var_0, vec4<f32>(var_0, var_0, var_0, -776f), 1u), true, Struct_1(vec2<i32>(global0.b.a, global0.b.a), var_0, vec4<f32>(var_0, var_0, -767f, var_0), 8601u), Struct_4(-1279f, Struct_2(global0.b.a, 280f), 90702u)), vec4<u32>(4294967295u, 2946u, 16040u, arg_0) << (vec4<u32>(global0.c, global0.c, arg_0, global0.c) % vec4<u32>(32u))), 4294967295u))), global0.b, _wgslsmith_div_u32(u_input.a, ~u_input.b.x));
    let var_1 = Struct_1(abs(vec2<i32>(~_wgslsmith_mod_i32(global0.b.a, 0i), global0.b.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_f_op_f32(abs(129f))) * -2238f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(199f, global0.a, -1302f, -1614f), vec4<f32>(105f, 701f, -825f, var_0), true))) + vec4<f32>(_wgslsmith_f_op_f32(max(var_0, -105f)), _wgslsmith_f_op_f32(max(var_0, -733f)), 250f, _wgslsmith_f_op_f32(968f - global0.b.b))), vec4<f32>(-485f, var_0, var_0, var_0))), _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(0u, arg_0, u_input.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.c, u_input.c.x), vec3<u32>(global0.c, 0u, u_input.a), vec3<u32>(29427u, u_input.c.x, arg_0)) ^ ~vec3<u32>(u_input.a, global0.c, 43454u)) >> (40938u % 32u));
    var var_2 = Struct_3(vec2<i32>(i32(-1i) * -1i, min(~global0.b.a, 2147483647i)));
    return Struct_1(-(_wgslsmith_add_vec2_i32(var_1.a ^ vec2<i32>(5761i, -51183i), var_2.a) & ~(~var_1.a)), _wgslsmith_f_op_f32(global0.b.b + 1711f), vec4<f32>(1f, var_1.b, _wgslsmith_f_op_f32(-1482f - var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b))), ~global0.c);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: i32) -> vec4<f32> {
    let var_0 = func_2(global0.c, arg_1);
    var var_1 = Struct_3(vec2<i32>(abs(arg_2.a), ~_wgslsmith_mult_i32(arg_3 >> (u_input.c.x % 32u), -arg_2.a)));
    var var_2 = _wgslsmith_mod_vec4_u32(select(~min(vec4<u32>(49448u, u_input.c.x, 4294967295u, u_input.a), vec4<u32>(u_input.b.x, global0.c, 1u, var_0.d)), ~firstTrailingBit(vec4<u32>(u_input.b.x, u_input.a, global0.c, u_input.b.x)), select(!vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), select(vec4<bool>(arg_1.x, true, false, false), vec4<bool>(arg_1.x, true, true, true), true), select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, arg_1.x), true))), select(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(79308u, 0u, 4294967295u, global0.c), vec4<u32>(19271u, global0.c, 71220u, global0.c)), max(vec4<u32>(82622u, 29514u, global0.c, u_input.a), vec4<u32>(93266u, 0u, 17462u, 53847u)), ~vec4<u32>(var_0.d, 34791u, u_input.a, global0.c)), reverseBits(~vec4<u32>(global0.c, 40241u, u_input.c.x, 1u)), all(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, arg_1.x, false), false)))) >> (_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 1u, 1u, 25896u), firstLeadingBit(vec4<u32>(var_0.d, 1u, 24584u, 0u))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.c, 4294967295u, 4294967295u), vec4<u32>(4294967295u, u_input.c.x, global0.c, global0.c)))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_0.c.yw - _wgslsmith_f_op_vec2_f32(-var_0.c.yz));
    var var_4 = !(!vec3<bool>(false, arg_1.x, any(vec2<bool>(true, true))));
    return var_0.c;
}

fn func_5(arg_0: vec4<f32>) -> Struct_4 {
    global0 = Struct_4(_wgslsmith_f_op_f32(min(global0.a, arg_0.x)), Struct_2(global0.b.a, -950f), u_input.a);
    let var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.c.x, ~_wgslsmith_div_u32(u_input.a, u_input.b.x)), ~vec2<u32>(~5065u, 15433u), vec2<u32>(~select(0u, global0.c, true), 1u)), u_input.c);
    let var_1 = global0.b;
    var var_2 = Struct_2(2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1092f - _wgslsmith_f_op_f32(191f - -1010f))) + var_1.b));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xw + arg_0.xz) + arg_0.ww);
    return Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -728f), Struct_2(var_1.a, 247f), 28078u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b;
    let var_1 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-908f, 1000f, var_0.b, -748f), _wgslsmith_f_op_vec4_f32(func_1(vec3<f32>(-230f, -566f, 597f), vec2<bool>(true, true), global0.b, var_0.a))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1626f, -3357f, var_0.b)), vec2<bool>(true, true), global0.b, global0.b.a)), vec4<bool>(true, any(vec2<bool>(false, true)), all(vec2<bool>(true, false)), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(257f, 1000f, -868f))), select(vec2<bool>(false, false), vec2<bool>(true, true), true), Struct_2(var_0.a, global0.a), var_0.a)))));
    var var_2 = Struct_3(_wgslsmith_sub_vec2_i32(abs(~vec2<i32>(global0.b.a, 2147483647i)), vec2<i32>(func_2(_wgslsmith_dot_vec2_u32(u_input.c, u_input.b), vec2<bool>(false, true)).a.x, 0i)));
    var_2 = Struct_3(firstLeadingBit(_wgslsmith_add_vec2_i32(~var_2.a, _wgslsmith_mod_vec2_i32(~vec2<i32>(var_2.a.x, var_0.a), _wgslsmith_sub_vec2_i32(var_2.a, vec2<i32>(-58181i, 1i))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1154f, global0.a, _wgslsmith_f_op_f32(-715f * _wgslsmith_f_op_f32(f32(-1f) * -813f))))), vec3<f32>(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.a, var_2.a.x, -2147483647i, var_2.a.x), vec4<i32>(var_2.a.x, global0.b.a, 9432i, 1i)), vec2<u32>(var_1.c, 26902u) | u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, 38113u, 5647u, 70633u), vec4<u32>(u_input.b.x, 10734u, var_1.c, 133u))))), _wgslsmith_f_op_f32(func_4((vec4<i32>(var_2.a.x, 0i, var_0.a, var_0.a) ^ vec4<i32>(var_0.a, var_0.a, var_0.a, 0i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.c, u_input.a, global0.c, var_1.c), vec4<u32>(0u, global0.c, 0u, 13614u)) % vec4<u32>(32u)), u_input.b, abs(vec4<u32>(4294967295u, global0.c, 1u, u_input.c.x)))), var_0.b)));
    var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), var_0.b, var_0.b);
    var_2 = Struct_3(var_2.a >> (max(vec2<u32>(~1u, min(0u, 8392u)), max(~u_input.b, u_input.c)) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, max(~0u << (u_input.b.x % 32u), abs(1u)), global0.c, func_5(vec4<f32>(537f, 129f, var_3.x, 454f)).c >> (_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(79466u, 29102u, 1u), vec3<u32>(u_input.a, u_input.c.x, var_1.c)), vec3<u32>(u_input.c.x, u_input.a, 1u)) % 32u)), vec2<u32>(13279u, _wgslsmith_add_u32(var_1.c, var_1.c) ^ 0u));
}

