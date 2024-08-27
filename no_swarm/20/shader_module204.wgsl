struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> bool {
    global0 = array<vec4<u32>, 6>();
    global0 = array<vec4<u32>, 6>();
    let var_0 = _wgslsmith_div_f32(arg_0, arg_0);
    let var_1 = !(!(!arg_1.xxx));
    var var_2 = 1000f;
    return false;
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_3(Struct_2(!vec3<bool>(true, true, arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-472f, -744f, 111f, 1787f) - vec4<f32>(-269f, 1000f, 329f, 1930f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1656f, 422f, -940f, -2703f)))) * vec4<f32>(_wgslsmith_f_op_f32(-275f + 412f), _wgslsmith_div_f32(1300f, 1736f), -1000f, _wgslsmith_div_f32(690f, 1306f))), true, vec4<i32>(~max(u_input.a.x, u_input.a.x), u_input.a.x, -18873i, 2147483647i)), abs(22737u));
    var var_1 = (1171f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.b.x, _wgslsmith_f_op_f32(-404f + -919f))) * _wgslsmith_div_f32(-658f, -658f))) && any(vec3<bool>(func_2(_wgslsmith_f_op_f32(ceil(var_0.a.b.x)), select(vec4<bool>(true, arg_0, false, var_0.a.a.x), vec4<bool>(false, arg_0, false, arg_0), vec4<bool>(var_0.a.a.x, arg_0, var_0.a.a.x, arg_0))), true, all(vec3<bool>(arg_0, false, arg_0))));
    let var_2 = ~(~15818u);
    var var_3 = vec2<u32>(~var_2, var_0.b);
    let var_4 = firstTrailingBit(63179u);
    return 94542i;
}

fn func_1() -> Struct_2 {
    let var_0 = select((u_input.a.yx ^ vec2<i32>(u_input.a.x, u_input.a.x)) >> (vec2<u32>(~(~10273u), ~_wgslsmith_mult_u32(40872u, 0u)) % vec2<u32>(32u)), (firstLeadingBit(vec2<i32>(1i, 19695i)) ^ u_input.a.zz) << (select(reverseBits(~vec2<u32>(66222u, 26040u)), reverseBits(vec2<u32>(1u, 1u)), !select(vec2<bool>(true, true), vec2<bool>(false, false), true)) % vec2<u32>(32u)), vec2<bool>(false, any(vec4<bool>(all(vec3<bool>(false, false, false)), true, func_2(734f, vec4<bool>(true, true, false, false)), true))));
    let var_1 = _wgslsmith_clamp_u32(reverseBits(reverseBits(abs(4294967295u))), _wgslsmith_clamp_u32(4294967295u, max(1u, 1u) & firstTrailingBit(1u), _wgslsmith_mod_u32(~8296u, 50227u) << (1u % 32u)), firstTrailingBit(82525u));
    global0 = array<vec4<u32>, 6>();
    var var_2 = u_input.a;
    global0 = array<vec4<u32>, 6>();
    return Struct_2(vec3<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), true)), false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(642f, -1000f, 240f, 573f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, 309f, -1103f, 859f)))), !(!(_wgslsmith_dot_vec2_i32(vec2<i32>(-22868i, 0i), vec2<i32>(-43771i, var_2.x)) <= (i32(-1i) * -388i))), vec4<i32>(-2147483647i, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, u_input.a.x), _wgslsmith_mod_i32(~(-40181i), _wgslsmith_add_i32(u_input.a.x, func_3(false))), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(-248f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1302f, 1301f) + _wgslsmith_f_op_f32(ceil(769f)))) + -453f));
    let var_1 = func_1();
    let var_2 = 1u;
    global0 = array<vec4<u32>, 6>();
    let var_3 = all(!var_1.a);
    let var_4 = Struct_5(vec2<u32>(0u & _wgslsmith_clamp_u32(var_2, 4294967295u, _wgslsmith_sub_u32(var_2, 4294967295u)), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(4294967295u, 6u)], vec4<u32>(29826u, var_2, 13618u, var_2)), var_2)), _wgslsmith_div_f32(-1053f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.b.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.x - var_0))))), Struct_1(var_2, false & (func_1().c || (var_2 > var_2))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_4.c.a, var_4.a.x, 72739u), vec3<u32>(1u, var_2, 4294967295u)), vec3<u32>(var_2, 0u, var_2), u_input.a.x <= 22862i) & ~(vec3<u32>(var_2, var_2, var_2) | ~vec3<u32>(366u, var_2, var_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(trunc(var_4.b)), true)))), u_input.a.x, ~var_4.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_4.b))), _wgslsmith_f_op_f32(var_4.b + -954f)));
}

