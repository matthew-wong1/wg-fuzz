struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = Struct_1(vec4<u32>(5818u, _wgslsmith_mod_u32(reverseBits(1u), 1u), ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(66662u, 4294967295u)), ~vec2<u32>(1u, 42510u)), ~(~(~4294967295u))), all(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1423f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-988f)))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-358f * 2030f), _wgslsmith_f_op_f32(f32(-1f) * -497f))))));
    let var_2 = countOneBits(min(var_0.a.zw, var_0.a.wx));
    let var_3 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.a, var_0.a) | select(var_0.a.x, var_2.x, true), abs(var_2.x), var_0.a.x, var_2.x), any(!vec2<bool>(var_0.b, true))), _wgslsmith_mod_i32(reverseBits(~arg_0.x), -(~select(2147483647i, u_input.c, false))));
    let var_4 = !(!(!(!vec4<bool>(var_3.a.b, var_3.a.b, var_0.b, var_3.a.b))));
    return firstLeadingBit(0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(max(vec4<u32>(~48824u, _wgslsmith_clamp_u32(25714u, 48617u, 1u), 95850u, ~69674u), ~vec4<u32>(61572u, 73164u, 14951u, 40845u)), all(vec2<bool>(true, true)) & true), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.c, 39337i), vec3<i32>(u_input.a.x, u_input.c, u_input.a.x)), u_input.a.yyx) & 1i);
    var var_1 = var_0.a.a.x;
    let var_2 = true;
    var_0 = Struct_2(Struct_1(var_0.a.a, false), select(0i, var_0.b, !(!(var_0.b >= u_input.b))));
    var_1 = ~func_3(vec2<i32>(1i, -50638i) >> (var_0.a.a.zz % vec2<u32>(32u)));
    return var_0.a.a;
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = ~(-u_input.c);
    var var_1 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(min(0u, 1u), firstTrailingBit(0u)), _wgslsmith_dot_vec4_u32(func_2(vec3<f32>(749f, -1500f, 1351f), 943f), ~vec4<u32>(4294967295u, 35768u, 32387u, 1u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 28742u, 4294967295u), vec3<u32>(99055u, 63850u, 42293u)), ~1u) & countOneBits(vec4<u32>(countOneBits(1u), select(55247u, 4294967295u, false), _wgslsmith_mod_u32(65463u, 1u), 5951u)), !(!select(false, true, false) & true));
    var var_2 = Struct_2(Struct_1(var_1.a, !(!any(vec3<bool>(var_1.b, false, false)))), ~_wgslsmith_mult_i32(reverseBits(1i), u_input.b));
    let var_3 = Struct_2(var_2.a, select(~u_input.a.x, -var_2.b, true));
    let var_4 = _wgslsmith_mod_vec2_i32(u_input.a.wy, u_input.a.xx);
    return ~20333i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -17101i, -1i), ~countOneBits(~vec2<i32>(u_input.c, u_input.a.x))), vec2<i32>(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(u_input.a.x, -u_input.a.x)), _wgslsmith_sub_i32(func_1(-17246i >> (0u % 32u)), i32(-1i) * -1i)));
    var_0 = u_input.a.yz;
    var_0 = vec2<i32>(-4906i, 74071i);
    var var_1 = select(vec2<u32>(~(~_wgslsmith_mod_u32(54225u, 46285u)), func_3(select(~vec2<i32>(5972i, u_input.b), vec2<i32>(13723i, u_input.c) ^ u_input.a.yz, vec2<bool>(true, true)))), ~vec2<u32>(~1u, 1u), !select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_2 = abs(vec3<i32>(~abs(-var_0.x), u_input.a.x, -2147483647i));
    var var_3 = Struct_1(abs(~vec4<u32>(var_1.x, 0u, 4294967295u, var_1.x) & ~(vec4<u32>(4294967295u, 0u, 1u, 10085u) | vec4<u32>(35330u, var_1.x, var_1.x, var_1.x))), all(!vec3<bool>(var_1.x <= var_1.x, false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(-var_2, ~_wgslsmith_add_vec3_i32(u_input.a.yyy, _wgslsmith_mod_vec3_i32(u_input.a.zxw, u_input.a.www))), func_3(u_input.a.xw));
}

