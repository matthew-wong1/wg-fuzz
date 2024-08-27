struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = vec3<bool>(all(select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(arg_1.a.x, arg_1.d.c.x, true, arg_1.a.x), vec4<bool>(arg_0.b.c.x, false, arg_0.b.c.x, arg_0.b.c.x), true), !vec4<bool>(arg_0.b.c.x, arg_1.a.x, false, arg_0.b.c.x)), !select(vec4<bool>(arg_0.c.x, arg_1.d.c.x, false, true), vec4<bool>(true, arg_0.b.c.x, true, false), vec4<bool>(arg_0.b.c.x, arg_1.a.x, arg_0.c.x, arg_1.a.x)), !vec4<bool>(arg_1.d.c.x, arg_1.d.c.x, arg_1.a.x, arg_1.a.x))), all(arg_1.a), !(1i <= (arg_1.b & arg_1.b)) == (_wgslsmith_f_op_f32(-arg_1.d.d) >= 1369f));
    var var_1 = arg_1;
    var var_2 = arg_0.b;
    return reverseBits(u_input.c.zxz);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_5(1u, arg_0.a.x);
    let var_1 = Struct_1(select(_wgslsmith_clamp_u32(u_input.b.x << (21366u % 32u), ~1u, ~4294967295u), 1u, !(var_0.a >= var_0.a)) << (~1u % 32u), vec2<f32>(var_0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-348f, -159f)))), arg_0.c.zz, _wgslsmith_f_op_f32(select(arg_0.b.d, var_0.b, arg_1.c.x)));
    var var_2 = abs(max(_wgslsmith_div_u32(var_1.a, 68398u ^ var_1.a), var_0.a)) | firstTrailingBit(~arg_1.a);
    var var_3 = select((~func_3(Struct_4(var_1.b, arg_0.b, arg_0.c, var_1.d), Struct_3(vec3<bool>(arg_1.c.x, arg_0.c.x, arg_1.c.x), u_input.c.x, arg_1.b, var_1), vec4<u32>(0u, var_0.a, 1u, 4294967295u)) | u_input.c.zyw) >> (reverseBits(u_input.b.zyw) % vec3<u32>(32u)), u_input.c.zyy, vec3<bool>(any(!select(arg_0.c, vec3<bool>(arg_1.c.x, var_1.c.x, var_1.c.x), true)), false | (-u_input.c.x >= _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), all(!select(vec4<bool>(arg_0.b.c.x, arg_0.c.x, var_1.c.x, false), vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.c.x), false))));
    var_3 = vec3<i32>(firstLeadingBit(0i), ~(~func_3(arg_0, Struct_3(arg_0.c, 1i, vec2<f32>(596f, arg_1.d), Struct_1(var_1.a, arg_1.b, var_1.c, 121f)), ~vec4<u32>(4294967295u, 1u, 4294967295u, 0u)).x), u_input.c.x);
    return ~1u;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = vec4<bool>(true, true, func_2(Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0)), Struct_1(u_input.a, vec2<f32>(arg_0, arg_0), vec2<bool>(true, true), arg_0), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_div_f32(arg_0, -733f)), Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1091f) + vec2<f32>(arg_0, arg_0)), vec2<bool>(true, true), _wgslsmith_div_f32(arg_0, arg_0))) == 0u, all(vec4<bool>(true, true, true, all(vec3<bool>(false, false, true)) && true)));
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(arg_0, arg_0)), arg_0)), Struct_1(_wgslsmith_mod_u32(u_input.a << (~u_input.b.x % 32u), u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), arg_0), select(select(!var_0.xw, var_0.wy, !var_0.wx), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x)), !var_0.zy, !var_0.x), var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)))), var_0.xzz, arg_0);
    let var_2 = var_1.b;
    var var_3 = -2147483647i;
    var_3 = ~u_input.c.x;
    return Struct_2(abs(_wgslsmith_add_u32(abs(var_1.b.a), ~_wgslsmith_mult_u32(u_input.a, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(round(458f)));
    let var_1 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1471f, -2292f) * vec2<f32>(-602f, 106f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1481f, 1026f) * vec2<f32>(411f, 677f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1425f, 819f))))), vec2<bool>(true, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f)))))));
    var var_2 = -_wgslsmith_sub_vec2_i32(-u_input.c.xx, vec2<i32>(-2147483647i, -1i));
    let var_3 = false;
    var_0 = Struct_2(1u);
    let var_4 = var_2.x ^ _wgslsmith_mult_i32(-1i, u_input.c.x);
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)), ~_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, var_4, var_4, u_input.c.x), -vec4<i32>(1i, 2147483647i, var_4, var_2.x)) << (_wgslsmith_clamp_vec4_u32(u_input.b, _wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, 1u, u_input.a, 34460u)), ~u_input.b), _wgslsmith_mult_vec4_u32(select(u_input.b, vec4<u32>(var_0.a, 0u, var_0.a, var_1.a), vec4<bool>(var_3, false, false, var_3)), min(vec4<u32>(3299u, 29623u, var_1.a, u_input.b.x), vec4<u32>(0u, 4294967295u, var_1.a, var_1.a)))) % vec4<u32>(32u)), 1i);
}

