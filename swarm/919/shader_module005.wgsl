struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_0 = true;
    var var_1 = ~u_input.c.xzz;
    var var_2 = var_0;
    return any(arg_0.a.ywy);
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(vec4<bool>((select(1u, u_input.b.x, false) > (4294967295u | u_input.b.x)) || true, true, true, !(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 3u)])) <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d, 3u)]))), ~u_input.c);
    var var_1 = Struct_1(vec4<bool>(true, true, func_1(Struct_1(var_0.a, countOneBits(u_input.c)), var_0.a.x), false), ~((countOneBits(u_input.e) >> (~vec4<u32>(u_input.d, 52148u, 16226u, u_input.b.x) % vec4<u32>(32u))) >> (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.d, 0u, 2722u), vec4<u32>(u_input.d, 1u, 12303u, 0u))) % vec4<u32>(32u))));
    var_1 = Struct_1(select(!var_1.a, vec4<bool>(true, any(select(vec3<bool>(true, false, var_0.a.x), vec3<bool>(var_1.a.x, true, true), true)), !var_1.a.x, select(var_1.a.x, var_1.a.x && false, any(vec3<bool>(false, false, var_0.a.x)))), select(!select(vec4<bool>(var_0.a.x, var_1.a.x, false, var_1.a.x), var_0.a, false), select(var_0.a, var_1.a, var_1.a.x), all(vec3<bool>(true, false, false)))), vec4<i32>(_wgslsmith_add_i32(1i, u_input.c.x), 0i, u_input.e.x, 20248i) ^ _wgslsmith_mod_vec4_i32(var_0.b, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_0, -12674i, var_1.b.x), -vec4<i32>(arg_0, -1i, var_1.b.x, arg_0))));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(u_input.d, 3u)], var_1.a.x)), global0[_wgslsmith_index_u32(~40706u, 3u)], true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] + global0[_wgslsmith_index_u32(u_input.d, 3u)]) - _wgslsmith_f_op_f32(round(165f)))))));
    global0 = array<f32, 3>();
    return any(!var_0.a.ww);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = 5754i;
    let var_1 = -firstLeadingBit(_wgslsmith_clamp_i32(i32(-1i) * -1i, -27153i, ~(-27139i)));
    return Struct_1(!vec4<bool>(true, true, !all(vec4<bool>(false, arg_0.x, arg_0.x, false)), func_3(_wgslsmith_div_i32(var_1, -18391i))), firstLeadingBit(vec4<i32>(~(-35265i), 0i, 19673i, var_0)) << (min(vec4<u32>(~10753u, 187u, u_input.b.x, u_input.d), ~vec4<u32>(4294967295u, u_input.b.x, u_input.d, 0u) | vec4<u32>(11219u, u_input.d, 39648u, u_input.b.x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    var var_0 = 51085u;
    let var_1 = func_2(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(any(vec4<bool>(true, false, false, false)), all(vec2<bool>(true, true))), !func_1(Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(30118i, 15136i, -2147483647i, -365i)), true) && true));
    var var_2 = var_1;
    let var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(1u, 3u)])), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(1u, 3u)], -1563f))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1512f, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]) + vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]))))))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1711f, -1553f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.d, 3u)])), 502f, _wgslsmith_f_op_f32(min(var_4.x, 576f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(5965u, 3u)] * global0[_wgslsmith_index_u32(u_input.b.x, 3u)]) * _wgslsmith_f_op_f32(-var_4.x)))), min(_wgslsmith_add_vec4_i32(reverseBits(var_3.b), _wgslsmith_mult_vec4_i32(var_1.b, var_1.b)) << (max(~vec4<u32>(33117u, u_input.d, 1u, u_input.d), ~vec4<u32>(0u, 4294967295u, u_input.d, 80413u)) % vec4<u32>(32u)), vec4<i32>(var_1.b.x, var_3.b.x, _wgslsmith_dot_vec3_i32(var_1.b.www, min(var_3.b.zzw, vec3<i32>(2147483647i, -36372i, u_input.a))), 1i)));
}

