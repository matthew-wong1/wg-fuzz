struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: vec4<f32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
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

var<private> global0: Struct_3;

var<private> global1: array<vec3<u32>, 7>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    global1 = array<vec3<u32>, 7>();
    return global0.c;
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = -(-vec4<i32>(~2147483647i, _wgslsmith_mod_i32(2147483647i, 2147483647i), _wgslsmith_clamp_i32(48739i, -546i, 20116i), 1i) & vec4<i32>(22831i, _wgslsmith_mod_i32(1i, -25727i), firstTrailingBit(-47195i), abs(~(-53136i))));
    global1 = array<vec3<u32>, 7>();
    var var_1 = Struct_4(vec2<u32>(79u, firstLeadingBit(~(~4294967295u))), Struct_3(firstTrailingBit(select(vec2<u32>(global0.a.x, global0.d.x) & global0.d.yx, abs(global0.a), !vec2<bool>(false, arg_0.x))), Struct_2(global0.c.x, global0.b.b, Struct_1(8090u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -251f))), global0.e), global0.c, global1[_wgslsmith_index_u32(27501u, 7u)], global0.b.e), Struct_2(-1326f, global0.b.c, Struct_1(1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b.d)) - _wgslsmith_f_op_f32(min(-1000f, global0.b.a)))), global0.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2364f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f - 203f)), global0.c.x, _wgslsmith_f_op_f32(trunc(global0.b.d)))), _wgslsmith_f_op_vec4_f32(func_3()));
    let var_2 = Struct_4(vec2<u32>(69812u, 1u), var_1.b, Struct_2(var_1.b.b.a, Struct_1(global0.d.x), Struct_1(global0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-485f - 911f)))), Struct_1(41828u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(-782f, 967f, -603f, 765f)), global0.c))) + _wgslsmith_f_op_vec4_f32(round(global0.c))), _wgslsmith_f_op_vec4_f32(select(global0.c, var_1.e, vec4<bool>(any(vec2<bool>(false, true)), !any(vec3<bool>(false, true, true)), any(select(vec4<bool>(true, arg_0.x, arg_0.x, false), arg_0, vec4<bool>(true, false, false, arg_0.x))), arg_0.x))));
    var var_3 = global0.c.wx;
    return Struct_3(var_1.a, Struct_2(-1162f, Struct_1(~_wgslsmith_add_u32(u_input.b, 10392u)), var_1.b.e, var_3.x, Struct_1(4294967295u)), _wgslsmith_f_op_vec4_f32(trunc(var_1.d)), vec3<u32>(_wgslsmith_clamp_u32(~var_2.a.x, var_2.b.d.x, ~7u), min(var_2.a.x, 28518u), 31283u), global0.e);
}

fn func_1() -> u32 {
    global0 = func_2(!vec4<bool>(false, false, _wgslsmith_f_op_f32(select(-149f, global0.b.a, true)) != -711f, all(vec2<bool>(true, true))));
    global1 = array<vec3<u32>, 7>();
    var var_0 = Struct_4(global0.d.yz, Struct_3(global0.d.yz, func_2(vec4<bool>(true, true, true, true)).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.c.x)), _wgslsmith_f_op_f32(global0.b.a + global0.c.x), 856f, global0.c.x)), max(global1[_wgslsmith_index_u32(u_input.b >> (u_input.b % 32u), 7u)] | vec3<u32>(global0.e.a, 54169u, 0u), max(~global0.d, abs(global1[_wgslsmith_index_u32(0u, 7u)]))), global0.e), Struct_2(_wgslsmith_f_op_f32(sign(589f)), global0.b.b, func_2(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), all(vec2<bool>(false, true)))).b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1182f)), func_2(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(false, true, false, false)))).b.b), vec4<f32>(-1293f, -1432f, 620f, -209f), vec4<f32>(-624f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global0.c.x * global0.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - -326f)));
    let var_1 = false;
    global1 = array<vec3<u32>, 7>();
    return 14755u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 63998u;
    global1 = array<vec3<u32>, 7>();
    var var_1 = global0.b;
    let var_2 = select(select(true, func_1() <= countOneBits(var_1.e.a), any(vec4<bool>(true, true, all(vec3<bool>(false, true, false)), var_1.a > 707f))), false, all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, -864f != global0.c.x, select(false, false, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false))));
    let var_3 = _wgslsmith_add_u32(4294967295u, u_input.b);
    var var_4 = _wgslsmith_f_op_vec3_f32(-global0.c.xxz);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global0.d.x));
}

