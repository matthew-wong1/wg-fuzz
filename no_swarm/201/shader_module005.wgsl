struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: vec2<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    var var_0 = !(!(!vec3<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(true, false, true)), 0i > u_input.b.x)));
    let var_1 = Struct_1(var_0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(275f, -863f, 1036f))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1445f) + -1487f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-461f, 1135f), 1000f, all(vec3<bool>(var_0.x, var_0.x, true)))), -310f)), _wgslsmith_mod_u32(global0.x, ~abs(global0.x)), select(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(2147483647i, u_input.b.x, 36141i) ^ u_input.b.yww), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, -32403i, u_input.b.x), vec3<i32>(u_input.a, u_input.d, 1i))), u_input.b.zwx >> (_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, global0.x, 18379u), vec3<u32>(global0.x, 54742u, 9260u)), ~vec3<u32>(67500u, global0.x, 5968u)) % vec3<u32>(32u)), !vec3<bool>(1u > global0.x, true, true)));
    var_0 = select(!select(select(vec3<bool>(true, true, true), vec3<bool>(var_1.a, var_1.a, true), select(vec3<bool>(false, false, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, false, true))), !(!vec3<bool>(var_0.x, true, true)), !(!vec3<bool>(true, var_1.a, var_0.x))), select(vec3<bool>(select(false, var_0.x, false) || (global0.x > 42908u), false, var_1.a), !vec3<bool>(false, any(vec4<bool>(true, true, var_0.x, var_1.a)), false & var_1.a), false), true);
    global0 = vec2<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(14746u, var_1.c)), ~(~select(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x), vec2<bool>(var_1.a, true)))), 0u);
    global0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 4294967295u | _wgslsmith_mod_u32(~global0.x, global0.x)), countOneBits(~(~max(vec2<u32>(85853u, 0u), vec2<u32>(1u, 7601u)))), _wgslsmith_add_vec2_u32(min(~vec2<u32>(var_1.c, global0.x), vec2<u32>(4294967295u, global0.x)), vec2<u32>(~min(0u, global0.x), reverseBits(var_1.c))));
    return 21457u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = u_input.b.x;
    var var_1 = ~(~vec2<u32>(~global0.x, 4294967295u));
    let var_2 = 45135u;
    let var_3 = arg_0.d.x;
    let var_4 = any(vec2<bool>(0u > _wgslsmith_sub_u32(59708u << (global0.x % 32u), 51302u), arg_0.a));
    return !select(!select(select(vec2<bool>(arg_0.a, arg_3.a), vec2<bool>(false, var_4), vec2<bool>(true, var_4)), !vec2<bool>(false, var_4), !vec2<bool>(arg_3.a, true)), select(vec2<bool>(arg_2.x < -1108f, true), select(select(vec2<bool>(false, var_4), vec2<bool>(false, true), vec2<bool>(arg_3.a, true)), vec2<bool>(true, true), arg_0.a), !vec2<bool>(var_4, arg_0.a)), all(select(!vec3<bool>(arg_3.a, arg_0.a, arg_3.a), !vec3<bool>(var_4, true, arg_3.a), select(vec3<bool>(true, false, false), vec3<bool>(false, false, var_4), vec3<bool>(false, true, true)))));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = -21072i;
    var var_2 = Struct_2(abs(-vec3<i32>(var_1, 25725i, var_1 ^ 0i)));
    var var_3 = select(select(vec2<bool>(any(vec2<bool>(false, false)), select(false, true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(false, select(true, false, false)), vec2<bool>(true, any(vec4<bool>(true, true, true, false)))), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), func_4(Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(141f + 231f), _wgslsmith_f_op_f32(ceil(-323f)), _wgslsmith_f_op_f32(trunc(-324f))), func_3() & abs(16648u), vec3<i32>(i32(-1i) * -2147483647i, ~28915i, -1i)), Struct_2(_wgslsmith_clamp_vec3_i32(firstLeadingBit(var_2.a), var_2.a, ~vec3<i32>(-2696i, -2147483647i, 1i))), vec3<f32>(1f, 1f, 1f), Struct_1(!all(vec4<bool>(false, false, true, false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-559f, 1164f, -1312f) * vec3<f32>(-288f, 745f, -638f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(405f, 140f, -129f), vec3<f32>(-681f, 407f, 554f), vec3<bool>(true, false, true)))), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)), vec2<u32>(global0.x, 0u)), ~u_input.b.wxw)), !(!vec2<bool>(true, var_2.a.x < -14584i)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1073f + -545f)))) == _wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(417f, 1000f, 456f) + vec3<f32>(-991f, -554f, -285f))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1133f), _wgslsmith_f_op_f32(-178f - 1000f))), any(!vec4<bool>(false, var_3.x, false, var_3.x)) | !all(vec3<bool>(true, true, var_3.x)))), firstLeadingBit(global0.x), vec3<i32>(abs((var_2.a.x ^ 2147483647i) | -6258i), var_1, firstTrailingBit(var_1)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global0 = vec2<u32>(~17581u, 0u);
    var var_0 = countOneBits(27151u);
    global0 = vec2<u32>(~(_wgslsmith_mod_u32(global0.x, global0.x) ^ global0.x) ^ ~global0.x, ~(global0.x ^ (global0.x | global0.x)));
    let var_1 = func_2();
    var var_2 = ~_wgslsmith_mult_i32(i32(-1i) * -30578i, 36074i);
    return Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(-970f + -222f)) * var_1.b), global0.x, ~(-(~(~vec3<i32>(u_input.d, arg_0.x, var_1.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c.yy);
    let var_1 = var_0.c | ~global0.x;
    let var_2 = var_0.b.x > -702f;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(818f, var_0.b.x, 1087f, var_0.b.x) + vec4<f32>(var_0.b.x, 1000f, var_0.b.x, 1625f))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(ceil(1883f)), _wgslsmith_f_op_f32(f32(-1f) * -283f), var_0.b.x)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, var_0.b.x, 100f, var_0.b.x), vec4<f32>(-605f, 200f, var_0.b.x, var_0.b.x)))))))));
    var var_4 = ~(-93905i);
    let var_5 = 366f;
    var_4 = func_1(var_0.d.zx).d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, ~global0.x), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.c, 4294967295u), ~vec2<u32>(4294967295u, 0u)) << (_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, global0.x) << (vec2<u32>(1u, var_1) % vec2<u32>(32u)), min(vec2<u32>(var_0.c, var_0.c), vec2<u32>(0u, 58813u))) % vec2<u32>(32u))), ~u_input.b.x);
}

