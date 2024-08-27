struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec2<i32>(29240i, 45116i), vec2<u32>(1u, 0u)), 0u, Struct_1(vec2<i32>(2147483647i, -17786i), vec2<u32>(0u, 63885u)), 1053f), Struct_2(Struct_1(vec2<i32>(3843i, 1i), vec2<u32>(1u, 16959u)), 25819u, Struct_1(vec2<i32>(i32(-2147483648), 1i), vec2<u32>(4294967295u, 54826u)), 824f), Struct_2(Struct_1(vec2<i32>(11518i, i32(-2147483648)), vec2<u32>(4294967295u, 0u)), 1u, Struct_1(vec2<i32>(10397i, -1i), vec2<u32>(30267u, 64342u)), -501f), Struct_2(Struct_1(vec2<i32>(-61616i, 0i), vec2<u32>(1u, 1u)), 4294967295u, Struct_1(vec2<i32>(-23785i, 2147483647i), vec2<u32>(70937u, 26477u)), 622f), Struct_2(Struct_1(vec2<i32>(1i, 0i), vec2<u32>(4294967295u, 0u)), 19206u, Struct_1(vec2<i32>(-1i, -63438i), vec2<u32>(0u, 247u)), 238f), Struct_2(Struct_1(vec2<i32>(0i, 20230i), vec2<u32>(66149u, 0u)), 7679u, Struct_1(vec2<i32>(-7022i, 2147483647i), vec2<u32>(15451u, 14221u)), -1349f), Struct_2(Struct_1(vec2<i32>(-1i, 0i), vec2<u32>(1u, 10496u)), 0u, Struct_1(vec2<i32>(0i, 2147483647i), vec2<u32>(37036u, 27431u)), 369f), Struct_2(Struct_1(vec2<i32>(2147483647i, 32408i), vec2<u32>(2779u, 20350u)), 4294967295u, Struct_1(vec2<i32>(-12166i, i32(-2147483648)), vec2<u32>(72225u, 0u)), 363f), Struct_2(Struct_1(vec2<i32>(5558i, -5034i), vec2<u32>(0u, 6976u)), 583u, Struct_1(vec2<i32>(-385i, -38723i), vec2<u32>(0u, 34527u)), -1000f), Struct_2(Struct_1(vec2<i32>(13967i, 30838i), vec2<u32>(59000u, 15587u)), 45230u, Struct_1(vec2<i32>(0i, 2147483647i), vec2<u32>(4294967295u, 44129u)), 523f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_div_f32(-1656f, 1326f);
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_1 = vec3<bool>(false, true, true);
    var var_2 = !(var_1.x | (u_input.a.x != u_input.a.x));
    return u_input.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_2, 10>();
    let var_0 = ~vec4<i32>(u_input.a.x, min(~44593i, countOneBits(~2147483647i)), u_input.a.x, u_input.a.x);
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_1 = ~(~arg_1);
    return Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(-var_0.wx, ~u_input.a), firstTrailingBit(func_3(vec2<f32>(812f, -714f), 779f, vec4<u32>(13815u, 1u, 90115u, 6480u), vec4<u32>(var_1.x, 30348u, 4294967295u, 64403u)))), select(max(_wgslsmith_div_vec2_u32(arg_1, vec2<u32>(arg_1.x, 1u)), vec2<u32>(arg_1.x, 1u)), ~abs(vec2<u32>(4294967295u, 4294967295u)), vec2<bool>(!arg_0.x, false))), 65649u, Struct_1(var_0.zy, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_1.x, arg_1.x), firstTrailingBit(84585u)), ~arg_1 | vec2<u32>(var_1.x, 0u))), _wgslsmith_f_op_f32(round(-349f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = select(any(vec3<bool>(true, true, true)), func_3(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(f32(-1f) * -689f)), -1398f, vec4<u32>(4294967295u, reverseBits(14434u), 0u, 94985u), vec4<u32>(select(81847u, arg_0.c.b.x, false), ~103315u, arg_0.b, abs(4294967295u))).x < func_2(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false)), true), _wgslsmith_add_vec2_u32(arg_0.a.b & vec2<u32>(arg_0.c.b.x, 5606u), ~vec2<u32>(62704u, arg_0.c.b.x))).c.a.x, true);
    var var_1 = arg_1.x;
    let var_2 = arg_0.c;
    var_1 = -2147483647i;
    var var_3 = arg_0.c;
    return Struct_1(vec2<i32>(~(-(~(-25930i))), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_0.a.a.x, -14702i, -2147483647i)), vec3<i32>(abs(var_3.a.x), u_input.a.x << (3890u % 32u), 32865i & var_3.a.x))), vec2<u32>(var_3.b.x, arg_0.b) & var_3.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -u_input.a;
    var var_1 = func_4(global0[_wgslsmith_index_u32(arg_0.a.b.x, 10u)], -u_input.a);
    return func_2(!vec4<bool>(-341f > _wgslsmith_f_op_f32(exp2(arg_0.d)), !all(vec4<bool>(true, false, true, false)), true, true), vec2<u32>(4294967295u, arg_1.b.x) ^ _wgslsmith_sub_vec2_u32(arg_1.b, (vec2<u32>(1u, 0u) & vec2<u32>(var_1.b.x, var_1.b.x)) | (vec2<u32>(1u, 18295u) | arg_0.c.b))).a;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_2, 10>();
    let var_0 = arg_3;
    let var_1 = firstTrailingBit(firstTrailingBit(vec4<i32>(arg_0.x, ~firstTrailingBit(1i), firstLeadingBit(1i), firstTrailingBit(~arg_3))));
    global0 = array<Struct_2, 10>();
    let var_2 = select(vec2<bool>(false, !all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), vec2<bool>(select(true, !any(vec3<bool>(true, false, false)), ~arg_1.b.x < _wgslsmith_mult_u32(1u, arg_1.b.x)), true), select(vec2<bool>(true, select(all(vec2<bool>(true, true)), var_1.x < 2147483647i, true)), !vec2<bool>(any(vec4<bool>(false, false, true, false)), true), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))));
    return Struct_1(min(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.yw << (arg_1.b % vec2<u32>(32u)), reverseBits(arg_0)), ~func_4(global0[_wgslsmith_index_u32(arg_1.b.x, 10u)], var_1.ww).a), ~(u_input.a & vec2<i32>(-19359i, -10694i))), arg_1.b);
}

