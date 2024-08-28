struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<u32>(11594u, 27876u, 1u), -459f, Struct_2(Struct_1(vec3<i32>(-47082i, -32731i, -55287i)), vec2<u32>(0u, 11882u), Struct_1(vec3<i32>(66027i, -1i, -1i)), vec4<f32>(316f, 1494f, -143f, 949f), 1u), vec4<u32>(1u, 1u, 10435u, 28730u));

var<private> global1: array<vec4<bool>, 10> = array<vec4<bool>, 10>(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false));

var<private> global2: array<i32, 24> = array<i32, 24>(0i, 29921i, -20007i, 67603i, 39688i, -50878i, -55620i, -6508i, 1i, 18627i, -37430i, 2147483647i, 1i, -28933i, 1i, -1i, 2147483647i, 1i, -10943i, 1i, -8566i, -43127i, -20396i, 2147483647i);

var<private> global3: array<f32, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_1(vec3<i32>(9812i, 1i, _wgslsmith_clamp_i32(0i, -2147483647i, 20927i) ^ global2[_wgslsmith_index_u32(0u ^ global0.a.x, 24u)]) << (~vec3<u32>(select(global0.d.x, u_input.a.x, arg_2.x), ~u_input.a.x, 31865u) % vec3<u32>(32u)));
    var_0 = Struct_1(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0.c.e, firstTrailingBit(global0.a.x)), 24u)]), -(global2[_wgslsmith_index_u32(global0.c.b.x, 24u)] << (global0.d.x % 32u)) << (4294967295u % 32u), i32(-1i) * -(~global0.c.c.a.x)));
    var var_1 = Struct_5(arg_2, -62288i, select(select(arg_2.xz, arg_0.zy, arg_0.x), arg_0.yw, false), Struct_2(Struct_1(u_input.b), firstLeadingBit(vec2<u32>(u_input.a.x, global0.c.e << (u_input.a.x % 32u))), Struct_1(select(select(vec3<i32>(global2[_wgslsmith_index_u32(44377u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], var_0.a.x), vec3<i32>(var_0.a.x, u_input.d, -1i), false), vec3<i32>(u_input.d, arg_1.x, -30377i), all(vec2<bool>(arg_0.x, arg_0.x)))), vec4<f32>(global0.b, 636f, _wgslsmith_f_op_f32(select(-214f, global0.b, all(arg_2.xy))), _wgslsmith_f_op_f32(abs(-105f))), ~(4294967295u | global0.d.x) ^ 1u));
    let var_2 = Struct_5(vec4<bool>(arg_0.x, abs(countOneBits(u_input.d)) < 11111i, any(vec2<bool>(any(arg_0.yy), all(global1[_wgslsmith_index_u32(global0.a.x, 10u)]))), true), global2[_wgslsmith_index_u32(~1u, 24u)], !(!var_1.c), Struct_2(var_1.d.a, ~vec2<u32>(u_input.a.x >> (global0.d.x % 32u), var_1.d.b.x), Struct_1(vec3<i32>(1i, 0i, global2[_wgslsmith_index_u32(44014u, 24u)])), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d.d.x), global0.b)), 592f, _wgslsmith_f_op_f32(floor(-197f)), var_1.d.d.x), 86392u));
    var var_3 = var_2.d.d.x;
    return var_1.d.c.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = vec3<f32>(global0.c.d.x, _wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(global0.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-227f)), _wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(48557u, 25u)], 1000f))))), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(global0.c.d.x * -302f)));
    global2 = array<i32, 24>();
    var var_1 = var_0.x;
    let var_2 = Struct_3(abs(_wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_sub_vec3_u32(abs(global0.a), vec3<u32>(global0.c.e, u_input.a.x, global0.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.b)) + _wgslsmith_f_op_f32(max(var_0.x, 1146f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.d.x & global0.c.b.x, 25u)])))), Struct_2(Struct_1(~u_input.b << (_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 4294967295u, global0.d.x), u_input.a) % vec3<u32>(32u))), vec2<u32>(_wgslsmith_mult_u32(u_input.a.x, 41021u), _wgslsmith_dot_vec4_u32(global0.d, ~vec4<u32>(0u, u_input.a.x, u_input.a.x, 1u))), Struct_1(u_input.b << ((global0.a & u_input.a) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.d))), global0.a.x), firstTrailingBit(global0.d));
    var var_3 = max(~(~var_2.a), var_2.d.zxy) | (u_input.a >> (firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, u_input.a.x, 1u), vec3<u32>(1u, global0.a.x, global0.d.x))) % vec3<u32>(32u)));
    return vec2<bool>(!arg_0.x, arg_0.x);
}

