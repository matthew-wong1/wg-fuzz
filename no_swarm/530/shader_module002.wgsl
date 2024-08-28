struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> vec2<i32> {
    let var_0 = u_input.e;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f));
    return vec2<i32>(-1i) * -(-countOneBits(vec2<i32>(9918i, 3308i)) >> (u_input.b.yx % vec2<u32>(32u)));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = arg_0;
    let var_1 = ~u_input.b;
    return -select(_wgslsmith_mod_vec2_i32(vec2<i32>(17211i, var_0.a.x), select(~vec2<i32>(42247i, var_0.a.x), var_0.a, true)), _wgslsmith_sub_vec2_i32(~min(vec2<i32>(u_input.e, var_0.a.x), arg_0.a), arg_0.a), !(!vec2<bool>(arg_0.b, var_0.b)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = !select(!vec2<bool>(any(vec4<bool>(false, true, false, false)), any(vec4<bool>(true, false, true, false))), vec2<bool>(false, true), !vec2<bool>(false, u_input.a <= 1i));
    var_0 = !select(!select(!vec2<bool>(var_0.x, var_0.x), !vec2<bool>(false, var_0.x), !vec2<bool>(false, var_0.x)), vec2<bool>(select(true, var_0.x, all(vec2<bool>(var_0.x, false))), u_input.c < ~14471u), select(any(vec3<bool>(false, true, var_0.x)), var_0.x, true));
    let var_1 = var_0.x;
    let var_2 = Struct_1(func_3(Struct_1(func_2(), any(!vec2<bool>(var_0.x, var_0.x)))), all(!select(vec4<bool>(true, var_0.x, true, var_0.x), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, true, true)), var_0.x)));
    var var_3 = vec3<bool>(true, !var_0.x, true);
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec3<i32> {
    let var_0 = ~u_input.b;
    var var_1 = any(!select(!select(vec4<bool>(arg_0.b, true, true, false), vec4<bool>(arg_0.b, false, arg_0.b, true), vec4<bool>(arg_0.b, arg_0.b, true, arg_0.b)), select(select(vec4<bool>(arg_0.b, true, true, arg_0.b), vec4<bool>(arg_0.b, false, true, true), true), vec4<bool>(false, false, true, true), !vec4<bool>(arg_0.b, false, arg_0.b, false)), !vec4<bool>(true, false, arg_0.b, true)));
    var var_2 = arg_0;
    var var_3 = true;
    var var_4 = abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(42253u, 1u, 12271u, arg_1), vec4<u32>(4294967295u, arg_1, 22577u, 17885u)), vec4<u32>(4294967295u, arg_1, u_input.d.x, arg_1)) | ~(~7061u), ~reverseBits(30765u)));
    return ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.a.x, arg_0.a.x, i32(-1i) * -2147483647i) & _wgslsmith_div_vec3_i32(max(vec3<i32>(-2147483647i, 31994i, u_input.a), vec3<i32>(-54139i, -2147483647i, -1i)), vec3<i32>(15992i, var_2.a.x, u_input.a) & vec3<i32>(-20448i, arg_0.a.x, u_input.e)), countOneBits(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_2.a.x, 2147483647i), vec3<i32>(var_2.a.x, u_input.a, 29112i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = select(func_4(func_1(vec2<u32>(u_input.c, 0u)), max(u_input.b.x << (u_input.b.x % 32u), 62638u) ^ ~(~30009u)), firstLeadingBit(~(-(vec3<i32>(24457i, u_input.a, -30105i) ^ vec3<i32>(u_input.e, 39392i, -38503i)))), select(vec3<bool>(any(!vec4<bool>(var_0, false, var_0, true)), var_0, !var_0 | false), vec3<bool>(true, u_input.c < 1u, !var_0), func_1(u_input.b.yx).b));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(954f, -1212f, 132f, -736f))), vec4<f32>(1f, 1f, 1f, 1f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, -435f, -1548f, -1953f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2005f, 770f, 1579f, -684f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -186f), -575f, -1000f, -597f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-334f, -1326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-269f - 923f)), _wgslsmith_f_op_f32(545f + -1362f)) - vec4<f32>(225f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -506f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-684f))), -965f)));
    let var_3 = vec4<u32>(~u_input.d.x, 16553u, ~24562u, firstTrailingBit(min(~u_input.c, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.c, u_input.b.x), 1u))));
    let var_4 = var_2.x != 389f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zy, max(var_1, var_1), -(~(-vec4<i32>(0i, u_input.a, u_input.e, -2147483647i) & vec4<i32>(var_1.x, var_1.x, var_1.x, -20425i))));
}

