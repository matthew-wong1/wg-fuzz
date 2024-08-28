struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_3(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(121f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, 222f))))));
    var_0 = Struct_3(110469u, 795f);
    var_0 = Struct_3(max(69245u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a, var_0.a), vec2<u32>(u_input.b.x, arg_3.x)), arg_3.xz)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.a.x, -100f))));
    let var_1 = arg_1.c.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, arg_1.a.x, var_0.b, 518f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, -1913f, 189f, var_0.b), vec4<f32>(-909f, -956f, 1422f, 734f), arg_1.b.x)))))), !arg_1.b, select(u_input.c.zw, -u_input.c.wx, !vec2<bool>(false, arg_0)), u_input.c);
    return var_0.a;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_5 {
    return Struct_5(vec2<i32>(arg_0.x, abs(65698i)), true, ~abs(func_3(true, Struct_2(vec4<f32>(arg_2.b, arg_2.b, -394f, arg_2.b), vec2<bool>(true, true), vec2<i32>(u_input.c.x, arg_1), u_input.c), ~u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a.x, 4294967295u, arg_2.a.x, u_input.b.x), vec4<u32>(35787u, 38697u, arg_2.a.x, u_input.b.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_5(-reverseBits(u_input.c.yz), arg_0.b.x, _wgslsmith_div_u32(1u, u_input.b.x));
    var_0 = func_2(u_input.c.wzz, -reverseBits(~2147483647i), Struct_1(_wgslsmith_sub_vec2_u32(u_input.b, ~firstTrailingBit(vec2<u32>(4294967295u, 9467u))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x)), arg_0.a.x)))));
    let var_1 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-9903i, -reverseBits(8414i), select(2147483647i, 1i, true)), -(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.d.x, -28690i, u_input.c.x), vec3<i32>(8464i, -2147483647i, arg_0.c.x)) & ~arg_1.zwz)));
    var_0 = func_2(~(vec3<i32>(-1i) * -u_input.c.ywy), 45486i, Struct_1(vec2<u32>(3042u, var_0.c | 111603u) & u_input.b, -137f));
    let var_2 = Struct_3(_wgslsmith_add_u32(min(_wgslsmith_sub_u32(u_input.b.x, 4294967295u), max(u_input.b.x & 41974u, var_0.c)), 52994u), _wgslsmith_f_op_f32(-arg_0.a.x));
    return select(!select(vec3<bool>(u_input.c.x < arg_1.x, true, arg_0.b.x), select(vec3<bool>(arg_0.b.x, false, var_0.b), vec3<bool>(arg_0.b.x, arg_0.b.x, false), !arg_0.b.x), var_0.b), !vec3<bool>(arg_0.b.x, all(!arg_0.b), true), any(!vec4<bool>(var_0.a.x != 12668i, var_0.b, var_0.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = !select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, all(func_1(Struct_2(vec4<f32>(1000f, -870f, 913f, 699f), vec2<bool>(false, false), u_input.c.wz, vec4<i32>(u_input.c.x, u_input.c.x, 1i, 46985i)), u_input.c)), select(true, true, true)), 4294967295u <= (u_input.b.x | 69857u));
    var var_2 = Struct_3(countOneBits(_wgslsmith_sub_u32(~u_input.b.x, abs(4294967295u))) | (u_input.b.x >> (15757u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f * _wgslsmith_f_op_f32(f32(-1f) * -596f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-824f - -768f), _wgslsmith_f_op_f32(round(1000f)), u_input.b.x >= u_input.b.x)))));
    let var_3 = Struct_3(_wgslsmith_add_u32(~(_wgslsmith_mult_u32(var_2.a, u_input.b.x) << ((var_2.a << (104285u % 32u)) % 32u)), var_2.a), var_2.b);
    var var_4 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1033f * var_3.b), _wgslsmith_div_f32(-2197f, var_2.b))), _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2215f * var_3.b), _wgslsmith_f_op_f32(-262f - -2396f))), _wgslsmith_f_op_f32(655f - 761f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1497f, 403f, var_3.b, var_3.b), vec4<f32>(var_3.b, var_3.b, -860f, -1055f)))), vec4<f32>(var_2.b, 1355f, _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(f32(-1f) * -1092f)))), !(!select(var_1.wz, var_1.yz, vec2<bool>(var_1.x, false))), _wgslsmith_clamp_vec2_i32(vec2<i32>(countOneBits(i32(-1i) * -8904i), 54136i), abs(vec2<i32>(u_input.a, ~23561i)), u_input.c.zx), _wgslsmith_mod_vec4_i32(u_input.c, countOneBits(vec4<i32>(_wgslsmith_div_i32(1i, u_input.c.x), u_input.a, -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), u_input.c.wx)))));
    let var_5 = var_4.a;
    var var_6 = 3303u;
    let x = u_input.a;
    s_output = StorageBuffer(~(select(select(var_4.d, u_input.c, var_4.b.x), -u_input.c, func_2(u_input.c.xzw, 6520i, Struct_1(u_input.b, var_3.b)).b) >> (~select(vec4<u32>(var_2.a, var_2.a, u_input.b.x, 0u), vec4<u32>(var_3.a, 1u, var_2.a, 4294967295u), var_1.x) % vec4<u32>(32u))), ~vec4<u32>(~abs(1u), _wgslsmith_sub_u32(var_3.a, ~5925u), 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(var_3.a, var_3.a, 8020u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_4.a), vec4<f32>(1000f, var_4.a.x, var_4.a.x, var_3.b), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, var_1.x), vec4<bool>(var_4.b.x, false, true, var_4.b.x))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_2.b)), -1151f, _wgslsmith_f_op_f32(156f * -938f), _wgslsmith_f_op_f32(-var_5.x)))), -(~var_4.d.zwx));
}