fn func_5(arg_0: bool, arg_1: Struct_5) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.d.x, -1970f, global3[_wgslsmith_index_u32(~global0.d.x, 25u)], -2367f));
    var var_2 = select(vec3<bool>(_wgslsmith_mod_u32(_wgslsmith_add_u32(global0.d.x, var_0.d.e), 0u) == (arg_1.d.e << (~global0.a.x % 32u)), global0.c.e != ~(14059u >> (0u % 32u)), !var_0.c.x & true), var_0.a.xwy, arg_1.a.x);
    let var_3 = var_0.d.c;
    let var_4 = func_3(select(!vec4<bool>(select(var_0.c.x, var_0.a.x, var_0.a.x), all(var_2.yy), true, any(arg_1.a.xww)), global1[_wgslsmith_index_u32(~firstLeadingBit(~global0.d.x), 10u)], true), -vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(arg_1.d.c.a.xy, u_input.b.xx)), ~(-1i), ~global2[_wgslsmith_index_u32(0u, 24u)] | -1i, reverseBits(u_input.b.x)), !vec4<bool>(!arg_0, any(global1[_wgslsmith_index_u32(10834u >> (var_0.d.e % 32u), 10u)]), !arg_0, true));
    return vec4<bool>(arg_1.a.x, true, var_2.x, var_2.x);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    global3 = array<f32, 25>();
    var var_0 = _wgslsmith_f_op_f32(trunc(global0.c.d.x));
    global2 = array<i32, 24>();
    let var_1 = ~global0.d.x;
    let var_2 = Struct_5(func_5(true, Struct_5(!(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), countOneBits(global0.c.a.a.x | u_input.d), func_4(global1[_wgslsmith_index_u32(37522u, 10u)], func_3(vec4<bool>(true, false, arg_2.x, arg_2.x), vec4<i32>(arg_3, -38288i, global2[_wgslsmith_index_u32(53165u, 24u)], -1i), vec4<bool>(false, false, true, arg_2.x))), Struct_2(global0.c.a, abs(u_input.a.yx), global0.c.a, _wgslsmith_f_op_vec4_f32(-arg_1.c.d), arg_0))), select(firstTrailingBit(arg_3), -24350i, func_5(any(vec3<bool>(arg_2.x, false, false)), Struct_5(vec4<bool>(arg_2.x, arg_2.x, true, false), global2[_wgslsmith_index_u32(25048u, 24u)], arg_2, Struct_2(global0.c.a, vec2<u32>(25401u, arg_1.a.x), Struct_1(arg_1.c.c.a), vec4<f32>(1451f, global3[_wgslsmith_index_u32(3208u, 25u)], -929f, -1000f), arg_0))).x) >> (~(arg_1.a.x | (4294967295u & u_input.a.x)) % 32u), func_5(arg_2.x, Struct_5(vec4<bool>(all(vec2<bool>(true, arg_2.x)), true, false, arg_2.x), 41425i, vec2<bool>(true, true), Struct_2(arg_1.c.c, _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.a.yx), Struct_1(arg_1.c.a.a), arg_1.c.d, _wgslsmith_mod_u32(4294967295u, 23632u)))).yw, global0.c);
    return Struct_2(global0.c.a, _wgslsmith_clamp_vec2_u32(vec2<u32>(firstLeadingBit(~var_1), global0.d.x | countOneBits(global0.a.x)), vec2<u32>(6839u, arg_0), vec2<u32>(global0.a.x, ~var_1)), global0.c.c, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2377f))), -493f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(abs(select(arg_0, var_2.d.e, false)), 25u)] * _wgslsmith_f_op_f32(f32(-1f) * -1439f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1967f * -1216f)), -801f)), 4294967295u);
}

