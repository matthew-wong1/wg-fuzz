struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<i32>(1i, 0i, i32(-2147483648), -1i), vec4<i32>(3074i, -7521i, 4924i, -20086i)), Struct_2(vec4<i32>(i32(-2147483648), -7545i, -1788i, -1i), vec4<i32>(-10368i, 0i, i32(-2147483648), -38242i)), Struct_2(vec4<i32>(1i, 1i, -3023i, 27753i), vec4<i32>(i32(-2147483648), -4366i, 1i, 26854i)), Struct_2(vec4<i32>(-43946i, 0i, -13377i, 1i), vec4<i32>(1i, 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_2(vec4<i32>(-1i, -12132i, -18179i, 1i), vec4<i32>(1i, 2147483647i, 786i, i32(-2147483648))), Struct_2(vec4<i32>(1947i, 6734i, -58343i, 1i), vec4<i32>(-27283i, i32(-2147483648), -31437i, -47166i)), Struct_2(vec4<i32>(12897i, -41338i, -65517i, 2147483647i), vec4<i32>(-25652i, -29999i, 0i, -7903i)), Struct_2(vec4<i32>(-896i, i32(-2147483648), 15826i, 29885i), vec4<i32>(-39560i, 42344i, 0i, -696i)), Struct_2(vec4<i32>(1i, 1i, 97720i, 62097i), vec4<i32>(-25046i, -4495i, i32(-2147483648), 0i)), Struct_2(vec4<i32>(41182i, 2147483647i, -1i, 33625i), vec4<i32>(29109i, -248i, -1i, -27157i)), Struct_2(vec4<i32>(17176i, 20847i, 1i, -1i), vec4<i32>(2147483647i, -42726i, 24978i, 1489i)), Struct_2(vec4<i32>(35780i, 6645i, -68297i, -5954i), vec4<i32>(-75430i, i32(-2147483648), 1i, 0i)), Struct_2(vec4<i32>(2147483647i, -1i, 40592i, 17890i), vec4<i32>(-1652i, 0i, 1i, i32(-2147483648))), Struct_2(vec4<i32>(49658i, i32(-2147483648), 45621i, 0i), vec4<i32>(-3485i, -52195i, 53995i, -1i)), Struct_2(vec4<i32>(15299i, 0i, 0i, 1i), vec4<i32>(14333i, 1i, -1i, 1543i)), Struct_2(vec4<i32>(-1i, i32(-2147483648), -1i, 0i), vec4<i32>(2147483647i, i32(-2147483648), i32(-2147483648), 18265i)), Struct_2(vec4<i32>(2147483647i, -434i, 46363i, 52244i), vec4<i32>(0i, 1i, 1i, -61038i)), Struct_2(vec4<i32>(30046i, 1i, 26090i, -27525i), vec4<i32>(-82952i, 13142i, -3291i, -62625i)));

var<private> global1: array<bool, 20> = array<bool, 20>(false, true, true, false, false, false, true, true, false, false, true, false, false, true, false, false, true, true, true, false);

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, true, false, true));

