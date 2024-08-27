struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = -2504i | u_input.b;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(678f, arg_1.x, -1768f))))), vec3<i32>(-5981i >> (abs(u_input.a.x) % 32u), u_input.b, 1i), select(select(!vec4<bool>(true, true, true, arg_0), !(!vec4<bool>(arg_0, true, arg_0, true)), (arg_0 & true) && !arg_0), !(!select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, false, arg_0), arg_0)), !((arg_2.x >> (u_input.a.x % 32u)) > ~0u)));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, -479f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, var_1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-283f - var_1.a.x) - _wgslsmith_f_op_f32(f32(-1f) * -1258f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, arg_1.x, var_1.a.x))))))));
    let var_3 = vec2<i32>(firstTrailingBit(-_wgslsmith_dot_vec2_i32(var_1.b.zz >> (vec2<u32>(arg_2.x, arg_2.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(var_1.b.xz, vec2<i32>(u_input.b, var_1.b.x)))), _wgslsmith_add_i32(_wgslsmith_div_i32(2147483647i, arg_3.x), _wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-19755i, arg_3.x, u_input.b), vec3<i32>(18216i, -2147483647i, u_input.b)), ~var_1.b.x >> (_wgslsmith_mult_u32(8242u, arg_2.x) % 32u))));
    global0 = arg_2.x & arg_2.x;
    return var_2.b.x;
}

fn func_2() -> bool {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) + _wgslsmith_f_op_f32(f32(-1f) * -1438f)), _wgslsmith_f_op_f32(func_3(false, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), 597f), _wgslsmith_add_vec2_u32(~u_input.a.zy, u_input.a.wx), select(~vec3<i32>(u_input.b, 19585i, u_input.b), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, 0i, -4621i)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-902f)) * -282f) + _wgslsmith_f_op_f32(-1f))), vec3<i32>(u_input.b, u_input.b, ~_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-1i, u_input.b, u_input.b, -1i)), reverseBits(vec4<i32>(u_input.b, -41130i, 2147483647i, -85221i)))), !vec4<bool>(all(vec2<bool>(true, false)), select(select(true, false, true), all(vec4<bool>(true, true, true, true)), true), all(vec4<bool>(false, true, false, true)), _wgslsmith_mult_u32(4294967295u, 0u) < ~u_input.a.x));
    var var_1 = ~(~(~(-11774i & var_0.b.x)) & var_0.b.x);
    var_1 = ~u_input.b;
    global0 = min(13558u, ~abs(u_input.a.x ^ u_input.a.x)) << (u_input.a.x % 32u);
    let var_2 = _wgslsmith_mod_i32(~((-2147483647i | u_input.b) ^ -8057i), -(~(_wgslsmith_dot_vec4_i32(vec4<i32>(-58089i, 28198i, -24071i, var_0.b.x), vec4<i32>(var_0.b.x, -54212i, 45188i, var_0.b.x)) << (u_input.a.x % 32u))));
    return true;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1187f + 572f)) + -1352f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_1(vec3<f32>(var_0, var_0, _wgslsmith_f_op_f32(exp2(var_0))), select(vec3<i32>(firstTrailingBit(0i), 1i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-23930i, u_input.b), vec2<i32>(0i, -25724i)), -39863i)), -vec3<i32>(u_input.b, -1i, -7972i), arg_0.x == 52466u), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(false, arg_1.x, true, arg_1.x), vec4<bool>(true, arg_1.x, true, true)), false)));
    var var_2 = u_input.a.x;
    global0 = ~arg_0.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return Struct_3(vec4<f32>(2687f, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)) + var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-630f)))), var_1.a);
}

fn func_1() -> i32 {
    let var_0 = countOneBits(u_input.a.zw);
    var var_1 = func_4(vec4<u32>(0u, reverseBits(reverseBits(1u)), var_0.x, abs(abs(48073u))), select(vec3<bool>(true, true, func_2()), select(vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))));
    let var_2 = countOneBits(var_0.x) >> (u_input.a.x % 32u);
    global0 = _wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.x, var_0.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(countOneBits(var_2)), _wgslsmith_add_u32(var_0.x, u_input.a.x)), select(_wgslsmith_div_vec2_u32(abs(var_0), _wgslsmith_div_vec2_u32(var_0, u_input.a.wz)), ~(~var_0), vec2<bool>(true, true))));
    let var_3 = firstLeadingBit(~vec2<u32>(u_input.a.x, reverseBits(_wgslsmith_add_u32(var_0.x, u_input.a.x))));
    return (u_input.b << (var_3.x % 32u)) & reverseBits(_wgslsmith_sub_i32(~(-u_input.b), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 64700u), vec2<u32>(4294967295u, 15844u))), 0u, ~4294967295u), u_input.a.zzy);
    global0 = u_input.a.x;
    global0 = abs(_wgslsmith_sub_u32(u_input.a.x << (u_input.a.x % 32u), select(1u, ~(~19019u), true)));
    let var_0 = -firstTrailingBit(vec4<i32>(_wgslsmith_div_i32(func_1(), -u_input.b), u_input.b ^ _wgslsmith_mod_i32(u_input.b, -35372i), u_input.b, -_wgslsmith_div_i32(u_input.b, -27144i)));
    global0 = min(reverseBits(~firstTrailingBit(34325u)), firstLeadingBit(min(~1u, 33645u) << ((max(5571u, u_input.a.x) | 4294967295u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-var_0.x), -5642i, _wgslsmith_mod_i32(countOneBits(-2147483647i), var_0.x), abs(firstTrailingBit(~var_0.x))), var_0.zy);
}

