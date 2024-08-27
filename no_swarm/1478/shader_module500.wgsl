struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(26287u, 10715u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(1u, 73726u), vec2<u32>(0u, 4294967295u), vec2<u32>(6046u, 1u), vec2<u32>(0u, 1878u), vec2<u32>(0u, 43342u), vec2<u32>(0u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(84501u, 6755u), vec2<u32>(37380u, 0u), vec2<u32>(0u, 44784u), vec2<u32>(36643u, 4294967295u), vec2<u32>(46522u, 89800u), vec2<u32>(19780u, 0u), vec2<u32>(1u, 0u), vec2<u32>(0u, 10472u), vec2<u32>(4294967295u, 32705u), vec2<u32>(4294967295u, 1u), vec2<u32>(33540u, 29630u));

var<private> global1: array<Struct_2, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global1 = array<Struct_2, 6>();
    let var_0 = arg_0.d;
    global1 = array<Struct_2, 6>();
    var var_1 = -_wgslsmith_div_i32(1i, arg_0.e);
    global0 = array<vec2<u32>, 25>();
    return u_input.a;
}

fn func_3() -> i32 {
    let var_0 = select(~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 6736i, 1i), select(firstLeadingBit(vec3<i32>(-19693i, -2147483647i, 12493i)), vec3<i32>(0i, -2147483647i, 9479i), false), select(vec3<i32>(2215i, 1i, 4913i), vec3<i32>(0i, -2147483647i, 1i), vec3<bool>(true, false, false)) >> (abs(vec3<u32>(3768u, 4294967295u, u_input.a)) % vec3<u32>(32u))), ~abs(~max(vec3<i32>(0i, 0i, -38451i), vec3<i32>(-2982i, -1i, -2147483647i))), all(!vec3<bool>(true, true, all(vec2<bool>(false, true)))));
    global1 = array<Struct_2, 6>();
    let var_1 = Struct_1(false, select(select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, all(vec4<bool>(true, false, false, false))), select(vec2<bool>(false, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), false))), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), 56253u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1266f)))));
    var var_2 = vec3<i32>(22998i, select(abs(reverseBits(var_0.x) & _wgslsmith_sub_i32(var_0.x, -2147483647i)), max(-(var_0.x | var_0.x), abs(max(0i, var_0.x))), true), ~var_0.x);
    var var_3 = abs(_wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(~u_input.a), 41968u), u_input.a));
    return 1i;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(Struct_1(false, vec2<bool>(false, -19905i != func_3()), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 1u), ~vec3<u32>(49894u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-626f * _wgslsmith_f_op_f32(step(-1000f, -1269f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -263f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1574f, 1860f) - _wgslsmith_f_op_f32(-104f * 390f)))), Struct_1(!select(29739u >= u_input.a, true, true), !vec2<bool>(true, u_input.a <= u_input.a), abs(u_input.a), _wgslsmith_f_op_f32(step(-567f, _wgslsmith_f_op_f32(round(132f))))), Struct_1(_wgslsmith_f_op_f32(1035f + _wgslsmith_f_op_f32(1233f - -623f)) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(794f)))), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), _wgslsmith_mod_u32(u_input.a, u_input.a) != (4294967295u << (u_input.a % 32u))), ~(~_wgslsmith_div_u32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-560f, _wgslsmith_f_op_f32(f32(-1f) * -385f)) * 145f)), reverseBits(2147483647i));
    var var_1 = !var_0.d.b;
    let var_2 = var_0.a;
    let var_3 = var_0.c;
    global0 = array<vec2<u32>, 25>();
    return min(var_3.c, 24155u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 6>();
    global0 = array<vec2<u32>, 25>();
    let var_0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(1u, u_input.a)) ^ vec2<u32>(u_input.a, u_input.a), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], vec2<u32>(1u, u_input.a) << (global0[_wgslsmith_index_u32(u_input.a, 25u)] % vec2<u32>(32u))), vec2<u32>(~u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 25u)])) | firstLeadingBit(~(func_1(Struct_2(Struct_1(true, vec2<bool>(true, false), 18396u, -794f), vec2<f32>(534f, 1000f), Struct_1(false, vec2<bool>(false, true), u_input.a, -208f), Struct_1(false, vec2<bool>(true, true), u_input.a, 1146f), 16459i)) | func_2()));
    let var_1 = 0u;
    let var_2 = -8189i;
    var var_3 = Struct_1(all(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec2<bool>(any(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false))), 17591u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-709f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f + -337f)))));
    let var_4 = -13171i;
    global1 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~firstLeadingBit(vec2<i32>(var_2, var_4))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, var_4), vec2<i32>(var_4 & var_2, var_4 << (0u % 32u))), var_3.b), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.d, 819f, 1290f, var_3.d)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1309f * var_3.d)), -1619f, _wgslsmith_f_op_f32(var_3.d - _wgslsmith_f_op_f32(-var_3.d)), _wgslsmith_f_op_f32(var_3.d * -243f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d - var_3.d)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(var_3.d)), _wgslsmith_f_op_f32(-var_3.d)) * vec2<f32>(var_3.d, _wgslsmith_f_op_f32(var_3.d + -210f))))));
}

