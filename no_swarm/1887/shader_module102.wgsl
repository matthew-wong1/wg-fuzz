struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_1(max(_wgslsmith_mod_vec2_u32(vec2<u32>(14270u, ~1279u), ~vec2<u32>(17620u, 32961u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(13029u, arg_1.a.x) ^ vec2<u32>(u_input.b, 66179u), vec2<u32>(1u, 0u), select(vec2<u32>(u_input.d.x, 7650u), _wgslsmith_sub_vec2_u32(u_input.d, u_input.d), true))), vec2<i32>(i32(-1i) * -arg_1.e.x, ~(~(arg_1.e.x & 2147483647i))), arg_1.c, arg_1.b.x, ~(-vec4<i32>(1i, arg_1.e.x, u_input.a.x, 2147483647i)));
    let var_1 = -arg_0.e.yxx;
    let var_2 = arg_0;
    global0 = countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.d, 1349i), _wgslsmith_sub_vec2_i32(vec2<i32>(var_2.d, 1i), vec2<i32>(-39732i, -40632i))) ^ _wgslsmith_sub_i32(var_0.d, var_1.x)) | -u_input.e.x;
    var var_3 = Struct_1(~vec2<u32>(arg_0.a.x, ~var_0.a.x), vec2<i32>(arg_1.e.x, min(_wgslsmith_mod_i32(var_1.x, 1i), var_0.d) & -_wgslsmith_sub_i32(-25032i, -1i)), var_0.c, -16318i >> (var_0.a.x % 32u), var_0.e);
    return vec3<bool>(true, arg_0.c, arg_1.c);
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(abs(~vec2<u32>(1u, ~u_input.b)), vec2<i32>(u_input.e.x, _wgslsmith_sub_i32(u_input.e.x, u_input.a.x)), all(select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), func_3(Struct_1(u_input.d, u_input.a.zx, false, u_input.e.x, vec4<i32>(-17529i, 2147483647i, u_input.a.x, u_input.a.x)), Struct_1(vec2<u32>(1u, u_input.c), vec2<i32>(u_input.a.x, -14694i), true, u_input.e.x, u_input.a), vec2<bool>(true, true)), vec3<bool>(true, true, true))), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i & u_input.e.x, 1i, max(u_input.e.x ^ -22473i, -15414i), _wgslsmith_dot_vec3_i32(u_input.a.zww, _wgslsmith_mult_vec3_i32(vec3<i32>(12559i, u_input.e.x, u_input.a.x), u_input.a.wzw))) << (vec4<u32>(1u & _wgslsmith_clamp_u32(0u, 1u, u_input.d.x), _wgslsmith_div_u32(u_input.b, u_input.b) & _wgslsmith_add_u32(19508u, u_input.c), countOneBits(~1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(77494u, u_input.b, 4294967295u, u_input.c), vec4<u32>(37217u, 4294967295u, u_input.d.x, u_input.c))) % vec4<u32>(32u)));
    global0 = u_input.e.x;
    var var_1 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(17065u, reverseBits(_wgslsmith_div_u32(var_0.a.x, var_0.a.x))), _wgslsmith_div_u32(var_0.a.x, u_input.b)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(320f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) * _wgslsmith_f_op_f32(floor(2172f))))), Struct_1(~var_0.a, -firstLeadingBit(vec2<i32>(1i, u_input.e.x)) ^ vec2<i32>(u_input.a.x << (u_input.c % 32u), abs(var_0.b.x)), true, _wgslsmith_div_i32(~(u_input.a.x >> (u_input.d.x % 32u)), -38813i >> (countOneBits(u_input.d.x) % 32u)), abs(vec4<i32>(51823i, u_input.e.x, _wgslsmith_mod_i32(var_0.e.x, u_input.e.x), abs(u_input.a.x)))));
    var var_2 = var_1.b.x;
    let var_3 = Struct_2(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.b))) - vec2<f32>(var_1.b.x, var_1.b.x))), var_1.c);
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec3<i32>) -> i32 {
    var var_0 = func_2();
    let var_1 = arg_0.c;
    let var_2 = -480f;
    var var_3 = 1000f;
    var var_4 = Struct_2(4294967295u, _wgslsmith_f_op_vec2_f32(step(var_0.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(2735f, arg_0.b.x), vec2<f32>(371f, arg_0.b.x)))))))), Struct_1(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(43959u, 4294967295u), u_input.d)) << (_wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(1u, 13950u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(37864u, 1u), vec2<u32>(arg_0.c.a.x, 4294967295u), vec2<u32>(4294967295u, u_input.b))) % vec2<u32>(32u)), vec2<i32>(reverseBits(func_2().c.b.x), min(35089i << (arg_1.x % 32u), _wgslsmith_mod_i32(-8035i, -2147483647i))), any(vec3<bool>(arg_2.x, arg_0.b.x > 258f, func_3(Struct_1(vec2<u32>(0u, arg_0.a), vec2<i32>(arg_0.c.e.x, 8173i), true, 19411i, var_0.c.e), var_1, vec2<bool>(var_0.c.c, var_1.c)).x)), var_0.c.d, u_input.a));
    return -select(abs(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_3.x, var_4.c.e.x), abs(-21430i))), -18850i, arg_0.c.c);
}

fn func_1() -> Struct_1 {
    let var_0 = -(~(-1i)) << (countOneBits(29040u) % 32u);
    global0 = min(_wgslsmith_sub_i32(func_4(func_2(), ~u_input.d, select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec3<i32>(4542i, -1i, u_input.e.x) | u_input.a.zyy), var_0), var_0) & 36688i;
    var var_1 = u_input.e.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1550f, 1976f, 688f))))))));
    let var_3 = abs(~(~select(abs(30034u), u_input.b, true)));
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -126f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, 682f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-827f, 551f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1262f, -146f), vec2<f32>(var_1, var_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(-1200f, var_1))))));
    let var_3 = !func_3(func_1(), func_1(), select(func_3(func_1(), func_2().c, select(vec2<bool>(true, var_0.c), vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, true))).xx, vec2<bool>(!var_0.c, func_2().c.c), select(!vec2<bool>(var_0.c, var_0.c), select(vec2<bool>(false, true), vec2<bool>(false, false), var_0.c), vec2<bool>(true, true)))).yz;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -947f, -2004f) * vec3<f32>(var_2.x, -698f, var_1)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1, 1056f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1048f, var_2.x, var_1)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-596f, var_1, -1120f) * vec3<f32>(260f, var_1, -1782f))))));
    global0 = _wgslsmith_sub_i32(u_input.a.x << (u_input.d.x % 32u), _wgslsmith_mult_i32(u_input.a.x << (~u_input.c % 32u), 1i)) ^ firstLeadingBit(~(countOneBits(2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, 26060u, 2410u, u_input.c), vec4<u32>(4294967295u, u_input.c, var_0.a.x, 0u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(7519i, firstTrailingBit(15752i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_4.x)), 19548u);
}

