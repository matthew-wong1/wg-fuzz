struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    global0 = array<bool, 3>();
    let var_0 = Struct_3(Struct_1(vec4<bool>(any(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~27457u, ~u_input.b, select(13817u, u_input.c, global0[_wgslsmith_index_u32(u_input.c, 3u)])), 3u)], global0[_wgslsmith_index_u32(~min(u_input.b, u_input.b), 3u)], any(!vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(1u, 3u)])))), vec3<i32>(-1i) * -vec3<i32>(select(u_input.a, 21309i, true), ~u_input.a, u_input.a), abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.c), ~vec4<u32>(u_input.b, u_input.c, u_input.c, 4294967295u)))), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 3u)], true, global0[_wgslsmith_index_u32(8192u, 3u)]));
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_1 = Struct_2(Struct_1(select(var_0.a.a, select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)], false, global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(51589u, 3u)], var_0.a.a.x, global0[_wgslsmith_index_u32(u_input.c, 3u)], true), var_0.a.a), select(var_0.a.a, vec4<bool>(global0[_wgslsmith_index_u32(78438u, 3u)], true, true, false), true), !vec4<bool>(false, true, var_0.d.x, false)), !vec4<bool>(global0[_wgslsmith_index_u32(75176u, 3u)], var_0.d.x, true, false))));
    return var_0.b;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d, _wgslsmith_mod_i32(u_input.a, -u_input.a), -u_input.d) | vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(-20348i, u_input.a)), _wgslsmith_sub_i32(0i, ~u_input.d), ~(-1i)), func_3());
    return Struct_2(Struct_1(!select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], false, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(32415u, 3u)], true, global0[_wgslsmith_index_u32(u_input.c, 3u)]), true)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1167f + arg_0), arg_0, false)) + -599f))));
    global0 = array<bool, 3>();
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(u_input.c), 3u)];
    var var_2 = vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_clamp_i32(u_input.d, u_input.d, 54756i), 28361i, u_input.a << (u_input.c % 32u)), vec3<i32>(_wgslsmith_mult_i32(u_input.d, u_input.a), -1i, u_input.a)), _wgslsmith_mult_i32(u_input.d, _wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.a, u_input.d)), min(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.d), vec2<i32>(u_input.d, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(-3755i, -1i), vec2<i32>(15618i, u_input.a))))), _wgslsmith_dot_vec3_i32(vec3<i32>(~(-2498i), u_input.a, _wgslsmith_mod_i32(min(1i, 2147483647i), u_input.a)), -abs(-vec3<i32>(1i, u_input.a, u_input.a))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, global0[_wgslsmith_index_u32(46753u, 3u)]))))) - _wgslsmith_f_op_f32(f32(-1f) * -571f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(652f * arg_1.x))))))));
    return func_2();
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    var var_0 = func_2();
    var var_1 = var_0.a;
    let var_2 = -151f;
    return StorageBuffer(~(~select(vec3<u32>(4294967295u, 1u, u_input.c), vec3<u32>(u_input.b, u_input.c, u_input.c) ^ vec3<u32>(u_input.b, u_input.b, u_input.c), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(-898f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(485f * -450f), _wgslsmith_f_op_f32(abs(-385f)), _wgslsmith_f_op_f32(f32(-1f) * -296f)))));
}

