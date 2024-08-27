struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> i32 {
    return _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 42748i, -39843i), vec3<i32>(2147483647i, 3588i, 6667i)), max(vec3<i32>(1i, 5293i, 5213i), vec3<i32>(0i, 0i, 2147483647i))), abs(max(vec3<i32>(4112i, 21506i, 6568i), vec3<i32>(2147483647i, -2147483647i, -2147483647i)))), vec3<i32>(-23265i, 2147483647i, _wgslsmith_div_i32(2147483647i >> (_wgslsmith_clamp_u32(31429u, 0u, u_input.b) % 32u), min(i32(-1i) * -32264i, -51144i))));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> i32 {
    let var_0 = -368f;
    var var_1 = ((-_wgslsmith_add_i32(-2147483647i, 1i) >> (arg_0 % 32u)) & max(1i, select(_wgslsmith_mod_i32(0i, -2147483647i), ~56291i, all(vec3<bool>(true, false, false))))) ^ ((func_3() & min(79822i, _wgslsmith_div_i32(26893i, 26616i))) & 1850i);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))) - var_0), -2394f);
    global0 = countOneBits(~(-2147483647i));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), 752f, _wgslsmith_f_op_f32(-470f - var_2.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(arg_1 - arg_1))))) * vec3<f32>(var_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-863f + arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1718f)) * _wgslsmith_div_f32(var_2.x, -2011f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))));
    return 1i;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(func_2(80144u, vec3<f32>(1f, 1f, 1f)));
    return Struct_3(Struct_1(var_0.a), 1132f, false, Struct_1(~(~var_0.a)), -5585i);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3) -> bool {
    var var_0 = ~countOneBits(~abs(vec3<u32>(u_input.a.x, 1u, u_input.b)) ^ vec3<u32>(1u, 30793u ^ u_input.a.x, 1u));
    var_0 = firstLeadingBit(vec3<u32>(~(~var_0.x), u_input.a.x, (reverseBits(var_0.x) ^ select(1u, 35640u, false)) >> (var_0.x % 32u)));
    let var_1 = Struct_3(func_1().d, 913f, arg_1.c, func_1().d, arg_1.a.a);
    let var_2 = vec2<bool>(!all(select(select(vec3<bool>(false, arg_1.c, arg_1.c), vec3<bool>(var_1.c, var_1.c, arg_1.c), vec3<bool>(false, var_1.c, true)), select(vec3<bool>(true, false, arg_1.c), vec3<bool>(arg_1.c, var_1.c, var_1.c), vec3<bool>(arg_1.c, var_1.c, false)), true)), (u_input.a.x | 1u) <= ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 1u), vec2<u32>(var_0.x, var_0.x)), firstTrailingBit(vec2<u32>(u_input.a.x, 15755u))));
    var var_3 = Struct_4(Struct_3(arg_1.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * -1218f))), var_2.x, Struct_1(-1970i), var_1.d.a), _wgslsmith_f_op_vec2_f32(min(arg_0, arg_0)), countOneBits(35828u), Struct_2(-936f, any(select(vec4<bool>(arg_1.c, var_1.c, true, var_2.x), !vec4<bool>(var_2.x, false, false, arg_1.c), select(vec4<bool>(var_1.c, false, var_1.c, true), vec4<bool>(false, var_2.x, var_2.x, true), vec4<bool>(true, var_2.x, var_1.c, true)))), u_input.b << (~_wgslsmith_div_u32(23246u, u_input.b) % 32u), func_1().d));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(!all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), !func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(1462f, -418f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1984f, 372f) + vec2<f32>(1207f, -384f))), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(-282f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(609f, 366f) * _wgslsmith_f_op_f32(ceil(454f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-148f, 144f) * _wgslsmith_f_op_f32(sign(684f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-203f, 1253f, -2012f) + vec3<f32>(-1000f, 1391f, 1441f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1026f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1509f)) * 1f)), 715f), u_input.a, _wgslsmith_mod_vec2_u32(~(~(~vec2<u32>(0u, 46175u))), ~u_input.a));
}

