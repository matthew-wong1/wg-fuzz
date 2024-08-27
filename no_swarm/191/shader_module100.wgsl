struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 24>;

var<private> global2: Struct_1 = Struct_1(0u, false, 17101u);

var<private> global3: array<u32, 3> = array<u32, 3>(56372u, 91601u, 37477u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    let var_0 = Struct_1(~countOneBits(global3[_wgslsmith_index_u32(~(u_input.a & global1[_wgslsmith_index_u32(1u, 24u)]), 3u)]), global2.b, select(0u, min(~u_input.a, 0u) | ~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 46866u), !all(select(vec3<bool>(global0.b, false, true), vec3<bool>(global2.b, global2.b, false), vec3<bool>(global0.b, global2.b, global0.b)))));
    global3 = array<u32, 3>();
    let var_1 = var_0;
    global1 = array<u32, 24>();
    var var_2 = var_0;
    return firstTrailingBit(_wgslsmith_clamp_vec2_u32(select(~vec2<u32>(3057u, 0u), vec2<u32>(1u, global2.a), !vec2<bool>(true, var_1.b)), vec2<u32>(38511u, 20769u), _wgslsmith_add_vec2_u32(min(vec2<u32>(var_0.c, 1u), vec2<u32>(4294967295u, 13771u)), abs(vec2<u32>(global3[_wgslsmith_index_u32(global0.c, 3u)], 155704u))))) >> (~(~vec2<u32>(u_input.a << (4294967295u % 32u), countOneBits(44530u))) % vec2<u32>(32u));
}

fn func_2(arg_0: f32) -> vec2<u32> {
    global3 = array<u32, 3>();
    global3 = array<u32, 3>();
    global1 = array<u32, 24>();
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(~65063u, 3u)], all(vec2<bool>(true, true)), 34207u);
    return _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 1u) >> (vec2<u32>(global1[_wgslsmith_index_u32(3136u, 24u)], 0u) % vec2<u32>(32u)), func_3(global0.c), var_0.b), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.c, 45771u), ~vec2<u32>(var_0.c, 0u))), _wgslsmith_add_u32(0u, var_0.c) >> (~_wgslsmith_mult_u32(global2.a, 74578u) % 32u)), ~(~vec2<u32>(30444u, 1u)));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_sub_u32(u_input.a, ~0u), global0.b, 57764u);
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), abs(func_2(1218f)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-868f, 1389f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1253f, -2653f), _wgslsmith_f_op_f32(554f + -457f))) + -796f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, -888f)))), _wgslsmith_f_op_f32(round(356f)))));
    var var_3 = _wgslsmith_mult_u32(firstLeadingBit(global3[_wgslsmith_index_u32(var_0.a, 3u)]), abs(~(firstTrailingBit(1u) << (_wgslsmith_mult_u32(0u, u_input.a) % 32u))));
    var var_4 = ~(~(~11477u));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -486f, var_2, var_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1558f, var_2, var_2, var_2)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1145f, var_2, -1719f, var_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 869f, var_2, 1109f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-314f, -447f, 744f, -1339f))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1365f), _wgslsmith_f_op_f32(-613f * -302f), _wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(f32(-1f) * -2072f)))), 437f, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

