struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-668f, 1513f), vec2<f32>(-514f, -745f), vec2<f32>(-1334f, 1001f), vec2<f32>(1047f, -133f), vec2<f32>(425f, 561f), vec2<f32>(1268f, -649f), vec2<f32>(512f, 593f), vec2<f32>(1581f, 282f), vec2<f32>(942f, 1611f), vec2<f32>(-201f, -736f), vec2<f32>(-1587f, -271f), vec2<f32>(586f, -498f));

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-824f + -2339f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1369f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2062f, 638f) + _wgslsmith_f_op_f32(round(649f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-996f, 1082f))))) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1030f)))), 1144f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, var_0.x)))))) * _wgslsmith_f_op_f32(ceil(var_0.x)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x)));
    var var_2 = global1.b;
    var_1 = 2681f;
    return vec3<bool>(true, false, !any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), true)) | (true | (-771f > var_0.x)));
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = !select(!vec3<bool>(true, select(false, false, false), all(vec2<bool>(true, true))), vec3<bool>(select(false, true, false) && true, true, true), true);
    let var_1 = 0u;
    var var_2 = select(select(!func_3(), vec3<bool>(any(!vec4<bool>(var_0.x, true, var_0.x, false)), all(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, var_0.x, var_0.x))), true), true), vec3<bool>((_wgslsmith_f_op_f32(select(-413f, 259f, false)) > -211f) && true, var_0.x, !(!var_0.x)), vec3<bool>(var_0.x, true, true));
    var var_3 = -828f;
    let var_4 = vec3<bool>(true, var_2.x, all(!select(select(vec4<bool>(var_0.x, var_2.x, false, true), vec4<bool>(var_0.x, var_0.x, var_2.x, true), var_2.x), vec4<bool>(true, true, false, false), any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_2.x)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -192f);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2(global1.a.x)), _wgslsmith_f_op_f32(step(453f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(1u)), _wgslsmith_f_op_f32(select(1881f, -959f, true))), -982f)))), -289f);
    var var_1 = -(vec3<i32>(reverseBits(~44212i), -10669i, -30937i) | (_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global1.d, global1.d, global1.d), vec3<i32>(2147483647i, -18147i, 2147483647i)), vec3<i32>(u_input.a, -22529i, global1.d)) >> (global1.c.wyz % vec3<u32>(32u))));
    var var_2 = global1.b;
    var var_3 = vec2<i32>(u_input.a & var_1.x, u_input.a);
    let var_4 = select(!vec3<bool>(true, !any(vec2<bool>(true, false)), true), vec3<bool>(true, true, all(vec3<bool>(true, true, false)) == false), select(func_3(), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, true)), global1.b == global1.b)));
    return Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(global1.c.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global1.c.x), max(vec2<u32>(global1.c.x, 1u), global1.a))), global1.a), ~4294967295u, global1.c, ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(global1.d ^ 1i, ~u_input.a, 20595i), vec3<i32>(global1.d, u_input.a, 16969i) | firstLeadingBit(vec3<i32>(u_input.a, u_input.a, 26808i)));
    global0 = array<vec2<f32>, 12>();
    global1 = func_1();
    let var_2 = Struct_1(select(~countOneBits(~global1.a), countOneBits(vec2<u32>(_wgslsmith_mult_u32(36883u, global1.a.x), ~41868u)), any(func_3())), _wgslsmith_clamp_u32(52937u, ~(28979u & global1.c.x) & global1.a.x, 11579u), vec4<u32>(max(reverseBits(~63108u), _wgslsmith_dot_vec4_u32(global1.c, global1.c)), ~1u, global1.a.x, ~1u), _wgslsmith_div_i32(max(~0i, ~global1.d) & min(global1.d, max(2147483647i, global1.d)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global1.c.zzx), countOneBits(countOneBits(~0u)), vec2<u32>(_wgslsmith_dot_vec3_u32(~firstTrailingBit(global1.c.zwx), global1.c.zyw), global1.c.x));
}

