struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-arg_1.d.x, 2147483647i, 1i), min(_wgslsmith_add_vec3_i32(-vec3<i32>(-35950i, -49216i, -2147483647i), ~(vec3<i32>(u_input.d.x, 1i, arg_1.d.x) | vec3<i32>(-2147483647i, 57003i, -1i))), _wgslsmith_add_vec3_i32(vec3<i32>(-21117i, u_input.b.x, 10097i) << (u_input.c % vec3<u32>(32u)), abs(vec3<i32>(arg_1.d.x, arg_2.a.d.x, -40861i))) | (vec3<i32>(-1i) * -vec3<i32>(arg_1.d.x, u_input.d.x, u_input.d.x))));
    let var_1 = vec2<f32>(arg_1.a, arg_3.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_div_f32(arg_1.c, arg_3.x)) * -1271f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(622f, arg_2.a.a)), -226f)))));
    let var_3 = arg_2;
    var var_4 = true;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_3.a.a, 600f) * vec3<f32>(arg_1.c, -1151f, -1653f)), vec3<f32>(arg_1.a, -269f, arg_2.a.a))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(370f, arg_2.a.c, 623f)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2063f * arg_0.a.a) * arg_1.a), _wgslsmith_f_op_f32(-arg_1.a), arg_1.a) - vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(arg_0.a.a + _wgslsmith_f_op_f32(-arg_0.a.c)), _wgslsmith_div_f32(arg_1.a, 1047f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_3(select(u_input.a, arg_1.e.x, true), Struct_1(-1290f, 3824u, -2636f, arg_0.a.d, arg_0.a.e), Struct_2(Struct_1(arg_0.a.a, 69239u, arg_1.a, vec2<i32>(-59904i, -22449i), u_input.c.xx)), vec2<f32>(arg_1.c, arg_1.a))))))));
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = -920f;
    var_1 = arg_0;
    return var_1.a.d.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = any(!vec2<bool>(true, any(vec3<bool>(true, true, true))));
    var var_1 = ~max(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.zx, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 34989u), vec2<u32>(u_input.a, u_input.c.x))), u_input.e.wz), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.x, 1u), vec2<u32>(~arg_0.x, u_input.c.x), ~(~vec2<u32>(arg_0.x, u_input.e.x))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1227f * 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1112f), _wgslsmith_f_op_f32(1266f + -171f), any(vec2<bool>(false, var_0))))), ~var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-363f, -489f))))), vec2<i32>(-1i, select(func_2(Struct_2(Struct_1(-1589f, var_1.x, -1946f, vec2<i32>(34388i, arg_1.x), u_input.c.xy)), Struct_1(1545f, u_input.a, -2380f, u_input.b, u_input.c.xz)), _wgslsmith_add_i32(2147483647i, u_input.b.x), true)), min(~(~vec2<u32>(u_input.a, arg_0.x)), vec2<u32>(32883u, u_input.a))));
    var_1 = firstLeadingBit(arg_0.yy);
    let var_3 = max(arg_0, u_input.c);
    return Struct_2(Struct_1(-111f, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1552f)), _wgslsmith_f_op_vec3_f32(func_3(u_input.a, Struct_1(var_2.a.a, 51442u, var_2.a.a, u_input.d, var_2.a.e), Struct_2(var_2.a), vec2<f32>(var_2.a.a, var_2.a.c))).x)), _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(0i), 74011i), abs(select(vec2<i32>(-57724i, 31454i), u_input.b, vec2<bool>(var_0, var_0)))), vec2<u32>(0u, u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-425f, 24448u, 1f, vec2<i32>(abs(_wgslsmith_mod_i32(u_input.d.x, u_input.b.x)), -2147483647i), u_input.e.zx));
    let var_1 = func_1(_wgslsmith_mult_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(u_input.e.yzy, u_input.c, u_input.e.xzy)), (vec3<u32>(22961u, 218u, var_0.a.e.x) | (vec3<u32>(98099u, u_input.e.x, var_0.a.b) >> (u_input.c % vec3<u32>(32u)))) & (vec3<u32>(var_0.a.b, var_0.a.b, var_0.a.b) >> (min(u_input.c, vec3<u32>(var_0.a.e.x, 78960u, u_input.e.x)) % vec3<u32>(32u)))), ~var_0.a.d);
    let var_2 = func_1(vec3<u32>(var_1.a.b, _wgslsmith_div_u32(~min(var_0.a.e.x, var_1.a.e.x), ~var_0.a.e.x), select(_wgslsmith_dot_vec2_u32(var_0.a.e, select(var_0.a.e, u_input.c.xz, vec2<bool>(false, true))), ~_wgslsmith_add_u32(4294967295u, var_1.a.b), true)), _wgslsmith_sub_vec2_i32(vec2<i32>(-(u_input.d.x ^ var_1.a.d.x), 2147483647i), max(func_1(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.b, var_1.a.e.x, 0u), vec3<u32>(6528u, 0u, 29403u)), vec2<i32>(u_input.b.x, var_0.a.d.x)).a.d, _wgslsmith_div_vec2_i32(var_1.a.d, select(var_1.a.d, vec2<i32>(0i, 1i), vec2<bool>(false, true)))))).a;
    var_0 = func_1(_wgslsmith_add_vec3_u32(~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, var_0.a.e.x, var_1.a.b), u_input.c)), u_input.c), func_1(vec3<u32>(_wgslsmith_div_u32(var_0.a.b, countOneBits(var_1.a.e.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(50343u, var_0.a.e.x), var_1.a.e), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.b, var_0.a.b), var_2.e)), _wgslsmith_clamp_vec2_i32(~max(var_0.a.d, vec2<i32>(u_input.d.x, var_1.a.d.x)), vec2<i32>(u_input.b.x, -var_1.a.d.x), select(countOneBits(u_input.b), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.d.x, var_2.d.x), var_1.a.d), vec2<bool>(false, false)))).a.d);
    var_0 = Struct_2(func_1(vec3<u32>(_wgslsmith_mod_u32(~var_1.a.b, ~var_1.a.e.x), 1u, var_0.a.b), var_2.d).a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.c) - var_2.a));
    var_0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(273f, _wgslsmith_f_op_f32(f32(-1f) * -1041f), true)) + -1419f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.a.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.c - 877f) + var_0.a.c)))), i32(-1i) * -func_1(_wgslsmith_add_vec3_u32(u_input.c, u_input.c), ~var_0.a.d).a.d.x, vec3<u32>(1191u & var_2.e.x, ~abs(var_2.e.x), ~u_input.a));
}

