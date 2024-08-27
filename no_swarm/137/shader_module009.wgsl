struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    return any(vec3<bool>(arg_1.a, any(vec3<bool>(true, true, all(vec3<bool>(arg_0.b, arg_1.a, arg_0.a.a)))), !(!arg_0.b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec4<i32>) -> i32 {
    var var_0 = arg_1.x;
    var_0 = -581f;
    let var_1 = Struct_2(Struct_1(!func_3(Struct_2(Struct_1(true), arg_0.x, Struct_1(false), 1u), Struct_1(arg_0.x))), arg_0.x, Struct_1(true), _wgslsmith_dot_vec4_u32(vec4<u32>(~12500u ^ u_input.a, ~_wgslsmith_div_u32(u_input.a, 22161u), 1u, min(~u_input.a, 0u)), (vec4<u32>(2044u, 1u, u_input.a, 1u) << ((vec4<u32>(0u, 0u, u_input.a, 7218u) | vec4<u32>(1u, 4294967295u, 1u, 47426u)) % vec4<u32>(32u))) ^ select(vec4<u32>(19302u, u_input.a, u_input.a, 0u) & vec4<u32>(15330u, 67972u, u_input.a, u_input.a), min(vec4<u32>(u_input.a, 43658u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 40354u)), !vec4<bool>(arg_0.x, false, arg_0.x, false))));
    let var_2 = vec2<i32>(_wgslsmith_mult_i32(arg_2.x, _wgslsmith_dot_vec3_i32(arg_2.xxx, arg_2.wxx) & -select(1i, 2147483647i, arg_0.x)), ~(2147483647i << (0u % 32u)));
    return _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, arg_2.x, -min(-58967i, var_2.x), ~arg_2.x), -countOneBits(vec4<i32>(var_2.x, firstLeadingBit(-13621i), var_2.x, countOneBits(4103i))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_3 {
    let var_0 = vec3<i32>(~arg_0.x, -34831i, min(1i, -(20273i & func_2(arg_2.xww, vec2<f32>(-1000f, -421f), vec4<i32>(5804i, arg_0.x, arg_0.x, 2147483647i)))));
    var var_1 = countOneBits(arg_0.x);
    var var_2 = arg_1;
    var var_3 = Struct_3(Struct_2(var_2.a.c, var_2.a.a.a, arg_1.a.c, ~(var_2.a.d | ~62770u)));
    var_2 = arg_1;
    return arg_1;
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = arg_0.a;
    let var_1 = var_0.c;
    var var_2 = Struct_2(Struct_1(!(!any(vec2<bool>(arg_0.a.a.a, var_1.a)))), var_0.b | false, var_1, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.d, 1u, 1u), vec3<u32>(6330u, var_0.d, arg_0.a.d)), ~vec3<u32>(0u, u_input.a, u_input.a)) >> (min(21006u, _wgslsmith_div_u32(7803u, 31361u)) % 32u), max(u_input.a ^ arg_0.a.d, 1u & ~arg_0.a.d)));
    var var_3 = -31221i;
    let var_4 = arg_0;
    return !any(vec2<bool>(true, func_1(vec4<i32>(-33454i, 25980i, -2147483647i, 1i), arg_0, vec4<bool>(false, false, var_4.a.c.a, false)).a.b)) | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, !(!any(vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1472f * -998f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1497f)) * _wgslsmith_div_f32(-1422f, 1127f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250f + _wgslsmith_f_op_f32(f32(-1f) * -483f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(190f + -186f) - _wgslsmith_f_op_f32(max(1000f, -977f)))));
    var_0 = select(!vec3<bool>(true, !var_0.x, func_4(func_1(vec4<i32>(2064i, 31518i, 27161i, 18047i), Struct_3(Struct_2(Struct_1(true), false, Struct_1(var_0.x), 0u)), vec4<bool>(var_0.x, false, false, var_0.x)))), !(!vec3<bool>(true, var_0.x, true)), any(vec3<bool>((var_0.x || var_0.x) & false, false, !var_0.x | !var_0.x)));
    var_0 = vec3<bool>(func_4(func_1(vec4<i32>(10120i, _wgslsmith_clamp_i32(-1i, -52100i, -59923i), -15325i, 1i), Struct_3(func_1(vec4<i32>(-54121i, -2147483647i, -43784i, -2147483647i), Struct_3(Struct_2(Struct_1(false), true, Struct_1(true), 38081u)), vec4<bool>(false, var_0.x, var_0.x, true)).a), select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(true, false, var_0.x, var_0.x), var_0.x), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, var_0.x, var_0.x), true), !vec4<bool>(false, true, false, var_0.x)))), true, var_0.x);
    var var_1 = ~abs(min(vec2<u32>(firstTrailingBit(1u), ~u_input.a), ~(~vec2<u32>(u_input.a, u_input.a))));
    var var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~(vec2<u32>(u_input.a, 19345u) << (vec2<u32>(u_input.a, 36252u) % vec2<u32>(32u)))), _wgslsmith_mult_vec2_u32(min(~vec2<u32>(15377u, 4139u), vec2<u32>(57627u, 4294967295u) & vec2<u32>(var_1.x, var_1.x)), ~(vec2<u32>(u_input.a, 32740u) >> (vec2<u32>(u_input.a, var_1.x) % vec2<u32>(32u)))), ~vec2<u32>(countOneBits(4294967295u), _wgslsmith_mult_u32(var_1.x, 35950u))), max(vec2<u32>(45840u, 15750u), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(4294967295u, u_input.a), vec2<u32>(1u, 49978u)), _wgslsmith_add_vec2_u32(vec2<u32>(12790u, u_input.a), vec2<u32>(48271u, u_input.a))) >> ((_wgslsmith_div_vec2_u32(vec2<u32>(0u, 140284u), vec2<u32>(u_input.a, 0u)) >> (reverseBits(vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(select(_wgslsmith_div_vec2_i32(vec2<i32>(0i, 15688i), vec2<i32>(2147483647i, 30334i)) << (vec2<u32>(63943u, u_input.a) % vec2<u32>(32u)), -vec2<i32>(1i, 1i), select(!var_0.xz, !var_0.xy, var_0.x)), max(-vec2<i32>(-1i, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), -vec2<i32>(-2147483647i, 2147483647i))), var_0.zy), 32680u, _wgslsmith_f_op_f32(733f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-698f + _wgslsmith_f_op_f32(-547f * 1873f)))), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -863f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-557f, -128f) - vec2<f32>(2193f, -1301f)))))));
}

