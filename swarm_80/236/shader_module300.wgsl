struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -405f), 1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1720f + 1196f)))));
    let var_1 = select(_wgslsmith_mult_vec2_i32(max(arg_0 & select(vec2<i32>(arg_2.d, 4657i), vec2<i32>(-2147483647i, -49269i), arg_1.a.wx), -(~vec2<i32>(arg_1.c.d, 0i))), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.e.x), ~u_input.d.yx))), vec2<i32>(_wgslsmith_mod_i32(arg_2.d, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(53081i, arg_1.b.d, arg_0.x), arg_0.x)), i32(-1i) * -47568i), select(!vec2<bool>(arg_2.b, true), arg_1.a.ww, !select(arg_1.a.xy, !arg_1.a.wx, vec2<bool>(arg_2.a, arg_2.a))));
    var var_2 = firstTrailingBit(-(vec4<i32>(arg_1.b.d, arg_1.c.d, select(1i, 11847i, arg_1.c.a), firstTrailingBit(0i)) | vec4<i32>(select(var_1.x, arg_1.c.d, arg_1.a.x), min(-68355i, var_1.x), countOneBits(2147483647i), ~arg_0.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(794f + _wgslsmith_f_op_f32(sign(999f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(max(199f, _wgslsmith_f_op_f32(f32(-1f) * -1789f)))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-410f - _wgslsmith_f_op_f32(-630f + -1083f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1195f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(942f + -287f))))));
    let var_3 = !vec3<bool>(arg_1.b.a || arg_1.a.x, true, false);
    return _wgslsmith_f_op_f32(-510f - 437f);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    return vec4<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.e, Struct_2(vec4<bool>(true, arg_0, true, arg_0), Struct_1(true, arg_0, 12703u, 2147483647i), arg_2.b, u_input.a.x), arg_2.c)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3)) + _wgslsmith_f_op_f32(arg_3 - 424f))), all(!(!arg_2.a.ywy)), any(select(select(arg_2.a, arg_2.a, arg_2.a), arg_2.a, true)) | !arg_2.a.x);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = ~(~vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(401u, arg_2.c), u_input.a.yz)), 0u));
    var var_1 = Struct_1(!any(!vec3<bool>(arg_1.b, false, arg_2.a)), false, firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c, 52705u), abs(u_input.a.yy))), -26654i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1090f, 223f)), _wgslsmith_f_op_f32(f32(-1f) * -968f)) - 1806f) * _wgslsmith_f_op_f32(select(1f, 195f, any(!func_1(false, arg_0, Struct_2(vec4<bool>(false, var_1.a, false, arg_2.a), arg_2, Struct_1(arg_2.a, arg_2.a, 46692u, -1i), 60284u), 400f).zy))));
    var_1 = arg_1;
    var var_3 = Struct_1(func_1(false || var_1.a, vec3<i32>(-1i, _wgslsmith_add_i32(-64187i, var_1.d), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d, 15232i, arg_2.d, 7135i), vec4<i32>(u_input.e.x, var_1.d, u_input.d.x, u_input.e.x))), Struct_2(vec4<bool>(arg_2.a, true, false, var_1.a), Struct_1(var_1.a, var_1.a, 4294967295u, var_1.d), Struct_1(true, var_1.a, 26088u, -1i), ~39529u), _wgslsmith_f_op_f32(f32(-1f) * -844f)).x != true, arg_2.a, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~(~24518u), 17105u), ~_wgslsmith_div_u32(21258u, var_1.c) ^ u_input.b, ~_wgslsmith_clamp_u32(0u & var_0.x, arg_2.c, global0[_wgslsmith_index_u32(arg_2.c << (30981u % 32u), 7u)])), arg_0.x);
    return !vec4<bool>(true, true, true, arg_2.d > -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_0 = Struct_2(select(select(select(func_1(true, u_input.d, Struct_2(vec4<bool>(false, false, true, true), Struct_1(true, false, u_input.a.x, u_input.d.x), Struct_1(false, true, 1u, 0i), 6245u), 445f), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, all(vec2<bool>(true, true)), all(vec2<bool>(false, true)), select(true, true, false)), select(vec4<bool>(true, true, true, true), func_1(true, u_input.d, Struct_2(vec4<bool>(true, true, false, true), Struct_1(true, true, u_input.b, -2147483647i), Struct_1(false, true, 1u, u_input.d.x), u_input.a.x), 702f), func_3(u_input.d, Struct_1(true, false, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52266u, 7u)], 7u)], u_input.c.x), Struct_1(false, false, 1u, u_input.d.x))), !select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false)), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true))), Struct_1(false, true, u_input.a.x << (_wgslsmith_clamp_u32(~u_input.b, max(u_input.b, global0[_wgslsmith_index_u32(37345u, 7u)]), ~global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) % 32u), ~(_wgslsmith_add_i32(u_input.e.x, u_input.c.x) | 1i)), Struct_1(any(vec2<bool>(true, all(vec4<bool>(false, false, true, false)))), true, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(44136u, 13451u), u_input.a.x), abs(_wgslsmith_mod_i32(~u_input.e.x, u_input.e.x))), 46669u);
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_1 = u_input.e.x;
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(min(select(_wgslsmith_dot_vec2_u32(vec2<u32>(42144u, 74633u) << (u_input.a.xx % vec2<u32>(32u)), vec2<u32>(4294967295u, 75479u)), firstTrailingBit(1u), false), ~_wgslsmith_add_u32(var_0.c.c, global0[_wgslsmith_index_u32(~var_0.d, 7u)])));
}

