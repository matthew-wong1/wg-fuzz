struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    global1 = reverseBits(vec2<u32>(60828u ^ _wgslsmith_mult_u32(81u, arg_0.d.b.x), firstTrailingBit(firstTrailingBit(1u)))) & ~vec2<u32>(_wgslsmith_clamp_u32(select(arg_0.c.b.x, 1u, arg_1.x), 28023u ^ u_input.a, ~u_input.a), ~u_input.a);
    let var_0 = select(max(~abs(reverseBits(arg_0.c.b.yxw)), firstLeadingBit(~(vec3<u32>(arg_0.d.b.x, arg_0.d.b.x, global1.x) >> (arg_2.b.zwx % vec3<u32>(32u))))), abs(select(firstTrailingBit(vec3<u32>(0u, 12894u, arg_2.b.x)) | ~vec3<u32>(global1.x, 25627u, arg_0.a.x), ~vec3<u32>(u_input.a, global1.x, 32022u), !all(vec3<bool>(false, arg_2.e, true)))), all(vec4<bool>(all(select(vec4<bool>(arg_1.x, arg_0.d.a.x, false, false), vec4<bool>(arg_0.d.a.x, true, true, false), vec4<bool>(true, false, true, arg_0.d.e))), all(select(vec3<bool>(arg_1.x, true, arg_2.e), vec3<bool>(true, arg_0.b.a.x, arg_1.x), true)), true, all(arg_1))));
    let var_1 = arg_2.b.zx;
    global0 = true;
    var var_2 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(firstLeadingBit(~var_1.x), 4294967295u ^ u_input.a), arg_0.c.b.x), arg_2, arg_0.d, arg_0.d);
    return (987f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f * 1301f), _wgslsmith_f_op_f32(1179f + -198f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1653f - 541f), 1f, arg_0.b.d == -6412i)))) & all(vec3<bool>(arg_0.c.e, true, var_2.b.a.x));
}

