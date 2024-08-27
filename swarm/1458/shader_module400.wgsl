struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: bool) -> vec2<i32> {
    let var_0 = 0i;
    return ~vec2<i32>(var_0, var_0);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = false;
    let var_1 = arg_1.yx;
    return select(!vec4<bool>(true, !any(vec3<bool>(true, var_0, true)), var_0 || (true != var_0), true), vec4<bool>(true, ~arg_2.x <= _wgslsmith_div_u32(u_input.a.x, 51901u & u_input.b.x), false, var_0 != var_0), select(!vec4<bool>(true, any(vec2<bool>(var_0, var_0)), any(vec2<bool>(false, var_0)), true), select(select(vec4<bool>(var_0, var_0, var_0, false), select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, true), var_0), var_0), vec4<bool>(all(vec4<bool>(true, true, true, var_0)), true, true, var_0), select(!vec4<bool>(var_0, var_0, true, true), vec4<bool>(false, var_0, var_0, false), false)), vec4<bool>(true, all(select(vec3<bool>(true, var_0, false), vec3<bool>(true, var_0, var_0), var_0)), true, select(-14577i < arg_0.x, true, true))));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32) -> vec3<u32> {
    let var_0 = select(func_3(~(~vec2<i32>(2147483647i, 39198i)) | select(_wgslsmith_sub_vec2_i32(vec2<i32>(17952i, 0i), vec2<i32>(18624i, 1i)), vec2<i32>(1i, 1i), !vec2<bool>(arg_1.x, true)), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(455f, arg_0.x)))), _wgslsmith_f_op_f32(max(-488f, arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_f_op_f32(f32(-1f) * -978f)), -483f), vec2<u32>(1u, 10565u)), select(arg_1, arg_1, func_3(vec2<i32>(58636i, _wgslsmith_mult_i32(1i, 2147483647i)), vec4<f32>(arg_2, _wgslsmith_f_op_f32(arg_0.x + arg_2), _wgslsmith_f_op_f32(trunc(arg_0.x)), _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_mult_vec2_u32(~vec2<u32>(59993u, 16908u), u_input.b.yw ^ u_input.b.wy)).x), arg_1.x);
    let var_1 = -firstTrailingBit(-vec4<i32>(1i, 3165i, max(0i, 35707i), 1i));
    return vec3<u32>(firstTrailingBit(u_input.b.x), reverseBits(~u_input.b.x), _wgslsmith_dot_vec2_u32(abs(u_input.b.yx), vec2<u32>(u_input.a.x, u_input.b.x)) & u_input.b.x) ^ reverseBits(u_input.b.zxw);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> vec3<u32> {
    var var_0 = false;
    var var_1 = -912f;
    let var_2 = u_input.b.x;
    let var_3 = Struct_1(vec2<f32>(760f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(707f, -726f, false)) - _wgslsmith_f_op_f32(round(-863f))) * -703f)), 964u);
    var var_4 = Struct_3(var_3);
    return min(func_4(var_4.a.a, select(select(vec4<bool>(true, true, true, true), func_3(arg_1.xz, vec4<f32>(var_3.a.x, -614f, -858f, 274f), vec2<u32>(u_input.a.x, 4294967295u)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, any(vec2<bool>(false, false)), true), any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 35277u ^ ~var_4.a.b, 4294967295u << (arg_0 % 32u)), vec3<u32>(var_4.a.b, _wgslsmith_div_u32(var_3.b ^ 7779u, ~4294967295u), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(77997i, countOneBits(-_wgslsmith_add_i32(34094i, -2147483647i)), 0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-28879i, 0i, 0i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-3292i, -35418i, -39091i, 6194i), vec4<i32>(27072i, 49049i, 43418i, 0i))), _wgslsmith_dot_vec2_i32(func_1(Struct_3(Struct_1(vec2<f32>(-1297f, -1178f), 16332u)), false, any(vec2<bool>(false, true))), vec2<i32>(_wgslsmith_mult_i32(-38001i, -11428i), ~(-31400i)))), _wgslsmith_add_vec3_u32(min(_wgslsmith_div_vec3_u32(countOneBits(u_input.a.xzx), _wgslsmith_clamp_vec3_u32(u_input.a.zyz, u_input.a.zwy, vec3<u32>(14432u, 0u, u_input.b.x))), vec3<u32>(~u_input.a.x, 4294967295u, ~u_input.b.x)), select(func_2(34333u, vec3<i32>(1i, 1i, -1i)) & u_input.b.zyz, _wgslsmith_mod_vec3_u32(func_2(4294967295u, vec3<i32>(17195i, 2147483647i, 0i)), ~vec3<u32>(26873u, u_input.a.x, 9417u)), true)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i) & vec3<i32>(countOneBits(-5550i), 25943i >> (u_input.a.x % 32u), max(13125i, -1i)), vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 0i)), -1000f);
}

