struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b.a, arg_0.a, -1130f, arg_0.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a, 657f, arg_0.b.a, arg_0.b.a))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-892f, -630f, arg_0.a, -842f), vec4<f32>(arg_0.a, 3334f, 550f, -153f), vec4<bool>(false, false, false, true)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a, arg_0.a, arg_0.a, 508f)))))));
    var_0 = vec4<f32>(1f, arg_0.a, _wgslsmith_f_op_f32(select(var_0.x, arg_0.b.a, any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.a, _wgslsmith_f_op_f32(-624f + _wgslsmith_f_op_f32(-308f * arg_0.a)))));
    var var_1 = _wgslsmith_dot_vec2_i32(u_input.c.xx, _wgslsmith_sub_vec2_i32(u_input.c.zz, ~_wgslsmith_mod_vec2_i32(~vec2<i32>(10438i, arg_0.b.b.x), vec2<i32>(arg_0.b.b.x, arg_0.b.b.x))));
    let var_2 = vec3<i32>(-1i, u_input.c.x, -12240i);
    let var_3 = Struct_1(false);
    return vec2<bool>(true, true);
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = vec2<bool>(countOneBits(arg_1.x ^ arg_1.x) <= _wgslsmith_mult_u32(~(~1u), ~1u), true);
    var var_1 = !(!func_3(Struct_3(1780f, Struct_2(-372f, u_input.c)), _wgslsmith_mod_vec2_i32(u_input.c.yx, u_input.c.yy) ^ vec2<i32>(arg_0, u_input.c.x)));
    let var_2 = vec2<i32>(u_input.c.x, min(~abs(reverseBits(45527i)), arg_0));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -1239f))), _wgslsmith_f_op_f32(ceil(1000f))))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-817f)), _wgslsmith_f_op_f32(round(-925f))), vec3<i32>(firstTrailingBit(var_2.x), min(var_2.x << (0u % 32u), -2147483647i), _wgslsmith_sub_i32(-10455i >> (u_input.e % 32u), 1i))));
    var var_4 = vec4<i32>(~1i, -2147483647i, -(~(-1i)), ~_wgslsmith_dot_vec3_i32(var_3.b.b, u_input.c & -var_3.b.b));
    return Struct_1(true);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: Struct_3) -> i32 {
    var var_0 = u_input.d.x;
    let var_1 = arg_1.wyw;
    let var_2 = abs(u_input.c.yz);
    let var_3 = arg_1.xz;
    var var_4 = arg_2.d.xx;
    return -48683i;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = (func_4(func_2(~u_input.c.x, ~u_input.b), vec4<bool>(all(vec3<bool>(false, true, true)), true, false, false), Struct_4(Struct_2(243f, vec3<i32>(-1i, 11747i, 42788i)), Struct_3(-1337f, Struct_2(-1244f, u_input.c)), 6877u ^ arg_1.x, u_input.b), Struct_3(940f, Struct_2(-720f, vec3<i32>(-2147483647i, -6256i, u_input.c.x)))) >> ((4294967295u | abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, arg_1.x), u_input.b))) % 32u)) & 1i;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-830f, _wgslsmith_f_op_f32(-367f - 2685f))) + -1189f), abs(u_input.c));
    var_1 = Struct_2(_wgslsmith_f_op_f32(max(2511f, var_1.a)), _wgslsmith_clamp_vec3_i32(~u_input.c, abs(~vec3<i32>(24810i, -1i, 2147483647i) >> (_wgslsmith_sub_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u))), -var_1.b));
    let var_2 = Struct_4(Struct_2(var_1.a, firstTrailingBit(var_1.b) ^ reverseBits(u_input.c)), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(abs(var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a * -1320f)), !any(vec2<bool>(false, false)))), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -358f), vec3<i32>(_wgslsmith_div_i32(var_1.b.x, u_input.c.x), -64573i, reverseBits(var_0)))), 0u, abs(vec3<u32>(u_input.e, max(4294967295u, ~arg_1.x), ~max(0u, arg_1.x))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -567f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.b.b.a - var_1.a)))))), select((~var_2.b.b.b & (u_input.c << (u_input.b % vec3<u32>(32u)))) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.d.x, 85615u, 4294967295u) >> (var_2.d % vec3<u32>(32u)), u_input.b) % vec3<u32>(32u)), var_2.b.b.b, vec3<bool>(true, true, true)));
    return var_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(1i, u_input.d);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-642f, _wgslsmith_div_f32(var_0.a, var_0.a))) * _wgslsmith_f_op_f32(floor(-200f)))), vec3<i32>(-1i) * -vec3<i32>(-1i, -25117i, 1i));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -707f)), _wgslsmith_f_op_f32(round(642f)))), func_1(var_0.b.x, vec2<u32>(31122u, 1u)));
    let var_2 = u_input.c.x;
    let var_3 = Struct_1(!(any(vec2<bool>(true, true)) || any(vec4<bool>(false, true, true, true))));
    var_0 = func_1(min(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-33750i, u_input.c.x, var_0.b.x, -2147483647i), vec4<i32>(2147483647i, 1i, var_2, var_0.b.x)) ^ vec4<i32>(var_1.b.b.x, var_0.b.x, var_0.b.x, var_1.b.b.x), abs(vec4<i32>(3102i, 35331i, -2147483647i, -2147483647i))), -7386i), ~countOneBits(vec2<u32>(u_input.e << (37525u % 32u), ~15213u)));
    var_0 = var_1.b;
    var var_4 = -38880i;
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(-var_1.b.b.x, firstLeadingBit(var_1.b.b.x)), vec2<i32>(max(var_0.b.x & var_1.b.b.x, func_1(-455i, vec2<u32>(u_input.b.x, 0u)).b.x) | -var_1.b.b.x, var_1.b.b.x & -(~1222i)), var_1.b.b.x);
}

