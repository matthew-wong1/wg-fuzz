struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(914f, vec2<u32>(0u, 38846u), 0u);

var<private> global1: array<bool, 16> = array<bool, 16>(false, false, true, true, true, false, true, false, false, true, false, true, false, true, true, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: f32) -> vec2<i32> {
    var var_0 = select(select(vec3<bool>(select(true, any(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 16u)], false, arg_0)), true), arg_0, any(!vec2<bool>(arg_0, false))), vec3<bool>(global1[_wgslsmith_index_u32(1u, 16u)], arg_0, all(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], true, false))), vec3<bool>(any(!vec3<bool>(true, arg_0, global1[_wgslsmith_index_u32(u_input.c.x, 16u)])), false, false)), select(select(select(!vec3<bool>(arg_0, global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(50185u, 16u)], arg_0)), select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 16u)], arg_0, global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), select(vec3<bool>(arg_0, true, true), vec3<bool>(false, false, true), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 16u)], arg_0)), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, false, arg_0), global1[_wgslsmith_index_u32(global0.c, 16u)])), select(vec3<bool>(true, true, arg_0), !vec3<bool>(true, global1[_wgslsmith_index_u32(29743u, 16u)], arg_0), !vec3<bool>(global1[_wgslsmith_index_u32(27707u, 16u)], false, false))), select(!select(vec3<bool>(global1[_wgslsmith_index_u32(3144u, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)], false), vec3<bool>(global1[_wgslsmith_index_u32(global0.b.x, 16u)], global1[_wgslsmith_index_u32(u_input.c.x, 16u)], false), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 16u)], arg_0)), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], false, false)), true), select(!vec3<bool>(true, false, arg_0), vec3<bool>(false, true, true), !vec3<bool>(false, false, arg_0))), vec3<bool>(arg_0, true, true));
    var var_1 = 6917u;
    let var_2 = ~4294967295u;
    var_0 = vec3<bool>(all(vec2<bool>(arg_1.x == _wgslsmith_f_op_f32(336f * arg_1.x), arg_0 || var_0.x)), arg_0, false);
    var var_3 = true;
    return ~vec2<i32>(~((u_input.a >> (u_input.d % 32u)) >> ((global0.b.x ^ u_input.d) % 32u)), 2147483647i);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = (vec2<i32>(-1i) * -(~(~vec2<i32>(9564i, u_input.a)))) >> (_wgslsmith_div_vec2_u32(u_input.c, ~firstTrailingBit(~u_input.c)) % vec2<u32>(32u));
    var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.b), global0.a, false))) > global0.a, vec2<f32>(global0.a, global0.a), _wgslsmith_f_op_f32(max(global0.a, -515f)));
    var var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1365f)), _wgslsmith_f_op_f32(round(global0.a))))), -1281f), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 79602u), u_input.c), global0.b), global0.b.x);
    let var_2 = arg_0;
    var var_3 = global0.a;
    return Struct_1(var_2.a.x, u_input.c, ~(~1u));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(global0.a));
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    global1 = array<bool, 16>();
    global0 = func_2(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, -479f)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2119f, -511f)))))), global0.a));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, global0.a)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(330f, var_0)))), arg_0.yw, reverseBits(9450u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: i32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-322f)), _wgslsmith_div_f32(global0.a, 1223f)) * vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.a)), _wgslsmith_f_op_f32(-760f + 1706f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(729f)), global0.a), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.a, -108f))))), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.c, 16u)] & global1[_wgslsmith_index_u32(23411u, 16u)], true)))), arg_0.a);
    let var_1 = var_0;
    global1 = array<bool, 16>();
    var var_2 = vec3<u32>(u_input.c.x, 1u, firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, ~1u, u_input.b)));
    var var_3 = true;
    return -2329f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, global0.b.x, 17491u), vec4<u32>(u_input.d, u_input.b, 4294967295u, global0.b.x))), func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c, 4294967295u, 0u, u_input.b), vec4<u32>(0u, 4294967295u, u_input.b, u_input.b))), countOneBits(-vec2<i32>(u_input.a, 15064i)), -u_input.a ^ -26122i)), global0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1680f * global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec2<f32>(281f, global0.a), 470f)).a - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-795f, 1000f) * 155f))), -632f);
    global1 = array<bool, 16>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-157f - var_0.x) * 1000f), func_1(vec4<u32>(global0.b.x, 1u, 3849u, u_input.b)).a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -683f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(-741f, -2248f)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_0.ww)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_0.x)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.xy))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(-var_1.b)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, _wgslsmith_f_op_f32(global0.a - -933f)))), var_2.a.x);
    global1 = array<bool, 16>();
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1248f))) + 1014f)), u_input.c, u_input.d);
    var_4 = Struct_1(260f, global0.b, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.a | -36513i, -u_input.a, abs(u_input.a | _wgslsmith_div_i32(u_input.a, 72983i)), 1i));
}

