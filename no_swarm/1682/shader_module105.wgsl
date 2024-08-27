struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec3<i32>) -> vec3<bool> {
    var var_0 = i32(-1i) * -(_wgslsmith_sub_i32(select(-36469i, arg_1, arg_0.x), 0i) >> (~firstLeadingBit(1u) % 32u));
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-_wgslsmith_mod_i32(-arg_3.x, arg_1), _wgslsmith_mod_i32(6066i, min(-27848i, -arg_1))), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_3.x, u_input.c >> (0u % 32u)), arg_3.xy));
    var_0 = -firstLeadingBit(_wgslsmith_mod_i32(abs(arg_3.x), arg_1));
    var_0 = min(abs(reverseBits(-154i)), _wgslsmith_add_i32(i32(-1i) * -28378i, ~1i) | u_input.e.x);
    var var_1 = arg_3.x >> (_wgslsmith_dot_vec4_u32(~min(~vec4<u32>(70225u, 0u, 19650u, 4294967295u), vec4<u32>(0u, 0u, 1u, 1u)), vec4<u32>(select(~0u, countOneBits(1u), arg_0.x), ~abs(82961u), 29747u, ~1u)) % 32u);
    return vec3<bool>(false, true, any(arg_0));
}

fn func_2(arg_0: f32) -> Struct_1 {
    return Struct_1(select(vec3<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), 1u != _wgslsmith_clamp_u32(1u, 4294967295u, 1u), !any(vec3<bool>(false, true, false))), func_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), ~(-27096i) >> (firstTrailingBit(4294967295u) % 32u), vec2<f32>(arg_0, _wgslsmith_f_op_f32(min(1177f, 839f))), u_input.b.yyy), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), u_input.b.zzx);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_4(arg_1.c, arg_2, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(arg_0, arg_1.d, 89295u, 4294967295u) & abs(vec4<u32>(0u, arg_1.d, 1u, 4294967295u))), ~(~select(vec4<u32>(arg_0, arg_0, arg_0, 83568u), vec4<u32>(arg_0, arg_0, 4294967295u, 1u), vec4<bool>(false, arg_3.x, arg_1.a.a.x, true)))));
    var_0 = Struct_4(var_0.a, _wgslsmith_f_op_f32(trunc(-1002f)), arg_1.d);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_div_f32(_wgslsmith_div_f32(601f, 119f), _wgslsmith_f_op_f32(trunc(659f))))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b + arg_2), _wgslsmith_f_op_f32(f32(-1f) * -550f)))))));
    var_0 = Struct_4(func_2(arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1)))), 105036u);
    let var_2 = Struct_3(-(-2147483647i >> (_wgslsmith_mod_u32(var_0.c, 0u) % 32u)) & ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -37445i, -11083i, arg_1.a.b.x), u_input.b), select(vec4<i32>(-1i, arg_1.a.b.x, 46291i, var_0.a.b.x), u_input.b, var_0.a.a.x)), Struct_1(var_0.a.a, -vec3<i32>(29042i, 0i, 2147483647i) << (abs(firstTrailingBit(vec3<u32>(4294967295u, 1u, arg_1.d))) % vec3<u32>(32u))), var_0.a, 41395u, ~(~(~arg_0) >> (arg_1.d % 32u)));
    return -2176f;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(arg_3, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(func_4(firstLeadingBit(arg_2 >> (4294967295u % 32u)), Struct_2(func_2(-622f), -761f, func_2(-1293f), arg_2), -1000f, select(func_3(vec3<bool>(true, true, true), 7921i, arg_0.yz, u_input.b.zwz).zz, arg_3.a.yy, true)))), Struct_1(arg_3.a, arg_3.b), ~(~arg_2));
    var_0 = Struct_2(Struct_1(!(!func_3(vec3<bool>(false, var_0.c.a.x, true), -1i, arg_0.zx, vec3<i32>(arg_3.b.x, u_input.e.x, arg_1.x))), var_0.a.b), arg_0.x, Struct_1(arg_3.a, -var_0.a.b), ~20676u);
    var var_1 = Struct_4(Struct_1(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(var_0.b)), -294f))).a, vec3<i32>(_wgslsmith_mod_i32(-97738i, u_input.a.x) | countOneBits(var_0.c.b.x), 63811i, _wgslsmith_mult_i32(abs(-1i), _wgslsmith_dot_vec2_i32(u_input.a, var_0.c.b.zy)))), 1224f, var_0.d);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_1(vec3<f32>(-204f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-746f)), _wgslsmith_f_op_f32(f32(-1f) * -458f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1805f)), _wgslsmith_f_op_f32(-780f + 778f), any(vec2<bool>(false, false))))), u_input.e.wxx, ~_wgslsmith_add_u32(countOneBits(13318u), 1u), Struct_1(vec3<bool>(true, true, true), ~u_input.b.yzw ^ u_input.e.wyz)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 1u, 48928u)), vec3<u32>(62115u, 42062u, 51729u)), Struct_2(Struct_1(vec3<bool>(false, false, true), vec3<i32>(0i, -26700i, u_input.c)), 573f, Struct_1(vec3<bool>(false, true, true), vec3<i32>(u_input.e.x, 2147483647i, 7931i)), 1u), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(321f, -1000f), _wgslsmith_f_op_f32(-665f * 369f))), vec2<bool>(true, all(vec3<bool>(true, false, false))))))), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(57779u, 58726u, 59723u, 22122u), vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = -1i;
    var var_2 = vec3<bool>(true, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c, 0u, 51235u), vec3<u32>(37784u, 4294967295u, var_0.c)), vec3<u32>(40269u, 27503u, var_0.c) << (vec3<u32>(var_0.c, 1u, 74411u) % vec3<u32>(32u)))), vec3<u32>(var_0.c, firstTrailingBit(var_0.c) & (var_0.c | var_0.c), ~37078u), vec3<bool>(!func_2(-288f).a.x, false && !var_0.a.a.x, var_0.a.a.x)), vec3<i32>(var_1, abs(_wgslsmith_mod_i32(-1i, 2147483647i)), var_1), ~(~firstLeadingBit(vec2<u32>(1u, 5646u)) | max(vec2<u32>(52462u, var_0.c) | vec2<u32>(var_0.c, var_0.c), ~vec2<u32>(4294967295u, var_0.c))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 537f, var_0.b, -476f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -1111f, 738f, var_0.b) + vec4<f32>(-992f, var_0.b, 2448f, -908f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_0.b, 1000f), vec4<f32>(-1166f, var_0.b, var_0.b, -396f)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, -188f, _wgslsmith_f_op_f32(f32(-1f) * -315f), -111f))), !vec4<bool>(0i > var_0.a.b.x, false, !var_0.a.a.x, true))));
}

