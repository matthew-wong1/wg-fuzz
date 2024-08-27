struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: Struct_3) -> f32 {
    return -1630f;
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: f32, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = arg_2;
    let var_1 = Struct_4(vec4<i32>(37390i, u_input.b.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, -2147483647i), ~u_input.b.x), -19092i), _wgslsmith_dot_vec2_i32(max(arg_3.zz, u_input.b), arg_3.zx)));
    var var_2 = Struct_3(Struct_2(Struct_1(select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0, arg_0.x), vec2<bool>(true, arg_1), !arg_1), vec2<u32>(u_input.a.x & 1u, ~23604u), vec4<i32>(u_input.b.x, 44816i, -var_1.a.x, u_input.b.x & u_input.b.x), u_input.c)));
    let var_3 = var_2.a.a.a.x;
    let var_4 = true;
    return !select(vec2<bool>(var_4, any(select(vec2<bool>(true, arg_0.x), var_2.a.a.a, vec2<bool>(true, var_4)))), !(!(!vec2<bool>(true, arg_1))), !var_4);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(func_3(!vec2<bool>(false, arg_0), all(vec2<bool>(arg_0, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -464f), countOneBits(vec3<i32>(u_input.b.x, -48668i, 1i))), arg_1.yz, _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, -4622i, u_input.b.x, u_input.b.x)), ~1u)));
    var var_1 = select(!func_3(func_3(func_3(vec2<bool>(arg_0, arg_0), arg_0, 644f, var_0.a.a.c.ywy), all(vec4<bool>(false, arg_0, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -848f), select(vec3<i32>(u_input.b.x, 12552i, -2147483647i), vec3<i32>(u_input.b.x, 2147483647i, -2147483647i), var_0.a.a.a.x)), true, 1f, select(vec3<i32>(u_input.b.x, 1i, -56579i), vec3<i32>(2147483647i, 28509i, 29377i), vec3<bool>(arg_0, false, false)) << (vec3<u32>(28605u, 1111u, 1u) % vec3<u32>(32u))).x, all(!vec3<bool>(select(var_0.a.a.a.x, var_0.a.a.a.x, true), var_0.a.a.a.x, true)), !(var_0.a.a.a.x != var_0.a.a.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(932f, 1329f, -1000f))))));
    var_1 = arg_0 | true;
    var_1 = false;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -270f), -649f))), _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(vec2<bool>(false, false), u_input.a.zx, vec4<i32>(-31540i, u_input.b.x, u_input.b.x, -49775i), u_input.c)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(710f * _wgslsmith_f_op_f32(f32(-1f) * -220f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1375f, -151f)))), false)));
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_2(true, vec4<u32>(1u, 4294967295u, 4294967295u, 77411u))), -1206f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1111f, var_0.x))))))), vec2<f32>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x))), -1123f), vec2<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, true), true)), -countOneBits(-22466i) > (_wgslsmith_div_i32(u_input.b.x, -2147483647i) >> (u_input.a.x % 32u)))));
    var var_1 = Struct_5(min(max(-7544i, u_input.b.x), select(_wgslsmith_add_i32(~(-36070i), -39618i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, -14094i, 2147483647i), vec3<bool>(true, false, true)), -vec3<i32>(-1i, -1699i, 1i)), var_0.x > _wgslsmith_f_op_f32(sign(851f)))), select(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), true), vec2<bool>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x) >= select(u_input.b.x, u_input.b.x, false), !any(vec2<bool>(false, false))), any(vec4<bool>(true, true, true, true)) || any(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), ~_wgslsmith_mod_i32(i32(-1i) * -u_input.b.x, u_input.b.x), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -175f))) * 1632f));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1996f, 276f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1043f, var_0.x) * vec2<f32>(542f, var_1.e))) * vec2<f32>(-234f, 394f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_1.e)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1312f) - vec2<f32>(var_1.e, 1000f)), vec2<f32>(-101f, 869f))))))));
    var_1 = Struct_5(~(_wgslsmith_mod_i32(u_input.b.x, 1i) | _wgslsmith_mod_i32(-23306i, -25480i)), select(!(!select(vec2<bool>(var_1.b.x, var_1.b.x), var_1.d, var_1.b)), !vec2<bool>(u_input.c <= 1u, true), !vec2<bool>(true, !var_1.b.x)), ~(i32(-1i) * -(u_input.b.x << (84674u % 32u))), !(!vec2<bool>(true, var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false && var_1.d.x, ~vec4<u32>(u_input.a.x, 4294967295u, u_input.c, 3991u))))));
    var_1 = Struct_5(u_input.b.x, var_1.d, u_input.b.x, var_1.b, _wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(Struct_1(vec2<bool>(var_1.b.x, var_1.d.x), vec2<u32>(237u, u_input.a.x), vec4<i32>(u_input.b.x, 5968i, var_1.a, 2147483647i), 45393u))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-522f, -1583f));
    var var_2 = select(select(!vec4<bool>(true, var_1.d.x, var_1.d.x, any(vec3<bool>(false, true, var_1.d.x))), !vec4<bool>(true, true, !var_1.b.x, true), vec4<bool>(false, !(u_input.c < u_input.c), any(!vec4<bool>(var_1.b.x, var_1.d.x, true, false)), func_3(!var_1.b, true, _wgslsmith_div_f32(var_1.e, var_1.e), vec3<i32>(var_1.a, 2147483647i, var_1.a)).x)), vec4<bool>(any(!select(vec3<bool>(var_1.b.x, var_1.b.x, false), vec3<bool>(true, var_1.b.x, var_1.d.x), var_1.d.x)), all(!(!vec4<bool>(var_1.d.x, var_1.d.x, false, var_1.b.x))), true, all(!vec3<bool>(false, var_1.d.x, var_1.d.x))), vec4<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1135f, var_1.e))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 947f)), true && var_1.d.x, true));
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-249f, var_1.e) - vec2<f32>(160f, var_1.e))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, var_0.x) - vec2<f32>(var_1.e, 846f)), vec2<f32>(var_0.x, var_0.x), select(var_2.x, false, var_2.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -1826f) + vec2<f32>(-111f, var_1.e)))), true)), !var_1.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(u_input.c, u_input.a.x, ~(u_input.c & 1u))));
}

