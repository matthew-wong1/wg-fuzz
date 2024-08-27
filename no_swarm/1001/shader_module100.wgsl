struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 25959u, 47183u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_add_u32(0u, u_input.a), select(vec4<u32>(firstTrailingBit(global0.x), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(110488u, 4294967295u, 1u)), vec3<u32>(1u, global0.x, global0.x)), 0u, ~1u), ~(~vec4<u32>(6938u, 0u, 11007u, arg_0.b)), true & !any(vec4<bool>(false, false, false, false))));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = firstTrailingBit(select(~(~vec3<u32>(arg_0, 0u, arg_0)), vec3<u32>(arg_0, 61056u, _wgslsmith_add_u32(49132u, u_input.a)), !vec3<bool>(any(vec4<bool>(false, false, false, true)), true, true)));
    var var_0 = 0u;
    var_0 = ~(u_input.a >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(12547u, 86807u, arg_0) & vec3<u32>(2799u, global0.x, 0u), ~vec3<u32>(1u, 4294967295u, 11275u), vec3<bool>(true, true, true)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 16543u, 8758u), vec3<u32>(arg_0, arg_0, global0.x))) % 32u));
    var var_1 = !all(vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), !any(vec4<bool>(true, false, false, false)), all(vec3<bool>(false, true, true)), true));
    let var_2 = -1775f;
    return -665f;
}

fn func_1() -> vec3<u32> {
    var var_0 = Struct_2(func_2(Struct_3(-533f, ~4294967295u)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(477f, -1627f) * _wgslsmith_div_f32(-730f, -1564f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(726f * -218f))), 685f, _wgslsmith_f_op_f32(func_3(1u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(985f, -748f))), _wgslsmith_f_op_f32(1121f - _wgslsmith_f_op_f32(f32(-1f) * -1477f)), _wgslsmith_f_op_f32(359f * _wgslsmith_f_op_f32(select(-461f, 568f, true))), _wgslsmith_f_op_f32(f32(-1f) * -114f)), u_input.a < _wgslsmith_mod_u32(u_input.a, _wgslsmith_sub_u32(global0.x, global0.x)))));
    var var_1 = Struct_4(0u);
    var_0 = Struct_2(Struct_1(_wgslsmith_sub_u32(_wgslsmith_sub_u32(0u, u_input.a), 80245u) | ~(~4294967295u), var_0.a.b), _wgslsmith_f_op_vec4_f32(-var_0.b));
    let var_2 = reverseBits(_wgslsmith_div_vec3_i32(~vec3<i32>(1i, 1i, 1i) & vec3<i32>(-8373i, abs(-7079i), 2147483647i << (global0.x % 32u)), abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(74561i, 1i, -44008i), min(vec3<i32>(33509i, -50647i, -31450i), vec3<i32>(1i, -2147483647i, -2147483647i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(19978i, 29639i, 9907i), vec3<i32>(-2147483647i, -22657i, 2147483647i), vec3<i32>(2147483647i, 0i, 47821i))))));
    var var_3 = Struct_4(1u);
    return vec3<u32>(~_wgslsmith_div_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_3.a, u_input.a, 19955u), var_0.a.b)), min(31274u | u_input.a, _wgslsmith_dot_vec3_u32(var_0.a.b.xwz, var_0.a.b.wyy))), var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(1u, global0.x), 562u), ~var_0.a.b.xxy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~max(func_1() | ~vec3<u32>(0u, u_input.a, u_input.a), ~vec3<u32>(global0.x, 13509u, u_input.a)) ^ (vec3<u32>(_wgslsmith_mod_u32(global0.x >> (global0.x % 32u), 44939u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(11790u, 66873u, u_input.a, 0u), vec4<u32>(0u, 4294967295u, 21882u, 1u)), 60096u) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.x, u_input.a & 4294967295u), vec3<u32>(_wgslsmith_add_u32(1u, 1u), 30558u, 4294967295u)) % vec3<u32>(32u)));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1545f * _wgslsmith_f_op_f32(223f + -572f))))), ~u_input.a);
    var var_1 = vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, 1i) & select(vec2<i32>(-26392i, -1i), vec2<i32>(-58422i, 0i), true), vec2<i32>(1i, 1i), true), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, abs(1i)), -(~vec2<i32>(-16527i, -40149i)), vec2<i32>(-2147483647i, 1i))), ~49087i);
    var var_2 = vec4<f32>(var_0.a, -1741f, 456f, var_0.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(var_2.wxz - _wgslsmith_div_vec3_f32(vec3<f32>(1474f, var_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1698f + var_0.a)))), _wgslsmith_f_op_vec3_f32(abs(var_2.zzx))));
    var_1 = ~(vec3<i32>(-1i) * -(~firstLeadingBit(vec3<i32>(var_1.x, var_1.x, var_1.x))));
    var var_4 = Struct_4(var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~vec3<i32>(29565i, -12008i, -36927i)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), ~vec3<u32>(var_0.b, u_input.a, 14987u), ~vec3<u32>(var_4.a, 24741u, 4294967295u)) % vec3<u32>(32u))));
}

