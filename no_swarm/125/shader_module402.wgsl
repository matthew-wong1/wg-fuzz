struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> i32 {
    global1 = Struct_2(select(~(-(~arg_0)), global1.a, ~firstTrailingBit(global1.b) >= arg_1), _wgslsmith_mod_u32(~(~arg_1), ~0u >> (arg_1 % 32u)), global1.c);
    global1 = Struct_2(~arg_0, abs(_wgslsmith_sub_u32(~global1.b, 0u)), Struct_1(!global1.c.a && (false && global1.c.a)));
    global0 = global1.c;
    var var_0 = u_input.b;
    global0 = global1.c;
    return ~(~u_input.c);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global1.c.a);
    let var_1 = vec4<i32>(-2147483647i, ~_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(global1.a, global1.a, global1.a), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -3695i), vec3<i32>(global1.a.x, 0i, 7887i)))), func_3(global1.a, 4294967295u), global1.a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-495f, -632f)))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(469f + 504f))));
    var var_3 = Struct_2(_wgslsmith_sub_vec3_i32(countOneBits(-(~global1.a)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, 1i, i32(-1i) * -2147483647i), global1.a)), abs(1u | u_input.a), var_0);
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -137f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-960f)) * -327f)))));
    return var_3.c;
}

fn func_4(arg_0: Struct_1) -> f32 {
    var var_0 = ~select(global1.a.xz, vec2<i32>(1i, 1i), select(!vec2<bool>(arg_0.a, true), vec2<bool>(false, true), vec2<bool>(true, true))) ^ global1.a.yy;
    let var_1 = ~_wgslsmith_clamp_u32(reverseBits(firstLeadingBit(4294967295u)), 1u, u_input.a) >> (abs(countOneBits(~(~17431u))) % 32u);
    let var_2 = _wgslsmith_div_u32(1u >> (u_input.a % 32u), countOneBits(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 24520u, var_1)), ~(vec3<u32>(6957u, 42821u, 4294967295u) >> (vec3<u32>(101406u, var_1, global1.b) % vec3<u32>(32u))))));
    var var_3 = func_2();
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(1223f, 872f)), _wgslsmith_f_op_f32(min(1330f, 2064f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-299f, 1393f) + vec2<f32>(377f, 207f)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -300f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 324f) + _wgslsmith_f_op_f32(1439f + 841f))))));
    return 1740f;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(-arg_0) ^ u_input.c, ~(reverseBits(arg_0) & (global1.a.x << (global1.b % 32u)))), vec2<i32>(~(~(-arg_0)), ~(~(-arg_0))), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(global1.a.x, -2147483647i), u_input.b), ~23437i));
    global1 = Struct_2(vec3<i32>(1i, -2147483647i, _wgslsmith_dot_vec2_i32(var_0, _wgslsmith_add_vec2_i32(global1.a.yy, global1.a.zx))), ~abs(50564u), arg_1);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_2())))) + _wgslsmith_f_op_f32(func_4(func_2())));
    let var_3 = arg_1;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    var var_1 = vec3<u32>(43474u ^ ~_wgslsmith_mod_u32(u_input.a & u_input.a, u_input.a >> (global1.b % 32u)), abs(~u_input.a), _wgslsmith_mult_u32(4294967295u, 1u));
    var var_2 = Struct_2(abs(global1.a), countOneBits(func_1(max(-11870i, u_input.c & 2147483647i), global1.c)), Struct_1((global1.a.x | global1.a.x) >= reverseBits(-global1.a.x)));
    global0 = var_2.c;
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b, 0u), var_1.xy), _wgslsmith_dot_vec2_u32(~(var_1.yy | vec2<u32>(var_2.b, var_2.b)), vec2<u32>(~0u, 1u))), firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global1.b, global1.b), global1.b) & ~1u), abs(~(~1u)));
    let var_4 = ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b, _wgslsmith_add_u32(4294967295u, var_3.x), 1u), min(vec3<u32>(~var_2.b, _wgslsmith_clamp_u32(1u, 1u, global1.b), max(global1.b, var_2.b)), min(vec3<u32>(u_input.a, 15236u, 0u) >> (vec3<u32>(u_input.a, var_1.x, u_input.a) % vec3<u32>(32u)), ~vec3<u32>(var_1.x, u_input.a, var_2.b))));
    let var_5 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 24734u, global1.b, 1u) & vec4<u32>(0u, var_2.b, var_3.x, 63142u), ~vec4<u32>(var_2.b, 93871u, var_4.x, var_4.x)) | ~(~vec4<u32>(0u, 1u, u_input.a, var_3.x))) | (~(~vec4<u32>(var_2.b, var_2.b, u_input.a, global1.b)) >> (reverseBits(min(vec4<u32>(0u, global1.b, 1u, 5998u), vec4<u32>(u_input.a, u_input.a, 31211u, var_2.b))) % vec4<u32>(32u))), ~4294967295u, ~(-46484i), -493f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_2()))))));
}

