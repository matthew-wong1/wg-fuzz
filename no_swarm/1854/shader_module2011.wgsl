struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(4294967295u, 55879u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(24440u, 26069u), vec2<u32>(4294967295u, 49147u), vec2<u32>(60993u, 24201u), vec2<u32>(1u, 15119u), vec2<u32>(19391u, 0u), vec2<u32>(31244u, 53185u), vec2<u32>(16259u, 1u), vec2<u32>(57622u, 79303u), vec2<u32>(0u, 29720u), vec2<u32>(4294967295u, 0u), vec2<u32>(26483u, 70333u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 82701u));

var<private> global1: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(i32(-2147483648), -7156i), vec2<i32>(-48171i, -5887i), vec2<i32>(i32(-2147483648), 14765i), vec2<i32>(-3136i, 2590i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-48570i, 18926i), vec2<i32>(-63036i, 2147483647i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-18747i, -772i), vec2<i32>(-25979i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(i32(-2147483648), 48291i), vec2<i32>(2147483647i, 49669i), vec2<i32>(5797i, -1i), vec2<i32>(0i, 50505i), vec2<i32>(1i, 22972i), vec2<i32>(55922i, -1i), vec2<i32>(-11404i, -1i), vec2<i32>(20410i, -51193i), vec2<i32>(0i, 7247i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = 0i;
    let var_1 = Struct_1(-_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(var_0, 1i, 2147483647i)), ~(vec3<i32>(var_0, -1i, u_input.a.x) & vec3<i32>(17485i, 0i, 2147483647i))), select(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a.x, var_0, 19920i), -firstLeadingBit(vec3<i32>(var_0, u_input.a.x, 1i))), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(u_input.a, global1[_wgslsmith_index_u32(0u, 21u)]), 1i), -vec3<i32>(-1i, u_input.a.x, 1i)), vec3<bool>(true, true, all(vec2<bool>(false, false)))), ~vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(5285u, 42045u), global0[_wgslsmith_index_u32(0u, 15u)])), 0u), firstLeadingBit(1u), select(false, all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), false)), select(!all(vec2<bool>(true, true)), any(vec3<bool>(false, false, false)), true)));
    let var_2 = Struct_2(var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(980f - 2608f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-830f, -1298f) + _wgslsmith_f_op_f32(287f * 386f))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2074f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -194f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -837f), -1000f)))), var_1);
    let var_3 = _wgslsmith_div_vec3_i32(var_2.a.b >> (_wgslsmith_add_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1.c.x, var_1.c.x, var_1.d), vec3<u32>(var_2.a.c.x, var_2.c.d, 72198u)), ~vec3<u32>(5833u, var_2.a.d, var_1.c.x)) % vec3<u32>(32u)), vec3<i32>(var_1.b.x, ~countOneBits(u_input.a.x | u_input.a.x), _wgslsmith_mod_i32(-abs(var_1.b.x), 40985i)));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_div_f32(1463f, var_2.b.x), var_2.b.x == 1000f)) - _wgslsmith_f_op_f32(-var_2.b.x)))), var_2.b.x);
    return 1u;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(~arg_2.c.c.x, 1u, _wgslsmith_sub_u32(arg_2.c.d, arg_2.a.d), arg_2.a.d)), _wgslsmith_mult_vec4_u32(~(vec4<u32>(arg_2.c.c.x, 27067u, arg_2.a.c.x, arg_2.a.c.x) & vec4<u32>(arg_2.a.d, 0u, 22020u, arg_2.c.d)), vec4<u32>(select(1u, arg_2.c.d, false), arg_2.a.c.x, arg_2.a.d & arg_2.c.d, arg_2.a.d)), (~vec4<u32>(19360u, arg_2.a.d, arg_2.a.d, 0u) ^ vec4<u32>(1u, 0u, 46659u, 4294967295u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.c.c.x, 56960u, arg_2.a.d, arg_2.a.c.x), ~vec4<u32>(arg_2.c.c.x, arg_2.a.c.x, arg_2.c.d, 17888u))), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_2.c.d, 32491u, 26848u, 54532u) << ((vec4<u32>(35939u, arg_2.a.d, 55917u, 29357u) | vec4<u32>(arg_2.c.c.x, 4294967295u, 0u, 0u)) % vec4<u32>(32u)), countOneBits(vec4<u32>(arg_2.c.c.x, 1u, arg_2.c.c.x, 4294967295u))) ^ vec4<u32>(4294967295u, 4294967295u, abs(4294967295u << (0u % 32u)), arg_2.c.d));
    global1 = array<vec2<i32>, 21>();
    global0 = array<vec2<u32>, 15>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.b.xx) + arg_2.b.yy)));
    let var_2 = Struct_1(vec3<i32>(-1i, 1i, abs(9544i)), min(arg_2.c.b, _wgslsmith_div_vec3_i32(vec3<i32>(-28884i, arg_2.a.a.x, arg_2.c.b.x) | vec3<i32>(0i, -2147483647i, u_input.a.x), vec3<i32>(16854i, u_input.a.x, -2147483647i) | arg_2.a.a)) ^ (select(-vec3<i32>(-5535i, -16780i, -1i), arg_2.c.a, !vec3<bool>(arg_2.c.e, true, true)) << (vec3<u32>(~var_0.x, ~0u, 1u) % vec3<u32>(32u))), var_0.yw, ~(~47576u), !arg_2.a.e);
    return select(vec3<bool>(true, all(!(!vec2<bool>(arg_2.c.e, false))), all(vec4<bool>(var_0.x >= arg_2.c.d, arg_2.c.e, any(vec3<bool>(var_2.e, true, false)), !arg_2.c.e))), vec3<bool>(true, u_input.a.x >= var_2.a.x, true), (2080f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))) != true);
}

