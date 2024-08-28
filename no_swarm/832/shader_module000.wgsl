struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(false, false, 514f, 1u), vec4<i32>(48975i, -1164i, 1i, 1i), Struct_1(false, true, -841f, 4294967295u), true));

var<private> global2: u32 = 14369u;

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

var<private> global4: array<bool, 1>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = -1000f;
    let var_1 = Struct_4(Struct_3(global1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f + global1.a.a.c) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -908f), _wgslsmith_div_f32(-121f, 635f), global1.a.c.c)), global1.a.c.c, _wgslsmith_div_vec4_u32(select(~max(vec4<u32>(26365u, u_input.d, 51723u, u_input.b), vec4<u32>(u_input.b, 12485u, 0u, u_input.b)), abs(~vec4<u32>(8547u, 31591u, 4294967295u, 44175u)), !select(vec4<bool>(false, true, global1.a.d, global1.a.d), vec4<bool>(true, global3.x, global1.a.c.a, false), vec4<bool>(global1.a.d, global1.a.d, false, global3.x))), abs(vec4<u32>(global1.a.a.d ^ 1u, _wgslsmith_mod_u32(global1.a.c.d, u_input.b), u_input.d, 10020u))), ~max(_wgslsmith_clamp_vec4_i32(global1.a.b, u_input.c >> (vec4<u32>(u_input.d, 6693u, 36818u, u_input.d) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.a, u_input.a, u_input.c.x)), firstTrailingBit(global1.a.b)));
    global2 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.a.a.a.d, _wgslsmith_mod_u32(global1.a.a.d, 4294967295u) ^ ~56143u), reverseBits(u_input.d));
    var var_2 = _wgslsmith_f_op_f32(ceil(-1397f));
    let var_3 = -vec3<i32>(_wgslsmith_dot_vec2_i32(-u_input.c.wx, min(global1.a.b.wz | vec2<i32>(u_input.a, u_input.a), global1.a.b.wz)), -2147483647i, abs(0i) >> (~var_1.a.a.c.d % 32u));
    return min(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(var_1.e.wz, -_wgslsmith_add_vec2_i32(var_1.a.a.b.zy, vec2<i32>(-1i, -69588i)))), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global1.a.b.x, -1i), vec3<i32>(-81584i, 8979i, -35148i)) & _wgslsmith_mult_i32(-1i, 13323i), ~reverseBits(global1.a.b.x)) & ~(~(~var_3.x)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = global1.a.a.c;
    global3 = arg_0.wyx;
    global0 = u_input.d;
    var var_1 = arg_0.x;
    var var_2 = Struct_5(global1.a.c, vec3<u32>(firstTrailingBit(global1.a.c.d), 1u, countOneBits(~_wgslsmith_mult_u32(u_input.d, global1.a.a.d))), _wgslsmith_div_i32(_wgslsmith_mod_i32(i32(-1i) * -u_input.c.x, -func_3()), ~27165i), vec4<u32>(global1.a.c.d | global1.a.c.d, firstTrailingBit(64400u) | 25421u, ~4294967295u, ~4294967295u));
    return global1.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = ~(-1i) >> ((u_input.b & ~arg_0.a.d) % 32u);
    let var_1 = Struct_3(func_2(select(select(vec4<bool>(true, false, global3.x, global1.a.c.a), !vec4<bool>(false, true, false, global3.x), true), select(vec4<bool>(arg_0.c.a, arg_2.d, false, false), vec4<bool>(global1.a.c.b, global4[_wgslsmith_index_u32(global1.a.a.d, 1u)], false, arg_2.a.b), !vec4<bool>(arg_0.a.b, false, global1.a.a.b, global3.x)), select(!vec4<bool>(arg_2.c.b, global4[_wgslsmith_index_u32(0u, 1u)], false, true), !vec4<bool>(true, global1.a.a.b, global3.x, true), global4[_wgslsmith_index_u32(~5375u, 1u)]))));
    let var_2 = -707f;
    let var_3 = !(global1.a.c.d >= ~u_input.b);
    global0 = 0u;
    return select(select(!select(!vec4<bool>(false, true, true, arg_0.c.b), !vec4<bool>(arg_0.d, false, global4[_wgslsmith_index_u32(1u, 1u)], true), vec4<bool>(true, false, global3.x, true)), vec4<bool>(any(vec4<bool>(true, false, global4[_wgslsmith_index_u32(4294967295u, 1u)], global1.a.a.a)), all(vec2<bool>(true, true)), !(u_input.d != u_input.b), true), all(vec3<bool>(func_2(vec4<bool>(true, arg_2.c.a, arg_2.a.b, false)).a.a, all(global3.zy), global4[_wgslsmith_index_u32(1u, 1u)]))), select(select(vec4<bool>(func_2(vec4<bool>(global1.a.d, true, global3.x, global4[_wgslsmith_index_u32(u_input.b, 1u)])).d, var_1.a.a.a, arg_0.d & var_1.a.d, all(vec3<bool>(true, global4[_wgslsmith_index_u32(u_input.d, 1u)], arg_0.c.a))), !vec4<bool>(false, global3.x, var_1.a.a.b, var_3), vec4<bool>(var_1.a.c.a, true, true && arg_0.d, any(global3.zx))), select(!vec4<bool>(true, true, global1.a.d, var_1.a.d), select(!vec4<bool>(global1.a.a.a, false, true, false), !vec4<bool>(false, var_1.a.a.a, global3.x, true), select(vec4<bool>(var_1.a.a.a, true, var_3, var_3), vec4<bool>(true, global1.a.d, false, false), arg_0.d)), !(var_1.a.c.d > global1.a.a.d)), var_1.a.a.b), !select(vec4<bool>(true, global4[_wgslsmith_index_u32(firstLeadingBit(global1.a.c.d), 1u)], global1.a.b.x <= var_1.a.b.x, all(global3.xz)), vec4<bool>(true, arg_2.a.c > -869f, arg_0.a.a, global1.a.a.b), true));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> Struct_5 {
    let var_0 = any(!(!func_4(arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.c.c, 610f, arg_1.c.c, global1.a.a.c)), func_2(vec4<bool>(false, global1.a.a.a, global1.a.c.a, global1.a.d)))));
    var var_1 = !vec3<bool>(true, select(var_0, true, global4[_wgslsmith_index_u32(abs(0u) ^ (arg_1.a.d | global1.a.a.d), 1u)]), true);
    global4 = array<bool, 1>();
    global1 = Struct_3(Struct_2(func_2(func_4(Struct_2(Struct_1(var_0, global1.a.d, 115f, 12680u), vec4<i32>(13852i, arg_1.b.x, -2147483647i, global1.a.b.x), arg_1.c, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1108f, global1.a.a.c, 253f, arg_0)), func_2(vec4<bool>(global3.x, global4[_wgslsmith_index_u32(u_input.d, 1u)], global1.a.c.b, false)))).c, select(firstLeadingBit(vec4<i32>(u_input.a, arg_1.b.x, -1i, u_input.a)), u_input.c, vec4<bool>(-1000f > arg_2, all(vec4<bool>(true, var_0, global3.x, arg_1.c.a)), false, -1595f != arg_0)), Struct_1(true, !all(vec4<bool>(false, false, arg_1.a.a, false)), 1094f, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(29957u, 1u, 1u), vec3<u32>(0u, global1.a.c.d, 0u)), vec3<u32>(53084u, 4294967295u, 57101u))), global3.x));
    global4 = array<bool, 1>();
    return Struct_5(Struct_1(any(vec2<bool>(any(vec3<bool>(true, false, false)), global3.x)), func_2(select(vec4<bool>(arg_1.c.a, false, var_0, global3.x), vec4<bool>(false, false, true, false), true)).b.x > (-25617i & (global1.a.b.x << (0u % 32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - global1.a.c.c), arg_0)))), ~u_input.b), vec3<u32>(24939u, 0u, 1u), _wgslsmith_mod_i32(global1.a.b.x, -2147483647i), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6096u, global1.a.a.d, u_input.b), select(vec3<u32>(25506u, global1.a.a.d, global1.a.c.d), vec3<u32>(36638u, 0u, arg_1.a.d), var_0)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a.d, 2188u, 1u, 4294967295u), vec4<u32>(u_input.b, arg_1.c.d, 4294967295u, 9823u)), ~(~56526u), 6189u));
}

