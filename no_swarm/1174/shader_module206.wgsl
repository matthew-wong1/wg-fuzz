struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(762f)));
    var var_1 = arg_1;
    var_1 = Struct_3(all(vec2<bool>(true, true)));
    var_1 = Struct_3(select(true && all(select(vec2<bool>(false, arg_1.a), vec2<bool>(true, arg_1.a), vec2<bool>(var_1.a, false))), any(select(select(vec2<bool>(false, var_1.a), vec2<bool>(true, var_1.a), false), select(vec2<bool>(var_1.a, var_1.a), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(var_1.a, arg_1.a)), !var_1.a)), false));
    var var_2 = -_wgslsmith_mod_i32(1i, ~(~min(-2147483647i, -17293i)));
    return any(!vec4<bool>(!select(false, true, false), ~arg_0 <= _wgslsmith_div_u32(76071u, arg_0), (false || arg_1.a) || any(vec3<bool>(var_1.a, var_1.a, false)), any(vec3<bool>(arg_1.a, true, arg_1.a)) & any(vec4<bool>(true, var_1.a, true, arg_1.a))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    var var_0 = false;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-691f, -543f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-497f, -377f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(464f, 2174f) + vec2<f32>(1221f, -1101f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_f_op_f32(-762f + 1504f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, -1060f))))));
    let var_2 = Struct_2(21193u);
    var_0 = all(select(vec2<bool>(true, func_3(countOneBits(1u), Struct_3(false), ~vec3<u32>(0u, 4294967295u, var_2.a))), vec2<bool>(false, ~var_2.a > ~arg_0), vec2<bool>(true != (16801i <= u_input.c.x), true)));
    var_0 = u_input.b == var_2.a;
    return ~var_2.a;
}

fn func_1() -> u32 {
    var var_0 = vec2<u32>(u_input.b, 0u);
    var var_1 = _wgslsmith_mult_vec4_i32(((select(vec4<i32>(0i, -1i, 12786i, 9494i), vec4<i32>(u_input.a, u_input.a, 29480i, u_input.a), false) ^ select(vec4<i32>(1673i, 54659i, 1i, -50226i), vec4<i32>(u_input.a, -17304i, u_input.a, -26314i), vec4<bool>(false, false, false, false))) ^ (vec4<i32>(-1i, u_input.a, u_input.c.x, 0i) | abs(vec4<i32>(u_input.c.x, 0i, u_input.c.x, -10674i)))) << ((max(vec4<u32>(u_input.b, var_0.x, var_0.x, 1u), ~vec4<u32>(u_input.b, 1u, var_0.x, u_input.b)) << (vec4<u32>(func_2(4294967295u, vec2<i32>(u_input.c.x, 61531i)), func_2(4294967295u, u_input.c), ~var_0.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-_wgslsmith_mult_i32(~u_input.a, 1i), -(~u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a), ~(firstTrailingBit(u_input.a) & u_input.c.x)));
    var_1 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(97994i, 1716i, 2147483647i, 0i), vec4<i32>(-23011i, var_1.x, var_1.x, -21031i), select(vec4<i32>(var_1.x, 20744i, -6670i, u_input.a), vec4<i32>(var_1.x, 22729i, -1i, var_1.x), false)), vec4<i32>(var_1.x, u_input.c.x, -var_1.x, u_input.a)), ~(select(vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, u_input.a), vec4<i32>(u_input.c.x, u_input.a, var_1.x, u_input.c.x), true) | -vec4<i32>(-10698i, 1i, var_1.x, -7161i)), vec4<i32>(i32(-1i) * -u_input.a, var_1.x, reverseBits(~27899i), max(_wgslsmith_clamp_i32(u_input.a, var_1.x, -2048i), 1i)));
    var_1 = -vec4<i32>(var_1.x << (firstLeadingBit(~u_input.b) % 32u), firstLeadingBit(-_wgslsmith_mult_i32(var_1.x, 51460i)), u_input.c.x, firstLeadingBit(i32(-1i) * -2147483647i));
    var var_2 = 14366u;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)))), vec4<bool>(true, true, true, true), false);
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.a, u_input.a), 0i);
    let var_2 = Struct_2(u_input.b);
    var var_3 = Struct_1(any(select(!vec3<bool>(var_0.x, false, var_0.x), !(!vec3<bool>(false, false, var_0.x)), !vec3<bool>(var_0.x, false, var_0.x))), firstTrailingBit(vec2<u32>(func_1(), var_2.a)), vec3<i32>(abs(u_input.c.x), (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.a, -23923i, u_input.a), vec4<i32>(15397i, -44709i, 2147483647i, u_input.c.x)) | ~(-29429i)) << (_wgslsmith_mod_u32(firstLeadingBit(1u), _wgslsmith_mod_u32(u_input.b, 42611u)) % 32u), max(select(-1i, 0i, any(var_0)), u_input.a)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1369f)))), vec2<f32>(746f, -2161f))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~vec2<u32>(1u, 114883u));
}