fn func_2(arg_0: f32) -> f32 {
    global0 = true;
    var var_0 = !select(!select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), all(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-903f)))) != _wgslsmith_f_op_f32(-1f));
    var_0 = !(!vec4<bool>(var_0.x, func_3(Struct_2(vec2<u32>(global1.x, 32513u), Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), 0i, 1i, true), Struct_1(vec2<bool>(var_0.x, var_0.x), vec4<u32>(29839u, u_input.a, u_input.a, global1.x), 2147483647i, 61928i, var_0.x), Struct_1(var_0.yz, vec4<u32>(37955u, global1.x, 4294967295u, 4294967295u), 2147483647i, -14184i, false)), var_0.xx, Struct_1(var_0.zx, vec4<u32>(3870u, 0u, u_input.a, 15791u), 33640i, 0i, true), -vec2<i32>(0i, 0i)), var_0.x, !any(vec3<bool>(var_0.x, var_0.x, true))));
    global0 = !var_0.x;
    global1 = vec2<u32>(global1.x, (countOneBits(_wgslsmith_sub_u32(global1.x, u_input.a)) & abs(countOneBits(global1.x))) & u_input.a);
    return 199f;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(max(1063f, 685f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f + 1296f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(568f, -166f))))), _wgslsmith_f_op_f32(sign(838f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(681f, -540f), _wgslsmith_f_op_f32(-703f * -440f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1138f, _wgslsmith_f_op_f32(max(1949f, 626f))) * -655f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1171f)) + _wgslsmith_f_op_f32(-785f + _wgslsmith_f_op_f32(222f + -532f)))));
    global1 = ~vec2<u32>(26185u, ~arg_2.x);
    var var_1 = any(select(select(select(!vec4<bool>(true, arg_3, true, arg_1), !vec4<bool>(arg_1, true, arg_3, arg_1), true), !vec4<bool>(arg_3, arg_3, arg_1, true), all(vec3<bool>(arg_1, false, arg_3))), !select(vec4<bool>(false, arg_1, arg_3, arg_3), select(vec4<bool>(true, arg_3, arg_1, true), vec4<bool>(false, arg_3, false, false), arg_3), !arg_1), false));
    let var_2 = vec2<bool>(reverseBits(27241i) == ~abs(abs(arg_0)), true);
    var var_3 = arg_2.ww;
    return Struct_1(var_2, arg_2, -2147483647i, _wgslsmith_mod_i32((-46383i | _wgslsmith_sub_i32(-54871i, arg_0)) | _wgslsmith_add_i32(~arg_0, arg_0 << (global1.x % 32u)), arg_0), arg_3);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -166f), -1036f)))));
    global0 = false;
    var var_1 = arg_1.c;
    let var_2 = arg_0.x;
    global0 = !((_wgslsmith_f_op_f32(-var_0) < _wgslsmith_f_op_f32(abs(-452f))) && true) == false;
    return _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.xy, arg_2.zz), arg_2.xz, arg_2.xy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true || (u_input.a > global1.x);
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(~reverseBits(4294967295u), u_input.a << (min(29588u, u_input.a) % 32u)), _wgslsmith_mod_vec2_u32(func_4(reverseBits(vec3<i32>(-1i, 2147483647i, 0i)), Struct_2(~vec2<u32>(4294967295u, 71643u), Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.a, global1.x, 31887u, u_input.a), -93254i, 45912i, true), Struct_1(vec2<bool>(false, true), vec4<u32>(2449u, u_input.a, u_input.a, 0u), 21333i, 2147483647i, true), Struct_1(vec2<bool>(false, true), vec4<u32>(177u, u_input.a, u_input.a, global1.x), 2147483647i, -1i, false)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.x), vec2<u32>(0u, 53995u)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, global1.x), vec3<u32>(4294967295u, 0u, 5732u)), u_input.a), func_1(~0i, true, ~vec4<u32>(global1.x, 0u, global1.x, 8823u), false)), vec2<u32>(1u, 1u) ^ (firstTrailingBit(vec2<u32>(19501u, 1u)) >> (func_4(vec3<i32>(-2147483647i, 2147483647i, 0i), Struct_2(vec2<u32>(global1.x, global1.x), Struct_1(vec2<bool>(true, false), vec4<u32>(4123u, global1.x, u_input.a, 5505u), 1i, 2147483647i, false), Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.a, 63877u, global1.x, global1.x), 32154i, 2147483647i, true), Struct_1(vec2<bool>(true, true), vec4<u32>(0u, 12284u, 29700u, 1u), -2147483647i, 7803i, true)), vec3<u32>(u_input.a, u_input.a, 30795u), Struct_1(vec2<bool>(false, false), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), 31956i, 45199i, false)) % vec2<u32>(32u)))));
    global0 = ((_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, global1.x, 40293u, u_input.a) << (vec4<u32>(global1.x, 0u, 1u, 28022u) % vec4<u32>(32u)), vec4<u32>(u_input.a, var_1.x, global1.x, global1.x) | vec4<u32>(4294967295u, 93023u, 4294967295u, u_input.a)) << (_wgslsmith_div_u32(30639u, global1.x ^ 31634u) % 32u)) << (u_input.a % 32u)) > func_1(-1i >> (var_1.x % 32u), func_3(Struct_2(vec2<u32>(global1.x, 0u), Struct_1(vec2<bool>(true, true), vec4<u32>(global1.x, 30827u, 55582u, global1.x), -226i, -1i, true), Struct_1(vec2<bool>(true, false), vec4<u32>(20992u, 18688u, 46868u, 0u), -10417i, 2147483647i, false), Struct_1(vec2<bool>(true, true), vec4<u32>(global1.x, u_input.a, global1.x, u_input.a), 44599i, 1i, false)), vec2<bool>(true, true), func_1(-1i, false, vec4<u32>(u_input.a, u_input.a, var_1.x, global1.x), true), firstLeadingBit(vec2<i32>(0i, 56835i))) && all(vec3<bool>(true, true, true)), (func_1(33560i, true, vec4<u32>(4294967295u, 1u, 0u, u_input.a), false).b & ~vec4<u32>(4294967295u, var_1.x, 9148u, 81347u)) >> (vec4<u32>(global1.x, u_input.a, 29448u, firstLeadingBit(1u)) % vec4<u32>(32u)), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), all(vec2<bool>(false, false))))).b.x;
    let var_2 = var_1.x;
    let var_3 = _wgslsmith_mod_i32(~(-1i), _wgslsmith_sub_i32(-_wgslsmith_sub_i32(13948i, ~(-15810i)), _wgslsmith_mult_i32(-48202i, 1i) << (u_input.a % 32u)));
    var var_4 = -387f;
    let var_5 = select(select(vec3<bool>(any(vec4<bool>(false, false, true, true)), true, false), !(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), false), vec3<bool>(func_3(Struct_2(vec2<u32>(var_1.x, 14897u), func_1(var_3, false, vec4<u32>(4294967295u, 0u, 43423u, u_input.a), true), func_1(-26802i, false, vec4<u32>(u_input.a, 26262u, 0u, var_2), false), Struct_1(vec2<bool>(false, true), vec4<u32>(6945u, 0u, u_input.a, global1.x), var_3, var_3, true)), vec2<bool>(all(vec3<bool>(true, true, false)), u_input.a == u_input.a), Struct_1(func_1(-11730i, true, vec4<u32>(0u, 34994u, 63989u, 0u), false).a, ~vec4<u32>(u_input.a, 52180u, 7671u, global1.x), abs(var_3), -32496i, true), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3, var_3, -26825i), vec3<i32>(-24110i, var_3, 1i)), 2147483647i)), select(true, true, false), all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(false, true, true), false))), vec3<bool>(!((-2147483647i ^ var_3) != ~5438i), true, (var_1.x >> ((u_input.a & 10808u) % 32u)) < _wgslsmith_mult_u32(u_input.a & 0u, func_4(vec3<i32>(var_3, 33837i, var_3), Struct_2(var_1, Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.a, 0u, global1.x, 3558u), 1i, -1i, false), Struct_1(vec2<bool>(true, false), vec4<u32>(u_input.a, var_2, 22046u, var_1.x), 2147483647i, -1i, true), Struct_1(vec2<bool>(false, false), vec4<u32>(50981u, var_2, u_input.a, global1.x), -7903i, 0i, true)), vec3<u32>(global1.x, 53236u, 33754u), Struct_1(vec2<bool>(false, false), vec4<u32>(u_input.a, u_input.a, 0u, var_1.x), 26179i, 1i, true)).x)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(select(firstLeadingBit(vec3<u32>(u_input.a, 0u, 9944u)), vec3<u32>(0u, 0u, 71484u), var_5), vec3<u32>(~1u, 17100u, u_input.a << (15944u % 32u)), true != !var_5.x), -(~func_1(var_3, false, max(vec4<u32>(412u, 37335u, 1u, 1596u), vec4<u32>(u_input.a, global1.x, u_input.a, global1.x)), false & var_5.x).d), vec2<f32>(_wgslsmith_f_op_f32(floor(-214f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-281f * 249f))))));
}

