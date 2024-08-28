struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
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

var<private> global0: array<Struct_1, 5>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<bool>) -> vec3<i32> {
    var var_0 = select(vec2<bool>(arg_1.x, false), !arg_1.xy, false);
    var var_1 = arg_1;
    var_1 = select(arg_1, select(vec4<bool>(arg_1.x, arg_1.x, true, 11461i >= u_input.d), select(arg_1, select(select(vec4<bool>(var_1.x, var_0.x, true, true), vec4<bool>(true, var_1.x, false, false), var_1.x), vec4<bool>(true, false, false, false), false), !select(arg_1, arg_1, vec4<bool>(false, true, arg_1.x, false))), select(!(!vec4<bool>(var_0.x, arg_1.x, true, true)), arg_1, !all(arg_1.yxz))), vec4<bool>(!(true & var_1.x), true, u_input.a >= ~_wgslsmith_clamp_u32(14433u, arg_0.x, 0u), all(vec3<bool>(false, false, var_0.x))));
    var var_2 = Struct_3(u_input.c.x, Struct_1(vec2<i32>(u_input.b, u_input.b >> (5098u % 32u)) ^ vec2<i32>(_wgslsmith_sub_i32(u_input.d, u_input.b), max(26989i, -1i))), Struct_2(vec2<i32>(i32(-1i) * -1i, u_input.d & abs(-33412i)), -2147483647i ^ abs(u_input.b), Struct_1(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, 2147483647i), vec2<i32>(u_input.d, 4995i))))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2472f * -620f), _wgslsmith_div_f32(-1502f, -1251f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-878f, 319f)))))));
    return _wgslsmith_mod_vec3_i32(select(vec3<i32>(max(68187i, -55753i), var_2.c.c.a.x, ~13407i), abs(-vec3<i32>(var_2.c.b, 21343i, -2147483647i)), true), vec3<i32>(~u_input.d, -6325i, -var_2.c.a.x)) >> (~vec3<u32>(_wgslsmith_clamp_u32(0u, 0u, 12966u) << (64632u % 32u), arg_0.x, 1u) % vec3<u32>(32u));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_mod_vec3_i32(~vec3<i32>(418i, ~u_input.b, max(u_input.b, u_input.b)), _wgslsmith_clamp_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(15306i, u_input.b), vec2<i32>(u_input.b, u_input.b)), u_input.b, 1i), -func_3(~u_input.c, vec4<bool>(false, true, false, true)), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -1i, 2147483647i), vec3<i32>(-67672i, -2147483647i, u_input.d)))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(579f, -563f))))), _wgslsmith_div_vec2_f32(vec2<f32>(-979f, _wgslsmith_f_op_f32(round(913f))), vec2<f32>(_wgslsmith_f_op_f32(ceil(1239f)), 907f)), vec2<bool>(false, true))), Struct_2(var_0.xz, var_0.x, Struct_1(~(var_0.yy & vec2<i32>(4327i, -2147483647i)))));
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_2 {
    global0 = array<Struct_1, 5>();
    var var_0 = u_input.c.x ^ 1u;
    var var_1 = func_2();
    var var_2 = u_input.c;
    let var_3 = -8524i;
    return func_2().b;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> i32 {
    global0 = array<Struct_1, 5>();
    var var_0 = Struct_3(~u_input.a, func_2().b.c, func_1(80091u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1773f, -1414f, true)) * _wgslsmith_f_op_f32(-287f - _wgslsmith_f_op_f32(191f - 193f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2231f, -1849f, 854f, -619f))), vec4<f32>(663f, -553f, -259f, -1153f))) - vec4<f32>(_wgslsmith_f_op_f32(-982f * -894f), _wgslsmith_f_op_f32(-466f * 1468f), _wgslsmith_f_op_f32(floor(-237f)), -1083f)))));
    global0 = array<Struct_1, 5>();
    let var_2 = min(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, var_0.a) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, 29000u), vec4<u32>(5415u, var_0.a, u_input.c.x, var_0.a)), ~firstLeadingBit(44594u)), ~var_0.a ^ _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, var_0.a, 34840u), u_input.a & 38929u, 46145u), ~(~_wgslsmith_div_u32(104693u, 45243u)), 19136u), ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(19225u, 27635u, u_input.c.x, u_input.c.x) << (vec4<u32>(var_0.a, var_0.a, var_0.a, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.a, 34282u, 4294967295u), vec4<u32>(var_0.a, var_0.a, var_0.a, var_0.a)), vec4<u32>(15472u, u_input.a, var_0.a, 29898u)), ~(vec4<u32>(u_input.c.x, 13710u, 4294967295u, var_0.a) | vec4<u32>(var_0.a, u_input.a, 9199u, var_0.a))));
    return max(~func_1(11441u, var_1.x).c.a.x, abs(max(~arg_1.x, ~var_0.b.a.x))) << (var_0.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 5>();
    var var_0 = func_4(func_1(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -937f)), _wgslsmith_mult_vec2_i32(-_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, u_input.b), select(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(2147483647i, u_input.b), vec2<bool>(true, false))), func_1(4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -130f)).c.a >> (~u_input.c % vec2<u32>(32u))));
    var var_1 = !select(select(vec4<bool>(96268u > u_input.c.x, true, true, all(vec3<bool>(true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), vec4<bool>(!all(vec2<bool>(true, true)), true, false, any(vec4<bool>(false, false, false, false))), vec4<bool>(-395f > func_2().a.x, true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))), !all(vec3<bool>(false, false, false))));
    let var_2 = var_1.x;
    var var_3 = func_4(func_1(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(62513u, 67003u, 27122u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 118883u, 34010u), vec3<u32>(u_input.c.x, u_input.a, u_input.a))), vec3<u32>(0u, 1u, _wgslsmith_mult_u32(8541u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1967f + -1061f), -1457f))), -vec2<i32>(u_input.b, u_input.d));
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

