struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> f32 {
    return arg_0.e.d.c;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<u32> {
    global0 = array<i32, 6>();
    let var_0 = Struct_4(!(true | all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(476f, arg_1.c), vec2<f32>(2106f, arg_1.c))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1511f, 825f) + vec2<f32>(arg_3.c, arg_3.c)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) + _wgslsmith_f_op_f32(abs(arg_3.c))), _wgslsmith_f_op_f32(f32(-1f) * -1118f))), all(select(vec4<bool>(true, false, false, select(true, true, false)), vec4<bool>(arg_0.e.d.x <= 4294967295u, all(vec4<bool>(true, true, false, true)), true, true), true)), firstLeadingBit(_wgslsmith_mod_i32(52222i, _wgslsmith_dot_vec4_i32(arg_1.b, vec4<i32>(48568i, 12644i, arg_2, -2147483647i)))), Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f + 752f) * _wgslsmith_f_op_f32(max(431f, -606f))), countOneBits(arg_0.e.b), arg_3.b.x, ~vec3<u32>(1u, arg_0.c.b.x, u_input.d)), _wgslsmith_add_vec2_u32(select(reverseBits(vec2<u32>(84917u, 22188u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, arg_0.b.x), arg_0.a.d.yy), vec2<bool>(true, true)), vec2<u32>(21426u, ~4294967295u)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c * arg_3.c) + _wgslsmith_f_op_f32(step(arg_0.a.a, 396f))), abs(firstTrailingBit(vec3<u32>(arg_0.c.b.x, 1u, 4294967295u))), 1i, arg_0.e.b), Struct_1(vec4<i32>(1i, 0i, arg_1.d, u_input.b), arg_3.b, arg_3.c, _wgslsmith_add_i32(0i, 33631i)), arg_0.a));
    let var_1 = var_0.a;
    var var_2 = vec4<bool>(var_0.c, !(arg_0.a.d.x != reverseBits(78569u)) | true, true, !(!any(select(vec3<bool>(var_1, var_0.c, true), vec3<bool>(true, var_0.c, var_1), var_1))));
    let var_3 = arg_0.a.b.yy;
    return ~var_0.e.e.d << ((var_0.e.c.d ^ _wgslsmith_add_vec3_u32(vec3<u32>(arg_0.a.d.x, 1u, arg_0.a.d.x), ~vec3<u32>(4294967295u, var_3.x, 76167u))) % vec3<u32>(32u));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.b;
    var_0 = -u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(322f, -558f))), true, u_input.b, Struct_3(Struct_2(1147f, vec3<u32>(1u, u_input.d, u_input.d), -23775i, vec3<u32>(59987u, u_input.d, 22386u)), vec2<u32>(0u, 4294967295u), Struct_2(425f, vec3<u32>(u_input.d, 1u, u_input.d), u_input.a, vec3<u32>(u_input.d, u_input.d, u_input.d)), Struct_1(vec4<i32>(-2147483647i, u_input.c, u_input.a, -5166i), vec4<i32>(76828i, global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.a, 88741i), 1104f, global0[_wgslsmith_index_u32(u_input.d, 6u)]), Struct_2(401f, vec3<u32>(u_input.d, u_input.d, 0u), global0[_wgslsmith_index_u32(243u, 6u)], vec3<u32>(1u, u_input.d, 1u)))), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), ~(vec3<u32>(u_input.d, u_input.d, 68628u) << (vec3<u32>(u_input.d, 122460u, 4294967295u) % vec3<u32>(32u))), u_input.b, ~func_3(Struct_3(Struct_2(-510f, vec3<u32>(25933u, 4294967295u, u_input.d), -64981i, vec3<u32>(67859u, u_input.d, u_input.d)), vec2<u32>(1u, 75180u), Struct_2(347f, vec3<u32>(18806u, 17272u, 33969u), global0[_wgslsmith_index_u32(0u, 6u)], vec3<u32>(1u, u_input.d, 0u)), Struct_1(vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.c, -2147483647i), vec4<i32>(u_input.c, u_input.b, u_input.b, -25703i), 2243f, -28720i), Struct_2(-1584f, vec3<u32>(u_input.d, 49149u, u_input.d), 0i, vec3<u32>(u_input.d, 4294967295u, u_input.d))), Struct_1(vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(0u, 6u)], 214i, -15922i), vec4<i32>(-24088i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 6u)], -1i), -887f, 0i), -19468i, Struct_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 6u)], 49019i, u_input.c, -1i), vec4<i32>(global0[_wgslsmith_index_u32(0u, 6u)], 35663i, 1i, u_input.c), -745f, u_input.b))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(85106u, 6u)]) & vec3<i32>(global0[_wgslsmith_index_u32(0u, 6u)], u_input.b, -1i), vec3<i32>(global0[_wgslsmith_index_u32(74521u, 6u)], 0i, u_input.c)), _wgslsmith_sub_vec3_i32(select(vec3<i32>(0i, u_input.b, 1i), vec3<i32>(77250i, global0[_wgslsmith_index_u32(66343u, 6u)], u_input.b), vec3<bool>(false, false, false)), vec3<i32>(u_input.c, 2147483647i, 25602i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-657f + 552f), -296f))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2568f, 1033f))), vec2<f32>(1797f, var_1), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))))))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1489f, 1000f)) - -754f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), ~vec3<u32>(firstLeadingBit(0u), u_input.d, 32823u), global0[_wgslsmith_index_u32(33371u, 6u)], ~(max(vec3<u32>(18948u, u_input.d, u_input.d), vec3<u32>(0u, 4294967295u, 3761u)) & (countOneBits(vec3<u32>(u_input.d, u_input.d, 10193u)) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(0u, 599u, 4294967295u)))));
    return Struct_2(-954f, var_3.b, _wgslsmith_clamp_i32(max(~(-12145i), ~var_3.c), 1i, select(reverseBits(u_input.a), _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, var_3.c, 0i, -1i), -vec4<i32>(0i, u_input.b, var_3.c, var_3.c)), true)), var_3.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1050f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(Struct_4(true, vec2<f32>(-101f, 1379f), true, -37148i, Struct_3(Struct_2(1000f, vec3<u32>(1u, u_input.d, 0u), -1i, vec3<u32>(u_input.d, 91437u, u_input.d)), vec2<u32>(6872u, 4294967295u), Struct_2(1000f, vec3<u32>(u_input.d, 1u, u_input.d), u_input.c, vec3<u32>(0u, u_input.d, 0u)), Struct_1(vec4<i32>(-1i, 2147483647i, 0i, u_input.c), vec4<i32>(global0[_wgslsmith_index_u32(0u, 6u)], 49648i, global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(4294967295u, 6u)]), 1004f, -15638i), Struct_2(422f, vec3<u32>(16425u, u_input.d, u_input.d), 8258i, vec3<u32>(14964u, u_input.d, u_input.d)))), Struct_2(996f, vec3<u32>(48373u, u_input.d, u_input.d), 1i, vec3<u32>(u_input.d, 1u, 4294967295u)), 0i, 624f))))), _wgslsmith_mod_vec3_u32(select(min(vec3<u32>(u_input.d, u_input.d, 11457u), vec3<u32>(35866u, 4294967295u, 24518u)), vec3<u32>(1u, 59404u, 26418u), true), abs(select(vec3<u32>(62738u, u_input.d, u_input.d), vec3<u32>(4294967295u, 52499u, 54654u), vec3<bool>(true, false, false)))), global0[_wgslsmith_index_u32(~1u, 6u)], ~(~(~vec3<u32>(1u, u_input.d, 0u)))), vec2<u32>(9695u, u_input.d), func_2(), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1697i, u_input.a, 1i, global0[_wgslsmith_index_u32(u_input.d, 6u)]), vec4<i32>(1i, global0[_wgslsmith_index_u32(1u, 6u)], -65767i & u_input.b, ~global0[_wgslsmith_index_u32(u_input.d, 6u)])), abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.d, 6u)], 1i, -48983i, 30504i) | vec4<i32>(u_input.b, u_input.a, global0[_wgslsmith_index_u32(59539u, 6u)], u_input.c)) ^ reverseBits(vec4<i32>(-20042i, -66123i, u_input.c, -2147483647i)), _wgslsmith_f_op_f32(ceil(-2169f)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a, -2147483647i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.d, 6u)], u_input.b, u_input.a)) >> (12073u % 32u), i32(-1i) * -11497i)), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-257f, 1293f, false)))))), ~vec3<u32>(_wgslsmith_mult_u32(0u, u_input.d), ~u_input.d, 11972u), 0i, ~(~vec3<u32>(u_input.d, 29729u, u_input.d)) << (select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 1u, 4394u), vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(58439u, u_input.d, 1u)), vec3<u32>(13743u, u_input.d, 4294967295u), true) % vec3<u32>(32u))));
    global0 = array<i32, 6>();
    let var_1 = select(vec3<bool>(select(all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), true, true), true & (~4294967295u == ~var_0.b.x), (reverseBits(global0[_wgslsmith_index_u32(var_0.b.x, 6u)]) < 21176i) | (func_2().b.x > u_input.d)), !vec3<bool>(all(vec2<bool>(true, false)), false, true), !vec3<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), false, true));
    let var_2 = Struct_3(func_2(), vec2<u32>(var_0.c.d.x, 1u), Struct_2(-423f, ~_wgslsmith_mult_vec3_u32(vec3<u32>(30371u, var_0.e.b.x, u_input.d), ~vec3<u32>(var_0.b.x, 4294967295u, var_0.e.d.x)), u_input.c, max(vec3<u32>(4294967295u, 4294967295u, var_0.a.d.x), _wgslsmith_sub_vec3_u32(var_0.e.d, ~vec3<u32>(4294967295u, 0u, 4294967295u)))), Struct_1(var_0.d.a ^ _wgslsmith_clamp_vec4_i32(firstLeadingBit(var_0.d.a), vec4<i32>(global0[_wgslsmith_index_u32(47649u, 6u)], 34981i, global0[_wgslsmith_index_u32(28563u, 6u)], -39332i), vec4<i32>(var_0.c.c, global0[_wgslsmith_index_u32(42215u, 6u)], u_input.c, 2147483647i)), var_0.d.b << ((~vec4<u32>(26990u, var_0.a.d.x, u_input.d, var_0.b.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.d.x, var_0.b.x, 32151u, var_0.e.b.x), vec4<u32>(4294967295u, 0u, u_input.d, 29754u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(var_0.c.a + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.c)))), ~(-global0[_wgslsmith_index_u32(abs(25395u), 6u)])), func_2());
    var var_3 = var_2.c.d.x;
    let var_4 = Struct_3(func_2(), _wgslsmith_mult_vec2_u32(var_0.b, min(max(vec2<u32>(66139u, 1u), var_2.b), vec2<u32>(1u, _wgslsmith_sub_u32(var_0.c.d.x, var_0.b.x)))), var_0.c, Struct_1(abs(min(reverseBits(var_0.d.b), firstTrailingBit(var_2.d.a))), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(15794i, global0[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_dot_vec4_i32(vec4<i32>(-11230i, 6484i, global0[_wgslsmith_index_u32(var_0.e.d.x, 6u)], 1i), var_2.d.b)), var_0.d.b.x, u_input.b, u_input.c), 172f, ~select(u_input.a >> (var_0.a.b.x % 32u), _wgslsmith_dot_vec2_i32(var_0.d.b.xx, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], u_input.c)), false)), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(-(~func_2().c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a, 801f) + vec2<f32>(var_2.a.a, var_4.d.c)), _wgslsmith_div_vec2_f32(vec2<f32>(-1693f, var_0.d.c), vec2<f32>(654f, 1087f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_4.d.c, 203f, 1504f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.a, var_2.c.a, var_0.a.a), vec3<f32>(-1749f, -1000f, 573f), var_1))))))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.a.b & vec3<u32>(u_input.d, 1u, 5698u), vec3<u32>(3703u, 4294967295u, 0u)), ~53236u, 1u, 29649u >> (~var_2.b.x % 32u)));
}

