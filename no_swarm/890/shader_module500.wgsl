struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1() -> u32 {
    var var_0 = Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<u32>(u_input.a.x, u_input.a.x), (-abs(1i) >> (u_input.a.x % 32u)) & 18654i);
    var var_1 = select(vec2<bool>(true, true), var_0.a, var_0.a);
    var_1 = !var_0.a;
    var_1 = var_0.a;
    var var_2 = u_input.a.x | 4294967295u;
    return 10454u;
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> i32 {
    var var_0 = arg_1.x;
    let var_1 = Struct_2(max(433u, 0u | (u_input.a.x >> (u_input.a.x % 32u))) | 1u, -abs(-arg_0 ^ 1i), ~(-_wgslsmith_mult_vec4_i32(select(vec4<i32>(30162i, 0i, arg_3.x, arg_3.x), vec4<i32>(-1i, arg_0, 50904i, 2147483647i), arg_1.x), arg_3)));
    var_0 = _wgslsmith_div_u32((u_input.a.x | min(u_input.a.x, u_input.a.x)) | 29739u, var_1.a) > var_1.a;
    let var_2 = arg_2.x;
    var_0 = arg_1.x;
    return abs(-1i & -var_1.b);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = true;
    var var_1 = vec3<i32>(-41340i, arg_2.x, -2147483647i) << (_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(arg_3.a, 1374u, 27557u)) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 14288u, 4294967295u), vec3<u32>(44221u, arg_3.a, arg_3.a), _wgslsmith_add_vec3_u32(vec3<u32>(arg_3.a, u_input.a.x, arg_3.a), vec3<u32>(arg_3.a, 43001u, u_input.a.x))), vec3<u32>(0u, firstLeadingBit(u_input.a.x), ~(~arg_3.a)), min(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 1u, arg_3.a)), vec3<u32>(38431u, 4294967295u, u_input.a.x)), select(vec3<u32>(arg_3.a, 1u, 69854u), vec3<u32>(76306u, 0u, arg_3.a), !vec3<bool>(false, var_0, true)))) % vec3<u32>(32u));
    var_1 = vec3<i32>(_wgslsmith_add_i32(-arg_2.x, -13145i ^ var_1.x), arg_3.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-36909i, var_1.x, ~arg_2.x, _wgslsmith_dot_vec4_i32(arg_3.c, arg_3.c)), reverseBits(-vec4<i32>(var_1.x, var_1.x, arg_3.c.x, 2147483647i))));
    var var_2 = countOneBits(var_1.yz);
    return u_input.a.x ^ arg_3.a;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<f32>) -> vec2<f32> {
    var var_0 = Struct_1(vec2<bool>(!(400f >= _wgslsmith_f_op_f32(-arg_2.x)), any(vec2<bool>(all(vec4<bool>(arg_1, arg_1, arg_1, false)), arg_1))), select(u_input.a, _wgslsmith_add_vec2_u32(select(vec2<u32>(37322u, 1u), vec2<u32>(51529u, arg_0), true), u_input.a), vec2<bool>(false, select(!arg_1, true, arg_1))), -2147483647i);
    var var_1 = -173f;
    var var_2 = Struct_2(func_4(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.x, arg_2.x), vec2<f32>(arg_2.x, arg_2.x))) - vec2<f32>(arg_2.x, arg_2.x))), ~vec3<i32>(~var_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.c), vec2<i32>(var_0.c, var_0.c)), -1i | var_0.c), Struct_2(countOneBits(_wgslsmith_sub_u32(4294967295u, var_0.b.x)), func_3(_wgslsmith_div_i32(var_0.c, 1i), vec4<bool>(false, false, arg_1, arg_1), max(vec3<u32>(u_input.a.x, arg_0, 64964u), vec3<u32>(7387u, 65233u, var_0.b.x)), vec4<i32>(-15959i, var_0.c, 1i, 2147483647i)), abs(select(vec4<i32>(var_0.c, var_0.c, 0i, 6967i), vec4<i32>(var_0.c, -1i, var_0.c, var_0.c), vec4<bool>(false, arg_1, false, var_0.a.x))))), -countOneBits(firstLeadingBit(_wgslsmith_add_i32(-18555i, var_0.c))), firstLeadingBit(~min(~vec4<i32>(var_0.c, 1i, 0i, 0i), vec4<i32>(-41203i, 1i, var_0.c, var_0.c) & vec4<i32>(-1i, var_0.c, 1i, 6132i))));
    let var_3 = Struct_1(!var_0.a, u_input.a, var_2.b);
    let var_4 = !select(select(vec3<bool>(false, arg_2.x == 1024f, var_0.a.x), select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.x, var_3.a.x, true), var_0.c >= var_3.c), !(!vec3<bool>(var_0.a.x, var_3.a.x, false))), !select(vec3<bool>(var_0.a.x, var_3.a.x, false), !vec3<bool>(var_0.a.x, var_0.a.x, false), !var_3.a.x), true);
    return arg_2.zy;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(12957u, (((u_input.a.x ^ 1u) & _wgslsmith_div_u32(u_input.a.x, 4294967295u)) << (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u)) | u_input.a.x);
    let var_1 = 4294967295u;
    var var_2 = Struct_1(select(select(vec2<bool>(true, all(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), true), select(vec2<bool>(true, arg_1.x < -2307f), vec2<bool>(false, true), vec2<bool>(true, true)), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(true, false), all(vec4<bool>(true, false, false, false))), vec2<bool>(true, true))), u_input.a << (vec2<u32>(max(1u, _wgslsmith_div_u32(var_1, 82409u)), ~(~21837u)) % vec2<u32>(32u)), _wgslsmith_add_i32(-2147483647i, 1i));
    var var_3 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstLeadingBit(select(vec2<i32>(var_2.c, 37256i), vec2<i32>(2147483647i, -1i), var_2.a)), -vec2<i32>(var_2.c, var_2.c)), abs(abs(vec2<i32>(1i, 1i))));
    var var_4 = !(!select(var_2.a.x, var_2.a.x, var_2.a.x));
    return Struct_1(var_2.a, _wgslsmith_add_vec2_u32(vec2<u32>(var_1, ~36795u) & ~_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(0u, u_input.a.x), vec2<u32>(var_2.b.x, u_input.a.x)), ~(~_wgslsmith_mod_vec2_u32(var_2.b, u_input.a))), -var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(643f, -140f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(980f, -3024f), vec2<f32>(262f, 333f)))), !any(vec2<bool>(false, false))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(f32(-1f) * -2139f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(func_1(), true, _wgslsmith_div_vec3_f32(vec3<f32>(-384f, 790f, -837f), vec3<f32>(-925f, 1506f, 1884f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-860f)), _wgslsmith_f_op_f32(step(868f, -668f))), vec2<bool>(true, true)))));
    var var_1 = vec4<i32>(select(-var_0.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.c, -35591i, 5377i, 2147483647i), vec4<i32>(var_0.c, ~var_0.c, 0i << (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, -1i), vec2<i32>(16147i, 2147483647i)))), any(!(!vec3<bool>(var_0.a.x, var_0.a.x, true)))), var_0.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(select(var_0.c, -58753i, var_0.a.x), var_0.c), 50800i), 2147483647i), var_0.c | -1i);
    let var_2 = _wgslsmith_clamp_u32(34337u, _wgslsmith_mult_u32(var_0.b.x, var_0.b.x), var_0.b.x);
    let var_3 = -618f;
    let var_4 = var_3;
    var_1 = -vec4<i32>(var_1.x, -2147483647i, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.xx, var_1.xz), _wgslsmith_div_i32(var_1.x, 2147483647i)), -var_0.c);
    let var_5 = Struct_1(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, var_4)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_3, 1000f), vec2<f32>(var_4, var_4)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1108f, -716f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(224f, 479f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-343f, 858f) - vec2<f32>(var_3, -1415f))))).a, var_0.b, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(var_4, var_4), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2001f + var_4) * _wgslsmith_f_op_f32(-406f - _wgslsmith_div_f32(var_4, var_3))), var_3), abs(-vec3<i32>(2021i, var_0.c, 0i)) << (vec3<u32>(var_0.b.x, _wgslsmith_mod_u32(29887u, _wgslsmith_dot_vec3_u32(vec3<u32>(58002u, 79644u, var_0.b.x), vec3<u32>(u_input.a.x, 41437u, 10254u))), 69621u) % vec3<u32>(32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-(~vec4<i32>(var_0.c, var_5.c, 975i, 6545i)), select(vec4<i32>(-31698i, -31905i, var_5.c, 1i), max(vec4<i32>(-51701i, 12387i, 0i, var_1.x), vec4<i32>(var_1.x, -17489i, 0i, var_5.c)), true)), ~vec4<i32>(-38518i, _wgslsmith_mod_i32(-6496i, -5766i), var_5.c, -1i)));
}

