struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>) -> vec2<f32> {
    let var_0 = Struct_1(vec3<bool>(any(arg_0.yx), !arg_1.x, arg_0.x), max(_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(-1190i, u_input.c), arg_1.xy), reverseBits(vec2<i32>(u_input.a, -2147483647i))), vec2<i32>(firstLeadingBit(u_input.c), ~(-1i))) >> (~_wgslsmith_add_vec2_u32(u_input.b.yx, max(u_input.b.yx, u_input.e.yy)) % vec2<u32>(32u)), abs(u_input.d), 0u & u_input.d, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(957f, 1020f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(133f, 442f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1574f, 1378f))))))));
    let var_1 = var_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, var_1.e.x)));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_1.xz - vec2<f32>(arg_3.e.x, arg_3.e.x));
    let var_1 = vec2<i32>(-1i) * -abs(arg_3.b);
    let var_2 = (~(~(~var_1.x)) >> (_wgslsmith_add_u32(0u, u_input.b.x) % 32u)) | (var_1.x >> (_wgslsmith_mod_u32(abs(~arg_3.c), 1u) % 32u));
    var var_3 = Struct_1(vec3<bool>(arg_1.x <= _wgslsmith_f_op_f32(-1277f + _wgslsmith_f_op_f32(-var_0.x)), arg_2.x, arg_2.x), abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), arg_3.b)), arg_3.b, vec2<i32>(~arg_3.b.x, var_1.x))), 1u << (1u % 32u), 1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(arg_3.a.x || false, 2147483647i <= arg_3.b.x, arg_3.c != u_input.e.x), !select(arg_3.a, vec3<bool>(true, true, true), false))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3.e.x, -185f)) + arg_1.x), 812f)));
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(select(select(vec3<bool>(true, true, var_3.a.x), arg_3.a, arg_3.a), vec3<bool>(false, true, var_3.a.x), arg_2.ywz), var_3.a)) * var_3.e) + arg_3.e);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0) + _wgslsmith_div_vec2_f32(vec2<f32>(-434f, 358f), vec2<f32>(var_4.x, var_0.x))))) + _wgslsmith_f_op_vec2_f32(-arg_1.yz)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1124f)), arg_1.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: bool) -> vec4<u32> {
    var var_0 = Struct_1(!(!vec3<bool>(true, arg_2, u_input.c > -1i)), reverseBits(min(vec2<i32>(1i, abs(2147483647i)), vec2<i32>(-u_input.c, u_input.c))), 1u, ~_wgslsmith_clamp_u32(0u, ~arg_1, ~4294967295u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1274f, 1230f) - vec2<f32>(-157f, 1350f)), vec2<f32>(-1898f, 551f), vec2<bool>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-392f, -131f), vec2<f32>(-383f, 697f), vec2<bool>(false, false))) - _wgslsmith_f_op_vec2_f32(func_2(-112f, vec3<f32>(1111f, 689f, 804f), vec4<bool>(arg_2, arg_2, arg_2, arg_2), Struct_1(vec3<bool>(true, false, true), vec2<i32>(u_input.c, u_input.a), 16065u, arg_1, vec2<f32>(1612f, -1266f))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.e.x, var_0.e.x, -1669f, -296f) + vec4<f32>(var_0.e.x, 554f, var_0.e.x, var_0.e.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.e.x, var_0.e.x, var_0.e.x, 852f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-533f, var_0.e.x, var_0.e.x, var_0.e.x) * vec4<f32>(137f, 1642f, var_0.e.x, 1403f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1172f, var_0.e.x, var_0.e.x, 1000f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.e.x, var_0.e.x, -1824f, var_0.e.x), vec4<f32>(-305f, 869f, -457f, 266f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, -286f, 1924f, var_0.e.x)))));
    var var_2 = 4294967295u;
    var_2 = var_0.d;
    var var_3 = Struct_1(select(!(!var_0.a), !vec3<bool>(any(vec2<bool>(false, var_0.a.x)), false, arg_2), vec3<bool>(var_0.a.x, arg_2, arg_2)), var_0.b, var_0.c, ~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.c, u_input.e.x, 1u), u_input.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(var_1.yz)), var_1.xy, true))));
    return ~u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec3<bool>(true, all(vec3<bool>(false, true, false)), all(vec3<bool>(true, true, true))), vec2<i32>(-_wgslsmith_add_i32(-u_input.c, 1i), 2609i), 1206u, ~_wgslsmith_dot_vec4_u32(min(func_1(u_input.b, u_input.d, true), ~vec4<u32>(u_input.b.x, 1u, 37072u, u_input.d)), firstLeadingBit(u_input.e)), _wgslsmith_f_op_vec2_f32(func_3(!vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true), vec3<bool>(!all(vec3<bool>(false, false, false)), true, any(vec4<bool>(true, true, true, true))))));
    var var_1 = min(vec3<u32>(u_input.e.x, var_0.d, u_input.d), vec3<u32>(u_input.b.x, min(33080u, 1u) ^ ~var_0.d, ~min(3542u, var_0.d)) >> (vec3<u32>(6438u, var_0.c ^ u_input.b.x, ~(~67309u)) % vec3<u32>(32u)));
    var var_2 = 237f;
    let var_3 = var_0.a;
    var var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), var_0.e.x), _wgslsmith_clamp_i32(1i, -47427i, var_0.b.x), select(u_input.c & var_0.b.x, _wgslsmith_clamp_i32(1i, firstTrailingBit(u_input.c), _wgslsmith_sub_i32(var_0.b.x, var_0.b.x)), true & (var_3.x && false)) | var_0.b.x, ~(vec3<i32>(select(u_input.a, 2147483647i, var_0.a.x), select(13824i, 19726i, true), min(24746i, var_0.b.x)) ^ vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, var_0.b.x, 17531i), vec3<i32>(1i, -1i, 1i)), min(var_0.b.x, -2147483647i))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.e.x, 1000f, var_0.e.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.e.x, var_0.e.x, -174f) + vec3<f32>(-470f, -600f, 1260f)))), vec3<f32>(_wgslsmith_f_op_f32(-1229f + var_0.e.x), var_0.e.x, _wgslsmith_f_op_f32(var_0.e.x * -480f)), !(!var_0.a))))));
}

