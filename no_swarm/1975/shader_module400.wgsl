struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = arg_1.b.a;
    let var_1 = arg_1.b.a;
    let var_2 = Struct_1(arg_1.a.a);
    var_0 = !arg_1.b.a;
    var var_3 = Struct_5(arg_1.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-684f + -2622f), _wgslsmith_div_f32(arg_2, 1575f), -925f, _wgslsmith_f_op_f32(sign(arg_2))), vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(trunc(arg_2)), _wgslsmith_div_f32(-1087f, 693f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(921f, arg_2, -214f, 1239f))))), 2147483647i, vec3<i32>(42450i, firstLeadingBit(2147483647i), u_input.b), arg_2);
    return 1u;
}

fn func_1(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.xz)));
    let var_1 = u_input.a;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, 198f);
    var var_3 = ~(~(~vec3<u32>(1u, 4294967295u, 46125u)));
    var var_4 = _wgslsmith_add_u32(var_3.x, (1u >> (u_input.c % 32u)) ^ u_input.c) != abs(reverseBits((0u << (u_input.d % 32u)) << (func_2(Struct_1(false), Struct_3(Struct_1(false), Struct_2(vec4<bool>(false, true, false, true), Struct_1(true), vec2<bool>(true, false), Struct_1(true))), var_0.x) % 32u)));
    return vec3<bool>(false, false, true);
}

fn func_3(arg_0: vec3<f32>) -> bool {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1154f, 1073f) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0.yx * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.yx)))))));
    let var_2 = Struct_3(Struct_1(u_input.b > ~(~(-29199i))), Struct_2(vec4<bool>(var_0, !any(vec3<bool>(var_0, true, var_0)), !(u_input.a.x > -40717i), any(vec3<bool>(var_0, false, true))), Struct_1(false), vec2<bool>(false, true), Struct_1(!var_0 | true)));
    let var_3 = true;
    let var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, i32(-1i) * -24877i, _wgslsmith_dot_vec2_i32(vec2<i32>(16613i, u_input.a.x), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(0i, u_input.b))), min(u_input.b, 125857i)), max(select(vec4<i32>(u_input.a.x, u_input.b ^ u_input.b, 2147483647i ^ u_input.a.x, firstLeadingBit(-1i)), vec4<i32>(2147483647i, u_input.b, u_input.a.x, -1i) | min(vec4<i32>(-2147483647i, -24192i, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.b, 43688i, u_input.b)), select(vec4<bool>(false, false, false, var_3), select(vec4<bool>(var_0, var_2.b.b.a, false, var_0), var_2.b.a, var_3), var_2.a.a)), -_wgslsmith_div_vec4_i32(min(vec4<i32>(-61776i, u_input.a.x, u_input.b, u_input.a.x), vec4<i32>(u_input.b, 1i, 0i, u_input.a.x)), -vec4<i32>(1i, u_input.a.x, -5870i, -6670i))));
    return (var_2.a.a | all(func_1(arg_0))) & var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1337f, 1822f, -311f)))), !vec3<bool>(true, select(all(vec3<bool>(false, true, false)), true, true), true), true);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-621f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-929f - -1000f), -434f)), -41673i < u_input.b))));
    var_0 = vec3<bool>(!var_0.x, func_3(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(429f, 1303f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -640f))))), !any(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, false))));
    var var_2 = u_input.a.x > _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec4_i32(select(vec4<i32>(-4925i, u_input.a.x, u_input.a.x, 0i), vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, -2147483647i), vec4<bool>(var_0.x, var_0.x, true, false)), -vec4<i32>(-2147483647i, u_input.a.x, u_input.b, 2147483647i)) >> (1u % 32u));
    var_0 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(944f))));
    let var_3 = Struct_1(false);
    let var_4 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(-11879i, -25135i, u_input.a.x, u_input.a.x), vec4<i32>(56089i, -1i, u_input.b, u_input.b)) | ~vec4<i32>(u_input.a.x, u_input.b, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -1i, -79754i, u_input.a.x), vec4<i32>(u_input.b, 1i, 12862i, u_input.b))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.b)), -(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 16878i) & vec4<i32>(u_input.b, -2147483647i, 57927i, u_input.a.x))));
    var_2 = true;
    let var_5 = u_input.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, u_input.c, 81744u, u_input.c), ~vec4<u32>(0u, 59533u, 0u, 4294967295u)), firstTrailingBit(~_wgslsmith_mult_u32(u_input.d, 23651u)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(23489u, 35985u, 19544u, u_input.d)), ~(~vec4<u32>(4294967295u, 12972u, u_input.c, 4294967295u))), ~1u));
}

