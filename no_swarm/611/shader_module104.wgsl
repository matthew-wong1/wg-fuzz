struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26>;

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(16907i, 1i, 0i, -6618i), vec4<i32>(1i, 39854i, -21727i, 1i), vec4<i32>(-1i, -5774i, -7520i, 2147483647i), vec4<i32>(i32(-2147483648), 5534i, 1i, -1i), vec4<i32>(29088i, -30324i, -1i, 18190i), vec4<i32>(i32(-2147483648), -14780i, 9031i, 0i), vec4<i32>(46710i, 1930i, -1i, 1i), vec4<i32>(-12125i, -9247i, -29251i, 47180i), vec4<i32>(1i, -1i, -49379i, 54922i), vec4<i32>(1i, 1i, 1i, 6007i), vec4<i32>(0i, 9455i, -81908i, 1i), vec4<i32>(6174i, 2147483647i, 2147483647i, -1i), vec4<i32>(165i, i32(-2147483648), 10003i, 0i), vec4<i32>(-28223i, 9645i, -81083i, -32281i), vec4<i32>(16889i, -16609i, 0i, 0i));

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<bool>) -> bool {
    let var_0 = Struct_1(select(select(vec4<bool>(!arg_2.x, true, true, all(arg_2.yzx)), !arg_2, any(vec4<bool>(arg_2.x, arg_2.x, true, arg_0))), arg_2, true), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, global2.x)), _wgslsmith_div_vec2_f32(vec2<f32>(-1081f, global2.x), vec2<f32>(global2.x, 2290f))) - vec2<f32>(global2.x, _wgslsmith_f_op_f32(-762f + global2.x))))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(23599u, 1u)), 1u), 26u)], select(!select(arg_2, !arg_2, arg_2), arg_2, arg_2.x), 38665i);
    global0 = array<vec4<f32>, 26>();
    global2 = var_0.b;
    let var_1 = 1i;
    var var_2 = ~_wgslsmith_div_vec2_u32(~min(vec2<u32>(115737u, arg_1.x), abs(vec2<u32>(arg_1.x, 45672u))), _wgslsmith_add_vec2_u32(vec2<u32>(25337u, firstTrailingBit(arg_1.x)), ~abs(arg_1.yx)));
    return !arg_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = vec2<u32>(~4294967295u, 4294967295u) & _wgslsmith_mult_vec2_u32(abs(~vec2<u32>(u_input.a, 1u)), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 87111u), vec2<u32>(u_input.a, 1u)), u_input.a), _wgslsmith_sub_u32(~0u, min(u_input.a, 1u))));
    let var_1 = select(~vec2<i32>(-14609i, arg_1.e), max(vec2<i32>(-57450i, abs(arg_2.e) << (4294967295u % 32u)), vec2<i32>(arg_1.e, arg_3.e)), func_3(true, abs(vec4<u32>(firstTrailingBit(var_0.x), u_input.a, 112439u, ~u_input.a)), arg_3.d));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_0.c.yw))));
    global0 = array<vec4<f32>, 26>();
    var var_2 = vec3<u32>(32518u, 1u, _wgslsmith_sub_u32(var_0.x, ~11562u << (~min(var_0.x, u_input.a) % 32u)));
    return !all(vec3<bool>(arg_0.a.x, true, !arg_3.a.x));
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(!vec4<bool>(any(vec4<bool>(false, false, arg_0.d.x, true)), !func_2(arg_0, arg_0, Struct_1(arg_0.a, vec2<f32>(global2.x, arg_0.c.x), vec4<f32>(-319f, global2.x, global2.x, global2.x), vec4<bool>(false, arg_0.d.x, true, arg_0.a.x), -2147483647i), Struct_1(arg_0.d, arg_0.b, global0[_wgslsmith_index_u32(u_input.a, 26u)], vec4<bool>(false, false, arg_0.d.x, arg_0.a.x), arg_0.e)), !(arg_0.a.x || arg_0.a.x), _wgslsmith_add_u32(0u, 0u) > firstTrailingBit(u_input.a)), arg_0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c.x, global2.x)) * -676f), -1938f, -1634f, -597f)), vec4<bool>(func_3(arg_0.d.x, abs(vec4<u32>(61568u, u_input.a, u_input.a, u_input.a)), vec4<bool>(arg_0.d.x, true, true, false)) & any(!arg_0.d.zzw), arg_0.d.x, !arg_0.d.x, true != (func_3(arg_0.a.x, vec4<u32>(59911u, 0u, u_input.a, 1u), vec4<bool>(true, arg_0.a.x, true, arg_0.d.x)) & func_3(arg_0.d.x, vec4<u32>(u_input.a, 25604u, u_input.a, 0u), arg_0.d))), 52418i);
    var var_1 = min(~(-firstTrailingBit(select(global1[_wgslsmith_index_u32(4294967295u, 15u)], vec4<i32>(27311i, -1i, var_0.e, 31639i), false))), ~global1[_wgslsmith_index_u32(u_input.a, 15u)]);
    let var_2 = Struct_1(select(select(vec4<bool>(true, func_3(true, vec4<u32>(1u, u_input.a, 62173u, u_input.a), vec4<bool>(false, var_0.d.x, var_0.a.x, false)), select(var_0.d.x, arg_0.d.x, true), -831f > var_0.b.x), vec4<bool>(u_input.a < u_input.a, arg_0.d.x, arg_0.a.x, var_0.d.x || false), arg_0.d), !select(vec4<bool>(var_0.a.x, true, arg_0.a.x, arg_0.a.x), select(arg_0.d, vec4<bool>(arg_0.a.x, var_0.a.x, false, arg_0.a.x), var_0.a), !vec4<bool>(arg_0.d.x, var_0.d.x, arg_0.a.x, true)), vec4<bool>(arg_0.d.x, !var_0.d.x, !var_0.d.x, (true & var_0.d.x) | arg_0.d.x)), var_0.c.wx, vec4<f32>(-262f, _wgslsmith_f_op_f32(-arg_0.b.x), -192f, -534f), !(!arg_0.a), select(-_wgslsmith_add_i32(var_0.e >> (0u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, var_1.x, var_1.x), vec4<i32>(-18435i, var_0.e, 1i, -30470i))), ~(-2147483647i << (select(4294967295u, u_input.a, false) % 32u)), var_0.a.x));
    let var_3 = abs(~firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(80630u, 1u), vec2<u32>(4294967295u, u_input.a)), firstTrailingBit(0u), _wgslsmith_add_u32(u_input.a, 0u))));
    let var_4 = -(~var_0.e);
    return vec2<bool>(true, any(select(vec2<bool>(var_0.d.x, all(vec3<bool>(false, false, arg_0.a.x))), !vec2<bool>(var_2.d.x, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1229f)) - _wgslsmith_f_op_f32(abs(global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(559f, global2.x)), _wgslsmith_div_f32(536f, global2.x)), vec2<f32>(-1000f, _wgslsmith_f_op_f32(global2.x + -1572f))))));
    let var_1 = !(!func_1(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(min(var_0, vec2<f32>(-231f, var_0.x))), _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(1u, 26u)] - global0[_wgslsmith_index_u32(u_input.a, 26u)]), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false), reverseBits(-2147483647i))));
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-562f, _wgslsmith_f_op_f32(-1364f + _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(367f)), _wgslsmith_f_op_f32(var_0.x + 1f))), vec2<bool>(var_1.x, func_2(Struct_1(vec4<bool>(false, false, var_1.x, var_1.x), vec2<f32>(933f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2316f, var_0.x, 3004f, global2.x)), select(vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(false, var_1.x, false, true), var_1.x), ~(-1i)), Struct_1(select(vec4<bool>(true, false, var_1.x, false), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec2_f32(-var_0), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(47713u, 26u)]), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), var_1.x), 0i), Struct_1(!vec4<bool>(var_1.x, false, false, var_1.x), vec2<f32>(-2046f, 914f), vec4<f32>(-137f, global2.x, 736f, global2.x), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), true), 853i), Struct_1(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true), var_1.x), _wgslsmith_div_vec2_f32(var_0, var_0), vec4<f32>(597f, 112f, var_0.x, global2.x), !vec4<bool>(var_1.x, true, var_1.x, true), ~(-11260i))))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f))))));
    var var_3 = countOneBits(1i);
    let x = u_input.a;
    s_output = StorageBuffer(-(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(11492i, 0i), vec2<i32>(32935i, -29118i), vec2<i32>(0i, 2147483647i))) | firstTrailingBit(vec2<i32>(2147483647i, 0i))), vec4<i32>(-26097i, _wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(1i, abs(0i)), -20377i), 1i, -23269i));
}

