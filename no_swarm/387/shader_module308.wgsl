struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_2,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(countOneBits(4294967295u)), 3u)], 3u)], 3u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 52437u), vec2<u32>(4294967295u, 1063u) | min(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(12618u, 3u)]), vec2<u32>(135479u, 4183u)))), global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 112240u), 3u)]);
    let var_1 = firstTrailingBit(firstLeadingBit(countOneBits(vec4<u32>(select(0u, global0[_wgslsmith_index_u32(1u, 3u)], arg_0.x), ~4294967295u, ~4294967295u, firstLeadingBit(var_0.x)))));
    var_0 = ~var_1.yzz;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1930f, _wgslsmith_f_op_f32(select(-1146f, -132f, false))), 916f)), _wgslsmith_f_op_f32(max(1642f, 912f))), -1000f);
    var var_3 = Struct_1(var_1.wyz);
    return Struct_2(var_2, arg_0.x);
}

fn func_2(arg_0: Struct_3) -> i32 {
    global0 = array<u32, 3>();
    var var_0 = arg_0.b.b;
    let var_1 = Struct_1(countOneBits(vec3<u32>(~u_input.b, select(1u, 1u, !arg_0.b.b), ~1u)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -507f) < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1097f)));
    var var_2 = 0i;
    return i32(-1i) * -2971i;
}

fn func_3(arg_0: i32, arg_1: bool) -> StorageBuffer {
    let var_0 = 1532f;
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_1 = Struct_4(vec4<i32>(max(~u_input.a.x, reverseBits(0i)), _wgslsmith_sub_i32(~reverseBits(u_input.a.x), -func_2(Struct_3(u_input.b, Struct_2(var_0, false)))), ~func_2(Struct_3(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 3u)], 3u)], 3u)], 3u)], 3u)], Struct_2(874f, false))), ~(~countOneBits(0i))), Struct_3(abs(40557u), Struct_2(_wgslsmith_f_op_f32(max(445f, var_0)), all(vec2<bool>(arg_1, arg_1)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1100f) - func_1(vec2<bool>(arg_1, true)).a)), true), select(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 3u)], ~15233u, 21046u << (u_input.b % 32u)), max(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b, 3u)], u_input.b, u_input.b) >> (vec3<u32>(0u, u_input.b, 1u) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(13663u, 3u)], 52217u, u_input.b) | vec3<u32>(global0[_wgslsmith_index_u32(0u, 3u)], 7196u, global0[_wgslsmith_index_u32(u_input.b, 3u)]))), _wgslsmith_sub_vec3_u32(vec3<u32>(~104290u, u_input.b & u_input.b, u_input.b), reverseBits(vec3<u32>(82658u, global0[_wgslsmith_index_u32(u_input.b, 3u)], 0u) >> (vec3<u32>(1u, u_input.b, 0u) % vec3<u32>(32u)))), vec3<bool>(!func_1(vec2<bool>(false, false)).b, arg_1, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_0 - 750f), _wgslsmith_f_op_f32(f32(-1f) * -1857f))))));
    return StorageBuffer(~var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec3<bool>(false, any(vec4<bool>(true, false, true, true)) && true, any(vec4<bool>(true, true, true, true))));
    global0 = array<u32, 3>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -293f), -941f))))));
    var var_2 = vec2<i32>(~(i32(-1i) * -8848i), u_input.a.x);
    let x = u_input.a;
    s_output = func_3(func_2(Struct_3(0u, func_1(vec2<bool>(true, true)))) & min(_wgslsmith_mult_i32(_wgslsmith_mult_i32(27988i, 0i), ~u_input.a.x), 4452i), !(all(vec2<bool>(false, false)) & any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
}

