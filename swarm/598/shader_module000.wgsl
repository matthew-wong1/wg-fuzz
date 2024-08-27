struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
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

var<private> global0: array<bool, 30>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> u32 {
    global0 = array<bool, 30>();
    let var_0 = Struct_1(select(!arg_0.a, arg_0.a, arg_0.a.x), abs(-min(vec3<i32>(1i, u_input.d.x, -1i), firstLeadingBit(vec3<i32>(arg_0.b.x, 2147483647i, u_input.d.x)))), 2065f, 0u ^ arg_0.d);
    global0 = array<bool, 30>();
    let var_1 = false | ((var_0.d | u_input.a) < var_0.d);
    var var_2 = var_0.c;
    return countOneBits(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 66785u, var_0.d) << (vec3<u32>(19536u, u_input.b.x, 0u) % vec3<u32>(32u))) & (vec3<u32>(var_0.d, 4294967295u, 83281u) & vec3<u32>(u_input.a, arg_0.d, 32145u)), max(firstTrailingBit(max(vec3<u32>(61719u, 0u, u_input.b.x), vec3<u32>(4294967295u, u_input.b.x, 48743u))), vec3<u32>(var_0.d >> (u_input.b.x % 32u), ~arg_0.d, ~0u))));
}

fn func_2() -> vec2<bool> {
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    var var_0 = vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x | ~_wgslsmith_div_u32(7148u, ~u_input.a), 30u)], global0[_wgslsmith_index_u32(func_3(Struct_1(vec2<bool>(true, global0[_wgslsmith_index_u32(~51372u, 30u)]), u_input.d.xyw, 1591f, u_input.a), true), 30u)], false);
    let var_1 = vec2<bool>(var_0.x, var_0.x);
    var_0 = !(!vec3<bool>(true, all(!var_1), (global0[_wgslsmith_index_u32(u_input.b.x, 30u)] && var_1.x) && (true || var_0.x)));
    return var_0.yx;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = Struct_1(select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], false), all(vec3<bool>(false, false, true))), func_2(), select(func_2(), vec2<bool>(true, false), true)), !select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.a, 30u)]), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(!global0[_wgslsmith_index_u32(3508u, 30u)], all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 30u)], true, false, global0[_wgslsmith_index_u32(65734u, 30u)]))), func_2())), abs(abs(_wgslsmith_clamp_vec3_i32(u_input.d.ywy, vec3<i32>(2147483647i, arg_0.x, 17625i), vec3<i32>(-1i, 2147483647i, arg_0.x) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))))), -329f, u_input.a);
    let var_2 = vec2<u32>(u_input.a, reverseBits(countOneBits(var_1.d)));
    let var_3 = Struct_1(vec2<bool>(~u_input.a != min(func_3(Struct_1(var_1.a, vec3<i32>(-2147483647i, var_1.b.x, -37048i), 1000f, 0u), var_1.a.x), var_1.d), var_1.a.x), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_1.c)), 663f)))), ~_wgslsmith_mult_u32(select(var_2.x, var_1.d, var_1.a.x), var_1.d | 37871u) ^ ~1u);
    var var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-410f, var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_3.c)))) * var_3.c))));
    return 886f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2874f, -1249f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.zyx)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(163f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - 697f), -1170f, false)), true))));
    var var_1 = !vec2<bool>(select(false, global0[_wgslsmith_index_u32(reverseBits(0u), 30u)], true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.b.x) >> (_wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(0u, u_input.b.x) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(u_input.a, u_input.b.x))), 30u)]);
    let var_2 = !vec4<bool>(true, !(!any(vec3<bool>(var_1.x, true, true))), any(!(!vec4<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.a, 30u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))), true);
    global0 = array<bool, 30>();
    var var_3 = global0[_wgslsmith_index_u32(9133u, 30u)];
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-206f, -258f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -381f)))), _wgslsmith_f_op_f32(-1f), var_2.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1932f, -294f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -591f), -1138f)))));
    var_1 = vec2<bool>((1u >> (_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(u_input.a, u_input.a), min(1u, 17363u)) % 32u)) < _wgslsmith_mult_u32(u_input.b.x, ~45690u), select(func_2().x, true, false));
    let x = u_input.a;
    s_output = StorageBuffer((firstTrailingBit(u_input.c.x) & (1i & _wgslsmith_mod_i32(u_input.c.x, -45615i))) | (i32(-1i) * -4111i));
}

