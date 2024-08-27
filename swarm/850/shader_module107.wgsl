struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 26>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    global0 = array<vec4<i32>, 26>();
    let var_0 = vec4<bool>(!arg_1, !all(vec3<bool>(arg_1, true, arg_1)), !arg_1, (arg_1 && true) || false);
    global0 = array<vec4<i32>, 26>();
    let var_1 = -4722i;
    let var_2 = Struct_3(Struct_1(~(~var_1)), u_input.b, ~abs(~_wgslsmith_mod_u32(43496u, u_input.b)));
    return Struct_2(Struct_1(var_2.a.a));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: f32) -> vec2<f32> {
    let var_0 = func_2(arg_3, arg_3 > _wgslsmith_f_op_f32(arg_3 - arg_3));
    global0 = array<vec4<i32>, 26>();
    global0 = array<vec4<i32>, 26>();
    global0 = array<vec4<i32>, 26>();
    let var_1 = u_input.a.wyz;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-676f, -499f), vec2<f32>(2688f, 1582f), vec2<bool>(true, arg_2.x))) + vec2<f32>(1195f, arg_3)))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> Struct_3 {
    global0 = array<vec4<i32>, 26>();
    let var_0 = _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-34467i, -4971i), ~vec2<i32>(1i, 2147483647i)), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~u_input.b, 26u)], global0[_wgslsmith_index_u32(countOneBits(1u), 26u)]))), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-7533i, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -30249i))), firstTrailingBit(min(vec2<i32>(-20066i, 2654i), vec2<i32>(-74474i, 0i)))), abs(-95427i)));
    let var_1 = vec3<bool>(true, all(select(select(!vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(true, false, true, arg_1), !arg_1), !(!vec4<bool>(true, false, false, arg_1)), select(!vec4<bool>(arg_1, arg_1, arg_1, false), select(vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(false, arg_1, true, arg_1), false), false))), !all(vec3<bool>(arg_1, true, true)));
    var var_2 = Struct_5(Struct_1(var_0.x), ~firstTrailingBit(-vec3<i32>(-2561i, var_0.x, var_0.x)), Struct_3(func_2(_wgslsmith_f_op_f32(ceil(arg_0.x)), !select(false, true, true)).a, _wgslsmith_sub_u32(2572u, min(u_input.b, _wgslsmith_clamp_u32(35384u, u_input.a.x, 1u))), 0u), var_1, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f) + arg_0.x), all(!select(var_1, var_1, false))));
    var var_3 = Struct_4(Struct_1(-(~var_2.c.a.a)), firstTrailingBit(abs(var_0)), var_2.c, arg_0.x, arg_0);
    return Struct_3(Struct_1(var_3.c.a.a), _wgslsmith_dot_vec2_u32(select(abs(vec2<u32>(var_2.c.b, var_2.c.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.c.c, 4294967295u), u_input.a.xz), false), max((vec2<u32>(var_3.c.c, var_3.c.c) >> (u_input.a.zx % vec2<u32>(32u))) & u_input.a.xw, vec2<u32>(~var_3.c.c, 31194u))), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(1u, u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_1(i32(-1i) * -firstLeadingBit(1i)), -vec2<i32>(~(i32(-1i) * -5921i), -_wgslsmith_div_i32(-1i, 85694i)), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1264f, 945f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(6816u, 65089u), vec4<u32>(u_input.b, u_input.a.x, 4294967295u, 9086u), vec4<bool>(false, true, false, true), 555f))))), false), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(vec2<u32>(4294967295u, u_input.b), vec4<u32>(0u, u_input.b, 1u, u_input.a.x), vec4<bool>(false, false, true, true), -1000f)).x)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), -966f), vec2<f32>(-1134f, _wgslsmith_f_op_f32(f32(-1f) * -1672f)), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true))));
    var var_1 = !any(vec4<bool>(!any(vec3<bool>(true, false, true)), all(vec3<bool>(false, true, true)), true, select(true, any(vec3<bool>(false, false, false)), true)));
    global0 = array<vec4<i32>, 26>();
    var var_2 = _wgslsmith_mod_i32(var_0.b.x, var_0.b.x);
    var_2 = _wgslsmith_add_i32(_wgslsmith_div_i32(var_0.a.a, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.c.a.a, -10948i, var_0.c.a.a, var_0.b.x), vec4<i32>(2147483647i, 2147483647i, -70528i, -1i))), -2147483647i);
    let var_3 = u_input.a.zyy;
    var var_4 = vec3<u32>(var_0.c.c, 1u, ~select(~var_0.c.b, _wgslsmith_mod_u32(u_input.a.x, 1u), true)) >> (~vec3<u32>(~countOneBits(8600u), func_3(vec2<f32>(-1434f, 2082f), true).b, var_3.x) % vec3<u32>(32u));
    let var_5 = -_wgslsmith_div_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(var_0.b.x, 0i, 2147483647i))), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(45981i, 1i, var_0.b.x)), vec3<i32>(28565i, var_0.c.a.a, -31907i), vec3<i32>(var_0.a.a, -2147483647i, -1i))) << (u_input.a.yxx % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(43354u << (~countOneBits(_wgslsmith_dot_vec3_u32(u_input.a.yzz, vec3<u32>(22439u, var_0.c.b, var_0.c.c))) % 32u), vec4<u32>(_wgslsmith_add_u32((0u << (var_3.x % 32u)) << ((4294967295u << (var_0.c.b % 32u)) % 32u), 1u), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(4081u, 0u), 4294967295u), max(max(_wgslsmith_div_u32(72350u, u_input.b), ~4294967295u), var_3.x), var_0.c.c), 417f, select(i32(-1i) * -var_5.x, 1i ^ (i32(-1i) * -var_0.b.x), select(all(vec3<bool>(true, false, true)), var_3.x < ~u_input.b, true)), _wgslsmith_f_op_vec2_f32(-var_0.e));
}