var<private> global3: array<bool, 21>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = select(arg_2, vec4<bool>(true, u_input.b < _wgslsmith_add_u32(0u, arg_0.x), true | ((false | global1[_wgslsmith_index_u32(3593u, 20u)]) | true), global3[_wgslsmith_index_u32(~27554u, 21u)]), vec4<bool>(arg_2.x, true, !any(!vec4<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(arg_0.x, 20u)])), !all(arg_2) & (false == (arg_1.x == -272f))));
    let var_1 = max(u_input.a.yzx, u_input.a.xxz) << (_wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, 1u, arg_0.x)), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.wzx, vec3<u32>(8492u, 0u, 4294967295u), vec3<u32>(18278u, arg_0.x, arg_0.x)), vec3<u32>(12358u, u_input.b, 0u)), arg_0.xzx) % vec3<u32>(32u));
    var_0 = vec4<bool>(!arg_2.x, all(select(!vec2<bool>(true, var_0.x), select(vec2<bool>(false, global3[_wgslsmith_index_u32(21000u, 21u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 21u)], global1[_wgslsmith_index_u32(u_input.b, 20u)]), arg_2.x), any(vec2<bool>(var_0.x, true)))) == true, all(!global2.a) && var_0.x, arg_2.x);
    var_0 = select(!arg_2, vec4<bool>(true, true, (_wgslsmith_mod_i32(0i, u_input.a.x) >> (_wgslsmith_div_u32(6366u, 1u) % 32u)) >= _wgslsmith_mod_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(15424i, arg_3.b.x, u_input.a.x), var_1)), global2.a.x), vec4<bool>(global2.a.x, any(!select(vec2<bool>(global1[_wgslsmith_index_u32(67100u, 20u)], true), vec2<bool>(true, global3[_wgslsmith_index_u32(1422u, 21u)]), true)), global2.a.x, arg_2.x));
    let var_2 = ~arg_0.ywy;
    return 4294967295u;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: f32) -> vec3<u32> {
    var var_0 = u_input.b;
    global0 = array<Struct_2, 18>();
    global2 = Struct_1(global2.a);
    var_0 = u_input.c;
    var_0 = ~countOneBits(~(~min(u_input.c, u_input.b)));
    return select(~(~vec3<u32>(u_input.c, func_3(vec4<u32>(u_input.c, u_input.b, 13183u, u_input.b), vec4<f32>(606f, -792f, 222f, arg_0), vec4<bool>(true, arg_1.x, false, global1[_wgslsmith_index_u32(19513u, 20u)]), Struct_2(u_input.a, vec4<i32>(20136i, 2147483647i, u_input.a.x, 0i))), 29803u)), _wgslsmith_div_vec3_u32(~reverseBits(select(vec3<u32>(24932u, u_input.c, 0u), vec3<u32>(u_input.c, u_input.c, 1u), vec3<bool>(arg_1.x, false, global1[_wgslsmith_index_u32(u_input.b, 20u)]))), ~vec3<u32>(1u, 1u, 1u)), vec3<bool>(select(false, _wgslsmith_f_op_f32(sign(-1272f)) <= -263f, !any(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 20u)], arg_1.x))), arg_1.x && arg_1.x, global2.a.x));
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    global3 = array<bool, 21>();
    let var_0 = -min(_wgslsmith_add_vec4_i32(u_input.a, u_input.a), countOneBits(select(abs(u_input.a), vec4<i32>(u_input.a.x, -6397i, u_input.a.x, u_input.a.x), global1[_wgslsmith_index_u32(1u & u_input.c, 20u)])));
    global1 = array<bool, 20>();
    global3 = array<bool, 21>();
    let var_1 = vec3<i32>(-24066i ^ var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(4516i, -u_input.a.x), -6236i, reverseBits(var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 57807i, u_input.a.x) | vec3<i32>(28342i, 1i, var_0.x), vec3<i32>(u_input.a.x, -2147483647i, var_0.x))), ~(var_0 | ~var_0)), u_input.a.x << (u_input.b % 32u));
    return Struct_1(global2.a);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = ~(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(u_input.c, 4500u, u_input.b)), ~u_input.c, _wgslsmith_mod_u32(0u, 1u)) | ~_wgslsmith_div_vec3_u32(vec3<u32>(83985u, u_input.c, 1u), ~vec3<u32>(0u, u_input.b, u_input.b)));
    let var_1 = func_4(~reverseBits((vec3<u32>(53098u, 92896u, var_0.x) >> (vec3<u32>(u_input.c, u_input.c, var_0.x) % vec3<u32>(32u))) | func_2(1000f, vec4<bool>(false, global3[_wgslsmith_index_u32(13198u, 21u)], global2.a.x, true), arg_0.x)));
    let var_2 = global0[_wgslsmith_index_u32(var_0.x, 18u)];
    var var_3 = false;
    var_3 = !(~(~abs(var_2.b.x)) == -1i);
    return Struct_1(vec4<bool>(global2.a.x, var_1.a.x, false, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, var_0.x) << (reverseBits(vec2<u32>(1u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(firstLeadingBit(var_0.zz), ~vec2<u32>(66744u, 67579u))), 21u)]));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(arg_2 >> (~(~0u) % 32u), 18u)];
    let var_1 = Struct_1(!vec4<bool>(true, any(vec2<bool>(true, arg_1.a.x)), all(arg_1.a.zzz), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-467f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1079f)), -118f) - 620f))));
    let var_3 = func_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-496f)))))))).a.ww;
    global3 = array<bool, 21>();
    return 953f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(-748f, -1031f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(select(false, u_input.a.x == 28139i, false), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-975f, -620f) + vec2<f32>(1658f, -508f))), ~_wgslsmith_clamp_u32(u_input.b, 23042u, 4294967295u), global2.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(226f - -181f))))), _wgslsmith_f_op_f32(-1140f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(800f)) - _wgslsmith_f_op_f32(min(1000f, 374f)))))));
    global1 = array<bool, 20>();
    global0 = array<Struct_2, 18>();
    global0 = array<Struct_2, 18>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 18u)];
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.zz);
    let var_3 = u_input.c;
    var var_4 = global0[_wgslsmith_index_u32(136202u & ~abs(_wgslsmith_div_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_3, 0u), vec2<u32>(0u, u_input.b)))), 18u)];
    var var_5 = 39625u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, ~_wgslsmith_mod_vec4_i32(firstTrailingBit(var_4.b) & vec4<i32>(u_input.a.x, 22178i, -47740i, var_4.a.x), -u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1331f, var_0.x, 1424f, -544f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -1438f, var_0.x) + vec4<f32>(var_0.x, var_0.x, -1017f, -1993f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 561f), vec4<f32>(var_0.x, var_0.x, 456f, -712f))), func_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1706f, var_0.x)))).a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(884f, -191f, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(975f, var_0.x, var_0.x, var_0.x))))), abs(vec4<u32>(1u, ~abs(var_3), firstLeadingBit(u_input.b), _wgslsmith_div_u32(u_input.b >> (0u % 32u), 0u))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~var_3, var_3), 4294967295u, abs(u_input.b)), ~_wgslsmith_div_vec3_u32(~vec3<u32>(var_3, u_input.b, 39475u), firstTrailingBit(vec3<u32>(38967u, 4294967295u, var_3)))));
}

