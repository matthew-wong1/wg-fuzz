struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<f32> {
    global0 = array<vec3<f32>, 28>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1667f, -1259f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-121f, 1289f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 192f))))))))));
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    var var_0 = vec3<bool>(false, false, (~u_input.a & ((u_input.a | u_input.a) >> (0u % 32u))) < u_input.a);
    var var_1 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_0.x * 828f));
    var var_2 = Struct_1(~firstTrailingBit(firstTrailingBit(-vec4<i32>(-2147483647i, -13890i, u_input.a, u_input.a))), _wgslsmith_f_op_vec2_f32(func_3()), arg_0);
    var var_3 = ~0i;
    var var_4 = _wgslsmith_f_op_f32(arg_0.x + -721f);
    return _wgslsmith_div_i32(select(var_2.a.x, max(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -5545i, -2147483647i, -33422i), vec4<i32>(-29430i, -27252i, 41722i, -1i))), ~(i32(-1i) * -23736i)), select(all(vec2<bool>(var_0.x, var_0.x)), true, select(false, true, true))), 24461i);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<vec3<f32>, 28>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), ~vec4<i32>(-1i, 2147483647i, u_input.a, -2147483647i))), -vec4<i32>(-u_input.a, u_input.a, func_2(arg_1.zx), _wgslsmith_clamp_i32(u_input.a, u_input.a, -39787i))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(arg_1.wz)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 1000f))) * arg_1.zx))));
    global0 = array<vec3<f32>, 28>();
    var var_1 = Struct_2(vec3<i32>(1i, (~var_0.a.x | 1i) & ~_wgslsmith_mult_i32(var_0.a.x, -2147483647i), _wgslsmith_add_i32(abs(var_0.a.x), var_0.a.x)));
    var_1 = Struct_2(select(var_0.a.yww, vec3<i32>(u_input.a, u_input.a, 0i), !(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, false)))));
    return Struct_1(max(~var_0.a | var_0.a, vec4<i32>(_wgslsmith_add_i32(-32613i, -1i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-19100i, 3272i, var_0.a.x), vec3<i32>(var_0.a.x, 2147483647i, 20888i)), select(1i, abs(u_input.a), -757f != arg_1.x), _wgslsmith_add_i32(~(-32258i), -79979i), select(u_input.a, var_1.a.x, arg_0) & 0i)), arg_1.ww, arg_1.zw);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec2<bool>(min(_wgslsmith_mult_i32(0i, ~arg_0.a.x), u_input.a) >= _wgslsmith_clamp_i32(2147483647i, i32(-1i) * -1i, -u_input.a << (_wgslsmith_mult_u32(25922u, 45369u) % 32u)), true);
    var var_1 = abs(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(28768u, 19468u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(15625u, 50379u, 1963u), vec3<u32>(69322u, 22628u, 62472u)), ~4294967295u))) ^ 0u;
    let var_2 = vec2<i32>(1i, -36824i);
    var var_3 = 1u;
    let var_4 = !(!vec3<bool>(true, !any(var_0), all(vec3<bool>(var_0.x, var_0.x, var_0.x))));
    return Struct_2(_wgslsmith_mult_vec3_i32(arg_0.a.xzx, vec3<i32>(~74377i, u_input.a, ~(3737i ^ arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 28>();
    global0 = array<vec3<f32>, 28>();
    var var_0 = func_4(func_1(true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1159f, -961f, -387f, 980f) * vec4<f32>(-1930f, -259f, -2577f, 445f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(countOneBits(~10462u), ~1u, 9580u), select(max(vec3<u32>(4294967295u, 4294967295u, 3084u), vec3<u32>(88918u, 48235u, 0u)), ~(~vec3<u32>(4294967295u, 37829u, 0u)), all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, any(vec3<bool>(true, true, false)))), 3443i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-107f, -517f))))));
}

