struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> f32 {
    let var_0 = vec3<bool>(select(false, false, true), true, false);
    let var_1 = select(select(vec4<bool>(!all(vec4<bool>(false, true, false, false)), true, true, !(var_0.x & var_0.x)), !select(select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, false, var_0.x)), select(!vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, 70290u < u_input.a.x, 0u <= u_input.a.x, all(var_0.xz)), true)), vec4<bool>(arg_0.x <= arg_0.x, any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(false, true, var_0.x, false), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(var_0.x, true, true, var_0.x), var_0.x))), true, -u_input.b <= -1629i), vec4<bool>(!all(var_0.xz), true, !(4294967295u < arg_1.x), all(select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, false, false), false), var_0, any(var_0)))));
    let var_2 = arg_1.x;
    var var_3 = 1i;
    var_3 = _wgslsmith_sub_i32(27934i, -27523i);
    return -1717f;
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = Struct_2(-_wgslsmith_clamp_vec4_i32(countOneBits(-vec4<i32>(-1698i, arg_1.a.a.x, -1i, arg_1.a.a.x)), arg_1.a.a, vec4<i32>(-2147483647i, _wgslsmith_div_i32(-1i, u_input.b), arg_1.a.a.x, 2147483647i)), arg_1.a.b, 0u);
    var_0 = Struct_2(firstTrailingBit(vec4<i32>(~(-2147483647i), _wgslsmith_sub_i32(~arg_1.a.a.x, u_input.b), var_0.a.x, var_0.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.b.a.x)), arg_1.a.b.a.x, 581f, _wgslsmith_f_op_f32(func_3(arg_1.a.b.a.zz, u_input.a.yzw))))), var_0.b.b), ~0u);
    var_0 = Struct_2(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, u_input.b, -1i, 2147483647i), vec4<i32>(0i, 0i, 2147483647i, 19270i)), var_0.a) | vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(81035i, u_input.b, 1i)), _wgslsmith_div_vec3_i32(arg_1.a.a.yzx, vec3<i32>(-13109i, -4301i, arg_1.a.a.x))), -_wgslsmith_sub_i32(-1i, 6279i), reverseBits(arg_1.a.a.x), countOneBits(-28030i)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)), var_0.b.a.x, -1226f, arg_1.a.b.a.x), var_0.b.b), var_0.b.b.x);
    var var_1 = arg_1;
    var var_2 = select(false, any(!select(!vec4<bool>(arg_0, arg_0, true, false), !vec4<bool>(false, true, true, arg_0), true)), true);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1029f, arg_1.a.b.a.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-416f))), var_1.a.b.a.x, 564f));
}

