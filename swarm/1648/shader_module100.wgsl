struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
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

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = !(!vec4<bool>(true, any(vec3<bool>(true, false, false)), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)), false));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-929f, 577f, -1718f, -1629f), vec4<f32>(-1270f, -1531f, 1862f, -2553f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1437f, -563f, 378f, 773f))) * vec4<f32>(1131f, _wgslsmith_f_op_f32(min(421f, 317f)), 1f, 1000f)))), ~(-select(~0i, firstLeadingBit(19214i), !var_0.x)), vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(0i, 28870i, 23723i, 1i)), firstLeadingBit(vec4<i32>(-2147483647i, -1i, 5699i, 5510i))), ~select(-61235i, 2147483647i, var_0.x)), -1i >> (1u % 32u), -1765i));
    var var_2 = ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(reverseBits(1u), firstLeadingBit(63886u)), ~_wgslsmith_sub_u32(32483u, u_input.a)), 39404u ^ ~u_input.b);
    var_1 = Struct_1(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(step(-716f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-368f, 166f)) - _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)))), var_1.a.x, 1293f), var_1.b, vec3<i32>(countOneBits(-_wgslsmith_mod_i32(0i, var_1.b)), _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(2555i, 19927i, -15122i, var_1.c.x)), ~vec4<i32>(var_1.b, var_1.b, 1i, -2147483647i)), _wgslsmith_dot_vec2_i32((var_1.c.yx << (vec2<u32>(u_input.a, u_input.b) % vec2<u32>(32u))) & var_1.c.xz, vec2<i32>(var_1.b, -2147483647i))));
    let var_3 = vec4<i32>(~(-(var_1.c.x << (u_input.b % 32u)) & 2147483647i), -7556i, 0i, var_1.b);
    return !(!(true && (u_input.a < ~19888u)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = !select(!(!arg_2.x), _wgslsmith_mult_u32(u_input.a | 13721u, ~0u) == ~_wgslsmith_mult_u32(0u, 0u), func_3());
    var_0 = !(true & arg_2.x);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-307f - arg_1.a.x))));
    let var_2 = u_input.b;
    let var_3 = true;
    return _wgslsmith_f_op_f32(-1000f + 312f);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec2<i32> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(arg_3, -78616i, ~(-2147483647i), _wgslsmith_div_i32(-40944i, -27667i)), Struct_1(arg_1.a, arg_1.b, vec3<i32>(30108i, -36404i, 10905i) << (vec3<u32>(0u, 69053u, u_input.a) % vec3<u32>(32u))), !select(vec4<bool>(arg_2, arg_2, var_0, true), vec4<bool>(arg_2, false, arg_2, var_0), arg_2))), -609f) * 2659f);
    let var_2 = abs(~arg_0);
    var var_3 = all(!vec4<bool>(true, func_3(), var_0, true));
    var var_4 = Struct_2(select(arg_1.c >> (~select(vec3<u32>(22478u, var_2, 25567u), vec3<u32>(1u, var_2, u_input.b), true) % vec3<u32>(32u)), select(arg_1.c, max(arg_1.c, arg_1.c), var_0 | var_0), select(select(select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, false)), !vec3<bool>(var_0, var_0, arg_2), false), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(arg_2, var_0, false), false))), vec2<i32>(arg_3, 2563i), arg_1, _wgslsmith_mod_i32(2147483647i & -(~arg_1.b), ~16156i), arg_1);
    return var_4.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2422i;
    var_0 = _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, ~2147483647i), -firstTrailingBit(vec2<i32>(-2147483647i, -15774i)), vec2<bool>(u_input.b == 16722u, true)) >> (firstLeadingBit(~vec2<u32>(u_input.a, 51606u)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(~func_1(0u, Struct_1(vec4<f32>(929f, 793f, 201f, 925f), 22022i, vec3<i32>(2147483647i, -1i, 2147483647i)), true, -4440i), vec2<i32>(~0i, max(0i, -65839i))) >> (vec2<u32>(~1u, u_input.a) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(func_1(firstTrailingBit(54001u), Struct_1(vec4<f32>(1591f, 1032f, 545f, -181f), max(-44959i, 7060i), ~vec3<i32>(-1i, 1i, 1i)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_sub_i32(i32(-1i) * -52497i, 1i)), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1100f - -263f) + -711f))) - -952f), _wgslsmith_sub_i32((-2147483647i >> (min(u_input.b, u_input.b) % 32u)) >> (min(39684u, u_input.b) % 32u), -58253i));
}