fn func_5(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = vec4<f32>(func_2(!vec4<bool>(true, false, all(vec3<bool>(arg_0.a.a, true, arg_0.a.b)), global1.a.a.b)).c.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1257f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(arg_0.a.c)), _wgslsmith_f_op_f32(select(global1.a.c.c, -1084f, arg_0.a.b))))))), _wgslsmith_f_op_f32(sign(arg_1)), 2550f);
    var var_1 = Struct_4(Struct_3(func_2(vec4<bool>(!global3.x, u_input.c.x >= 1i, arg_0.a.b, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(func_2(vec4<bool>(global4[_wgslsmith_index_u32(0u, 1u)], global3.x, global3.x, global4[_wgslsmith_index_u32(1u, 1u)])).c.c, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1083f), arg_0.a.c))) - vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 315f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a.c.c)) * arg_0.a.c))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.a.c)), _wgslsmith_f_op_f32(sign(var_0.x))) - func_2(select(vec4<bool>(true, global3.x, false, true), vec4<bool>(true, global3.x, true, global4[_wgslsmith_index_u32(40008u, 1u)]), vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 1u)], false, global3.x, false))).c.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(global1.a.c.c, global1.a.a.c)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 1000f), arg_1)))), arg_0.d, u_input.c);
    var var_2 = global1.a.a;
    let var_3 = func_2(!vec4<bool>(false, true, !all(vec2<bool>(true, var_2.b)), false));
    var_1 = Struct_4(Struct_3(Struct_2(Struct_1(false, all(global3.xx), arg_2, ~var_1.d.x), -firstLeadingBit(var_1.e), Struct_1(var_1.a.a.d, true, 1996f, var_1.a.a.a.d), all(select(vec4<bool>(var_2.b, true, true, false), vec4<bool>(false, global3.x, global4[_wgslsmith_index_u32(20305u, 1u)], false), var_1.a.a.a.b)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -677f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-810f, 638f, true))), 226f) * vec4<f32>(_wgslsmith_f_op_f32(-global1.a.c.c), arg_2, _wgslsmith_f_op_f32(trunc(global1.a.a.c)), _wgslsmith_f_op_f32(-global1.a.c.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, -1070f))), global1.a.a.c), ~min(_wgslsmith_sub_vec4_u32(min(vec4<u32>(var_2.d, 0u, global1.a.a.d, global1.a.a.d), vec4<u32>(u_input.d, var_3.c.d, var_3.a.d, global1.a.c.d)), arg_0.d), firstLeadingBit(arg_0.d) << (var_1.d % vec4<u32>(32u))), vec4<i32>(~(-1i) << (_wgslsmith_div_u32(var_2.d, _wgslsmith_div_u32(arg_0.b.x, 4294967295u)) % 32u), -(-u_input.a | _wgslsmith_sub_i32(-25614i, u_input.c.x)), ~var_3.b.x, _wgslsmith_sub_i32(-u_input.a & var_1.e.x, min(var_1.a.a.b.x, arg_0.c))));
    return _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_2.d, ~1u) ^ var_3.c.d, _wgslsmith_sub_u32(~func_2(vec4<bool>(global1.a.c.b, true, global4[_wgslsmith_index_u32(var_2.d, 1u)], global4[_wgslsmith_index_u32(global1.a.c.d, 1u)])).c.d, var_1.a.a.c.d ^ ~(~var_1.a.a.c.d)));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(-429f - global1.a.c.c);
    var var_1 = global1.a.a.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(632f, 960f)));
    var var_3 = ~(~_wgslsmith_mult_u32(4294967295u, u_input.b));
    let var_4 = Struct_2(func_2(!func_4(Struct_2(Struct_1(global4[_wgslsmith_index_u32(u_input.d, 1u)], arg_1.a.a, 696f, 41271u), vec4<i32>(-42199i, global1.a.b.x, arg_1.b.x, -1i), global1.a.a, global4[_wgslsmith_index_u32(global1.a.c.d, 1u)]), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.c.c, var_2, 1800f, -229f))), func_2(vec4<bool>(false, true, global1.a.a.a, global3.x)))).a, vec4<i32>(_wgslsmith_div_i32(-44070i, func_3()), ~(-44142i), global1.a.b.x, ~_wgslsmith_add_i32(1i, u_input.c.x)) ^ vec4<i32>(i32(-1i) * -49220i, _wgslsmith_clamp_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(u_input.c.x, -24577i), -1i), u_input.c.x, abs(countOneBits(global1.a.b.x))), Struct_1(false, _wgslsmith_f_op_f32(-529f * _wgslsmith_f_op_f32(f32(-1f) * -1346f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.a.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.c - -612f)), ~0u), global4[_wgslsmith_index_u32(global1.a.a.d, 1u)]);
    return Struct_5(func_2(!select(!vec4<bool>(true, true, global3.x, false), select(vec4<bool>(true, false, true, arg_1.a.b), vec4<bool>(global4[_wgslsmith_index_u32(global1.a.a.d, 1u)], true, true, false), vec4<bool>(global4[_wgslsmith_index_u32(var_4.c.d, 1u)], true, false, true)), !vec4<bool>(global4[_wgslsmith_index_u32(0u, 1u)], arg_1.d, var_4.d, arg_1.c.b))).a, ~(arg_0.yzx | arg_0.zzz), i32(-1i) * -1i, arg_0 << ((firstLeadingBit(vec4<u32>(global1.a.c.d, 49250u, 0u, arg_0.x)) >> (vec4<u32>(reverseBits(4294967295u), 7976u << (global1.a.c.d % 32u), arg_1.a.d, ~global1.a.c.d) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_add_vec4_u32(vec4<u32>(reverseBits(_wgslsmith_div_u32(77735u, u_input.d)), u_input.d, 4294967295u, ~u_input.b), vec4<u32>(~_wgslsmith_add_u32(4294967295u, global1.a.c.d), global1.a.c.d, func_5(func_1(899f, global1.a, global1.a.c.c), _wgslsmith_f_op_f32(222f + global1.a.a.c), _wgslsmith_f_op_f32(276f + 1351f)), 74516u)), global1.a);
    global2 = global1.a.a.d;
    global2 = ~(1u & _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_0.b.x, u_input.b, var_0.d.x) & vec3<u32>(global1.a.c.d, 4294967295u, 36262u), var_0.b, vec3<bool>(true, true, true)), abs(vec3<u32>(global1.a.a.d, 49631u, global1.a.c.d))));
    let var_1 = func_6(_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.d, var_0.d), ~var_0.d)), var_0.d), global1.a);
    let var_2 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(global1.a.b.x, _wgslsmith_add_i32(func_3(), -u_input.c.x), _wgslsmith_mod_i32(var_0.c | var_0.c, _wgslsmith_mult_i32(1i, 1i))) << (23369u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(51545u), -624f);
}

