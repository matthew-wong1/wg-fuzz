struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-1i, -15351i, 1i), vec3<i32>(15871i, 1i, 2147483647i), vec3<i32>(2147483647i, -37567i, 16026i), vec3<i32>(-1i, 1i, 2147483647i), vec3<i32>(0i, 2147483647i, 1i), vec3<i32>(-1i, -48966i, 17459i), vec3<i32>(-12417i, -15790i, -8418i), vec3<i32>(-27637i, 12536i, 36722i), vec3<i32>(-46800i, -36124i, 0i), vec3<i32>(-4462i, 2147483647i, 25591i), vec3<i32>(2147483647i, 9346i, 28289i), vec3<i32>(33957i, i32(-2147483648), 2147483647i), vec3<i32>(34023i, i32(-2147483648), 28630i), vec3<i32>(i32(-2147483648), 31962i, 2147483647i), vec3<i32>(1i, 6676i, -22768i), vec3<i32>(1i, 1i, 16145i), vec3<i32>(20212i, -7970i, -23729i), vec3<i32>(-73818i, -10223i, 2147483647i), vec3<i32>(-77606i, 0i, 36263i), vec3<i32>(0i, 18964i, -3488i), vec3<i32>(0i, 51323i, 8709i), vec3<i32>(5997i, -10812i, -10586i), vec3<i32>(-7821i, 42402i, 1i), vec3<i32>(-31936i, 2147483647i, 20805i), vec3<i32>(9709i, -18620i, 4182i), vec3<i32>(i32(-2147483648), i32(-2147483648), 61247i), vec3<i32>(-64857i, i32(-2147483648), 30476i));

var<private> global2: Struct_5 = Struct_5(4294967295u, Struct_3(Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, false, false), vec2<u32>(47884u, 49521u), true, true), vec4<bool>(true, false, false, false), Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, true, true), vec2<u32>(17791u, 4294967295u), false, false), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), vec2<u32>(4294967295u, 30890u), false, true), vec4<bool>(true, false, false, false)));

