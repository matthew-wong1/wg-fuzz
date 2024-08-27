struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_3(92154u ^ u_input.d.x, Struct_2(Struct_1(vec2<i32>(u_input.a.x | 0i, -34454i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1326f, 1209f, -955f, -1000f), vec4<f32>(-1254f, -1145f, -1000f, -132f))), 43985i), 162f, Struct_1(~(u_input.e.xz | vec2<i32>(u_input.e.x, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1230f), -1079f, _wgslsmith_f_op_f32(round(1226f)), 241f), countOneBits(max(-1i, -987i)))), Struct_1(abs(abs(u_input.a) | -u_input.e.yw), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-861f - 303f)), -395f, _wgslsmith_f_op_f32(floor(-395f)), _wgslsmith_div_f32(-1039f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 22939i));
    let var_1 = var_0.b;
    return var_0.b.c.a;
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = Struct_3(4294967295u, Struct_2(Struct_1(vec2<i32>(-1i, u_input.a.x) | u_input.e.ww, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2344f, arg_1, arg_1, arg_0))), u_input.e.x), 1000f, Struct_1(-u_input.a, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, -1473f, 713f))), -1i)), Struct_1(func_3(), vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)), -671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0)))), -(~_wgslsmith_add_i32(u_input.e.x, u_input.b))));
    var_0 = Struct_3(var_0.a, Struct_2(var_0.c, _wgslsmith_f_op_f32(select(-385f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(-1297f)), _wgslsmith_f_op_f32(1037f * arg_0), true)), true)), var_0.b.c), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-14452i, ~var_0.b.a.a.x), var_0.c.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-848f, -535f, var_0.c.b.x, arg_1) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -844f, -1000f, var_0.c.b.x))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.b.a.b)))), abs(var_0.c.a.x)));
    let var_1 = var_0.b.c;
    var var_2 = Struct_2(var_0.b.c, _wgslsmith_f_op_f32(round(arg_0)), Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1345f, _wgslsmith_f_op_f32(sign(var_0.b.b)), 1f)), u_input.e.x));
    let var_3 = Struct_3(~_wgslsmith_mod_u32(1u, 1u), var_0.b, Struct_1(_wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(0i, 1i)) | _wgslsmith_mod_vec2_i32(var_0.c.a, vec2<i32>(var_2.a.a.x, -2147483647i)), firstTrailingBit(var_2.c.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_div_f32(-585f, var_1.b.x), _wgslsmith_div_f32(-260f, var_1.b.x), arg_1) - _wgslsmith_f_op_vec4_f32(-var_0.c.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.e.yzx, u_input.e.yzx, max(vec3<i32>(u_input.b, var_1.a.x, -8159i), vec3<i32>(var_2.c.a.x, var_0.c.c, var_1.a.x))), _wgslsmith_clamp_vec3_i32(u_input.e.xzz, vec3<i32>(u_input.a.x, 0i, var_2.c.c), vec3<i32>(var_0.c.c, u_input.e.x, var_1.c)) ^ select(vec3<i32>(-11319i, var_2.a.a.x, var_1.c), vec3<i32>(var_0.c.a.x, var_1.c, var_2.a.c), true))));
    return var_1.a.x;
}

fn func_1() -> bool {
    var var_0 = u_input.c.zy;
    let var_1 = ~(-func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f + -1000f)), -496f));
    var var_2 = ~u_input.c;
    var_0 = u_input.d;
    var var_3 = u_input.c;
    return all(!select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false), u_input.e.x <= -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstTrailingBit(vec2<i32>(~u_input.b & -u_input.b, reverseBits(i32(-1i) * -41841i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-983f, -1556f, -1464f, -500f), vec4<f32>(-1314f, -283f, 1135f, 508f), true))), vec4<f32>(_wgslsmith_div_f32(-942f, 1107f), _wgslsmith_f_op_f32(f32(-1f) * -779f), _wgslsmith_f_op_f32(-544f + 325f), _wgslsmith_f_op_f32(select(-1353f, -1440f, false))))) + vec4<f32>(_wgslsmith_f_op_f32(-141f + -899f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - -1748f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(759f - 1000f) * -1000f), -1000f)), -28142i);
    var var_1 = vec2<bool>(!(!(1579f > _wgslsmith_f_op_f32(floor(var_0.b.x)))), !(func_1() != func_1()));
    var_1 = !vec2<bool>(u_input.e.x >= -6269i, true);
    let var_2 = Struct_3(select(15626u, u_input.c.x, any(!(!vec2<bool>(var_1.x, true)))), Struct_2(Struct_1(vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.b), _wgslsmith_mod_i32(2147483647i, u_input.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 657f) - vec4<f32>(var_0.b.x, 1479f, var_0.b.x, 539f)), -u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x)))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, 21441i), _wgslsmith_clamp_i32(10463i, -15017i, -50344i)), vec4<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, -719f)), _wgslsmith_div_f32(var_0.b.x, -1228f), -160f, _wgslsmith_div_f32(-830f, var_0.b.x)), _wgslsmith_add_i32(_wgslsmith_mult_i32(35446i, 1i), select(1i, u_input.a.x, var_1.x)))), Struct_1(vec2<i32>(var_0.c, u_input.e.x) | -select(vec2<i32>(var_0.a.x, var_0.c), u_input.a, vec2<bool>(var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-500f, var_0.b.x, var_0.b.x, var_0.b.x) * vec4<f32>(var_0.b.x, var_0.b.x, 116f, 149f))))), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(u_input.b, -9083i, u_input.e.x, var_0.c)), -122i >> (u_input.d.x % 32u), firstLeadingBit(2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

