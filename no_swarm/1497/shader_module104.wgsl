struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: i32 = 2147483647i;

var<private> global2: f32 = 903f;

var<private> global3: vec4<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> vec2<f32> {
    var var_0 = vec2<bool>(59917u == u_input.a, global0.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -453f, -1062f)) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(297f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(110f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~vec4<u32>(_wgslsmith_mult_u32(global3.x, 62341u), ~global3.x, _wgslsmith_sub_u32(32264u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 1u), vec4<u32>(0u, global3.x, 1u, global3.x))) << (_wgslsmith_clamp_vec4_u32(max(~vec4<u32>(global3.x, u_input.a, u_input.a, 37876u), firstLeadingBit(vec4<u32>(u_input.a, global3.x, u_input.a, global3.x))), firstLeadingBit(~vec4<u32>(0u, global3.x, global3.x, global3.x)), vec4<u32>(1u, 75905u, ~u_input.a, ~global3.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(976f - -1000f)), _wgslsmith_div_f32(-1000f, -494f))));
    let var_2 = -6799i;
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_div_f32(var_1.a.x, 1322f), -1445f, 303f), vec4<u32>(_wgslsmith_dot_vec4_u32(var_1.b, firstLeadingBit(var_1.b)) & 1u, 1u, 13009u, ~11663u), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(548f))))), -146f));
    let var_4 = Struct_1(vec3<f32>(var_1.a.x, var_3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1286f)), select(var_1.b >> (~(~vec4<u32>(var_3.b.x, 43620u, var_1.b.x, 1u)) % vec4<u32>(32u)), vec4<u32>(~(0u << (0u % 32u)), _wgslsmith_clamp_u32(0u | var_1.b.x, 1u, ~u_input.a), u_input.a, var_1.b.x), !any(vec3<bool>(global0.x, true, true))), var_1.a.xz);
    return var_1.c;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1096f * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)), true)) + -515f);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, 1000f, global0.x)), -1092f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2348f)) + _wgslsmith_f_op_f32(f32(-1f) * -698f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(698f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-932f, -2014f))), _wgslsmith_f_op_f32(min(100f, _wgslsmith_f_op_f32(f32(-1f) * -716f))), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-301f, -1578f, -2003f) * vec3<f32>(225f, 1165f, 153f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-562f, -2082f, 584f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, -260f, -386f))))), ~vec4<u32>(_wgslsmith_sub_u32(abs(u_input.a), _wgslsmith_mult_u32(u_input.a, 0u)), ~_wgslsmith_dot_vec2_u32(global3.yw, vec2<u32>(u_input.a, 6369u)), 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, 4294967295u, global3.x), vec3<u32>(u_input.a, u_input.a, 63271u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) * vec2<f32>(-1517f, -1888f))))));
    global3 = ~var_1.b;
    global0 = !(!(!select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.x), select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, false), true), vec2<bool>(true, false))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.a)))) * var_1.a), ~var_1.b, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -668f), -1251f), _wgslsmith_f_op_vec2_f32(round(var_1.c)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = func_2();
    global3 = vec4<u32>(func_2().b.x, max(1898u, 1u), var_0.b.x, 56676u);
    let var_1 = all(!select(select(vec4<bool>(false, global0.x, global0.x, false), select(vec4<bool>(false, true, global0.x, false), vec4<bool>(true, global0.x, true, true), vec4<bool>(global0.x, global0.x, false, global0.x)), true), select(select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, true, false, true), true), !vec4<bool>(global0.x, false, true, global0.x), !vec4<bool>(true, false, global0.x, true)), select(vec4<bool>(true, false, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), global0.x)));
    global0 = !(!select(select(vec2<bool>(true, true), !vec2<bool>(var_1, true), true), !select(vec2<bool>(global0.x, var_1), vec2<bool>(false, var_1), vec2<bool>(true, var_1)), var_1));
    var var_2 = global3.xxy;
    return _wgslsmith_mod_vec2_u32(vec2<u32>(0u, ~_wgslsmith_clamp_u32(~1u, min(u_input.a, arg_0.b.x), ~57300u)), reverseBits(var_0.b.xw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = global3.wwz ^ global3.zyx;
    global3 = ~((firstTrailingBit(abs(vec4<u32>(1u, u_input.a, 4294967295u, 1u))) | abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_1.x, var_1.x), vec4<u32>(global3.x, var_1.x, u_input.a, 43751u)))) ^ vec4<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec2_u32(var_1.zz, global3.ww), ~82497u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 46400u) << (vec2<u32>(u_input.a, 57462u) % vec2<u32>(32u)), func_1(Struct_1(vec3<f32>(-1000f, 1815f, 170f), vec4<u32>(global3.x, var_1.x, var_1.x, 25093u), vec2<f32>(-1710f, -966f)), Struct_1(vec3<f32>(1140f, -970f, 1771f), vec4<u32>(1586u, 0u, 15515u, u_input.a), vec2<f32>(-1000f, -852f)), Struct_1(vec3<f32>(1000f, 653f, 311f), vec4<u32>(var_1.x, 31126u, 24488u, global3.x), vec2<f32>(-549f, -1000f)))), u_input.a, 35632u));
    global3 = _wgslsmith_mod_vec4_u32(min(vec4<u32>(_wgslsmith_div_u32(abs(u_input.a), 36934u), global3.x, var_1.x, _wgslsmith_div_u32(var_1.x, 109940u) & ~4294967295u), vec4<u32>(u_input.a, var_1.x, global3.x, global3.x)), vec4<u32>(~4294967295u, max(1u, global3.x << (~1772u % 32u)), firstTrailingBit(4294967295u), func_1(func_2(), func_2(), func_2()).x));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

