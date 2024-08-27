struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<bool>(false, false, false)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> vec3<bool> {
    global0 = Struct_3(global0.a);
    global0 = Struct_3(Struct_1(vec3<bool>(true && any(global0.a.a.zz), all(vec4<bool>(global0.a.a.x, false, global0.a.a.x, true)), true)));
    global0 = Struct_3(Struct_1(vec3<bool>(true, all(select(global0.a.a.yy, global0.a.a.zx, false)), true)));
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(-1224f - arg_2), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - 1f))) + vec2<f32>(-1512f, arg_2));
    global0 = Struct_3(Struct_1(!vec3<bool>(!global0.a.a.x, global0.a.a.x && true, select(false, global0.a.a.x, global0.a.a.x))));
    return global0.a.a;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = false;
    global0 = Struct_3(global0.a);
    let var_1 = Struct_3(Struct_1(func_3(2147483647i, Struct_2(abs(4294967295u), u_input.a.x, u_input.c.wyz | u_input.c.zyw), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 * 382f))))));
    var var_2 = Struct_2(~0u, -(~select(~(-1i), ~0i, var_1.a.a.x)), vec3<u32>(~(~62551u), u_input.c.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b, u_input.e.x, u_input.e.x, 22690u) | vec4<u32>(4294967295u, 9018u, u_input.d, 8917u)), _wgslsmith_sub_vec4_u32(~u_input.c, vec4<u32>(2508u, u_input.d, u_input.c.x, u_input.c.x)))));
    let var_3 = u_input.c;
    return -11578i;
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = all(!(!vec2<bool>(global0.a.a.x, !global0.a.a.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1639f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1146f)) * _wgslsmith_f_op_f32(355f * arg_0.x)) * -407f)) * arg_0.x);
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(11727i, -1i, u_input.a.x, -1i), abs(vec4<i32>(u_input.a.x, -46154i, 0i, 0i)), select(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -20099i, u_input.a.x), vec4<bool>(var_0, global0.a.a.x, false, global0.a.a.x))) ^ _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(86674i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), vec4<i32>(1i, 1i, 1i, -2147483647i)), -u_input.a), abs(i32(-1i) * -_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1452f)))), countOneBits(u_input.a.x));
    let var_3 = !vec3<bool>(var_0, global0.a.a.x | false, !global0.a.a.x);
    var var_4 = Struct_2(~70361u, _wgslsmith_add_i32(var_2.x, 42833i), vec3<u32>(u_input.e.x, _wgslsmith_mod_u32(~4294967295u, ~(~u_input.b)), reverseBits(~(~u_input.b))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.x))) + _wgslsmith_f_op_f32(ceil(-209f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(426f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(vec4<f32>(358f, 2648f, 1385f, -1084f)))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f - var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(340f + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, -270f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -2648f))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, var_0.x, 564f, _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-151f, var_0.x, -374f, var_0.x))))))), 1274f);
    let var_2 = 1333f;
    let var_3 = global0.a;
    global0 = Struct_3(Struct_1(vec3<bool>(true, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(var_0.x)) == 107f)));
    let var_4 = u_input.e;
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(614f, _wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(119f, var_0.x)), _wgslsmith_f_op_f32(select(var_2, var_2, var_3.a.x))))) - vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_0.x), 345f));
    global0 = Struct_3(global0.a);
    let var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<i32>(32719i, u_input.a.x, 1i)))), ~u_input.c.xw);
}