fn func_1() -> f32 {
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_0 = func_6(-u_input.a, func_5(Struct_2(func_4(func_2(vec4<bool>(false, true, true, false), vec2<u32>(0u, 1u)), vec2<i32>(u_input.a.x, -4702i)), 48785u, Struct_1(max(u_input.a, vec2<i32>(u_input.a.x, -1i)), vec2<u32>(0u, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-881f)))), func_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)), vec2<u32>(0u, countOneBits(4104u))).c), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-926f + 186f), 1000f)))), u_input.a.x);
    let var_1 = !(!(countOneBits(_wgslsmith_clamp_u32(1u, var_0.b.x, 38229u)) <= 1u));
    let var_2 = func_6(-select(var_0.a, _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 0i), var_0.a | vec2<i32>(var_0.a.x, u_input.a.x)), var_1), func_2(vec4<bool>(!(var_1 == var_1), max(2147483647i, u_input.a.x) < -var_0.a.x, _wgslsmith_mult_i32(var_0.a.x, -22439i) < 69535i, true), reverseBits(vec2<u32>(firstLeadingBit(var_0.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<u32>(1170u, 19387u, 50335u))))).a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(446f, 1681f), vec2<f32>(-2226f, -1445f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1292f, -145f) * vec2<f32>(835f, 1215f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1136f, -1359f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(684f, 348f) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2211f, 127f)))))), var_0.a.x);
    return 517f;
}

fn func_7(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(vec2<i32>(u_input.a.x, ~0i), arg_1.b);
    var var_1 = arg_1;
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    var var_2 = !(!(all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)) & select(true, true, false)));
    return ~select(~(countOneBits(vec4<u32>(arg_1.b.x, arg_1.b.x, 1u, arg_1.b.x)) | vec4<u32>(24897u, 1u, 46471u, 1u)), min(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(31421u, 18754u, arg_1.b.x, arg_1.b.x), vec4<u32>(var_0.b.x, 0u, arg_1.b.x, 4373u), vec4<u32>(71308u, arg_1.b.x, 48653u, 4294967295u)), vec4<u32>(var_0.b.x, var_1.b.x, 4294967295u, 38256u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(43666u, 47686u, 65585u, var_1.b.x), vec4<u32>(var_1.b.x, 0u, var_1.b.x, var_1.b.x)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 0u, var_0.b.x, 0u), vec4<u32>(27775u, 20883u, var_1.b.x, 12381u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.b.x, arg_1.b.x, 46208u, 27787u), vec4<u32>(arg_1.b.x, arg_1.b.x, 1u, var_1.b.x)))), !(any(vec3<bool>(false, false, true)) | true));
}

fn func_8(arg_0: i32) -> Struct_1 {
    var var_0 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)));
    var var_1 = i32(-1i) * -1i;
    return func_2(select(!(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), select(vec4<bool>(true, !var_0.x, false, true), vec4<bool>(var_0.x, true, true, false), any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), all(!select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, true, false), true))), ~vec2<u32>(func_7(-216f, Struct_1(u_input.a, vec2<u32>(4294967295u, 25903u))).x | ~53756u, ~abs(34587u))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(-2147483647i << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(4294967295u, 0u, 1u, 71048u), vec4<u32>(0u, 52953u, 22506u, 4294967295u), vec4<bool>(false, true, false, true)), firstTrailingBit(vec4<u32>(0u, 0u, 0u, 11949u))), func_7(_wgslsmith_f_op_f32(func_1()), Struct_1(u_input.a, vec2<u32>(0u, 0u)))) % 32u));
    let var_1 = vec3<bool>(all(select(vec3<bool>(any(vec2<bool>(true, false)), false, any(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), vec3<bool>(false, false, all(vec4<bool>(false, false, true, true))))), any(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))), true);
    var var_2 = !var_1;
    let var_3 = vec2<f32>(1f, 1f);
    let var_4 = var_0.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(1330f, var_0.b, _wgslsmith_dot_vec4_i32(abs(abs(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, var_0.a.x, -17699i, 1i), vec4<i32>(-14293i, u_input.a.x, var_0.a.x, var_0.a.x)))), -vec4<i32>(u_input.a.x, var_0.a.x ^ 0i, _wgslsmith_sub_i32(-1i, -2147483647i), var_0.a.x & var_0.a.x)));
}

