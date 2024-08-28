struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec4<f32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec4<bool>) -> u32 {
    let var_0 = any(select(vec2<bool>(true, true), select(!select(vec2<bool>(true, arg_0.b.x), arg_0.b.xy, vec2<bool>(arg_2.x, false)), arg_0.b.yy, vec2<bool>(all(vec4<bool>(false, arg_0.b.x, true, false)), true)), arg_2.wz));
    let var_1 = arg_0;
    return abs(~var_1.d.x);
}

fn func_2(arg_0: bool, arg_1: bool) -> Struct_4 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 1749f)) + 1902f), !(!vec4<bool>(true, arg_0, arg_0, true)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-886f)), _wgslsmith_f_op_f32(trunc(-2156f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(636f, 963f) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(268f, -413f), vec2<f32>(1227f, 499f), vec2<bool>(arg_0, arg_0))))), vec4<u32>(~func_3(Struct_1(386f, vec4<bool>(arg_0, arg_1, arg_1, true), vec2<f32>(1000f, 326f), vec4<u32>(79480u, 4294967295u, 4294967295u, 24617u)), vec2<i32>(-1437i, -28276i), vec4<bool>(arg_0, arg_0, arg_1, false)), 37599u, ~abs(4294967295u), 1u)), Struct_1(1580f, vec4<bool>(false, any(vec2<bool>(true, true)) || true, arg_0, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -382f), _wgslsmith_f_op_f32(-529f * -1000f)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-344f, -857f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-800f, 609f)))), select(abs(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 30423u)), abs(vec4<u32>(1u, 1u, 1u, 1u)), select(!vec4<bool>(arg_1, false, false, arg_0), vec4<bool>(true, arg_1, true, true), arg_0))));
    return Struct_4(countOneBits(min(-vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(1i, u_input.a, 2147483647i) & vec3<i32>(9917i, u_input.a, -25502i))) ^ firstLeadingBit(~(vec3<i32>(u_input.a, u_input.a, u_input.a) >> (var_0.b.d.zzy % vec3<u32>(32u)))), Struct_3(vec2<i32>(u_input.a, max(_wgslsmith_div_i32(u_input.a, u_input.a), -1i)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 30579u, var_0.b.d.x, 11738u), vec4<u32>(var_0.b.d.x, var_0.a.d.x, var_0.a.d.x, var_0.b.d.x)), Struct_2(var_0.b, Struct_1(1154f, var_0.b.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a, var_0.b.a)), vec4<u32>(var_0.b.d.x, 4294967295u, var_0.a.d.x, 47752u)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, var_0.a.c.x, var_0.b.a, var_0.a.c.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, 318f, var_0.b.c.x, var_0.a.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, 839f, var_0.b.a, -1146f)))))))), u_input.a);
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_2 {
    var var_0 = arg_1.b.c;
    return Struct_2(func_2(true, all(!select(var_0.a.b.yyw, arg_1.b.c.b.b.zwz, false))).b.c.a, arg_1.b.c.a);
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_3(firstLeadingBit(vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.a ^ u_input.a, _wgslsmith_clamp_i32(-7312i, u_input.a, 2147483647i)))), ~max(~_wgslsmith_dot_vec4_u32(vec4<u32>(15019u, 61749u, arg_0.x, 0u), arg_0), 35284u), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(1187f)))), _wgslsmith_f_op_f32(-415f * -1191f)), func_2(true, true)));
    let var_1 = Struct_2(func_2(any(!vec2<bool>(var_0.c.a.b.x, false)), true).b.c.a, var_0.c.b);
    var var_2 = _wgslsmith_add_u32(~arg_0.x, 19023u);
    let var_3 = var_1.b.d.x;
    let var_4 = vec4<u32>(~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(var_3, 4294967295u), ~var_1.a.d.x)), _wgslsmith_clamp_u32(~var_3, abs(~func_4(2010f, Struct_4(vec3<i32>(u_input.a, u_input.a, 2147483647i), Struct_3(var_0.a, var_0.c.a.d.x, Struct_2(var_1.a, var_0.c.a)), vec4<f32>(var_1.b.c.x, -207f, var_0.c.b.c.x, var_0.c.b.c.x), var_0.a.x)).b.d.x), arg_0.x), ~_wgslsmith_clamp_u32(1u, ~var_3, ~48056u), ~(1885u >> (var_3 % 32u)) << (~((arg_0.x & var_0.c.a.d.x) ^ ~1u) % 32u));
    return 1131f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(-646f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(~vec4<u32>(2967u, 33604u, 4294967295u, 0u))))));
    var var_1 = Struct_4(select(func_2(any(vec3<bool>(false, true, true)), u_input.a != u_input.a).a | vec3<i32>(u_input.a, -1i, _wgslsmith_mod_i32(-1i, u_input.a)), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(-20543i, 7273i)), -u_input.a, u_input.a), vec3<i32>(reverseBits(u_input.a), u_input.a, reverseBits(-45291i))), vec3<bool>(func_4(var_0.x, Struct_4(vec3<i32>(354i, 1i, -52358i), Struct_3(vec2<i32>(1i, 2147483647i), 4294967295u, Struct_2(Struct_1(1000f, vec4<bool>(true, false, false, false), vec2<f32>(2003f, -1725f), vec4<u32>(21783u, 0u, 34352u, 0u)), Struct_1(1972f, vec4<bool>(true, true, false, true), vec2<f32>(351f, -899f), vec4<u32>(85746u, 37655u, 1u, 1147u)))), vec4<f32>(var_0.x, var_0.x, var_0.x, 1249f), 0i)).a.b.x && true, true, true)), Struct_3(~vec2<i32>(-30655i, ~u_input.a), 53723u, func_2(true, false).b.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, -771f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, -374f, var_0.x, var_0.x))))), ~reverseBits(u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 4294967295u, 25847u), vec4<u32>(5343u, 5593u, 4294967295u, 1u)) % 32u)));
    let var_2 = vec3<f32>(244f, _wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(func_1(var_1.b.c.b.d)));
    let var_3 = var_1.b.c.b.b;
    let var_4 = -firstLeadingBit(_wgslsmith_add_i32(-32749i, 7385i));
    let x = u_input.a;
    s_output = StorageBuffer(~26136u, ~16597u, var_1.a.yz, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), -361f, var_0.x, 446f) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-617f, 1f, -174f, _wgslsmith_f_op_f32(f32(-1f) * -424f))))));
}

