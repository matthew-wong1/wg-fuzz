struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 7>;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<u32, 6>;

var<private> global3: vec2<i32>;

var<private> global4: array<u32, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> f32 {
    var var_0 = u_input.b.x;
    global1 = array<Struct_1, 2>();
    var var_1 = global1[_wgslsmith_index_u32(~4294967295u & global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~select(global4[_wgslsmith_index_u32(countOneBits(0u), 14u)], _wgslsmith_mod_u32(u_input.a.x, ~u_input.c), true), 6u)], 14u)], 2u)];
    var var_2 = !(!select(select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), any(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(62847u, 18366u), 7u)])));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-698f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-540f, -1000f)), 1091f))))) - -776f);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x | u_input.d.x, ~(~arg_0.a.x)), 13260u, u_input.a.x, 4294967295u), -global3.x);
    let var_1 = 4294967295u;
    let var_2 = false;
    let var_3 = arg_0;
    return arg_2.x;
}

fn func_2() -> f32 {
    let var_0 = !any(vec2<bool>(true, -u_input.b.x >= global3.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(u_input.d.x, 49588u, u_input.a.x, 9550u), global3.x), -26493i, vec2<f32>(-2066f, -1320f))) - _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) * 1000f)), 866f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1698f - -965f) - -1724f)), _wgslsmith_f_op_f32(func_2()));
    let var_1 = !select(vec2<bool>(true, _wgslsmith_f_op_f32(select(-741f, 451f, true)) != 565f), vec2<bool>(true, any(vec3<bool>(false, false, false))), global0[_wgslsmith_index_u32(70860u, 7u)]);
    global0 = array<vec2<bool>, 7>();
    global4 = array<u32, 14>();
    global0 = array<vec2<bool>, 7>();
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 6u)], 4294967295u, global2[_wgslsmith_index_u32(0u, 6u)], 1u), vec4<u32>(global4[_wgslsmith_index_u32(u_input.d.x, 14u)], 1u, 1u, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 14u)])), ~vec4<u32>(0u, 1u, 7366u, global4[_wgslsmith_index_u32(u_input.d.x, 14u)]))) >> (~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(u_input.d.x, 14u)], global4[_wgslsmith_index_u32(u_input.d.x, 14u)], 0u, u_input.d.x), vec4<u32>(global4[_wgslsmith_index_u32(53445u, 14u)], 1u, 1u, 15047u))) % vec4<u32>(32u)), -(~1i));
    var var_3 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(select(var_2.a.x, 9728u, var_1.x), firstTrailingBit(u_input.c), min(u_input.a.x, 30103u)), reverseBits(var_2.a.xyx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 610f, var_0.x), vec3<f32>(-1000f, 515f, 1271f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -707f, var_0.x))))), _wgslsmith_clamp_vec2_u32(var_3.xz | vec2<u32>(~u_input.d.x, 66064u), vec2<u32>(_wgslsmith_add_u32(~global4[_wgslsmith_index_u32(var_3.x, 14u)], firstTrailingBit(global2[_wgslsmith_index_u32(var_2.a.x, 6u)])), ~global2[_wgslsmith_index_u32(u_input.c, 6u)]), vec2<u32>(var_2.a.x, global4[_wgslsmith_index_u32(~var_3.x, 14u)]) | (~u_input.d | _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), u_input.d))), 3308u, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(reverseBits(30672u), 2u)], global3.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0)))));
}

