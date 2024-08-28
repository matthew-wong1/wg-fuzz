struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> u32 {
    var var_0 = arg_2;
    return ~u_input.b.x >> (~738u % 32u);
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<f32>) -> u32 {
    var var_0 = min(vec2<i32>(30151i, 2147483647i), arg_0);
    let var_1 = !(!vec3<bool>(min(u_input.b.x, u_input.d.x) < ~u_input.b.x, true, select(true, false, any(vec2<bool>(false, true)))));
    return func_3(Struct_2(arg_2.yy, Struct_1(vec3<u32>(u_input.d.x, 2309u, 1u), _wgslsmith_mod_u32(4294967295u, u_input.b.x), vec2<f32>(arg_2.x, arg_2.x)), Struct_1(firstLeadingBit(vec3<u32>(25171u, u_input.d.x, u_input.d.x)), ~u_input.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1001f, arg_2.x))), u_input.b.x | _wgslsmith_div_u32(u_input.b.x, u_input.d.x)), ~u_input.c, Struct_3(!var_1), max(~(arg_0.x << (24802u % 32u)), var_0.x)) ^ 53232u;
}

fn func_1(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = arg_0.a.x | true;
    var var_1 = _wgslsmith_sub_u32(u_input.d.x | ~4294967295u, ~u_input.b.x);
    var_1 = ~u_input.b.x >> (10869u % 32u);
    var var_2 = ~u_input.d.x;
    var_2 = func_2(vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -7328i, -2147483647i) | vec4<i32>(-1i, u_input.a, u_input.c, u_input.a), abs(vec4<i32>(-1i, u_input.a, -64505i, 10603i))) >> (_wgslsmith_dot_vec2_u32(u_input.b, abs(u_input.b)) % 32u)), -1i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(337f, _wgslsmith_f_op_f32(trunc(522f)), _wgslsmith_f_op_f32(select(-1090f, -918f, false)), _wgslsmith_f_op_f32(step(676f, -1055f)))))));
    return StorageBuffer(-789f, _wgslsmith_sub_vec4_i32(min(countOneBits(vec4<i32>(2147483647i, 44189i, -2147483647i, 0i)), -vec4<i32>(u_input.c, u_input.c, 24527i, u_input.a)) >> (vec4<u32>(1u, ~u_input.d.x, u_input.b.x & 0u, abs(u_input.d.x)) % vec4<u32>(32u)), -_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, u_input.a, -1i, 1406i), _wgslsmith_sub_vec4_i32(vec4<i32>(-9414i, u_input.c, 1i, -234i), vec4<i32>(u_input.c, u_input.c, -1i, u_input.c)))), _wgslsmith_div_u32(~39605u, 30683u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = ~1u << ((28843u & u_input.d.x) % 32u);
    var var_2 = vec2<f32>(_wgslsmith_div_f32(-380f, _wgslsmith_div_f32(1253f, _wgslsmith_f_op_f32(-870f - _wgslsmith_f_op_f32(step(730f, -654f))))), 1581f);
    let x = u_input.a;
    s_output = func_1(Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(u_input.a <= -45635i, true, true), all(vec3<bool>(false, true, false)))));
}

