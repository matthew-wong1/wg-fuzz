struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: u32 = 104331u;

var<private> global2: array<u32, 3> = array<u32, 3>(4294967295u, 5457u, 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = Struct_3(!(_wgslsmith_f_op_f32(-219f * 421f) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(248f + global0[_wgslsmith_index_u32(1u, 14u)])))));
    var var_1 = vec3<f32>(756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~4294967295u, 14u)]))), arg_0);
    let var_2 = Struct_2(false, var_0.a, Struct_1(_wgslsmith_div_i32(0i ^ u_input.a.x, 21536i), var_0.a, vec4<bool>(!any(vec2<bool>(true, var_0.a)), !all(vec4<bool>(var_0.a, var_0.a, false, false)), any(select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(true, false, false, var_0.a), vec4<bool>(true, var_0.a, var_0.a, false))), true)));
    let var_3 = vec3<i32>(select(_wgslsmith_add_i32(var_2.c.a, abs(i32(-1i) * -1i)), firstLeadingBit(var_2.c.a), var_2.b), 1i, ~(~max(-7994i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 16092i), vec2<i32>(-2147483647i, u_input.a.x)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(662f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 981f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -1000f) * var_1.x))));
    return abs(_wgslsmith_mod_i32(-(1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 23585u), vec2<u32>(1u, u_input.b)) % 32u)), _wgslsmith_div_i32(-9841i, 15632i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec2<i32>) -> Struct_3 {
    global2 = array<u32, 3>();
    let var_0 = 55504u;
    var var_1 = Struct_3(false);
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(func_3(1000f), ~func_3(arg_1.x)), arg_2 | vec2<i32>(-2147483647i, arg_2.x));
    var var_3 = Struct_2(true, var_1.a, Struct_1(arg_2.x, false, !select(!vec4<bool>(var_1.a, false, true, true), !vec4<bool>(true, false, var_1.a, false), vec4<bool>(var_1.a, var_1.a, true, var_1.a))));
    return Struct_3(select(!all(!vec3<bool>(false, var_3.b, var_3.c.b)), var_1.a, true));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_3 {
    global1 = 0u;
    var var_0 = !all(arg_2);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 + vec4<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b), 14u)], -2169f, arg_1.x, arg_1.x)));
    return func_2(~vec4<u32>(u_input.b, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], ~(~u_input.b), 12596u), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.x)), vec2<i32>(abs(abs(-1i)), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(false, !((all(vec2<bool>(true, true)) & false) & true));
    let var_1 = func_1(_wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(-58045i, u_input.a.x, -738i, -1i) ^ vec4<i32>(-3719i, 0i, u_input.a.x, u_input.a.x))), vec4<i32>(_wgslsmith_mult_i32(1i, countOneBits(u_input.a.x)), _wgslsmith_dot_vec2_i32(~u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, -24764i, u_input.a.x), ~(-4024i)), ~(-u_input.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1630f, 675f, 1171f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], 3u)], 14u)])))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_f_op_f32(f32(-1f) * -1611f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b, 14u)], global0[_wgslsmith_index_u32(7662u, 14u)]), _wgslsmith_f_op_f32(887f * global0[_wgslsmith_index_u32(1u, 14u)])) - vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19574u, 3u)], 14u)]), global0[_wgslsmith_index_u32(523u, 14u)], global0[_wgslsmith_index_u32(u_input.b | 1u, 14u)], 445f))), !(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x))));
    var var_2 = Struct_2(all(vec3<bool>(all(vec4<bool>(false, true, true, true)), var_1.a, any(select(vec3<bool>(true, false, var_0.x), vec3<bool>(true, true, true), true)))), any(!vec2<bool>(func_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<f32>(global0[_wgslsmith_index_u32(1u, 14u)], -1000f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 3u)], 14u)], -430f), vec4<bool>(var_1.a, var_1.a, true, var_1.a)).a, all(vec4<bool>(false, var_1.a, false, false)))), Struct_1(u_input.a.x >> (_wgslsmith_mod_u32(0u, 1u) % 32u), false, vec4<bool>(1u <= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(53163u, global2[_wgslsmith_index_u32(29645u, 3u)], 0u)), all(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false), var_0.x)), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) >= u_input.a.x, var_1.a)));
    var var_3 = var_1;
    var_3 = Struct_3(any(var_2.c.c.wz));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(global2[_wgslsmith_index_u32(min(u_input.b, u_input.b), 3u)], ~global2[_wgslsmith_index_u32(u_input.b, 3u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(9157u, 3u)], 1u, 0u), vec3<u32>(u_input.b, u_input.b, 1u)), 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-2189f, -153f, false)), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(20305u, 14u)])), _wgslsmith_f_op_f32(1000f + -194f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0[_wgslsmith_index_u32(38066u, 14u)], -153f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(30945u, 14u)], global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 14u)]))))), reverseBits(~vec3<u32>(u_input.b & u_input.b, ~4294967295u, 1u)), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)] ^ 0u, 3u)], u_input.b, ~u_input.b) ^ _wgslsmith_add_vec3_u32(select(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 3u)], 4294967295u, 0u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 3u)], 0u, 4294967295u) ^ vec3<u32>(0u, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 3u)]), true), vec3<u32>(u_input.b, u_input.b, u_input.b)));
}

