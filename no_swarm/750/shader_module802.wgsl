struct Struct_1 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: array<Struct_1, 29>;

var<private> global1: vec2<bool>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: f32) -> u32 {
    global0 = array<Struct_1, 29>();
    global1 = vec2<bool>(arg_1, countOneBits(_wgslsmith_mod_i32(arg_0.a, arg_2.x) >> (~1u % 32u)) >= 2147483647i);
    var var_0 = Struct_1(-arg_0.a | -arg_2.x, ~(arg_0.b ^ _wgslsmith_add_u32(~arg_0.b, abs(0u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-190f, arg_3)), 1f, -261f) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(428f, 1159f, -2141f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -1712f, arg_3) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1307f, -2436f, arg_3) - vec3<f32>(arg_3, 1863f, arg_3))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_3, arg_3, 698f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_3, -533f, 2065f), vec3<f32>(arg_3, arg_3, arg_3)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))), -2461f, arg_3)));
    return arg_0.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = Struct_1(~60750i, ~37029u);
    global0 = array<Struct_1, 29>();
    var var_1 = countOneBits(vec4<u32>(var_0.b, 4294967295u, firstLeadingBit(arg_2.b ^ min(131943u, var_0.b)), 4294967295u));
    global1 = vec2<bool>(arg_1.x, select(_wgslsmith_f_op_f32(round(1f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-769f * -2299f)), all(select(!vec4<bool>(global1.x, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, false, true, arg_3.x), true)), false));
    global0 = array<Struct_1, 29>();
    return vec2<bool>(true, arg_1.x);
}

fn func_1() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(abs(4294967295u), 29u)];
    var var_1 = ~(~func_2(global0[_wgslsmith_index_u32(~var_0.b, 29u)], true, vec3<i32>(countOneBits(u_input.b.x), abs(0i), -u_input.a), _wgslsmith_f_op_f32(-1f)));
    global1 = !select(vec2<bool>(true, global1.x), !func_3(Struct_1(var_0.a, var_0.b), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x)), Struct_1(var_0.a, 644u), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false))), !select(!vec2<bool>(false, global1.x), select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x)), !vec2<bool>(global1.x, true)));
    let var_2 = Struct_1(var_0.a, ~abs(13492u));
    var_0 = Struct_1(~2147483647i, var_2.b);
    return countOneBits(-48820i);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    global0 = array<Struct_1, 29>();
    let var_0 = vec4<u32>(1u >> (arg_0.x % 32u), ~18257u, 1u, _wgslsmith_mult_u32(0u, arg_0.x));
    let var_1 = Struct_1(~(-(~(u_input.b.x | arg_1.x))), var_0.x);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, var_0.x, 1u ^ var_1.b) & var_0.yxw, var_0.wyz | _wgslsmith_mult_vec3_u32(select(var_0.ywy, vec3<u32>(4294967295u, 128577u, 1u), select(vec3<bool>(arg_3, arg_3, global1.x), vec3<bool>(global1.x, arg_3, true), vec3<bool>(true, arg_3, true))), var_0.yyw)), 29u)];
    return _wgslsmith_clamp_i32(arg_1.x, 1399i, abs(3649i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -737f;
    let var_1 = vec4<bool>(global1.x, false, true, false);
    global0 = array<Struct_1, 29>();
    let var_2 = 4516i;
    global1 = var_1.xz;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(select(~min(vec2<u32>(15370u, 4294967295u), vec2<u32>(1u, 58174u)), vec2<u32>(~32700u, _wgslsmith_clamp_u32(26949u, 4294967295u, 1u)), true), vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.a, 17004i, var_2)), abs(vec3<i32>(7078i, -2147483647i, u_input.b.x))), 37236i, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -44154i, -34855i, 20354i), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, 1i)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_2, var_2), vec3<i32>(u_input.b.x, -2147483647i, 1i)), func_1(), false)), -_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 62975i, 86147i), vec3<i32>(5648i, 1i, -2147483647i)), true));
}

