struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(18269i, 0i);

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, false, false), Struct_1(vec3<bool>(false, true, false), 2147483647i));

var<private> global2: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec2<u32>(0u, 0u)), Struct_4(vec2<u32>(49306u, 4294967295u)), Struct_4(vec2<u32>(34897u, 42414u)), Struct_4(vec2<u32>(79645u, 71231u)), Struct_4(vec2<u32>(1u, 22201u)), Struct_4(vec2<u32>(26925u, 1u)), Struct_4(vec2<u32>(1u, 1u)), Struct_4(vec2<u32>(23008u, 57677u)), Struct_4(vec2<u32>(0u, 41010u)));

var<private> global3: array<u32, 29>;

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 6270u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)], 29u)], 29u)], 29u)], 1u), vec4<u32>(0u, 135385u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2656u, 29u)], 29u)], 29u)], 29u)], 29u)], 29u)], 42259u)), abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)]) | 1u)), 9u)];
    global3 = array<u32, 29>();
    global3 = array<u32, 29>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -620f)));
    global3 = array<u32, 29>();
    return _wgslsmith_dot_vec4_u32(~(~(~select(vec4<u32>(var_0.a.x, var_0.a.x, 0u, 1u), vec4<u32>(var_0.a.x, global3[_wgslsmith_index_u32(12218u, 29u)], var_0.a.x, global3[_wgslsmith_index_u32(var_0.a.x, 29u)]), vec4<bool>(global1.b.a.x, global1.a.x, global1.a.x, false)))), ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(1u, 29u)], 111015u, 70112u, 0u), vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.x, 29u)], 29u)])), ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a.x, 29u)], 29u)], var_0.a.x, var_0.a.x, var_0.a.x)), select(vec4<u32>(global3[_wgslsmith_index_u32(var_0.a.x, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)], 32146u, 16182u), vec4<u32>(var_0.a.x, 31606u, 4294967295u, 0u), select(vec4<bool>(true, global1.a.x, true, false), vec4<bool>(false, global1.b.a.x, global1.a.x, global1.b.a.x), global1.b.a.x))));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_2 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -680f)) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, arg_0, arg_0), vec3<f32>(-126f, 1349f, 1000f))))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 311f, arg_0) + vec3<f32>(-1000f, 295f, 1127f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 1000f) - vec3<f32>(arg_0, arg_0, 1140f))))))));
    let var_2 = 4294967295u;
    let var_3 = Struct_3(select(~vec3<u32>(2066u, 91177u, global3[_wgslsmith_index_u32(32176u, 29u)]) ^ vec3<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 1u), abs(3899u), arg_1 ^ arg_1), vec3<u32>((global3[_wgslsmith_index_u32(86907u, 29u)] & var_2) & func_3(vec2<i32>(-1i, 1i)), 4294967295u >> (var_2 % 32u), 16041u), all(!global1.b.a.xx) && var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(f32(-1f) * -1255f))), var_1.yz);
    var var_4 = vec2<u32>(var_3.a.x, 4071u);
    return Struct_2(vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_2), 29u)] <= arg_1, any(global1.b.a.yx), (63905u != _wgslsmith_add_u32(21360u, var_4.x)) || ((26668u > global3[_wgslsmith_index_u32(4294967295u, 29u)]) & true)), Struct_1(vec3<bool>(false, any(!global1.b.a), !(arg_0 <= 220f)), 2147483647i));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(101677u, global3[_wgslsmith_index_u32(58427u, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(61719u, 29u)], 29u)]), firstLeadingBit(vec3<u32>(6896u, 11844u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], 29u)], 29u)])), countOneBits(vec3<u32>(74677u, global3[_wgslsmith_index_u32(24244u, 29u)], global3[_wgslsmith_index_u32(58489u, 29u)])))));
    var var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(210f, 986f)) + _wgslsmith_f_op_f32(249f - -798f))), -1000f), countOneBits(reverseBits(~0u)) >> (min(~(~var_0.x), min(26391u, ~1u)) % 32u)).b;
    let var_2 = global2[_wgslsmith_index_u32(max(1u, _wgslsmith_add_u32(global3[_wgslsmith_index_u32(var_0.x, 29u)], ~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(var_0.x, 29u)], 29u)], 29u)]))), 9u)];
    global1 = Struct_2(var_1.a, Struct_1(var_1.a, u_input.a));
    global4 = array<Struct_1, 26>();
    return Struct_2(vec3<bool>(true, false, func_2(888f, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 38948u, var_0.x, global3[_wgslsmith_index_u32(0u, 29u)]), ~vec4<u32>(var_0.x, global3[_wgslsmith_index_u32(var_2.a.x, 29u)], global3[_wgslsmith_index_u32(var_0.x, 29u)], var_2.a.x))).a.x), func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(960f * -302f))), 1u | var_2.a.x).b);
}

