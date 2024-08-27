struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: array<i32, 4> = array<i32, 4>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648));

var<private> global3: f32 = -725f;

var<private> global4: vec3<i32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: u32) -> bool {
    global2 = array<i32, 4>();
    let var_0 = select(-global2[_wgslsmith_index_u32(global0.a.x, 4u)], -(~global2[_wgslsmith_index_u32(arg_0, 4u)]), true) >= global4.x;
    var var_1 = firstTrailingBit(vec3<i32>(-(~(-global2[_wgslsmith_index_u32(global0.a.x, 4u)])), min(countOneBits(select(-1i, global4.x, true)), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(29512u, arg_0), 4u)]), ~(-countOneBits(13744i))));
    let var_2 = Struct_1(global0.a);
    global1 = _wgslsmith_sub_vec4_u32(select(~vec4<u32>(max(35494u, global1.x), ~var_2.a.x, 0u, arg_0), countOneBits(vec4<u32>(1u, 37567u, arg_0, 4294967295u) & vec4<u32>(global1.x, arg_0, global1.x, global0.a.x)) ^ ~(~u_input.a), !select(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, var_0, true), false), select(vec4<bool>(var_0, true, false, var_0), vec4<bool>(true, false, var_0, var_0), var_0), !vec4<bool>(var_0, var_0, var_0, false))), abs(~vec4<u32>(12580u, 51020u, 4846u >> (global1.x % 32u), 21092u << (global0.a.x % 32u))));
    return true;
}

fn func_3() -> bool {
    var var_0 = true;
    let var_1 = Struct_1(abs(_wgslsmith_mult_vec4_u32(global0.a, abs(global0.a))));
    var var_2 = firstLeadingBit(~(-vec3<i32>(global4.x, 1i, global4.x)));
    let var_3 = 42911i > ~min(0i, _wgslsmith_sub_i32(2147483647i, global2[_wgslsmith_index_u32(global0.a.x, 4u)]));
    let var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, firstLeadingBit(global0.a.x), _wgslsmith_div_u32(~var_1.a.x, 31506u), reverseBits(global1.x)), vec4<u32>(33296u, ~var_1.a.x, ~1u, ~(~u_input.a.x))) ^ ~global1.x;
    return !any(select(select(vec2<bool>(true, true), !vec2<bool>(var_3, true), all(vec2<bool>(true, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, var_3), vec2<bool>(false, true), vec2<bool>(false, var_3)), vec2<bool>(var_3, var_3), all(vec4<bool>(var_3, true, false, var_3)))));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = !select(vec3<bool>(all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true))), true), vec3<bool>(true, func_2(_wgslsmith_dot_vec3_u32(u_input.a.xwx, global1.wzz)), true), !((4294967295u >= global1.x) & true));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(1i, global4.x), global4.yz);
    global1 = abs(global0.a);
    var var_2 = !(!vec3<bool>(false, var_0.x, true));
    var var_3 = func_3();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1068f, -362f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -904f), 1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-382f, -395f), _wgslsmith_f_op_f32(f32(-1f) * -2723f)), _wgslsmith_div_vec2_f32(vec2<f32>(-248f, -608f), vec2<f32>(-569f, -614f)), true)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2390f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(func_1(13522u)), _wgslsmith_f_op_f32(-364f + -1775f))))));
    var var_1 = global4.x;
    let var_2 = Struct_1(u_input.a);
    var var_3 = false;
    var_1 = global2[_wgslsmith_index_u32(global1.x, 4u)];
    var var_4 = false;
    var_3 = any(vec3<bool>(true, any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), true)), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 195f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))) - _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1569f), _wgslsmith_div_vec2_f32(vec2<f32>(-827f, 1168f), vec2<f32>(var_0.x, var_0.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 449f), vec2<f32>(var_0.x, var_0.x))))), min(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~var_2.a.wyz, _wgslsmith_sub_vec3_u32(vec3<u32>(22127u, 0u, 0u), u_input.a.wzw)), ~global1.yzx), global1.ywy), abs(vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(var_2.a.x, 4u)], global4.x, 2147483647i, global4.x), vec4<i32>(0i, global4.x, 5182i, global2[_wgslsmith_index_u32(global0.a.x, 4u)]) >> (global0.a % vec4<u32>(32u))), max(-global4.x, global4.x), 0i)), countOneBits(-(vec4<i32>(global4.x, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(u_input.a.x, 4u)], -6365i) ^ vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(global1.x, 4u)], global2[_wgslsmith_index_u32(u_input.b, 4u)], global4.x))));
}

