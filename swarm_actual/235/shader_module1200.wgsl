struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> vec2<f32> {
    let var_0 = u_input.a.yxw << (arg_0.zxz % vec3<u32>(32u));
    global0 = -var_0.zx;
    var var_1 = select(select(vec3<bool>(true, any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, false))), !vec3<bool>(true, all(vec2<bool>(true, true)), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), !(!vec3<bool>(all(vec2<bool>(true, true)), -35083i == u_input.a.x, any(vec4<bool>(true, false, true, false)))), vec3<bool>(true, true, true));
    global0 = max(vec2<i32>(_wgslsmith_mod_i32(0i, ~_wgslsmith_clamp_i32(var_0.x, u_input.b.x, -20811i)), -73532i), vec2<i32>(~(~(2147483647i >> (u_input.c.x % 32u))), -8906i));
    let var_2 = _wgslsmith_div_f32(-1250f, _wgslsmith_f_op_f32(floor(1f)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(713f, var_2)), 1475f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-952f, var_2)))))), vec2<f32>(3017f, _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-558f, -1726f))))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global0 = vec2<i32>(min(-15i, ~(1i & u_input.b.x)), ~(~arg_0.x | ~(~1i)));
    let var_0 = 53203u;
    global0 = arg_0;
    global0 = u_input.b.xz;
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(965f)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))) * vec2<f32>(var_1, var_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-983f, -707f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -748f))))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(vec4<u32>(u_input.c.x, var_0, var_0, 4294967295u), global0.x)), vec2<f32>(208f, var_1)))), vec3<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -586f) != _wgslsmith_f_op_f32(-var_1), any(vec3<bool>(true, false, true))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1)))), _wgslsmith_div_vec4_i32(countOneBits(-vec4<i32>(global0.x, 2147483647i, global0.x, global0.x)), vec4<i32>(-3276i, _wgslsmith_mod_i32(u_input.a.x, firstLeadingBit(arg_0.x)), ~(~global0.x), -(~arg_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, var_1), _wgslsmith_f_op_vec2_f32(-vec2<f32>(449f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1, 116f)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -1762f)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1062f, 1514f)))))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), select(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec4<bool>(false, true, _wgslsmith_f_op_f32(-var_1) > _wgslsmith_f_op_f32(max(var_1, 319f)), any(vec2<bool>(true, true))), var_1), true);
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = select(vec2<bool>(false, arg_0.c.c.x), vec2<bool>(true, true), true);
    var var_1 = func_2(-max(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(arg_1.zw, vec2<i32>(global0.x, arg_0.b.x)), vec2<i32>(arg_1.x, global0.x))));
    global0 = ~arg_1.xz;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(805f, arg_0.c.a.x)));
    var_1 = func_2(arg_1.xx);
    return firstTrailingBit(-(firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_0.b.yz, vec2<i32>(1i, var_1.b.x))) << (vec2<u32>(53628u, min(arg_2.a, arg_2.a)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -vec2<i32>(0i, u_input.a.x);
    global0 = -(-select(u_input.a.xw, u_input.a.xx, vec2<bool>(true, true)) ^ countOneBits(vec2<i32>(-global0.x, _wgslsmith_div_i32(u_input.a.x, 0i))));
    global0 = vec2<i32>(82233i, ~(~28295i));
    global0 = abs(u_input.a.wy);
    global0 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -u_input.b.yy, max(func_1(Struct_2(Struct_1(vec2<f32>(730f, -474f), vec2<f32>(1672f, -1495f), vec3<bool>(true, true, false), vec4<bool>(true, true, false, false), -2085f), u_input.a, Struct_1(vec2<f32>(-1687f, 1287f), vec2<f32>(-1000f, -1161f), vec3<bool>(true, true, false), vec4<bool>(true, false, true, false), 1054f), false), vec4<i32>(-24754i, global0.x, 7281i, u_input.a.x), Struct_3(u_input.c.x), Struct_1(vec2<f32>(-615f, 347f), vec2<f32>(-1785f, 1085f), vec3<bool>(true, false, true), vec4<bool>(true, true, false, false), 1453f)), u_input.b.xy)) | ~_wgslsmith_sub_vec2_i32(abs(countOneBits(u_input.b.yx)), u_input.b.wy);
    global0 = u_input.a.wz;
    let x = u_input.a;
    s_output = StorageBuffer(~(u_input.c.x ^ ~(u_input.c.x << (55569u % 32u))), _wgslsmith_dot_vec2_i32(vec2<i32>(~global0.x, 1i), u_input.a.xz));
}

