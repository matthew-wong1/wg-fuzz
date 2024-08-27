struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(38283u, 18062u, 117953u, 0u, 0u, 42256u, 1u, 4294967295u, 1u, 24503u, 114642u, 0u, 0u, 29133u, 20692u, 4294967295u, 21206u, 4294967295u, 24248u, 0u, 11791u, 1u, 1u, 0u, 4294967295u, 4294967295u, 45390u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = vec2<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, 22765u), 27u)], 27u)], ~_wgslsmith_add_u32(0u, 4294967295u)) < countOneBits(4294967295u));
    let var_1 = Struct_2(arg_1, ~u_input.c.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, ~1u), 27u)], abs(u_input.a) ^ 59107u), var_0.x, arg_1);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-877f, 359f, -2203f, 1000f))))) - vec4<f32>(-272f, _wgslsmith_div_f32(-668f, -1610f), -879f, -584f)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -640f), 1479f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -326f)))));
    global0 = array<u32, 27>();
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(480f - var_2.x), var_2.x))), 918f, 1591f)));
    return var_0.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> u32 {
    global0 = array<u32, 27>();
    let var_0 = vec3<bool>(true, any(vec4<bool>(true, any(vec3<bool>(false, false, false)), func_3(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), Struct_1(arg_2, arg_3.x), 1i), true)), select(true, true, any(vec4<bool>(true, true, true, true))));
    global0 = array<u32, 27>();
    let var_1 = Struct_2(arg_1, u_input.c.x, 0u, any(var_0), Struct_1(arg_1.b, _wgslsmith_mod_i32(-33900i ^ reverseBits(u_input.c.x), 1i)));
    global0 = array<u32, 27>();
    return global0[_wgslsmith_index_u32(~(~u_input.b.x) & 4294967295u, 27u)];
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    global0 = array<u32, 27>();
    var var_0 = Struct_2(Struct_1(i32(-1i) * -u_input.c.x, max(2147483647i, arg_0) << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.yz), max(global0[_wgslsmith_index_u32(31913u, 27u)], 8133u)) % 32u)), arg_0, ~_wgslsmith_div_u32(1u & max(6720u, arg_3), 1u), select(true, func_3(abs(~u_input.b), Struct_1(arg_0, 1i), 887i), false), Struct_1(~u_input.c.x, u_input.c.x));
    var_0 = Struct_2(var_0.a, select(max(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 25828i, -1i), vec3<i32>(var_0.a.b, 41327i, var_0.b)), 1i) | u_input.c.x, 2147483647i, func_3(u_input.b, var_0.e, var_0.b)), min(select(_wgslsmith_mult_u32(arg_3, min(18812u, 63538u)), ~_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.zy), true), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c, arg_1, global0[_wgslsmith_index_u32(615u, 27u)], 1u) & vec4<u32>(2902u, 105917u, var_0.c, 751u), ~vec4<u32>(0u, arg_3, 1u, 4294967295u))), true, Struct_1(2147483647i, _wgslsmith_add_i32(arg_0, firstLeadingBit(~var_0.e.b))));
    var var_1 = arg_0;
    return var_0.e;
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 27>();
    global0 = array<u32, 27>();
    return func_4(30665i, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a, u_input.b.x, 1u, 0u)), vec4<u32>(_wgslsmith_mod_u32(reverseBits(0u), 8941u), 4294967295u, 38378u, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-566f, -315f, 1000f, -1880f) + vec4<f32>(1094f, -1398f, -957f, 1000f)), Struct_1(-2147483647i, u_input.c.x), 74146i, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x >> (u_input.b.x % 32u), 0u), select(u_input.b.yy, vec2<u32>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(26150u, 27u)]), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), ~((u_input.b.xx & vec2<u32>(0u, u_input.a)) | u_input.b.zy)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_2 {
    return Struct_2(func_4(_wgslsmith_clamp_i32(~2147483647i, _wgslsmith_mult_i32(arg_0.a, _wgslsmith_div_i32(u_input.c.x, -23952i)), u_input.c.x), 12455u, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1839f * -1000f), _wgslsmith_f_op_f32(-arg_2), arg_2, -634f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-225f, arg_2, arg_2, -297f) * vec4<f32>(-546f, arg_2, arg_2, 715f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1393f, -927f, arg_2, arg_2))), vec4<bool>(true, arg_1, !arg_1, true))), 1u), ~(~(-2147483647i)), countOneBits(u_input.b.x << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, countOneBits(37608u)), 27u)], 27u)] % 32u)), select(select(arg_1, arg_1, arg_1), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1000f)))) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(f32(-1f) * -1223f))), 1i <= _wgslsmith_add_i32(u_input.c.x & arg_0.a, _wgslsmith_add_i32(arg_0.b, 35743i))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = countOneBits(vec3<i32>(-u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_div_i32(u_input.c.x, -29010i), -10102i), 1i));
    var var_2 = func_5(func_1(), true, -652f);
    let var_3 = 0i ^ func_5(Struct_1(var_2.e.b, 1i), !(!(-30872i >= var_2.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2290f)))).b;
    let var_4 = _wgslsmith_f_op_f32(-358f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1000f, -227f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f)), 1000f))));
    let var_5 = select(~select(u_input.b.xy, vec2<u32>(firstLeadingBit(19527u), ~global0[_wgslsmith_index_u32(92467u, 27u)]), true), u_input.b.zz, !vec2<bool>(func_3(u_input.b, Struct_1(var_1.x, -1i), var_1.x), true));
    let var_6 = Struct_2(var_2.e, -37521i, _wgslsmith_mult_u32(max(var_2.c, countOneBits(u_input.b.x)), _wgslsmith_dot_vec3_u32(~u_input.b, u_input.b)), false, Struct_1(-(-var_1.x ^ ~2147483647i), 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), abs(var_6.e.a));
}