fn func_6(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = vec2<bool>(true, true);
    var_0 = func_4(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], vec3<i32>(-21600i, func_2(~_wgslsmith_mult_u32(95666u, u_input.a.x), Struct_3(firstTrailingBit(arg_2.d.wxx), _wgslsmith_f_op_f32(-arg_1.x), Struct_2(global0.c.a, vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(vec3<i32>(arg_2.c.a.a.x, -45831i, -54525i)), vec4<f32>(167f, -1697f, 728f, arg_1.x), global0.a.x), vec4<u32>(4294967295u, arg_2.d.x, 0u, 45274u)), vec2<bool>(var_0.x, select(true, var_0.x, false)), -_wgslsmith_clamp_i32(-28539i, 2147483647i, u_input.b.x)).a.a.x, arg_0.a.x));
    var var_1 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(select(-191f, func_2(u_input.a.x, arg_2, vec2<bool>(var_0.x, var_0.x), arg_2.c.a.a.x).d.x, true))) + global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3.x, arg_2.a.x), 25u)]), -329f);
    let var_2 = Struct_5(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.a.x << (global0.d.x % 32u), max(global0.d.x, arg_2.c.b.x << (4294967295u % 32u))), 10u)], _wgslsmith_dot_vec2_i32(global0.c.c.a.yx >> (countOneBits(countOneBits(arg_3)) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.c.a.a.x, u_input.d), arg_2.c.a.a.xy, u_input.b.zz), select(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 24u)], 13395i), arg_2.c.c.a.xx, vec2<bool>(var_0.x, var_0.x)) ^ global0.c.a.a.yy)), select(vec2<bool>(func_5(false, Struct_5(vec4<bool>(true, true, var_0.x, true), global0.c.c.a.x, vec2<bool>(true, true), arg_2.c)).x, true), vec2<bool>(true, true), true), func_2(arg_2.d.x, Struct_3(vec3<u32>(_wgslsmith_add_u32(arg_2.a.x, u_input.a.x), _wgslsmith_mult_u32(global0.c.e, 26272u), _wgslsmith_dot_vec2_u32(global0.a.yy, arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1515f, global3[_wgslsmith_index_u32(30910u, 25u)])), func_2(_wgslsmith_mod_u32(1u, 54876u), arg_2, !vec2<bool>(var_0.x, var_0.x), arg_0.a.x), arg_2.d), !vec2<bool>(var_0.x, var_0.x), min(~1i, _wgslsmith_clamp_i32(~48641i, max(u_input.b.x, u_input.b.x), arg_0.a.x))));
    var_1 = _wgslsmith_f_op_vec3_f32(step(var_2.d.d.xzw, global0.c.d.yww));
    return Struct_3(vec3<u32>(~(~(~arg_2.d.x)), 4294967295u, u_input.a.x), -569f, func_2(arg_3.x, arg_2, !(!vec2<bool>(false, var_2.a.x)), i32(-1i) * -2147483647i), ~arg_2.d);
}

fn func_1() -> Struct_3 {
    global1 = array<vec4<bool>, 10>();
    global2 = array<i32, 24>();
    global2 = array<i32, 24>();
    var var_0 = all(vec3<bool>(true, true, true));
    global2 = array<i32, 24>();
    return func_6(Struct_1(vec3<i32>(~81019i, abs(u_input.e), -56336i)), global0.c.d, Struct_3(vec3<u32>(26632u, global0.c.e, firstLeadingBit(_wgslsmith_clamp_u32(16885u, u_input.a.x, u_input.a.x))), global0.c.d.x, func_2(u_input.a.x, Struct_3(~u_input.a, _wgslsmith_f_op_f32(global0.c.d.x + global0.b), global0.c, global0.d), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(false, false, true)), -reverseBits(u_input.b.x)), vec4<u32>(74478u, _wgslsmith_dot_vec4_u32(max(global0.d, global0.d), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0.d.x, u_input.a.x, u_input.a.x), vec4<u32>(global0.d.x, global0.a.x, 1u, 4294967295u))), ~39945u, 20678u)), abs(abs(global0.a.xx)));
}

