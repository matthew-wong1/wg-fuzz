struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = ~0u;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-515f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1153f * _wgslsmith_div_f32(1562f, 841f))), -1000f)));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b))), 455f, true))), -978f);
    var_1 = Struct_2(var_1.a, -355f);
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a))), _wgslsmith_f_op_f32(-282f * 1000f)), Struct_2(Struct_1(var_1.b), _wgslsmith_f_op_f32(var_1.b - -900f)), -1007f, firstTrailingBit(u_input.a.xx));
    return var_2.d.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> vec4<u32> {
    let var_0 = min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(0u, 4294967295u, u_input.a.x, 30330u))), vec4<u32>(1u, func_3(), func_3(), _wgslsmith_div_u32(u_input.a.x, u_input.a.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(67443u, u_input.a.x) << (abs(u_input.a.x) % 32u), ~abs(u_input.a.x))), countOneBits(4294967295u));
    var var_1 = vec3<i32>(30240i << (1u % 32u), _wgslsmith_mod_i32(_wgslsmith_add_i32(countOneBits(30417i), 29722i), 1i), abs(-17532i)) & vec3<i32>(countOneBits(min(abs(0i), _wgslsmith_mult_i32(-2147483647i, 1i))), _wgslsmith_add_i32(_wgslsmith_div_i32(~(-1i), _wgslsmith_clamp_i32(0i, 2147483647i, -13658i)), 9633i), ~(-1i));
    let var_2 = 762f;
    var var_3 = arg_0.xxz;
    let var_4 = -1000f;
    return ~vec4<u32>(_wgslsmith_clamp_u32(35609u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(59332u, var_0), _wgslsmith_mod_u32(44766u, var_0)), 22494u), var_0, ~var_0, var_0);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(arg_0, arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1058f) * -133f))), u_input.a.yy);
    let var_1 = 1000f;
    let var_2 = _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(select(1u, u_input.a.x, false), _wgslsmith_dot_vec2_u32(vec2<u32>(72118u, 42801u), var_0.d), 1u, 4294967295u)), ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u))), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 1u), var_0.d.x, 1u)), (vec4<u32>(var_0.d.x, var_0.d.x, abs(0u), _wgslsmith_div_u32(1u, 6289u)) | ~func_2(vec4<bool>(true, true, false, true), arg_0.a, Struct_1(-430f), vec3<f32>(-1189f, var_1, 1353f))) | ~vec4<u32>(var_0.d.x, u_input.a.x, ~0u, countOneBits(var_0.d.x)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(-1262f - _wgslsmith_div_f32(-1135f, -147f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(var_0.b.b, 511f)))) - var_0.a.a.a)), -379f);
    var var_4 = abs(21091i);
    return Struct_1(-804f);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3) -> vec2<f32> {
    var var_0 = 256f;
    let var_1 = firstTrailingBit(1i);
    var var_2 = Struct_3(arg_2.a, Struct_2(func_1(arg_2.b), -573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1258f)) + -405f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-809f)))), arg_2.d);
    var_2 = Struct_3(Struct_2(var_2.a.a, 2023f), var_2.b, _wgslsmith_f_op_f32(var_2.a.a.a - _wgslsmith_f_op_f32(floor(-1455f))), var_2.d);
    var_2 = Struct_3(arg_2.a, arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.b))), u_input.a.yx);
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, arg_2.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(true, func_1(Struct_2(Struct_1(1000f), -1391f)), Struct_3(Struct_2(Struct_1(-178f), -2213f), Struct_2(Struct_1(1557f), -669f), _wgslsmith_f_op_f32(f32(-1f) * -973f), _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(66937u, u_input.a.x), u_input.a.yy)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_div_f32(1443f, 1f)))));
    let var_1 = -1i << (u_input.a.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, vec4<i32>(0i, reverseBits(-1045i), -var_1, var_1), select(_wgslsmith_add_vec2_u32(vec2<u32>(8221u, 36052u), select(u_input.a.yz, u_input.a.xx, vec2<bool>(false, false))), u_input.a.zy & vec2<u32>(1u, _wgslsmith_add_u32(18135u, 0u)), vec2<bool>(true, true)), _wgslsmith_mult_i32(-2147483647i, -396i | -var_1), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~var_1, var_1), _wgslsmith_div_i32(_wgslsmith_sub_i32(6983i, 16641i), var_1), 0i), var_1));
}

