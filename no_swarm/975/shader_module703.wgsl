struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: array<Struct_3, 16>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1() -> u32 {
    let var_0 = countOneBits(_wgslsmith_mod_vec4_i32(abs(-vec4<i32>(u_input.a, -28528i, -1i, u_input.a) | abs(vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.a))), firstLeadingBit(~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    var var_1 = global0[_wgslsmith_index_u32(0u, 8u)];
    let var_2 = vec3<bool>(true, true, true);
    global0 = array<Struct_3, 8>();
    var var_3 = true;
    return _wgslsmith_div_u32(~u_input.b, var_1.d);
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    global1 = array<Struct_3, 16>();
    var var_0 = arg_0.a.a.x;
    return Struct_1(~(-arg_0.a.a), arg_0.c.c.yz);
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = -min(select(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(0i, u_input.a)), -vec2<i32>(-2147483647i, u_input.a)), ~(-vec2<i32>(u_input.a, -1i)), true), vec2<i32>(u_input.a, u_input.a));
    let var_1 = Struct_2(Struct_1(var_0, var_0 << (firstLeadingBit(~vec2<u32>(1u, u_input.b)) % vec2<u32>(32u))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), false)), firstLeadingBit((-vec4<i32>(44100i, u_input.a, 48625i, arg_0) | firstTrailingBit(vec4<i32>(var_0.x, var_0.x, 0i, 2147483647i))) | ~countOneBits(vec4<i32>(u_input.a, 0i, arg_0, var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(388f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -465f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(472f, -120f), vec2<f32>(1256f, 531f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(3517f, -1689f))))), func_2(Struct_3(func_2(Struct_3(Struct_1(vec2<i32>(-11297i, arg_0), var_0), vec2<f32>(2060f, 941f), Struct_2(Struct_1(vec2<i32>(var_0.x, arg_0), vec2<i32>(31744i, arg_0)), vec2<bool>(false, true), vec4<i32>(u_input.a, var_0.x, u_input.a, -21273i), vec2<f32>(-1303f, 134f), Struct_1(vec2<i32>(arg_0, -1i), var_0)), u_input.b), false), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(314f, -878f), vec2<f32>(1242f, -320f)))), Struct_2(func_2(Struct_3(Struct_1(vec2<i32>(var_0.x, var_0.x), var_0), vec2<f32>(1000f, 839f), Struct_2(Struct_1(vec2<i32>(-2147483647i, u_input.a), var_0), vec2<bool>(false, true), vec4<i32>(u_input.a, -2477i, var_0.x, -2147483647i), vec2<f32>(-376f, -653f), Struct_1(var_0, var_0)), 0u), true), vec2<bool>(false, true), min(vec4<i32>(var_0.x, u_input.a, u_input.a, 0i), vec4<i32>(-10954i, u_input.a, var_0.x, 0i)), vec2<f32>(1391f, -643f), Struct_1(vec2<i32>(23066i, -51523i), var_0)), abs(4294967295u)), false));
    global1 = array<Struct_3, 16>();
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_3, 8>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(global0[_wgslsmith_index_u32(func_1(), 8u)], u_input.a > -28601i);
    global0 = array<Struct_3, 8>();
    let var_1 = (vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 0i, var_0.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.a, 0i), vec4<i32>(u_input.a, 1i, -2147483647i, 28276i))), _wgslsmith_mod_i32(-37570i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.b.x), var_0.a)), u_input.a, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-3140i, var_0.a.x, 33226i), vec3<i32>(var_0.a.x, var_0.a.x, u_input.a)))) >> (~(~vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) ^ vec4<u32>(u_input.b, u_input.b, u_input.b, 1575u)) % vec4<u32>(32u))) >> (vec4<u32>(min(u_input.b, func_3(_wgslsmith_sub_i32(5035i, u_input.a))), u_input.b >> ((~u_input.b | u_input.b) % 32u), _wgslsmith_mod_u32(min(u_input.b, 18847u) | u_input.b, 1u), _wgslsmith_mod_u32(0u, u_input.b)) % vec4<u32>(32u));
    global1 = array<Struct_3, 16>();
    global0 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_mod_i32(~u_input.a, -(var_1.x | -1i)), ~var_0.b.x, firstLeadingBit(min(var_0.b.x << (36797u % 32u), var_0.a.x))), -(~var_1.wy), ~_wgslsmith_div_vec3_u32(abs(firstLeadingBit(vec3<u32>(90789u, 18103u, 29751u))), _wgslsmith_div_vec3_u32(~vec3<u32>(1564u, u_input.b, 32996u), vec3<u32>(u_input.b, 0u, 59081u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(538f, 480f, 389f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(546f, 855f, -1652f))) - vec3<f32>(-837f, _wgslsmith_f_op_f32(max(789f, -139f)), _wgslsmith_div_f32(-1585f, 900f)))), abs(abs(firstTrailingBit(vec2<u32>(22218u, 19218u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))))));
}