fn func_5(arg_0: f32, arg_1: Struct_5) -> Struct_1 {
    var var_0 = Struct_5(Struct_2(vec3<bool>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.d.x, 4294967295u, global3[_wgslsmith_index_u32(0u, 29u)]), vec4<u32>(arg_1.c.x, global3[_wgslsmith_index_u32(53677u, 29u)], 25918u, global3[_wgslsmith_index_u32(arg_1.d.x, 29u)]))).b.a.x, func_4(Struct_2(global1.a, Struct_1(global1.a, -13153i))).a.x || func_2(arg_0, global3[_wgslsmith_index_u32(arg_1.d.x, 29u)]).b.a.x, !func_2(534f, 51808u).a.x), Struct_1(!select(global1.b.a, vec3<bool>(true, true, global1.a.x), global1.b.a), u_input.a)), reverseBits(-_wgslsmith_mult_i32(arg_1.e.b, arg_1.b)), arg_1.c, ~(vec3<u32>(arg_1.c.x & 0u, 1u, ~15878u) | reverseBits(abs(arg_1.d))), Struct_1(global1.b.a, _wgslsmith_add_i32(reverseBits(abs(-2147483647i)), arg_1.b)));
    var_0 = Struct_5(var_0.a, var_0.a.b.b, vec2<u32>(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(var_0.d.x, 29u)], 81125u), global3[_wgslsmith_index_u32(~1u, 29u)]), vec3<u32>(~1u, ~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(arg_1.c.x, 29u)], select(4294967295u, var_0.c.x, false)), _wgslsmith_div_u32(reverseBits(1u), 78702u)), global1.b);
    var var_1 = 252f;
    let var_2 = -select(vec4<i32>(var_0.a.b.b, _wgslsmith_div_i32(u_input.a, -1i), i32(-1i) * -5263i, u_input.a) << (vec4<u32>(_wgslsmith_sub_u32(35108u, var_0.d.x), select(arg_1.c.x, 1u, true), 1u & var_0.d.x, var_0.c.x) % vec4<u32>(32u)), reverseBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, u_input.a, var_0.b), vec4<i32>(1i, -42313i, 2147483647i, -25023i))), !select(!var_0.a.b.a.x, false, true));
    global4 = array<Struct_1, 26>();
    return global1.b;
}

fn func_1(arg_0: vec3<f32>) -> Struct_5 {
    var var_0 = func_5(1354f, Struct_5(func_4(func_2(_wgslsmith_f_op_f32(-arg_0.x), 32u)), (i32(-1i) * -2147483647i) ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(29777i, global0.x, -2147483647i), vec3<i32>(-50117i, u_input.a, u_input.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], global3[_wgslsmith_index_u32(1u, 29u)])), ~vec2<u32>(22801u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32460u, 29u)], 29u)], 29u)], 29u)])) << (min(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(50416u, 15814u), vec2<u32>(14928u, 4294967295u)), ~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), vec3<u32>(0u, _wgslsmith_div_u32(107196u >> (global3[_wgslsmith_index_u32(1u, 29u)] % 32u), 4294967295u), reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(62078u, 29u)], global3[_wgslsmith_index_u32(15571u, 29u)], global3[_wgslsmith_index_u32(14585u, 29u)]), vec3<u32>(92507u, global3[_wgslsmith_index_u32(4294967295u, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)])))), global4[_wgslsmith_index_u32(~1u, 26u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz))));
    var var_2 = func_2(var_1.x, ~1u).b;
    let var_3 = Struct_5(func_4(func_4(Struct_2(select(vec3<bool>(false, var_0.a.x, global1.a.x), vec3<bool>(true, global1.b.a.x, var_0.a.x), false), global4[_wgslsmith_index_u32(abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 29u)], 29u)]), 26u)]))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-(vec3<i32>(u_input.a, 86i, 3671i) >> (vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(100867u, 29u)], 29u)], 14813u, global3[_wgslsmith_index_u32(4294967295u, 29u)]) % vec3<u32>(32u))), ~(-vec3<i32>(var_2.b, -69939i, var_2.b))), firstTrailingBit(vec3<i32>(abs(u_input.a), 16086i, -38020i >> (global3[_wgslsmith_index_u32(4294967295u, 29u)] % 32u)))), ~firstTrailingBit(vec2<u32>(4294967295u, 44761u) | (vec2<u32>(108842u, global3[_wgslsmith_index_u32(9577u, 29u)]) ^ vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41718u, 29u)], 29u)], 29u)], 22127u))), reverseBits(vec3<u32>(~4294967295u, ~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42883u, 29u)], 29u)]), 29u)], _wgslsmith_clamp_u32(~22805u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(1u, 4294967295u), 29u)], 29u)], global3[_wgslsmith_index_u32(abs(26201u), 29u)]))), func_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1774f, var_1.x)), abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(18751u, 29u)], 29u)] >> (global3[_wgslsmith_index_u32(1u, 29u)] % 32u)))).b);
    var var_4 = var_3.e;
    return Struct_5(func_4(Struct_2(vec3<bool>(var_3.a.b.a.x, true, !var_2.a.x), Struct_1(var_2.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -36725i, global0.x, 0i), vec4<i32>(u_input.a, 40778i, 2147483647i, var_2.b))))), firstLeadingBit(-(~1i)), var_3.d.xx, vec3<u32>(~var_3.d.x, 4294967295u, 16167u), func_4(var_3.a).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(613f, 1846f, 1317f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1592f, -175f, -1563f)))))));
    let var_1 = abs(~global3[_wgslsmith_index_u32(var_0.c.x, 29u)] ^ global3[_wgslsmith_index_u32(~19703u, 29u)]) << (~_wgslsmith_sub_u32(min(_wgslsmith_div_u32(var_0.d.x, 4294967295u), 4294967295u), ~min(global3[_wgslsmith_index_u32(4294967295u, 29u)], 0u)) % 32u);
    var var_2 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1219f, -1436f)))))), -29910i);
}

