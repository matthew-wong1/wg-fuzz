struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: f32 = -1537f;

var<private> global2: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(Struct_2(143963u), 101031i), Struct_3(Struct_2(5872u), -39012i), Struct_3(Struct_2(58979u), 0i), Struct_3(Struct_2(1u), 31872i), Struct_3(Struct_2(0u), -36991i), Struct_3(Struct_2(4294967295u), i32(-2147483648)), Struct_3(Struct_2(4294967295u), 9810i), Struct_3(Struct_2(0u), -4377i), Struct_3(Struct_2(4294967295u), 5525i), Struct_3(Struct_2(2864u), 0i), Struct_3(Struct_2(66184u), 2147483647i), Struct_3(Struct_2(67442u), 0i), Struct_3(Struct_2(30926u), 82167i), Struct_3(Struct_2(9377u), 0i), Struct_3(Struct_2(4294967295u), 1i), Struct_3(Struct_2(14379u), 1i), Struct_3(Struct_2(4294967295u), 1i), Struct_3(Struct_2(0u), -21584i), Struct_3(Struct_2(59461u), 0i), Struct_3(Struct_2(47299u), -13928i), Struct_3(Struct_2(36285u), 16861i), Struct_3(Struct_2(0u), 336i), Struct_3(Struct_2(1u), 2147483647i), Struct_3(Struct_2(67769u), 39338i), Struct_3(Struct_2(0u), 43699i), Struct_3(Struct_2(58099u), 0i), Struct_3(Struct_2(8281u), 53627i), Struct_3(Struct_2(52398u), 39135i));

var<private> global3: array<bool, 4>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: f32) -> Struct_4 {
    let var_0 = global2[_wgslsmith_index_u32(arg_1, 28u)];
    return Struct_4(_wgslsmith_mult_i32(-15070i, _wgslsmith_div_i32(~21594i, ~u_input.a) ^ -_wgslsmith_clamp_i32(10269i, u_input.b, var_0.b)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: vec3<u32>) -> u32 {
    var var_0 = Struct_1(abs(_wgslsmith_mod_vec2_i32(~(~vec2<i32>(arg_0, arg_0)), firstTrailingBit(vec2<i32>(arg_1.a, u_input.c)))));
    global0 = array<f32, 22>();
    return _wgslsmith_dot_vec3_u32(max(select(countOneBits(arg_2.www), arg_2.zyx, vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 4u)], true, false)), vec3<u32>(arg_2.x, abs(6530u), max(4294967295u, 4294967295u))) << (_wgslsmith_add_vec3_u32(~arg_2.wxy, _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 1u), arg_3)) % vec3<u32>(32u)), ~reverseBits(~vec3<u32>(4294967295u, 4294967295u, 4294967295u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = 0u;
    global2 = array<Struct_3, 28>();
    let var_1 = vec3<u32>(1u | select(_wgslsmith_mult_u32(_wgslsmith_div_u32(69572u, 4294967295u), firstLeadingBit(1u)), abs(~4294967295u), any(!vec2<bool>(global3[_wgslsmith_index_u32(27212u, 4u)], global3[_wgslsmith_index_u32(100447u, 4u)]))), func_3(u_input.b, func_2(_wgslsmith_sub_vec2_u32(~vec2<u32>(48358u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_sub_u32(26481u, _wgslsmith_sub_u32(4294967295u, 4294967295u)), _wgslsmith_f_op_f32(-arg_2.x)), vec4<u32>(~1u, ~(~53276u), ~max(4294967295u, 65065u), 580u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_u32(~9068u, ~22808u, 1040u));
    var var_2 = var_1.yx;
    var_2 = max(var_1.zy, ~(~var_1.yy) & vec2<u32>(var_1.x >> (select(34327u, 72484u, false) % 32u), var_1.x));
    return Struct_1(-(vec2<i32>(abs(u_input.c), 1i) | countOneBits(vec2<i32>(u_input.c, u_input.a))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_4) -> Struct_4 {
    global2 = array<Struct_3, 28>();
    var var_0 = vec3<u32>(1u, firstLeadingBit(abs(~4294967295u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), abs(vec3<u32>(1u, 64113u, 1u)))) >> (vec3<u32>(1u | (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(21483u, 4294967295u)) | ~1u), reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 8850u, 0u, 63821u), vec4<u32>(0u, 0u, 0u, 62677u)), ~85768u, _wgslsmith_dot_vec2_u32(vec2<u32>(17748u, 4294967295u), vec2<u32>(4294967295u, 35669u)))), ~_wgslsmith_clamp_u32(14787u, 9611u, 56600u) ^ func_3(-1i, func_2(vec2<u32>(4294967295u, 42342u), 20438u, -594f), select(vec4<u32>(13721u, 4294967295u, 1u, 40990u), vec4<u32>(1u, 56319u, 0u, 36097u), global3[_wgslsmith_index_u32(80554u, 4u)]), vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u));
    let var_1 = Struct_3(Struct_2(~(~_wgslsmith_clamp_u32(var_0.x, 4294967295u, 38811u))), _wgslsmith_add_i32(-(~_wgslsmith_mult_i32(arg_3.a, -54428i)), -57111i));
    let var_2 = Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.x, -1i), vec2<i32>(arg_2.x, -10620i)), arg_2, select(~vec2<i32>(var_1.b, arg_0), ~vec2<i32>(1i, arg_2.x), select(vec2<bool>(global3[_wgslsmith_index_u32(70972u, 4u)], true), vec2<bool>(false, global3[_wgslsmith_index_u32(19308u, 4u)]), global3[_wgslsmith_index_u32(var_0.x, 4u)]))) & abs(firstTrailingBit(func_1(vec2<f32>(517f, 328f), -13218i, vec4<f32>(-895f, -133f, global0[_wgslsmith_index_u32(42078u, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)])).a)));
    return arg_3;
}

