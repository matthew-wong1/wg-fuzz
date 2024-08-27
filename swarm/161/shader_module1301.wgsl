struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 92791u;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_5, 26>;

var<private> global3: array<Struct_5, 16>;

var<private> global4: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_3) -> vec2<i32> {
    global0 = _wgslsmith_mult_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_3.a.b.yxw, vec3<u32>(1u, arg_0, u_input.a.x) << (arg_3.a.b.yxx % vec3<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.x, 0u), arg_3.a.b.zxw), countOneBits(4294967295u))), arg_3.a.b.x);
    let var_0 = global4.yy;
    let var_1 = arg_3.a.b.wy;
    let var_2 = _wgslsmith_clamp_u32(2816u ^ var_1.x, global1.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(var_1.x, 37602u), 4294967295u));
    global3 = array<Struct_5, 16>();
    return u_input.c.wy;
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3) -> vec2<u32> {
    global2 = array<Struct_5, 26>();
    global1 = ~(~(~u_input.a));
    let var_0 = arg_2.a;
    var var_1 = Struct_3(Struct_1(select(-select(vec2<i32>(-2147483647i, 34419i), vec2<i32>(-27873i, -8945i), true), func_3(6710u, _wgslsmith_div_i32(-2147483647i, 2147483647i), var_0.a, arg_2), !var_0.e.yx), vec4<u32>(_wgslsmith_sub_u32(~13460u, countOneBits(arg_2.a.b.x)), ~0u, ~max(var_0.b.x, var_0.b.x), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, 0u, global1.x, arg_1.a.b.x), vec4<u32>(arg_1.a.b.x, 69878u, 23662u, 59848u)))), _wgslsmith_div_vec3_f32(var_0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(974f, -109f, var_0.c.x))), arg_1.a.c.yz, arg_2.a.e), 1i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.a.d.x)), _wgslsmith_f_op_f32(trunc(1966f))), _wgslsmith_f_op_f32(select(-448f, _wgslsmith_f_op_f32(abs(1041f)), global4.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-627f, arg_2.c) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(var_0.d.x, var_0.d.x, global4.x)), _wgslsmith_f_op_f32(round(arg_0)))))));
    var var_2 = vec2<bool>(false, arg_2.a.e.x);
    return ~(~(~(~_wgslsmith_clamp_vec2_u32(var_1.a.b.wy, vec2<u32>(1u, 4893u), arg_2.a.b.yx))));
}

fn func_1() -> Struct_1 {
    global1 = countOneBits(~vec2<u32>(global1.x, ~1u)) ^ ~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(4294967295u, 4294967295u)) & ~u_input.e, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e, u_input.e), u_input.e, func_2(424f, Struct_4(Struct_1(u_input.c.zy, vec4<u32>(1u, global1.x, 80775u, 112709u), vec3<f32>(-1368f, 838f, -170f), vec2<f32>(-1396f, 320f), vec3<bool>(global4.x, true, false)), u_input.d.x), Struct_3(Struct_1(vec2<i32>(2147483647i, u_input.c.x), vec4<u32>(41500u, u_input.e.x, u_input.e.x, u_input.e.x), vec3<f32>(2121f, -2262f, -2189f), vec2<f32>(-1000f, -689f), global4.wzy), -38671i, -1951f, vec2<f32>(1000f, 1000f)))));
    let var_0 = Struct_2(global4.x, Struct_1(u_input.c.xy, _wgslsmith_clamp_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a.x, 0u, global1.x, global1.x)), ~max(vec4<u32>(4294967295u, 4294967295u, 49691u, global1.x), vec4<u32>(u_input.e.x, 11120u, u_input.a.x, global1.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 0u), vec3<u32>(4054u, global1.x, u_input.a.x)), global1.x, 0u, 1u ^ u_input.e.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(1722f + -795f), _wgslsmith_f_op_f32(-1000f * 1844f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1281f))), _wgslsmith_div_f32(1912f, 325f)), !global4.wwy));
    let var_1 = var_0.b.c.yy;
    global2 = array<Struct_5, 26>();
    var var_2 = var_0.b;
    return Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.b.yxx, vec3<i32>(1i, var_0.b.a.x, 2147483647i)), -min(vec3<i32>(0i, var_0.b.a.x, u_input.d.x), vec3<i32>(-29071i, 2147483647i, var_2.a.x))), var_2.a.x), _wgslsmith_div_vec4_u32(var_0.b.b, vec4<u32>(var_2.b.x, _wgslsmith_mult_u32(~51118u, var_0.b.b.x | 4294967295u), abs(~var_2.b.x), global1.x)), vec3<f32>(var_2.d.x, var_1.x, var_0.b.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1094f, 1288f) + var_2.c.yy))))), vec3<bool>(any(!select(var_2.e, vec3<bool>(true, global4.x, var_0.a), true)), !(any(vec4<bool>(var_0.a, true, var_2.e.x, false)) || all(global4.yx)), false));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_1.c.yx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(46135u, func_1(), func_1().b.xxw)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(u_input.a.x, Struct_1(u_input.c.yz, vec4<u32>(global1.x, 93573u, global1.x, global1.x), vec3<f32>(-401f, 1000f, 834f), vec2<f32>(-625f, 921f), vec3<bool>(global4.x, global4.x, true)), vec3<u32>(global1.x, u_input.e.x, u_input.a.x))))))));
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(select(min(min(u_input.b.wx, vec2<i32>(-2147483647i, 1i)), ~vec2<i32>(-83654i, -2147483647i)), u_input.b.xw, !(!global4.zw)), ~u_input.b.ww), _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.e.x, 1u, 33043u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 15794u)), ~u_input.a.x, u_input.e.x, u_input.a.x & u_input.e.x), firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.x, 4294967295u, 143460u) >> (vec4<u32>(13046u, 0u, 38648u, u_input.e.x) % vec4<u32>(32u)), vec4<u32>(31023u, 16874u, global1.x, global1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, 6106u), vec4<u32>(global1.x, 0u, global1.x, global1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-128f, 271f, -502f), vec3<f32>(-606f, -339f, -473f))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))), vec3<bool>(any(select(func_1().e, global4.zyz, global4.yxz)), false, global4.x));
    global1 = abs(vec2<u32>(48213u, u_input.e.x) << (_wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.e, u_input.e), vec2<u32>(4294967295u, firstLeadingBit(12062u))) % vec2<u32>(32u)));
    global2 = array<Struct_5, 26>();
    var var_2 = Struct_2(global4.x, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b);
}

