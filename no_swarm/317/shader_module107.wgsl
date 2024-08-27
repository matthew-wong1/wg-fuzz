struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_2;
    let var_1 = Struct_4(arg_1.a, arg_1.b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-338f * -627f))) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1213f, -493f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -219f), -690f)))));
    let var_3 = Struct_5(_wgslsmith_add_i32(1i, -1i), arg_1.b.x);
    let var_4 = arg_1.b.x;
    return vec2<bool>(false, false || !(any(vec3<bool>(var_4, true, false)) || var_1.b.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(~(-arg_1.a.x), -u_input.a), 31756i, i32(-1i) * -_wgslsmith_dot_vec2_i32(u_input.c.yw, u_input.c.xw)), arg_1.b);
    var_0 = Struct_2(select(-(~var_0.a), ~vec3<i32>(-13508i, -5367i, -50541i), vec3<bool>(false, !arg_1.b.x, var_0.b.x | arg_1.b.x)) | max(_wgslsmith_div_vec3_i32(vec3<i32>(19478i, u_input.c.x, var_0.a.x), arg_1.a), reverseBits(vec3<i32>(var_0.a.x, var_0.a.x, -59678i) | vec3<i32>(arg_1.a.x, arg_1.a.x, var_0.a.x))), var_0.b);
    var var_1 = Struct_5(u_input.a, any(select(func_3(vec4<u32>(arg_0.a.x, u_input.b, u_input.d.x, arg_0.a.x) & u_input.d, arg_0, Struct_1(vec2<u32>(arg_0.a.x, 0u), vec3<i32>(-1i, u_input.a, arg_1.a.x))), !vec2<bool>(true, arg_0.b.x), vec2<bool>(!arg_0.b.x, arg_0.b.x))));
    return arg_1.a;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = Struct_2(abs(~vec3<i32>(-5271i, u_input.a >> (0u % 32u), u_input.c.x)), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), vec2<bool>(any(vec2<bool>(true, true)), true)));
    var_0 = Struct_2(u_input.c.yyz, var_0.b);
    var var_1 = u_input.d.x;
    var_0 = Struct_2(~func_4(Struct_4(firstLeadingBit(vec3<u32>(u_input.b, 59864u, u_input.b)), func_3(u_input.d, Struct_4(u_input.d.wyx, vec2<bool>(true, false)), Struct_1(u_input.d.xw, u_input.c.yyw))), Struct_2(vec3<i32>(-31654i, u_input.a, -7195i) | u_input.c.ywy, !vec2<bool>(true, var_0.b.x))), vec2<bool>(!(u_input.c.x > u_input.c.x), all(!vec4<bool>(false, var_0.b.x, true, false))));
    var_1 = 86535u;
    return var_0.a.x;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = (false || arg_0) && !((arg_1.a.x >> (abs(52621u) % 32u)) < ~(-15162i));
    let var_1 = vec3<i32>(_wgslsmith_clamp_i32(-32528i, func_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1374f, 922f) + vec2<f32>(1175f, 1166f))))), 2147483647i), _wgslsmith_div_i32(arg_3.x ^ u_input.c.x, -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_3, arg_3), _wgslsmith_sub_vec2_i32(arg_1.a.zz, vec2<i32>(-9519i, -2147483647i)))), -(~(-(~0i))));
    var_0 = arg_0;
    var_0 = false;
    let var_2 = Struct_2(var_1 | u_input.c.xwy, vec2<bool>(arg_1.b.x, arg_0 & all(!arg_1.b)));
    return 84332u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(u_input.b, ~15566u) >= ((_wgslsmith_clamp_u32(func_1(false, Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.a), vec2<bool>(false, true)), vec4<u32>(u_input.b, 16055u, 430u, 0u), vec2<i32>(24387i, 0i)), u_input.d.x, ~51721u) | ~19528u) << (1u % 32u));
    var_0 = !(_wgslsmith_sub_i32(u_input.c.x, 17746i) > 1i);
    var var_1 = !all(!vec3<bool>(all(vec3<bool>(false, true, true)), func_3(u_input.d, Struct_4(vec3<u32>(9533u, 19344u, u_input.d.x), vec2<bool>(false, false)), Struct_1(vec2<u32>(4294967295u, u_input.b), vec3<i32>(u_input.c.x, -49393i, 1i))).x, any(vec4<bool>(true, false, false, false))));
    var_1 = firstLeadingBit(u_input.c.x) != _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, _wgslsmith_mod_i32(19858i, u_input.c.x) & u_input.c.x), u_input.a);
    let var_2 = Struct_1(~vec2<u32>(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_add_u32(0u, 40809u)), u_input.d.x), ~reverseBits(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) >> (countOneBits(~vec3<u32>(u_input.d.x, 92904u, u_input.d.x)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(-21111i) >> ((15438u << (((u_input.b & var_2.a.x) << (~4294967295u % 32u)) % 32u)) % 32u), firstTrailingBit(func_4(Struct_4(abs(u_input.d.zyy), vec2<bool>(true, true)), Struct_2(var_2.b ^ var_2.b, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))))), var_2.a);
}

