struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32) -> u32 {
    global1 = any(!vec2<bool>(arg_1, all(!vec3<bool>(true, arg_1, true))));
    let var_0 = !(!(arg_0 <= -6059i));
    var var_1 = arg_2;
    let var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 23u)];
    var var_3 = arg_1;
    return var_2.a;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> f32 {
    global1 = ~_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_sub_u32(~u_input.b, ~arg_1.a)) < ~((func_3(-2147483647i, false, arg_2) ^ u_input.b) & u_input.b);
    var var_0 = vec3<u32>(_wgslsmith_mult_u32(reverseBits(arg_1.a) >> (u_input.a % 32u), abs(5335u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, arg_1.a, 55250u) ^ ~vec3<u32>(arg_1.a, u_input.c.x, 0u), ~vec3<u32>(arg_1.a, 4294967295u, 1u) ^ ~vec3<u32>(0u, u_input.b, 6092u)), select(1u | ~min(u_input.a, 0u), u_input.b ^ ~func_3(-20149i, true, -702f), arg_0));
    global0 = array<Struct_1, 23>();
    let var_1 = select(select(!vec3<bool>(arg_0, arg_0, all(vec4<bool>(false, false, arg_0, true))), select(select(vec3<bool>(true, false, false), !vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true)), !(!vec3<bool>(arg_0, true, arg_0)), true), select(vec3<bool>(true, true, any(vec4<bool>(arg_0, arg_0, true, arg_0))), !select(vec3<bool>(false, arg_0, true), vec3<bool>(false, arg_0, false), false), true)), vec3<bool>(1u < max(var_0.x ^ 22460u, var_0.x), select(true, true, arg_2 < -139f) || true, arg_0), vec3<bool>(arg_0, true, false));
    let var_2 = arg_0;
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1541f, _wgslsmith_f_op_f32(f32(-1f) * -819f), all(vec3<bool>(true, false, true)) && true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-787f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -242f))))) * -1139f));
    global1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-308f)))) >= 544f);
    global1 = any(vec2<bool>(-arg_3 >= arg_3, !any(vec4<bool>(true, false, false, true)) | false));
    var var_1 = vec2<u32>(u_input.a, _wgslsmith_mult_u32(29890u, ~arg_0.a)) ^ arg_1.zz;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1213f - 1433f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(401f, 1000f)))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false, arg_0, -333f)), _wgslsmith_f_op_f32(trunc(-2966f)))));
    return 9554i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(i32(-1i) * -func_1(Struct_1(1u), reverseBits(vec3<u32>(u_input.a, u_input.a, 1u)), Struct_1(0u), -2147483647i));
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(~u_input.a, 37496u), 0u, _wgslsmith_mod_u32(abs(u_input.a), abs(u_input.e)) ^ func_3(countOneBits(1i), all(vec4<bool>(true, false, true, true)), -717f)) ^ (~(~u_input.c) | _wgslsmith_mult_vec3_u32(vec3<u32>(select(u_input.a, 38944u, true), u_input.c.x, ~4294967295u), u_input.c));
    global1 = false;
    var var_2 = -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d.x, _wgslsmith_mult_i32(i32(-1i) * -4695i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 2147483647i))), ~(-2147483647i), -(i32(-1i) * -2147483647i)), countOneBits(countOneBits(vec4<i32>(-17997i, u_input.d.x, -1i, -2147483647i)) >> (abs(vec4<u32>(29628u, 38871u, 26312u, 4294967295u)) % vec4<u32>(32u))));
    var var_3 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(29697u, _wgslsmith_clamp_u32(~37949u, u_input.a, u_input.a), 4294967295u), vec3<i32>(0i, _wgslsmith_mult_i32(~u_input.d.x | -1i, 1i), var_2.x), ~(~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(8869u, var_1.x, 4294967295u), vec3<u32>(1u, var_1.x, var_1.x)))), u_input.c, vec2<i32>(-1i) * -abs(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_2.x), vec2<i32>(1i, -9392i))));
}

