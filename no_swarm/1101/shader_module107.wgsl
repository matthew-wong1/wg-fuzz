struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<i32>) -> i32 {
    return 1i;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = Struct_5(select(vec2<i32>(2147483647i, _wgslsmith_mult_i32(-7849i, _wgslsmith_mult_i32(22190i, 0i))), vec2<i32>(_wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 3964i, -32118i), vec3<i32>(-2147483647i, -1i, 2147483647i)), 1i), -countOneBits(52947i)), true));
    var_0 = Struct_5(vec2<i32>(max(func_3(select(vec2<bool>(false, true), vec2<bool>(false, true), true), abs(vec4<i32>(0i, -32148i, var_0.a.x, var_0.a.x))), _wgslsmith_clamp_i32(-2147483647i, 1i >> (u_input.a.x % 32u), var_0.a.x)), -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.a.x, 23329i), vec3<i32>(-1i, 1i, -26504i)), -21428i)));
    var_0 = Struct_5(_wgslsmith_mult_vec2_i32(-(var_0.a & -var_0.a), var_0.a));
    let var_1 = Struct_1(min(u_input.c.wx, max(countOneBits(_wgslsmith_sub_vec2_u32(u_input.c.xz, u_input.a.xz)), u_input.c.zy)), -2147483647i);
    var var_2 = _wgslsmith_mod_u32(~u_input.a.x, ~1u >> (var_1.a.x % 32u));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x);
}

fn func_1(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = Struct_2(true & all(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), all(vec3<bool>(arg_0, false, arg_0)))), ~0u);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1327f, -982f, -198f))))))), -1489f, 2230f);
    var var_2 = vec2<f32>(205f, 783f);
    let var_3 = Struct_4(1482i, select(firstTrailingBit(firstTrailingBit(71698u)), _wgslsmith_dot_vec3_u32(u_input.a.zwy, u_input.c.yxw), all(!vec2<bool>(var_0.a, true))) >= ~0u, func_3(select(!(!vec2<bool>(var_0.a, arg_0)), vec2<bool>(false | var_0.a, false), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, arg_0), true), vec2<bool>(arg_0, true))), select(vec4<i32>(2147483647i, 2147483647i, 64502i, 6161i), select(vec4<i32>(-64589i, 0i, -1i, 2147483647i), vec4<i32>(1i, -2147483647i, 1i, 1i), false), !vec4<bool>(false, arg_0, var_0.a, false)) | (vec4<i32>(-1i) * -vec4<i32>(14314i, 39241i, 2147483647i, -29693i))));
    let var_4 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1061f))))))));
    return -7044i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(abs(u_input.c.wwx), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.a), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_clamp_u32(49995u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 6213u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, u_input.c.x), vec4<u32>(3652u, 23408u, 2074u, u_input.c.x))), 1u));
    var_0 = u_input.c.wxy;
    var_0 = select(u_input.a.wzy, u_input.c.yxy, true);
    let var_1 = Struct_3(false, vec3<f32>(_wgslsmith_f_op_f32(sign(1f)), -536f, -884f), -vec3<i32>(1i, _wgslsmith_mod_i32(-2147483647i, func_1(false, 32738u)), -9598i), ~vec2<i32>(abs(~(-1i)), reverseBits(abs(16771i))), countOneBits(reverseBits(~(~(-16376i)))));
    var_0 = u_input.c.yzx;
    let var_2 = -1998f;
    let var_3 = Struct_5(~vec2<i32>(var_1.c.x, _wgslsmith_mod_i32(~var_1.e, -15749i >> (u_input.a.x % 32u))));
    var_0 = ~(~u_input.c.wxz);
    var_0 = u_input.c.xzy;
    let x = u_input.a;
    s_output = StorageBuffer(~12389u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-511f)))))));
}

