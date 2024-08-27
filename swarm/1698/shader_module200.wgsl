struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(632f, 740f, 1203f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1640f, -1715f, -1730f) + vec3<f32>(763f, 493f, 1197f))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-107f, 415f), _wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_f_op_f32(1201f + -706f))))));
    let var_1 = u_input.e.x;
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -176f), -1622f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(790f, var_0.x, var_0.x) * vec3<f32>(1506f, -1485f, var_0.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(566f, var_0.x, var_0.x))), any(vec4<bool>(true, false, true, true)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-683f, 1263f, var_0.x))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, -770f) - vec3<f32>(256f, -469f, var_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -678f), _wgslsmith_f_op_f32(f32(-1f) * -705f), var_0.x))) - vec3<f32>(-994f, 351f, 1205f)) * vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 1814f, all(vec3<bool>(true, false, false)) & false)), -788f, _wgslsmith_f_op_f32(max(var_0.x, 874f))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1171f)))) - var_0.x), -241f, _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x))))));
    return abs(_wgslsmith_sub_i32(-64i, -2147483647i));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    return func_3();
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(~vec2<i32>(-71377i, arg_1), (abs(min(4294967295u, 1u)) ^ arg_0.x) >> (_wgslsmith_mod_u32(arg_0.x, u_input.b.x) % 32u), u_input.c);
    var var_1 = Struct_2(select(abs(reverseBits(arg_0 ^ u_input.b.wyx)), ~u_input.e.yzw, !(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true))));
    let var_2 = Struct_2(u_input.e.xwx);
    var var_3 = Struct_1(var_0.a, 1u, ~var_0.c);
    var var_4 = min(-13173i, 1i);
    return Struct_2(vec3<u32>(18570u, _wgslsmith_sub_u32(var_0.b, ~_wgslsmith_div_u32(0u, 81114u)), 0u));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = func_4(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(u_input.d, u_input.e.x), u_input.b.x), ~select(vec3<u32>(1u, 1u, u_input.d), u_input.b.zwx, true)) << (select(~firstLeadingBit(vec3<u32>(25737u, u_input.e.x, 40955u)), select(u_input.e.wyw, vec3<u32>(u_input.e.x, u_input.e.x, u_input.b.x), vec3<bool>(true, true, false)) >> (_wgslsmith_clamp_vec3_u32(u_input.e.yzy, u_input.e.wxz, vec3<u32>(55219u, u_input.b.x, 22925u)) % vec3<u32>(32u)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))) % vec3<u32>(32u)), -2147483647i, Struct_1(arg_0, ~_wgslsmith_add_u32(u_input.b.x & u_input.b.x, 1u), vec4<i32>(~arg_0.x, ~u_input.c.x, max(func_2(u_input.e.yx, Struct_2(vec3<u32>(35066u, u_input.e.x, 0u)), Struct_3(u_input.b.x, Struct_2(vec3<u32>(42711u, 0u, 8915u)))), ~(-7697i)), 0i)));
    var var_1 = Struct_1(vec2<i32>(firstTrailingBit(select(arg_0.x, ~arg_0.x, u_input.d >= 57485u)), max(u_input.a, 4912i)), 41906u | abs(var_0.a.x), vec4<i32>(arg_0.x, 0i, -29621i, _wgslsmith_mult_i32(firstTrailingBit(~(-20926i)), -30894i)));
    let var_2 = Struct_3(reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 51934u, var_1.b), _wgslsmith_sub_vec3_u32(vec3<u32>(33889u, 1u, 0u), vec3<u32>(54628u, 2530u, var_0.a.x)), max(u_input.e.zyz, u_input.e.ywz)), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, var_1.b, 17217u), vec3<u32>(var_0.a.x, var_0.a.x, var_0.a.x)), var_0.a))), var_0);
    let var_3 = func_4(max(vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.e, u_input.b), func_4(u_input.b.yxx, ~u_input.a, Struct_1(vec2<i32>(u_input.a, arg_0.x), 49096u, vec4<i32>(arg_0.x, -6658i, arg_0.x, var_1.c.x))).a.x, ~(~var_2.b.a.x)), _wgslsmith_add_vec3_u32(~(~vec3<u32>(0u, var_2.b.a.x, 4294967295u)), u_input.e.xxw | vec3<u32>(var_2.b.a.x, var_2.a, 42794u))), _wgslsmith_add_i32(0i, u_input.c.x), Struct_1(var_1.c.wy, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 69208u, 20535u), vec3<u32>(109009u, u_input.b.x, var_1.b))), u_input.c)).a.xx;
    var_1 = Struct_1(reverseBits(~(-vec2<i32>(19841i, -2147483647i) | arg_0)), 4294967295u, u_input.c);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.c.xz);
    var var_1 = func_1(_wgslsmith_clamp_vec2_i32((vec2<i32>(u_input.c.x, 2147483647i) & (u_input.c.wy ^ u_input.c.wy)) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), countOneBits(vec2<i32>(-21273i, reverseBits(0i))), vec2<i32>(-u_input.c.x, u_input.c.x))).b;
    let var_2 = ~reverseBits(u_input.c.xz);
    var_1 = var_0.b;
    var_1 = func_1(-u_input.c.zw).b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-733f, 200f), _wgslsmith_f_op_f32(1102f - 1488f), -1276f, _wgslsmith_f_op_f32(1146f + 977f)))), select(~(~vec2<u32>(var_1.a.x, var_1.a.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_1.a.x & var_0.b.a.x), ~var_0.b.a.zz & vec2<u32>(var_0.b.a.x, var_0.b.a.x)), vec2<bool>(true, all(vec3<bool>(true, false, true)))));
}

