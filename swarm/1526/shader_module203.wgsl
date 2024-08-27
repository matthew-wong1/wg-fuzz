struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec2<bool>) -> bool {
    var var_0 = true;
    return all(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_2.x), arg_2, vec2<bool>(arg_2.x, arg_2.x)), arg_2), arg_2, true));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: f32) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = 33854u;
    var var_2 = 1000f;
    let var_3 = Struct_2(countOneBits(var_0.yy), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -709f), -155f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(780f + -435f) * -447f))), _wgslsmith_f_op_f32(floor(-1988f)));
    var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1511f, arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.b.x)))))), arg_3));
    return var_3;
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_2.a);
    var var_1 = _wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.b.x, ~14607u, abs(63601u)), vec3<u32>(~27676u, 4294967295u, _wgslsmith_div_u32(8904u, 4294967295u)), select(arg_2.a.wxy, vec3<bool>(var_0.a.x, var_0.a.x, arg_2.a.x), func_1(Struct_4(-187f), arg_1.x, vec2<bool>(arg_2.a.x, false)))) ^ u_input.b.xxz, ~u_input.a);
    let var_2 = true;
    var var_3 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(5416u, ~(~4294967295u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.x, var_1.x), u_input.a.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(20429u, 50962u) | vec2<u32>(u_input.a.x, 52764u), func_2(arg_0, Struct_1(vec4<bool>(false, arg_2.a.x, var_2, var_2)), vec3<bool>(true, false, true), arg_0).a))), _wgslsmith_add_vec2_u32(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 1u), u_input.b.zx)), vec2<u32>(4294967295u, u_input.b.x)));
    var var_4 = -939f;
    return _wgslsmith_f_op_f32(arg_0 - func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), Struct_1(vec4<bool>(false, var_0.a.x || var_2, false, !var_0.a.x)), select(vec3<bool>(true, true, true), !vec3<bool>(var_2, var_2, arg_2.a.x), var_2), -1649f).b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f + -485f), _wgslsmith_f_op_f32(386f + 593f))), 1000f)), Struct_1(vec4<bool>(true, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), !select(false, false, false))), vec3<bool>(true, true, select(true, func_1(Struct_4(206f), 0i, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), true)), -162f);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.b.zz)) * vec2<f32>(-908f, -637f)));
    let var_2 = Struct_1(vec4<bool>(true, true, false, true));
    var var_3 = Struct_2(u_input.a.yy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_0.b.x, var_1.x), var_0.b))))), 2076f);
    let var_4 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1376f, var_1.x) * _wgslsmith_f_op_f32(-var_3.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1737f - var_0.b.x))), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(983f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.c - var_1.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c, -320f, -1000f, var_0.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, 1790f, 595f) - vec4<f32>(var_1.x, var_1.x, var_1.x, -741f)))) - vec4<f32>(var_0.c, _wgslsmith_f_op_f32(var_3.c + var_1.x), var_3.c, _wgslsmith_f_op_f32(var_1.x - var_1.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, u_input.b.zyz, var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_3.c)))), _wgslsmith_add_vec4_i32(-vec4<i32>(0i, -30292i, -1i, 13050i), vec4<i32>(-74354i, 2326i, 28580i, 30149i)), Struct_1(select(var_2.a, var_2.a, vec4<bool>(false, false, var_2.a.x, var_2.a.x))))) * -1257f));
}

