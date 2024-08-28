struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: i32 = 6637i;

var<private> global2: Struct_1 = Struct_1(1i, false);

var<private> global3: array<i32, 29>;

var<private> global4: array<f32, 17> = array<f32, 17>(-133f, -322f, 1000f, 100f, 854f, 338f, -460f, 1368f, -249f, -756f, -171f, 1005f, -1230f, -774f, 1114f, 2226f, -982f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<i32> {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)), select(~vec2<u32>(4176u, 0u), ~vec2<u32>(4294967295u, 10111u), all(vec4<bool>(false, false, global2.b, global2.b))))) ^ firstLeadingBit(~0u), 29u)];
    let var_0 = global0[_wgslsmith_index_u32(43153u, 28u)];
    let var_1 = 9097u;
    global2 = Struct_1(u_input.a.x, var_0.b);
    let var_2 = -vec3<i32>(30197i, -26839i, u_input.a.x);
    return var_2.zz;
}

fn func_2() -> Struct_1 {
    var var_0 = func_3();
    global2 = Struct_1(abs(-((var_0.x ^ global3[_wgslsmith_index_u32(45232u, 29u)]) & -1844i)), all(vec2<bool>(global2.b, true)));
    global0 = array<Struct_1, 28>();
    var var_1 = global0[_wgslsmith_index_u32(min(1u, 105483u), 28u)];
    global3 = array<i32, 29>();
    return global0[_wgslsmith_index_u32(~30853u, 28u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> u32 {
    let var_0 = arg_0;
    global0 = array<Struct_1, 28>();
    let var_1 = var_0;
    var var_2 = func_2();
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(18741u, 17u)])))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 17u)])))), global4[_wgslsmith_index_u32(firstTrailingBit(max(1u, 1u)), 17u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 17u)])))));
    return _wgslsmith_clamp_u32(58994u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~(~vec2<u32>(74287u, 2241u)), vec2<u32>(1u, 1u)), reverseBits(vec2<u32>(_wgslsmith_add_u32(45318u, 23155u), 1u))), countOneBits(76033u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~1u >> ((firstTrailingBit(13590u) >> (_wgslsmith_mult_u32(29751u, 0u) % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23746u, 0u, 12870u), vec4<u32>(53130u, 10292u, 40701u, 47611u)), ~26925u) | 30398u), 126064u), 28u)];
    global3 = array<i32, 29>();
    var var_1 = 1u;
    let var_2 = vec2<u32>(1u, _wgslsmith_div_u32(4294967295u, ~max(65090u, 16236u) >> (func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(11510u, 1u), vec2<u32>(50864u, 1u)), 28u)], !vec4<bool>(true, global2.b, var_0.b, false), Struct_1(global2.a, var_0.b), any(vec4<bool>(global2.b, true, true, false))) % 32u)));
    let var_3 = (1u << ((0u >> (var_2.x % 32u)) % 32u)) > abs(~10381u);
    var var_4 = firstTrailingBit(~var_2.x);
    let var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-min(vec4<i32>(1i, global2.a >> (45988u % 32u), ~global3[_wgslsmith_index_u32(var_5, 29u)], 1i), vec4<i32>(~var_0.a, global3[_wgslsmith_index_u32(~var_5, 29u)], -7089i, 1i << (var_5 % 32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(abs(36322u), 17u)]))))));
}

