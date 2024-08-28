struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = true;
    global1 = any(!select(!(!vec4<bool>(false, arg_0.d.x, arg_0.d.x, true)), select(!vec4<bool>(var_0, arg_0.d.x, true, false), select(vec4<bool>(arg_0.d.x, var_0, var_0, false), vec4<bool>(true, true, arg_0.d.x, arg_0.d.x), true), true), arg_0.d.x));
    let var_1 = select(vec2<bool>(arg_0.d.x, (true == any(arg_0.d)) || var_0), !vec2<bool>(any(vec4<bool>(false, arg_0.d.x, true, var_0)), !any(arg_0.d)), true);
    global0 = ~u_input.c.x & firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u));
    let var_2 = 0u;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.a.x, 2147483647i, -42136i, i32(-1i) * -37918i), vec4<i32>(u_input.d.x, u_input.a.x, 54926i, 0i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 4294967295u, 0u, arg_0), vec4<u32>(0u, u_input.c.x, 32808u, 22156u)) % vec4<u32>(32u)))), -_wgslsmith_add_vec4_i32(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(-15092i, u_input.d.x, u_input.a.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, 3627i), vec4<i32>(u_input.a.x, u_input.d.x, u_input.a.x, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-44481i, u_input.d.x, u_input.a.x, -16158i), vec4<i32>(u_input.a.x, 2147483647i, 0i, 0i), vec4<i32>(-2147483647i, 21440i, 8601i, -1i))), -(vec4<i32>(0i, 13312i, -3466i, 19540i) | vec4<i32>(u_input.a.x, u_input.a.x, 1i, 0i))));
    let var_1 = -1529f;
    let var_2 = vec3<bool>(!(!any(select(vec2<bool>(false, false), vec2<bool>(true, true), false))), false, any(select(vec2<bool>(true, true), func_3(Struct_2(arg_0, -49842i, 0u, vec2<bool>(true, false)), Struct_1(vec4<f32>(-752f, arg_1.x, -1000f, var_1), 752f, 56921i, u_input.c.xz), arg_1), select(func_3(Struct_2(1u, 0i, arg_0, vec2<bool>(false, true)), Struct_1(vec4<f32>(var_1, arg_1.x, 1138f, -851f), var_1, -1i, u_input.c.zx), arg_1), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true)))));
    var var_3 = Struct_2(1u, _wgslsmith_dot_vec3_i32(var_0.xxw, ~vec3<i32>(firstLeadingBit(15078i), ~u_input.a.x, ~2147483647i)), countOneBits(arg_0), vec2<bool>(false, false));
    global1 = !var_3.d.x;
    return true;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_mult_i32(abs(-10032i & _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-1i, 15709i, u_input.a.x) << (vec3<u32>(u_input.c.x, 4294967295u, u_input.b) % vec3<u32>(32u)))), u_input.d.x >> (((~u_input.c.x & ~0u) ^ 17010u) % 32u));
    global1 = all(vec4<bool>(false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), false, func_2(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(358f + -1040f), -270f, _wgslsmith_f_op_f32(-500f - -2028f)))));
    var_0 = _wgslsmith_sub_i32(-1i, u_input.a.x);
    var var_1 = u_input.c.yy;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(442f + 280f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-651f - -208f), _wgslsmith_f_op_f32(f32(-1f) * -648f)) - _wgslsmith_f_op_f32(round(-228f)))));
    return 1f;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    global1 = all(select(!vec4<bool>(false, 0u > u_input.c.x, true, true), select(vec4<bool>(any(vec4<bool>(false, arg_2.b, arg_3, arg_2.b)), false, true, arg_2.b), vec4<bool>(arg_2.b, true, all(vec2<bool>(arg_3, arg_3)), arg_2.b), !vec4<bool>(arg_3, arg_3, false, arg_2.b)), !select(select(vec4<bool>(false, false, arg_2.b, arg_3), vec4<bool>(arg_2.b, true, arg_2.b, false), true), !vec4<bool>(arg_2.b, true, true, arg_3), !arg_3)));
    let var_0 = vec2<u32>(74234u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.e.x, arg_2.e.x), u_input.c.yz) << (0u % 32u)) ^ reverseBits(arg_2.e);
    let var_1 = Struct_3(~(~_wgslsmith_mult_i32(arg_2.c, ~u_input.d.x)), func_2(48090u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-972f, arg_2.d.x, arg_1.x) - arg_2.d) * _wgslsmith_f_op_vec3_f32(floor(arg_2.d)))))), -2147483647i, arg_2.d, ~(~abs(max(arg_2.e, u_input.c.zz))));
    let var_2 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1062f, _wgslsmith_f_op_f32(func_1()), -640f, arg_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-446f, 2001f, arg_2.d.x, arg_0), vec4<f32>(arg_0, 1000f, -1000f, var_1.d.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_1.x, 655f, arg_0)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-988f, arg_0, -847f, -1000f), vec4<f32>(571f, arg_0, var_1.d.x, var_1.d.x))))), var_1.d.x, arg_2.a, ~(~vec2<u32>(0u, var_0.x)) | u_input.c.yz);
    global0 = abs(u_input.c.x);
    return Struct_2(4294967295u << (0u % 32u), _wgslsmith_sub_i32(_wgslsmith_sub_i32(-(var_1.c << (4294967295u % 32u)), reverseBits(var_2.c)), -_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, arg_2.a)), select(vec2<i32>(var_2.c, u_input.a.x), vec2<i32>(var_2.c, -2147483647i), vec2<bool>(true, arg_3)))), _wgslsmith_mult_u32(~(~(~10369u)), ~(~(110510u | var_2.d.x))), vec2<bool>(select(var_1.b, var_1.b, arg_2.b), any(vec4<bool>(var_1.b, arg_2.b, arg_3, true)) && all(vec3<bool>(arg_3, arg_2.b, var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1088f, -329f))))), Struct_3(2147483647i, false, u_input.d.x, vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -639f), _wgslsmith_f_op_f32(-638f * -952f)), abs(vec2<u32>(1u, u_input.b))), true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-274f, -909f, -1928f, 1103f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-905f, 331f, -1040f, -532f) * vec4<f32>(-141f, -113f, 1307f, -797f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(676f, 702f, 1734f, 776f), vec4<f32>(-109f, -2333f, -1422f, 676f))))) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-409f)) - _wgslsmith_div_f32(-841f, -1395f))) + 111f), firstTrailingBit(0i), firstLeadingBit(vec2<u32>(u_input.c.x, 4294967295u)) & countOneBits(vec2<u32>(4294967295u, u_input.b)));
    let var_2 = Struct_3(select(-26069i, var_0.b, var_0.d.x) << ((u_input.b << (1u % 32u)) % 32u), true, ~_wgslsmith_mult_i32(reverseBits(var_1.c), u_input.a.x) >> ((var_1.d.x ^ var_1.d.x) % 32u), _wgslsmith_f_op_vec3_f32(trunc(var_1.a.xwy)), u_input.c.zz ^ min(vec2<u32>(~u_input.c.x, ~4294967295u), vec2<u32>(~8663u, 4294967295u)));
    global0 = ~_wgslsmith_mod_u32(min(min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.d.x, u_input.b), vec3<u32>(37622u, 0u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), u_input.c.yx)), ~102657u), select(var_0.a, _wgslsmith_div_u32(var_1.d.x, reverseBits(4267u)), !var_0.d.x));
    let var_3 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(round(var_1.a.x)), !var_2.b))));
}

