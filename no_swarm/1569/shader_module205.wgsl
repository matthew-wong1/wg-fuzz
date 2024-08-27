struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: array<vec4<i32>, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.x, -370f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.e.x, arg_2.e.x)))))));
    var var_1 = arg_2;
    var var_2 = 4294967295u;
    var var_3 = arg_2.a;
    let var_4 = _wgslsmith_div_f32(arg_2.e.x, _wgslsmith_div_f32(-733f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1407f * arg_1.x)))));
    return var_1.a.x;
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(~vec4<u32>(u_input.b, abs(64037u), u_input.d.x, ~1u) << (vec4<u32>(_wgslsmith_dot_vec3_u32(~u_input.d, select(vec3<u32>(u_input.a.x, 4294967295u, 65730u), u_input.a, false)), ~min(u_input.d.x, 0u), ~(~4411u), 0u) % vec4<u32>(32u)), false, global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, func_3(Struct_1(vec4<u32>(u_input.d.x, u_input.a.x, 38054u, 8526u), true, vec4<i32>(u_input.e, global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.c.x, -1517i), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<f32>(-370f, 138f)), vec3<f32>(312f, -293f, 373f), Struct_1(vec4<u32>(u_input.d.x, 1u, 4294967295u, u_input.a.x), false, vec4<i32>(-1i, 2773i, u_input.c.x, 1i), u_input.c, vec2<f32>(-1759f, -2017f))), 47865u), 30u)] ^ firstTrailingBit(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 0u) >> (_wgslsmith_add_u32(u_input.d.x, 0u) % 32u), 30u)]), vec3<i32>(u_input.c.x, firstTrailingBit(-global0[_wgslsmith_index_u32(~66936u, 8u)]), -(countOneBits(u_input.c.x) ^ global0[_wgslsmith_index_u32(u_input.a.x & 0u, 8u)])), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1469f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1644f - -823f) * 1f)))));
    let var_1 = 697f;
    let var_2 = _wgslsmith_add_u32(var_0.a.x, ~(~select(u_input.b, ~u_input.b, var_0.b)));
    global1 = array<vec4<i32>, 30>();
    var var_3 = vec4<bool>(true, var_0.b, !any(!select(vec2<bool>(var_0.b, false), vec2<bool>(false, var_0.b), false)), true);
    return select(!(!(!vec3<bool>(false, var_3.x, true))), var_3.www, false & var_3.x);
}

fn func_1() -> f32 {
    var var_0 = u_input.a.x;
    var var_1 = vec3<u32>(78238u, max(firstTrailingBit(~u_input.a.x), ~33348u), abs(15127u));
    var var_2 = vec3<i32>(-1i, ~((-27453i >> (var_1.x % 32u)) & _wgslsmith_mult_i32(-1i, -30566i)), global0[_wgslsmith_index_u32(u_input.a.x, 8u)]);
    let var_3 = u_input.d.x;
    let var_4 = !select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), func_2()), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), true), select(vec3<bool>(true, all(vec3<bool>(true, false, true)), false), vec3<bool>(any(vec3<bool>(true, false, true)), true, false), any(vec4<bool>(true, false, false, false)) & (u_input.b < 17746u)), !(!func_2()));
    return _wgslsmith_f_op_f32(min(-287f, _wgslsmith_f_op_f32(round(153f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 198f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(select(-1881f, -374f, false)))) - -423f)));
    var var_2 = vec3<f32>(488f, _wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f) + -729f));
    global0 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1681f, var_2.x, -1785f))), ~firstLeadingBit(11800u));
}