fn func_7(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_4 {
    var var_0 = func_5(true, Struct_5(global1[_wgslsmith_index_u32(24901u, 10u)], u_input.e, vec2<bool>(true, true), func_1().c)).xwz;
    global3 = array<f32, 25>();
    var_0 = func_5(true, Struct_5(global1[_wgslsmith_index_u32(u_input.a.x, 10u)], func_6(func_2(~66332u, arg_3, vec2<bool>(var_0.x, true), -25668i).c, vec4<f32>(arg_1.b, -834f, _wgslsmith_f_op_f32(-arg_1.c.d.x), func_2(arg_3.d.x, arg_3, vec2<bool>(false, var_0.x), -224i).d.x), arg_3, vec2<u32>(52784u, ~u_input.a.x)).c.c.a.x, func_4(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec3<i32>(~0i, _wgslsmith_mult_i32(0i, arg_0.x), u_input.d)), func_1().c)).yyw;
    let var_1 = global0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-426f + 320f) - global0.c.d.x)))));
    return Struct_4(min(firstTrailingBit(min(arg_3.d, _wgslsmith_sub_vec4_u32(arg_1.d, vec4<u32>(1u, arg_1.a.x, u_input.a.x, 4294967295u)))), arg_3.d), vec2<bool>(!select(var_0.x, func_4(vec4<bool>(false, true, false, var_0.x), arg_1.c.a.a).x, true), true), arg_1, select(!(!select(vec4<bool>(true, false, true, var_0.x), global1[_wgslsmith_index_u32(63896u, 10u)], true)), !global1[_wgslsmith_index_u32(arg_3.a.x, 10u)], !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, var_1.e), var_1.e), 10u)]));
}

