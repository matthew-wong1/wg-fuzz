struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9>;

var<private> global1: array<u32, 22>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    var var_0 = vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(abs(~13192u), ~u_input.a & 46368u, all(vec2<bool>(false, false)) & true), _wgslsmith_div_u32(1u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(69580u, 4294967295u, 1u), vec3<u32>(20483u, u_input.d, u_input.a))))), 22u)], u_input.a);
    var var_1 = ~select(~vec3<u32>(~var_0.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(2319u, 112189u), 22u)], u_input.d), vec3<u32>(select(4294967295u, 1u, false), _wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(u_input.a >> (var_0.x % 32u), 22u)]), 0u), vec3<bool>(true, true, true));
    let var_2 = abs(~(~(~select(vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 22u)], 4294967295u), vec3<u32>(var_0.x, 39916u, 4294967295u), true))));
    var var_3 = max(_wgslsmith_dot_vec4_u32(select(vec4<u32>(firstLeadingBit(243u), countOneBits(63142u), 4294967295u, ~var_2.x), select(~vec4<u32>(u_input.c.x, var_1.x, var_0.x, 6762u), vec4<u32>(var_1.x, var_2.x, 8693u, 47522u), vec4<bool>(false, false, true, true)), !select(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(52665u, 9u)])), vec4<u32>(countOneBits(var_0.x) >> (abs(39425u) % 32u), _wgslsmith_dot_vec3_u32(~var_2, ~vec3<u32>(1u, var_2.x, 16593u)), ~(~u_input.a), _wgslsmith_mod_u32(u_input.a | u_input.d, var_1.x))), _wgslsmith_sub_u32(1u, 1u));
    global1 = array<u32, 22>();
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(var_1.yx), var_1.xx >> (~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(23592u, 0u)), vec2<u32>(13037u, 2737u)) % vec2<u32>(32u)));
}

fn func_2() -> vec3<u32> {
    global0 = array<vec4<bool>, 9>();
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    var var_0 = _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(u_input.d, 22u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 22u)], 22u)], 0u), select(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(1u, u_input.c.x, u_input.a), vec3<bool>(true, false, false))) >> (firstLeadingBit(~(~vec3<u32>(global1[_wgslsmith_index_u32(60479u, 22u)], 52461u, u_input.d))) % vec3<u32>(32u)), reverseBits(~vec3<u32>(min(global1[_wgslsmith_index_u32(1u, 22u)], 7801u), ~u_input.c.x, min(u_input.c.x, 11338u))));
    var var_1 = Struct_2(Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, var_0.x, 66209u) | vec4<u32>(22621u, global1[_wgslsmith_index_u32(20188u, 22u)], 4294967295u, u_input.c.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, global1[_wgslsmith_index_u32(var_0.x, 22u)], 14860u), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], 25742u, 43574u, var_0.x))), 22u)]), vec3<u32>(global1[_wgslsmith_index_u32(func_3(), 22u)], firstTrailingBit(firstLeadingBit(~var_0.x)), 77987u));
    return vec3<u32>(func_3(), max(~_wgslsmith_dot_vec2_u32(~u_input.c, ~var_0.yz), ~(~0u)), global1[_wgslsmith_index_u32(abs(~27275u), 22u)]);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec3<bool>) -> bool {
    global0 = array<vec4<bool>, 9>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(~u_input.a, ~global1[_wgslsmith_index_u32(38608u, 22u)]), countOneBits(1u)), func_2()), ~(~(~16336u >> (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(8254u, 22u)], u_input.c.x) % 32u))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.b, global1[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(5659u, 22u)], 68159u), vec2<u32>(1u, arg_0)))));
    let var_1 = u_input.b.x;
    global1 = array<u32, 22>();
    var var_2 = ~_wgslsmith_div_u32(20283u, u_input.d << (_wgslsmith_mod_u32(~arg_0, 4294967295u) % 32u));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(u_input.d, u_input.b.xx, Struct_3(Struct_1(4294967295u), 22261u, Struct_2(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec3<u32>(global1[_wgslsmith_index_u32(34585u, 22u)], u_input.c.x, global1[_wgslsmith_index_u32(19331u, 22u)]))), vec3<bool>(true, false, true))), vec3<bool>(true, any(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(11166u, global1[_wgslsmith_index_u32(0u, 22u)]), 9u)]), true), all(vec3<bool>(true, true, true)) | true));
    global1 = array<u32, 22>();
    let var_1 = -52262i;
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-891f))), _wgslsmith_f_op_f32(330f - 632f), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-195f)) * -418f))));
    let var_3 = var_2.zzx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(~countOneBits(1i), u_input.b.x >> (1u % 32u)), var_1, 1802i), abs(~(~vec3<u32>(1u, 0u, 4294967295u)) & (firstTrailingBit(vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(1u, 22u)], 4294967295u)) >> (func_2() % vec3<u32>(32u)))), _wgslsmith_sub_i32(6031i, 2147483647i));
}