fn func_4(arg_0: i32, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_3(Struct_2(~(~(-vec4<i32>(u_input.b, u_input.b, u_input.b, -11756i))), arg_1.b, u_input.c.x));
    var var_1 = vec2<u32>(1u, firstTrailingBit(_wgslsmith_div_u32(~(~4294967295u), var_0.a.c)));
    let var_2 = u_input.a;
    var var_3 = (true & all(vec4<bool>(true, true, true, true))) && select(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(vec2<bool>(all(vec3<bool>(true, true, true)), true)));
    let var_4 = !all(vec2<bool>(true, false));
    return abs(countOneBits(105790u));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(max(min(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, -9901i)), select(vec4<i32>(0i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), true)), ~vec4<i32>(-41202i, 85246i, u_input.b, 2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(590f, -1000f, 621f, 736f) * vec4<f32>(610f, 1307f, 1000f, -717f))), u_input.a.xw), arg_2));
    let var_1 = var_0;
    var var_2 = !(!select(select(select(arg_1.yxz, arg_1.zwz, vec3<bool>(false, arg_1.x, true)), vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(false, true, arg_1.x)), arg_1.ywz, arg_1.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_2 = vec3<bool>(false, select(_wgslsmith_f_op_f32(min(var_3, _wgslsmith_f_op_f32(-var_3))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 + var_0.a.b.a.x)), true, any(vec4<bool>(var_2.x, var_2.x, all(vec2<bool>(false, arg_1.x)), arg_1.x))), true);
    return var_1.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: f32) -> vec4<f32> {
    let var_0 = func_5(func_4(45923i, Struct_5(Struct_1(_wgslsmith_f_op_vec4_f32(func_2(false, Struct_3(Struct_2(vec4<i32>(arg_1, arg_1, u_input.b, u_input.b), Struct_1(vec4<f32>(-1000f, arg_0.x, arg_2, 317f), vec2<u32>(0u, 4294967295u)), 1u)))), u_input.a.xz), Struct_1(vec4<f32>(384f, arg_0.x, arg_0.x, -1000f), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 27610u), vec2<u32>(u_input.c.x, 39988u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_2, 1690f) * vec4<f32>(arg_0.x, 718f, 661f, arg_2)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, 506f, arg_2, -373f), vec4<f32>(arg_0.x, arg_0.x, -537f, arg_0.x)))), vec3<f32>(-955f, _wgslsmith_f_op_f32(-arg_0.x), 845f))), !(!vec4<bool>(all(vec3<bool>(false, true, false)), u_input.c.x >= 47110u, all(vec2<bool>(false, false)), true)), ~abs(u_input.a.x));
    var var_1 = vec3<f32>(-305f, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-255f * -449f)) + _wgslsmith_div_f32(arg_0.x, 494f)));
    let var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec2_u32(var_2.b.b, abs(reverseBits(_wgslsmith_add_vec2_u32(var_0.b.b, vec2<u32>(var_0.b.b.x, 1u)))));
    var_1 = var_0.b.a.yyw;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-func_5(51458u | var_2.c, select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), var_2.b.b.x).b.a))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(1230f, var_1.x) * vec2<f32>(168f, var_0.b.a.x)), abs(u_input.c.wwx)))), _wgslsmith_f_op_f32(-318f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1337f)) + _wgslsmith_f_op_f32(arg_0.x - var_2.b.a.x))), -1005f, -259f), all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, 132f, 113f, -593f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1295f, 176f, 670f, -1001f), vec4<f32>(-330f, -835f, -179f, -1000f)))) - vec4<f32>(-425f, _wgslsmith_f_op_f32(1758f - 629f), 1386f, _wgslsmith_f_op_f32(1297f + -534f))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-428f, 1161f) + vec2<f32>(-2183f, 479f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-499f, 508f) * vec2<f32>(-1235f, 213f))), ~24048i, _wgslsmith_f_op_f32(-413f * -558f))), select(select(vec4<bool>(false, var_0, var_0, true), select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(false, true, false, var_0), vec4<bool>(var_0, true, true, var_0)), all(vec2<bool>(var_0, var_0))), !vec4<bool>(var_0, true, true, true), !var_0))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(80750u, 1039u, 1u, 0u), u_input.a), u_input.a.x), firstLeadingBit(vec2<u32>(u_input.a.x, 17740u)) | u_input.c.yz));
    var var_2 = var_1.a.zz;
    var var_3 = func_5(~min(func_5(var_1.b.x, !vec4<bool>(false, true, var_0, true), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, 44444u), vec2<u32>(var_1.b.x, 0u))).c, _wgslsmith_sub_u32(50366u ^ var_1.b.x, var_1.b.x >> (94597u % 32u))), !vec4<bool>(var_0, var_0, select(any(vec4<bool>(var_0, true, var_0, true)), all(vec3<bool>(var_0, var_0, false)), var_0), var_0), _wgslsmith_sub_u32(var_1.b.x, ~7810u)).b;
    var_2 = var_1.a.yz;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a * var_1.a));
    var var_5 = select(!(!vec4<bool>(var_0, var_0, all(vec2<bool>(false, var_0)), var_0)), select(select(select(vec4<bool>(false, var_0, var_0, var_0), !vec4<bool>(var_0, true, true, var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, true, true, var_0), var_0)), select(vec4<bool>(var_0, true, false, var_0), vec4<bool>(var_0, var_0, var_0, var_0), var_0), (0u > var_1.b.x) && any(vec3<bool>(var_0, var_0, var_0))), !vec4<bool>(67522u == u_input.a.x, true, !var_0, var_0 || var_0), vec4<bool>(true && !var_0, var_0 || var_0, var_0, var_0)), true);
    var var_6 = func_5(var_1.b.x, select(vec4<bool>(true, false, false, (u_input.b >= 7830i) || (true | var_5.x)), select(!(!vec4<bool>(true, true, var_0, var_0)), !(!vec4<bool>(true, var_0, var_0, false)), select(select(vec4<bool>(var_0, var_5.x, var_0, var_0), vec4<bool>(var_0, true, var_5.x, false), var_5.x), vec4<bool>(var_0, var_5.x, false, true), select(vec4<bool>(false, true, var_0, true), vec4<bool>(true, var_0, var_5.x, var_0), true))), vec4<bool>(var_0, select(true, false, any(vec2<bool>(false, var_5.x))), var_5.x, all(vec3<bool>(var_0, var_0, var_5.x)))), 0u);
    var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec2_f32(select(var_6.b.a.yw, vec2<f32>(1000f, -870f), false)), 7335i, _wgslsmith_f_op_f32(f32(-1f) * -145f))).x, _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_6.b.a.xy), vec2<f32>(-1567f, 729f), !var_5.yy)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.a.zz)) + _wgslsmith_f_op_vec2_f32(min(var_4.yx, var_4.ww)))), vec3<u32>(~1u, _wgslsmith_sub_u32(5443u, var_1.b.x), 1u << (u_input.c.x % 32u)) & ((vec3<u32>(u_input.c.x, u_input.c.x, var_3.b.x) >> (u_input.c.xxw % vec3<u32>(32u))) | _wgslsmith_add_vec3_u32(u_input.a.wyx, vec3<u32>(var_1.b.x, u_input.a.x, 1u))))), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_3.a.x, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_clamp_vec4_u32(u_input.c, u_input.a, reverseBits(vec4<u32>(1u, var_1.b.x, var_6.b.b.x, var_3.b.x))) | (_wgslsmith_div_vec4_u32(u_input.c, u_input.a) & ~vec4<u32>(var_3.b.x, u_input.c.x, var_6.c, u_input.c.x))), var_6.a.xxw, vec4<i32>((var_6.a.x & 1i) & func_5(2540u, vec4<bool>(false, false, var_5.x, var_5.x), func_4(76017i, Struct_5(var_6.b, Struct_1(vec4<f32>(1000f, var_4.x, 843f, var_3.a.x), vec2<u32>(u_input.a.x, var_6.b.b.x)), var_3.a, vec3<f32>(var_1.a.x, 1416f, 856f)))).a.x, 42112i, u_input.b, abs(var_6.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(var_1.b.x, 1u), 40397u, ~var_6.c), select(u_input.a, vec4<u32>(var_1.b.x, var_3.b.x, u_input.a.x, u_input.a.x) ^ u_input.a, var_5.x)) >> (~var_1.b.x % 32u), -262f);
}