var<private> global3: vec4<bool>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = Struct_2(true);
    let var_1 = -158f;
    global0 = ~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global0.x), -vec2<i32>(-34411i, 30607i)) >> (min(select(vec2<u32>(u_input.a, global2.b.a.c.x), vec2<u32>(global2.b.d.c.x, u_input.b), false), global2.b.c.c) % vec2<u32>(32u)), vec2<i32>(20733i, _wgslsmith_add_i32(58811i, ~global0.x)));
    global2 = Struct_5(0u, Struct_3(global2.b.c, !vec4<bool>(1937f == arg_0.x, !global2.b.b.x, true, var_0.a), global2.b.a, global2.b.c, global2.b.a.b));
    var var_2 = Struct_2(global2.b.e.x);
    return vec3<bool>(var_0.a, !all(vec2<bool>(any(vec4<bool>(var_0.a, var_2.a, false, true)), global2.b.a.c.x == global2.a)), any(vec4<bool>(!any(vec4<bool>(global2.b.d.b.x, true, global3.x, var_2.a)), any(vec2<bool>(true, var_0.a)), true, any(global2.b.d.a))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: bool) -> Struct_3 {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(global2.a, 28u)], (vec3<i32>(global0.x, 35726i, -59189i) | _wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(28079u, 28u)], global1[_wgslsmith_index_u32(u_input.b, 28u)])) << (abs(~vec3<u32>(33433u, 50720u, 1306u)) % vec3<u32>(32u))), _wgslsmith_div_i32(54102i, max(27687i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -2147483647i), vec2<i32>(global0.x, 1i)) & global0.x)));
    global2 = Struct_5(1u, global2.b);
    global3 = !vec4<bool>(!all(!vec3<bool>(false, arg_2, global3.x)), true, all(global2.b.d.a), true);
    let var_1 = false;
    var var_2 = vec2<i32>(15685i, _wgslsmith_mult_i32(global0.x, 1i));
    return Struct_3(Struct_1(!select(select(vec3<bool>(arg_2, global3.x, true), vec3<bool>(false, true, arg_2), global2.b.e.zwz), func_3(vec4<f32>(-1378f, 1000f, -828f, -837f)), vec3<bool>(true, true, true)), select(!select(global2.b.a.b, vec4<bool>(global3.x, true, true, false), vec4<bool>(false, global2.b.d.e, global3.x, global3.x)), select(global2.b.b, !global2.b.c.b, all(global2.b.a.b)), !vec4<bool>(false, var_1, true, var_1)), _wgslsmith_sub_vec2_u32(global2.b.d.c >> (vec2<u32>(72431u, arg_0.x) % vec2<u32>(32u)), vec2<u32>(global2.a, 12403u)) ^ select(_wgslsmith_sub_vec2_u32(vec2<u32>(87758u, arg_0.x), global2.b.c.c), ~vec2<u32>(4359u, 1u), select(vec2<bool>(false, global3.x), global2.b.a.b.yy, false)), select(var_1, !(var_1 & false), false), !all(select(vec3<bool>(global2.b.d.e, arg_2, true), vec3<bool>(false, false, false), false))), vec4<bool>(876f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1258f, 394f, -177f, arg_1.x)))).x, true, true), Struct_1(select(func_3(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -1461f)), global3.xwx, true), !(!vec4<bool>(global3.x, false, true, var_1)), vec2<u32>(global2.b.c.c.x, countOneBits(1u)), !((arg_1.x < arg_1.x) || any(global2.b.c.b)), func_3(vec4<f32>(_wgslsmith_f_op_f32(trunc(-605f)), arg_1.x, arg_1.x, _wgslsmith_f_op_f32(abs(arg_1.x)))).x), Struct_1(vec3<bool>(!(!global2.b.c.e), var_1, all(vec2<bool>(true, true))), global2.b.a.b, vec2<u32>(4294967295u, _wgslsmith_mult_u32(global2.a, ~61937u)), !all(global3.wy), any(!vec2<bool>(global2.b.a.d, global2.b.b.x))), select(vec4<bool>(all(select(vec3<bool>(var_1, var_1, global3.x), vec3<bool>(arg_2, global3.x, var_1), vec3<bool>(true, var_1, false))), any(vec3<bool>(global3.x, arg_2, false)), !all(global2.b.b), true), vec4<bool>(true, false, !(!global3.x), arg_2), all(select(select(vec2<bool>(var_1, false), vec2<bool>(true, true), global2.b.a.b.yx), !global2.b.a.a.yz, select(vec2<bool>(global3.x, arg_2), vec2<bool>(false, false), global3.zx)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_1 {
    global1 = array<vec3<i32>, 28>();
    global2 = Struct_5(~u_input.c, func_2(global2.b.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(655f, arg_1.x, -2177f)))), select(36956u == global2.b.a.c.x, 970f != arg_1.x, false) & true));
    var var_0 = Struct_5(u_input.a, Struct_3(func_2(~vec2<u32>(global2.a, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 916f, arg_1.x))), global3.x).c, global2.b.c.b, func_2(global2.b.a.c, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -965f), _wgslsmith_f_op_f32(ceil(-678f)), arg_1.x), !(!global2.b.d.d)).d, func_2(reverseBits(global2.b.c.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))), all(global2.b.c.b.xz)).c, global2.b.c.b));
    var var_1 = ~(-_wgslsmith_add_vec2_i32(countOneBits(~vec2<i32>(global0.x, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-26957i, global0.x), abs(vec2<i32>(global0.x, -2147483647i)))));
    var_0 = Struct_5(u_input.c, global2.b);
    return var_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(global2.b.a, Struct_3(func_1(vec3<bool>(!global2.b.e.x, all(global3.zzz), all(vec2<bool>(global2.b.d.e, global2.b.d.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-647f, -1132f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-868f, 472f) + vec2<f32>(406f, 201f)))), global2.b.a.b, Struct_1(global2.b.c.b.xxz, select(select(vec4<bool>(true, global2.b.e.x, false, global2.b.c.d), vec4<bool>(global3.x, false, false, global2.b.e.x), global2.b.d.b), vec4<bool>(true, global2.b.e.x, true, true), global2.b.c.d), ~_wgslsmith_sub_vec2_u32(global2.b.c.c, global2.b.d.c), func_3(vec4<f32>(368f, -2468f, 634f, -463f)).x & all(global2.b.e.xy), true), Struct_1(vec3<bool>(global3.x, func_1(vec3<bool>(global2.b.e.x, true, global3.x), vec2<f32>(-622f, -748f)).a.x, false), vec4<bool>(global3.x & false, true, any(global2.b.b), true), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(4294967295u, 1u))), global2.b.e.x, global2.b.b.x), !select(vec4<bool>(false, global3.x, global2.b.a.e, false), global2.b.d.b, select(global2.b.b, global2.b.a.b, true))), global2.b.c, func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global2.b.c.c.x), vec2<u32>(u_input.a, global2.b.c.c.x), vec2<u32>(u_input.c, 25967u)) >> (select(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.c, 32058u), vec2<bool>(global2.b.d.a.x, false)) % vec2<u32>(32u)), select(_wgslsmith_mod_vec2_u32(global2.b.d.c, vec2<u32>(u_input.a, u_input.c)), select(global2.b.d.c, vec2<u32>(1u, u_input.a), true), global2.b.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, 119f, 266f))), !(!(!global2.b.c.d))));
    var var_1 = !vec4<bool>(false, func_2(~(~global2.b.a.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-163f, 481f, -1447f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-211f, 1047f, -2023f), vec3<f32>(1000f, -1516f, 558f)))), var_0.d.e.x).a.b.x, all(global3.zwx), true);
    global1 = array<vec3<i32>, 28>();
    var var_2 = firstLeadingBit(~vec3<u32>(~global2.a, 41842u, var_0.b.d.c.x));
    var var_3 = global3.wy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(~_wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(global2.a, 28u)], vec3<i32>(-17973i, global0.x, 52199i)), -1i >> (countOneBits(22139u) % 32u)), 1276i), 1i & _wgslsmith_mod_i32(countOneBits(_wgslsmith_mod_i32(23932i, -46870i)), _wgslsmith_mult_i32(global0.x & global0.x, -16075i)), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(6605u, 50663u, 30180u, 18012u), vec4<u32>(46624u, 123080u, 60610u, 7449u))), firstTrailingBit(firstLeadingBit(~(global1[_wgslsmith_index_u32(u_input.b, 28u)] >> (vec3<u32>(4294967295u, 4294967295u, var_0.d.d.c.x) % vec3<u32>(32u))))), ~(~22833u));
}