fn func_5(arg_0: Struct_4) -> vec3<i32> {
    global1 = 2238f;
    global3 = array<bool, 4>();
    var var_0 = Struct_2(38736u);
    var var_1 = Struct_2(~var_0.a);
    var_1 = Struct_2(var_1.a << (_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(14215u, 4294967295u)), 7747u) % 32u));
    return ~select(_wgslsmith_sub_vec3_i32(~countOneBits(vec3<i32>(0i, u_input.c, 1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(3378i, 13388i, 34480i) & vec3<i32>(u_input.a, u_input.b, arg_0.a), vec3<i32>(u_input.b, arg_0.a, 0i))), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(arg_0.a, 1i, arg_0.a), vec3<i32>(3597i, -20908i, arg_0.a) ^ vec3<i32>(arg_0.a, 5895i, arg_0.a), -vec3<i32>(47893i, u_input.c, u_input.c)), ~vec3<i32>(arg_0.a, arg_0.a, u_input.b)), all(vec2<bool>(global3[_wgslsmith_index_u32(0u ^ var_0.a, 4u)], any(vec2<bool>(global3[_wgslsmith_index_u32(var_0.a, 4u)], global3[_wgslsmith_index_u32(var_0.a, 4u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(~func_5(func_4(0i, func_1(vec2<f32>(global0[_wgslsmith_index_u32(12290u, 22u)], 1318f), 23682i, vec4<f32>(-130f, global0[_wgslsmith_index_u32(4294967295u, 22u)], -1448f, global0[_wgslsmith_index_u32(40101u, 22u)])), ~vec2<i32>(-44053i, u_input.b), Struct_4(u_input.c))), max(-vec3<i32>(~1i, min(-2147483647i, u_input.c), _wgslsmith_sub_i32(-66705i, 3803i)), vec3<i32>(-(~(-8398i)), u_input.b, -_wgslsmith_div_i32(-1i, -1538i))));
    let var_1 = func_3(~var_0.x, func_2(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(4294967295u, 0u)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<u32>(93499u, select(29005u, 16639u, global3[_wgslsmith_index_u32(54537u, 4u)]))), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -190f)), max(vec4<u32>(func_3(2147483647i, Struct_4(u_input.a), vec4<u32>(4294967295u, 15997u, 4294967295u, 4294967295u), vec3<u32>(0u, 20233u, 28346u)) << (_wgslsmith_mult_u32(22397u, 34499u) % 32u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 42960u, 18869u)), vec3<u32>(1u, 4294967295u, 0u)), 9990u, countOneBits(max(35509u, 480u))), vec4<u32>(1u, min(1u, ~0u), 4294967295u, firstLeadingBit(~8656u))), vec3<u32>(countOneBits(1u) << (firstLeadingBit(1u) % 32u), ~1u << (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47631u, 1u), vec2<u32>(37743u, 4294967295u)), ~0u) % 32u), ~countOneBits(~1u)));
    let var_2 = firstTrailingBit(vec2<u32>(39719u, ~(min(1u, var_1) >> (~var_1 % 32u))));
    global0 = array<f32, 22>();
    var var_3 = _wgslsmith_f_op_f32(-2098f * global0[_wgslsmith_index_u32(var_2.x, 22u)]);
    global1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(min(var_1, firstTrailingBit(~var_2.x))), 22u)] * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 22u)])));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32((~var_1 >> (1u % 32u)) >> ((23784u << (var_2.x % 32u)) % 32u), 22u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_add_u32(var_2.x, var_2.x), ~8708u), 22u)] * -209f), 1i, u_input.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 22u)], 230f, global0[_wgslsmith_index_u32(var_2.x, 22u)], -145f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1198f, 985f, 668f, global0[_wgslsmith_index_u32(1u, 22u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1435f, 927f, global0[_wgslsmith_index_u32(var_2.x, 22u)], 484f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_2.x, 22u)], 149f, -640f, 225f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, 370f, global0[_wgslsmith_index_u32(1u, 22u)]))))));
}

