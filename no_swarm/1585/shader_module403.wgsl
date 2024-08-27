struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_4 {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_clamp_u32(u_input.d, _wgslsmith_dot_vec4_u32(~reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(70069u, 1u, u_input.d, 0u), vec4<u32>(4294967295u, 140u, 39155u, u_input.d))), ~(~vec4<u32>(1u, u_input.d, u_input.d, u_input.d))), u_input.d ^ u_input.d);
    let var_1 = Struct_3(Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, false)), vec2<bool>(true, any(vec4<bool>(true, false, false, false))), vec2<bool>(true, true)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, 23302i) >> (select(10978u, 29071u, true) % 32u), _wgslsmith_mod_i32(~u_input.a, 0i)), ~firstLeadingBit(u_input.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(853f, 675f, 604f, -3171f)) - vec4<f32>(1f, 1f, 1f, 1f)), false));
    var_0 = 4294967295u;
    var var_2 = firstTrailingBit(abs(abs(vec3<i32>(15384i, -22185i, var_1.a.b) << (~vec3<u32>(0u, 25515u, 4294967295u) % vec3<u32>(32u)))));
    return Struct_4(Struct_2(Struct_1(var_1.a.a, 40143i, 37424u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a.d * vec4<f32>(-742f, var_1.a.d.x, var_1.a.d.x, 1531f)) + _wgslsmith_f_op_vec4_f32(select(var_1.a.d, var_1.a.d, vec4<bool>(var_1.a.e, var_1.a.e, false, true)))), _wgslsmith_sub_i32(17307i, 1i) != ~var_2.x), var_1.a.d.zx, vec2<bool>(true, var_1.a.e), max(77228u, firstLeadingBit(48085u)), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.a.c, 63625u), vec2<u32>(var_1.a.c, 4294967295u)) >> (firstTrailingBit(vec2<u32>(u_input.d, 4294967295u)) % vec2<u32>(32u)))), 1u);
}

fn func_3(arg_0: Struct_4) -> Struct_3 {
    let var_0 = arg_0.a.a;
    var var_1 = select(vec4<bool>(true, all(!arg_0.a.c), true, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -6191i, -1332i, 2147483647i), u_input.b) >= var_0.b), !(!(!vec4<bool>(true, var_0.e, var_0.a.x, true))), all(select(!select(vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, var_0.e, var_0.a.x), var_0.a.x), vec4<bool>(any(vec3<bool>(var_0.e, arg_0.a.c.x, var_0.a.x)), var_0.a.x, true, true), !(!vec4<bool>(true, true, false, var_0.a.x)))));
    var_1 = vec4<bool>(true, true, 1000f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f + _wgslsmith_f_op_f32(arg_0.a.a.d.x * var_0.d.x))), var_1.x);
    return Struct_3(func_2().a.a);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: bool) -> u32 {
    let var_0 = arg_0.x;
    var var_1 = func_3(func_2());
    var var_2 = var_1.a.b;
    var_1 = Struct_3(func_3(func_2()).a);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.d.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))))) + 824f);
    return (_wgslsmith_add_u32(0u, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(25923u, 4294967295u, 4294967295u, var_1.a.c), vec4<u32>(60948u, arg_1.x, arg_1.x, 0u)))) >> (73002u % 32u)) << (_wgslsmith_add_u32(u_input.d, ~(~(~arg_1.x))) % 32u);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_3 {
    return func_3(Struct_4(Struct_2(func_2().a.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-656f, arg_1.a.d.x)) - arg_1.a.d.ww), vec2<bool>(true, true), u_input.d, select(_wgslsmith_mult_vec2_u32(vec2<u32>(25424u, u_input.d), vec2<u32>(16764u, arg_1.a.c)), ~vec2<u32>(arg_1.a.c, arg_1.a.c), arg_1.a.e)), firstTrailingBit(4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<bool>(!any(vec4<bool>(true, true, true, false)), func_1(vec2<f32>(1467f, 1606f), countOneBits(vec2<u32>(4294967295u, 37901u)), select(vec2<u32>(24800u, 30062u), vec2<u32>(41735u, u_input.d), vec2<bool>(true, false)), u_input.d <= u_input.d) == u_input.d, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false)))), func_3(func_2()));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(Struct_1(!var_0.a.a, u_input.a, ~var_0.a.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.d)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(188f, 1222f, var_0.a.d.x, var_0.a.d.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-637f, var_0.a.d.x, 1196f, var_0.a.d.x) + vec4<f32>(var_0.a.d.x, 387f, -1057f, -479f)))), all(vec4<bool>(var_0.a.a.x, true, func_4(vec3<bool>(var_0.a.e, var_0.a.a.x, true), Struct_3(Struct_1(vec2<bool>(false, var_0.a.e), var_0.a.b, 1u, var_0.a.d, true))).a.a.x, func_3(Struct_4(Struct_2(Struct_1(vec2<bool>(var_0.a.e, var_0.a.e), u_input.b.x, 0u, vec4<f32>(var_0.a.d.x, var_0.a.d.x, 211f, var_0.a.d.x), false), vec2<f32>(var_0.a.d.x, 1394f), var_0.a.a, u_input.d, vec2<u32>(57511u, 108220u)), u_input.d)).a.a.x))));
    let var_1 = !(!select(vec2<bool>(false, true), var_0.a.a, var_0.a.a));
    var_0 = func_3(Struct_4(Struct_2(var_0.a, _wgslsmith_f_op_vec2_f32(round(var_0.a.d.wy)), select(!vec2<bool>(var_1.x, var_1.x), select(vec2<bool>(var_0.a.a.x, true), var_0.a.a, var_1), !var_0.a.a), ~var_0.a.c, vec2<u32>(80990u, var_0.a.c)), (u_input.d >> (_wgslsmith_sub_u32(11341u, 0u) % 32u)) | ~(54640u >> (0u % 32u))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -465f);
    let x = u_input.a;
    s_output = StorageBuffer(-12530i);
}