fn func_8(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: vec4<bool>) -> f32 {
    let var_0 = arg_3.x;
    var var_1 = Struct_5(!(!(!select(arg_0.d, vec4<bool>(var_0, false, true, var_0), global1[_wgslsmith_index_u32(u_input.a.x, 10u)]))), _wgslsmith_sub_i32(arg_1.c.a.a.x, func_1().c.c.a.x ^ _wgslsmith_mult_i32(arg_0.c.c.c.a.x ^ u_input.c, _wgslsmith_mult_i32(arg_1.c.c.a.x, global0.c.a.a.x))), arg_3.wx, global0.c);
    var var_2 = func_7(max(vec2<i32>(_wgslsmith_mod_i32(global0.c.c.a.x >> (u_input.a.x % 32u), ~2147483647i), i32(-1i) * -1978i), ~_wgslsmith_div_vec2_i32(arg_1.c.c.a.yy, vec2<i32>(global0.c.a.a.x, 1i))), Struct_3(select(~vec3<u32>(arg_1.a.x, 45864u, u_input.a.x) | vec3<u32>(arg_0.a.x, arg_0.c.d.x, u_input.a.x), func_6(var_1.d.a, vec4<f32>(global0.b, arg_2.x, 486f, arg_0.c.b), arg_0.c, vec2<u32>(1u, var_1.d.b.x)).a | ~vec3<u32>(12089u, global0.d.x, 35506u), vec3<bool>(false, arg_0.d.x, false)), 938f, func_2(1u, Struct_3(~u_input.a, _wgslsmith_f_op_f32(trunc(-1053f)), func_1().c, global0.d), arg_0.b, 70480i & -var_1.b), _wgslsmith_add_vec4_u32(vec4<u32>(0u << (u_input.a.x % 32u), 4294967295u, func_6(Struct_1(vec3<i32>(-14386i, 1i, 0i)), arg_0.c.c.d, Struct_3(vec3<u32>(var_1.d.b.x, 18713u, u_input.a.x), 822f, Struct_2(arg_1.c.c, vec2<u32>(1u, arg_0.a.x), var_1.d.a, vec4<f32>(-746f, var_1.d.d.x, 411f, global3[_wgslsmith_index_u32(1u, 25u)]), 75970u), vec4<u32>(global0.c.e, 1u, var_1.d.e, u_input.a.x)), global0.c.b).d.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 75184u, arg_1.d.x, 1u) | global0.d)), 877f, func_7(reverseBits(func_2(~global0.a.x, func_7(vec2<i32>(2147483647i, var_1.d.a.a.x), Struct_3(vec3<u32>(var_1.d.e, 4294967295u, 52493u), arg_0.c.b, global0.c, global0.d), -575f, Struct_3(vec3<u32>(arg_1.d.x, arg_0.c.c.b.x, 4294967295u), -230f, Struct_2(arg_1.c.a, vec2<u32>(u_input.a.x, 43223u), Struct_1(var_1.d.c.a), vec4<f32>(arg_1.c.d.x, global3[_wgslsmith_index_u32(arg_0.a.x, 25u)], -949f, var_1.d.d.x), 51544u), arg_0.c.d)).c, func_7(vec2<i32>(37112i, -2147483647i), Struct_3(arg_0.a.xww, arg_1.c.d.x, global0.c, arg_1.d), 2586f, Struct_3(vec3<u32>(u_input.a.x, arg_0.a.x, 10270u), arg_1.c.d.x, var_1.d, vec4<u32>(0u, arg_1.d.x, arg_0.a.x, 30872u))).b, -2182i).c.a.zy), func_7(~abs(vec2<i32>(var_1.b, -2147483647i)), Struct_3(reverseBits(u_input.a), 387f, Struct_2(Struct_1(vec3<i32>(0i, 0i, var_1.b)), vec2<u32>(21897u, u_input.a.x), arg_1.c.c, arg_2, u_input.a.x), vec4<u32>(1u, 4294967295u, global0.c.b.x, arg_0.a.x)), arg_1.b, arg_0.c).c, -1036f, func_1()).c).c.c.d.xyx;
    var var_3 = firstTrailingBit(max(~arg_0.a, _wgslsmith_clamp_vec4_u32(firstTrailingBit(global0.d), abs(vec4<u32>(arg_1.c.e, arg_1.a.x, arg_1.d.x, 0u)), _wgslsmith_sub_vec4_u32(arg_0.c.d, firstLeadingBit(vec4<u32>(u_input.a.x, arg_0.a.x, arg_1.a.x, arg_0.a.x))))));
    let var_4 = Struct_2(func_6(Struct_1(arg_0.c.c.c.a), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b) * global3[_wgslsmith_index_u32(~4294967295u, 25u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(36756u, global0.c.b.x, var_1.d.e), global0.d.zxz), 25u)], 1f, arg_0.c.b), func_1(), vec2<u32>(13814u, ~var_1.d.b.x)).c.c, abs(~(~arg_1.d.ww) >> (arg_0.c.d.wy % vec2<u32>(32u))), func_1().c.c, _wgslsmith_div_vec4_f32(vec4<f32>(552f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-239f, 444f)) - global3[_wgslsmith_index_u32(max(arg_0.a.x, 1u), 25u)]), arg_1.b, 1f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.d.d, arg_1.c.d)))), 0u);
    return _wgslsmith_f_op_f32(-arg_1.c.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(784f * 1f);
    global2 = array<i32, 24>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) + _wgslsmith_f_op_f32(204f - -915f)), _wgslsmith_f_op_f32(-2268f * global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, global0.a.x), 25u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 25u)] - global0.b)))));
    let var_2 = countOneBits(87649u);
    var_1 = _wgslsmith_f_op_f32(-var_0);
    let var_3 = ~(~var_2 & global0.c.b.x);
    let var_4 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_8(func_7(-vec2<i32>(1i, global2[_wgslsmith_index_u32(global0.a.x, 24u)]), func_1(), _wgslsmith_f_op_f32(f32(-1f) * -2166f), Struct_3(vec3<u32>(u_input.a.x, 1u, var_2), -1291f, Struct_2(global0.c.c, u_input.a.xy, global0.c.c, vec4<f32>(-148f, var_0, global3[_wgslsmith_index_u32(3313u, 25u)], 339f), 31954u), vec4<u32>(1u, 0u, 17190u, var_2))), func_6(Struct_1(u_input.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, global0.c.d.x, global3[_wgslsmith_index_u32(39082u, 25u)], 1000f)), func_7(vec2<i32>(-21917i, 2147483647i), Struct_3(vec3<u32>(var_3, global0.c.e, 0u), global0.c.d.x, Struct_2(global0.c.a, u_input.a.yy, Struct_1(u_input.b), global0.c.d, 40752u), global0.d), -285f, Struct_3(u_input.a, 106f, global0.c, global0.d)).c, vec2<u32>(global0.c.e, 9337u)), global0.c.d, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.a.x, var_3), 10u)])) + global0.b), _wgslsmith_f_op_vec4_f32(global0.c.d * _wgslsmith_f_op_vec4_f32(-global0.c.d)));
}