fn func_2() -> vec2<i32> {
    global0 = array<vec2<u32>, 15>();
    let var_0 = true;
    let var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1126f - _wgslsmith_f_op_f32(f32(-1f) * -453f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 457f, Struct_2(Struct_1(vec3<i32>(_wgslsmith_mult_i32(-1i, -16734i), ~u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 24918i)), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, 56410i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, 20703i, u_input.a.x))), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(1u, 4294967295u)), countOneBits(vec2<u32>(75428u, 4294967295u))), _wgslsmith_mult_u32(52805u, func_3()), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -106f, -1563f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1202f, -1000f, -568f)), select(vec3<bool>(false, false, true), vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, false, var_0)))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(445f, -704f, 776f) - vec3<f32>(-1483f, -806f, 1140f))))), Struct_1(vec3<i32>(0i, max(-2147483647i, -12911i), ~u_input.a.x), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 35404i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec2<u32>(_wgslsmith_clamp_u32(72677u, 0u, 0u), ~1u), 1u, any(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, var_0), var_0)))));
    global0 = array<vec2<u32>, 15>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(-676f)))));
    return vec2<i32>(u_input.a.x ^ (-_wgslsmith_mult_i32(-1i, u_input.a.x) >> (1008u % 32u)), min(1i, 0i));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = true;
    global1 = array<vec2<i32>, 21>();
    var var_1 = arg_0;
    global0 = array<vec2<u32>, 15>();
    var var_2 = vec3<bool>(var_0, _wgslsmith_mod_i32(arg_1, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -2123i), arg_2.wwy)) > _wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(-14656i, -1i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 26251i, 9764i, arg_1), vec4<i32>(1i, -2147483647i, arg_0.a.x, arg_1))), 0i), var_1.e);
    return (arg_2.x | max(min(-29839i, _wgslsmith_mult_i32(-23844i, var_1.a.x)), -1i)) << (~(~var_1.c.x) % 32u);
}

fn func_1(arg_0: vec3<f32>) -> vec2<u32> {
    global1 = array<vec2<i32>, 21>();
    let var_0 = Struct_4(vec3<i32>(max(-6705i, ~(~1i)), func_5(Struct_1(vec3<i32>(u_input.a.x, 1i, -6170i) | vec3<i32>(-3444i, 1i, -17020i), -vec3<i32>(-2147483647i, -20310i, 0i), max(vec2<u32>(4935u, 126022u), vec2<u32>(36306u, 0u)), 1u, true), ~u_input.a.x, _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, 0i, u_input.a.x, 1i), -vec4<i32>(-2147483647i, 19269i, 1i, -58741i)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 34455i), func_2())), reverseBits(-28173i)));
    let var_1 = arg_0.xx;
    var var_2 = any(vec2<bool>(true, select(false, true, any(vec2<bool>(false, false)))));
    global0 = array<vec2<u32>, 15>();
    return max(vec2<u32>(35358u, abs(1u)), ~vec2<u32>(func_3(), ~(~74311u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<i32>(-1i) * -(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), select(~max(_wgslsmith_add_vec3_i32(vec3<i32>(-38551i, 2147483647i, -9836i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), abs(vec3<i32>(u_input.a.x, u_input.a.x, 13574i))), min(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(-1i, u_input.a.x, u_input.a.x)), -vec3<i32>(u_input.a.x, u_input.a.x, 80093i)), vec3<i32>(1i, u_input.a.x, -1i)), !all(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), false))), ~func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1201f, -1125f, -490f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1216f, 1131f, 305f), vec3<f32>(-228f, 798f, -1260f)))))), 4294967295u, true);
    var var_1 = Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, var_0.b.x), vec2<i32>(0i, firstTrailingBit(u_input.a.x))), vec2<i32>(-2147483647i, select(u_input.a.x, 37508i, true)) ^ ~vec2<i32>(-17175i, -1i)));
    let var_2 = !(!select(select(vec3<bool>(false, var_0.e, var_0.e), !vec3<bool>(var_0.e, true, false), var_0.e), func_4(_wgslsmith_div_f32(2177f, 1434f), _wgslsmith_f_op_f32(f32(-1f) * -1253f), Struct_2(Struct_1(var_0.b, var_0.b, var_0.c, var_0.c.x, false), vec3<f32>(-1745f, -294f, -179f), Struct_1(vec3<i32>(var_0.b.x, -79185i, 20396i), var_0.a, vec2<u32>(1u, var_0.d), var_0.c.x, var_0.e))), !(u_input.a.x != 1i)));
    global1 = array<vec2<i32>, 21>();
    var_1 = Struct_3(max(var_0.b.zz, vec2<i32>(~(7804i >> (var_0.d % 32u)), _wgslsmith_sub_i32(reverseBits(-1i), var_0.a.x))));
    var var_3 = ~4294967295u;
    global1 = array<vec2<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~83154u, 1u)), 15u)], _wgslsmith_dot_vec3_i32(-var_0.b, ~(~var_0.b)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-880f, 918f) - vec2<f32>(-1128f, -549f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1074f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-959f)), _wgslsmith_f_op_f32(f32(-1f) * -1625f))), var_2.yz)), -981f);
}

