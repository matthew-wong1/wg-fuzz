struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = Struct_3(firstLeadingBit(-2147483647i));
    var var_1 = false;
    var var_2 = Struct_2(!any(select(vec4<bool>(true, false, arg_0, false), !vec4<bool>(arg_0, true, arg_0, arg_0), !vec4<bool>(arg_0, false, arg_0, arg_0))), Struct_1(true), Struct_1(arg_0), Struct_1(true), Struct_1(arg_0));
    var var_3 = vec3<bool>(all(select(!vec4<bool>(true, var_2.b.a, false, arg_0), vec4<bool>(true, true, any(vec4<bool>(arg_0, false, var_2.c.a, arg_0)), false), select(select(vec4<bool>(true, arg_0, true, false), vec4<bool>(var_2.d.a, arg_0, true, false), vec4<bool>(var_2.d.a, false, var_2.b.a, false)), vec4<bool>(true, false, arg_0, var_2.c.a), any(vec2<bool>(true, var_2.e.a))))), true, var_2.d.a);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -710f) + vec2<f32>(1f, -222f))));
    return ~(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 107484u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(925u, 44140u), vec2<u32>(42655u, 78702u))) << (~_wgslsmith_dot_vec3_u32(~vec3<u32>(44425u, 4294967295u, 69789u), vec3<u32>(68080u, 4294967295u, 4294967295u)) % 32u));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = ~(~reverseBits(vec3<u32>(func_3(arg_0.x), 1u, func_3(arg_0.x))));
    var_0 = _wgslsmith_mult_vec3_u32(select(~vec3<u32>(var_0.x, firstTrailingBit(0u), ~var_0.x), select(~vec3<u32>(26275u, 4294967295u, 34343u) >> ((vec3<u32>(0u, var_0.x, 26201u) << (vec3<u32>(var_0.x, 27430u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(var_0.x, var_0.x, var_0.x) | vec3<u32>(7982u, 41031u, 32920u), select(vec3<bool>(arg_0.x, arg_0.x, true), arg_0.xzw, any(vec2<bool>(arg_0.x, false)))), select(!(!arg_0.wzx), vec3<bool>(arg_0.x, !arg_0.x, false), !(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), vec3<u32>(var_0.x, ~firstLeadingBit(var_0.x) & reverseBits(var_0.x), abs(0u)));
    var var_1 = Struct_1(all(vec3<bool>(any(select(vec2<bool>(arg_0.x, true), arg_0.wy, arg_0.x)), arg_0.x, true)));
    let var_2 = -393f;
    let var_3 = vec3<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a.x | ~(~12287i)), -9953i, 36093i);
    return Struct_2(any(arg_0.zy), Struct_1(false), Struct_1(var_1.a), Struct_1(all(arg_0.ww)), Struct_1(!all(select(arg_0.wzy, vec3<bool>(var_1.a, false, arg_0.x), false))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = func_2(vec4<bool>(arg_2.a, all(vec2<bool>(true, true)), arg_2.a, arg_2.a));
    let var_1 = !select(vec2<bool>(false, _wgslsmith_f_op_f32(-1619f * -502f) == _wgslsmith_f_op_f32(trunc(1550f))), select(!select(vec2<bool>(false, arg_2.a), vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(arg_2.a, false)), select(!vec2<bool>(var_0.b.a, true), !vec2<bool>(var_0.c.a, false), arg_2.a), any(vec4<bool>(false, var_0.b.a, false, arg_2.a))), all(vec2<bool>(arg_2.a, true)));
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1297i;
    var var_1 = (vec2<i32>(-u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.ywx, vec3<i32>(u_input.a.x, -6649i, -2147483647i))) << (vec2<u32>(2431u, 27140u) % vec2<u32>(32u))) >> (~firstTrailingBit(~vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    var_1 = u_input.a.yz;
    var_1 = firstLeadingBit(vec2<i32>(-var_1.x, (func_1(Struct_4(679f, Struct_3(-68567i)), vec3<f32>(-710f, -2346f, -910f), Struct_1(false)) | -1i) >> (select(1u, 19794u, false) % 32u)));
    var_1 = _wgslsmith_div_vec2_i32(~u_input.a.wx, u_input.a.xx);
    var_1 = min(firstLeadingBit(u_input.a.zx), u_input.a.wy);
    var_1 = vec2<i32>(u_input.a.x, i32(-1i) * -38353i);
    var var_2 = -_wgslsmith_mod_i32(min(~(-13417i), countOneBits(var_0)), _wgslsmith_add_i32(abs(var_1.x) << (min(42590u, 1829u) % 32u), firstLeadingBit(countOneBits(59099i))));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_3, 16572u, 43830u), _wgslsmith_f_op_f32(733f + 269f));
}

