struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(707f, 251f), _wgslsmith_f_op_f32(f32(-1f) * -177f))))) != _wgslsmith_f_op_f32(-399f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -370f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-555f, -839f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1757f), _wgslsmith_f_op_f32(f32(-1f) * -231f)))), Struct_1(vec3<i32>(2147483647i, -2147483647i, 2147483647i), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_2.b, u_input.c.x, 9095u), _wgslsmith_add_u32(u_input.c.x, arg_0.b)), vec2<u32>(71726u, countOneBits(4294967295u))));
    var var_2 = var_1.b;
    var_2 = var_1.b;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1217f - 729f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1340f)), _wgslsmith_f_op_f32(abs(var_1.a.x)), !(-6824i < var_2.a.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1200f)) - _wgslsmith_div_f32(169f, var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.x)) - -160f))))), _wgslsmith_f_op_f32(round(-367f)));
    return -1i;
}

fn func_2() -> vec4<bool> {
    let var_0 = select(vec2<i32>(_wgslsmith_clamp_i32(-1i, _wgslsmith_add_i32(u_input.b ^ u_input.b, u_input.b), ~49057i >> (u_input.c.x % 32u)), -1i), u_input.a.xw ^ u_input.a.zx, vec2<bool>(true, true));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.x, -_wgslsmith_clamp_i32(u_input.b << (u_input.c.x % 32u), _wgslsmith_sub_i32(var_0.x, 1i), -u_input.a.x)), var_0.x);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, func_3(Struct_3(2147483647i, u_input.c.x), 23855i, Struct_3(u_input.b, 37197u))), -firstTrailingBit(1i)), ~0i) ^ countOneBits(_wgslsmith_sub_i32(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(29764i, -32133i, var_0.x, 0i), countOneBits(u_input.a))));
    var_1 = ~var_0.x;
    let var_3 = abs(~firstTrailingBit(select(firstTrailingBit(u_input.c.ww), vec2<u32>(u_input.c.x, 11807u) << (u_input.c.ww % vec2<u32>(32u)), vec2<bool>(false, true))));
    return select(!vec4<bool>(false, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false)), true, _wgslsmith_clamp_u32(var_3.x, var_3.x, 13601u) != (var_3.x << (64386u % 32u))), vec4<bool>(var_0.x >= var_0.x, true, any(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)), true), false);
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = Struct_3(i32(-1i) * -44922i, ~u_input.c.x);
    let var_1 = vec3<bool>(-firstLeadingBit(2147483647i) == var_0.a, !select(false && any(vec4<bool>(false, true, true, true)), all(func_2()), any(func_2())), !(!func_2().x));
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.xx, ~select(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(var_0.a, -1i), var_1.x) & _wgslsmith_div_vec2_i32(select(vec2<i32>(44306i, u_input.b), u_input.a.xz, false), u_input.a.ww)), -_wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.b, i32(-1i) * -73506i), u_input.a.zz));
    let var_3 = Struct_1(u_input.a.zxw, var_0.b | 44045u, u_input.c.yy);
    var var_4 = -u_input.a;
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = func_1(-253f) ^ u_input.b;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(600f, _wgslsmith_f_op_f32(step(-902f, -328f))) + vec2<f32>(1f, _wgslsmith_f_op_f32(abs(419f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(803f, 557f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1953f, -1700f) - vec2<f32>(273f, 354f))))))), Struct_1(_wgslsmith_add_vec3_i32(u_input.a.wwy, vec3<i32>(u_input.a.x, -15989i, u_input.a.x)) | (vec3<i32>(-1i, u_input.a.x, u_input.a.x) >> (_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c.x, 4294967295u), vec3<u32>(4294967295u, 0u, u_input.c.x)) % vec3<u32>(32u))), 10597u, vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(33270u, 4294967295u, u_input.c.x), u_input.c.wwz))));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, -192f, var_2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_2.a.x, var_2.a.x, 1604f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, var_2.a.x, var_2.a.x) + vec3<f32>(var_2.a.x, var_2.a.x, 120f)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))))));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, var_4.b.b), vec3<u32>(8262u, 0u, u_input.c.x)), vec3<u32>(var_2.b.c.x, var_4.b.b, var_4.b.b)), 4294967295u), ~((~u_input.a.wzx ^ u_input.a.wwy) ^ vec3<i32>(var_2.b.a.x ^ var_2.b.a.x, 39524i >> (0u % 32u), -25643i >> (var_4.b.c.x % 32u))), var_4.a.x);
}

