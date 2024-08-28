struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool;

var<private> global2: array<i32, 18>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = ~vec2<u32>(~u_input.a >> (arg_0 % 32u), firstLeadingBit(7614u));
    let var_1 = vec2<i32>(-5293i, global2[_wgslsmith_index_u32(~u_input.c.x, 18u)]);
    var var_2 = -2147483647i;
    var var_3 = Struct_1(min(u_input.c, ~vec2<u32>(var_0.x | 7145u, _wgslsmith_mult_u32(var_0.x, 1u))));
    global0 = 1i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))) + 431f) + 1099f);
}

fn func_2() -> vec2<bool> {
    var var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)))), -941f));
    global2 = array<i32, 18>();
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(1u, 18u)], Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, reverseBits(44664u)), vec2<u32>(countOneBits(1u), u_input.a), countOneBits(~u_input.c))));
    var_0 = 74813u;
    return vec2<bool>((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -650f)) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(760f, 943f) - _wgslsmith_f_op_f32(func_3(u_input.c.x)))) & true, false);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: u32, arg_3: vec2<f32>) -> vec4<f32> {
    let var_0 = Struct_1(u_input.c);
    let var_1 = -284f;
    global1 = any(select(select(vec2<bool>(false, true), select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(false, false), vec2<bool>(false, arg_0)), arg_0 & !arg_0), func_2(), !(!(!vec2<bool>(false, arg_0)))));
    let var_2 = var_0.a.x;
    global2 = array<i32, 18>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-375f, -1000f, 1000f, 234f)), vec4<f32>(-116f, var_1, -221f, -884f)))))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_1), -2078f, arg_3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(299f - -231f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c);
    let var_1 = u_input.b;
    global2 = array<i32, 18>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-148f, -160f, -1000f, -559f), vec4<f32>(-279f, -755f, 516f, 573f))), vec4<f32>(-1569f, -1000f, 289f, 2282f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-303f, 463f, 1000f, -489f) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1060f, -575f, -1526f, -106f), vec4<f32>(-536f, 1000f, -1034f, 1523f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(true, -1648f, var_0.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(-387f, -2649f) - vec2<f32>(-1464f, -212f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-552f, -807f, 1697f, 926f))) - vec4<f32>(-146f, 1000f, 254f, -1139f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(1590f, -149f, 569f, -417f), vec4<f32>(260f, -1304f, 1000f, 661f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-865f, 678f, -105f, 1042f) + _wgslsmith_f_op_vec4_f32(func_1(false, -1516f, 25976u, vec2<f32>(847f, -950f)))), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_3 = _wgslsmith_add_vec4_u32(~(vec4<u32>(_wgslsmith_add_u32(1u, u_input.c.x), ~879u, u_input.c.x, _wgslsmith_clamp_u32(4294967295u, 1u, 4626u)) << (vec4<u32>(_wgslsmith_clamp_u32(0u, 89937u, 4094u), 79249u, 30970u, u_input.c.x) % vec4<u32>(32u))), ~vec4<u32>(var_0.a.x, abs(~var_0.a.x), 94426u, _wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 48705u, 1u), vec3<u32>(1u, 17605u, 54419u)))));
    let var_4 = Struct_2(~u_input.b, var_0);
    global0 = _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(52967u, var_3.x), 18u)], ~u_input.b);
    var var_5 = firstLeadingBit(~(~(-reverseBits(vec4<i32>(24988i, u_input.b, -14041i, -28830i)))));
    global1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - -1039f));
}

