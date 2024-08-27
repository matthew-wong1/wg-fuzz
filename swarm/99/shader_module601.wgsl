struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, false, true, true, true, true, false, true, false, true, true, true, false, false, true, true, false, false, true, false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec4<u32>) -> f32 {
    global0 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_f32(ceil(-216f));
    let var_1 = Struct_2(111029u, arg_1, arg_1);
    let var_2 = !all(vec4<bool>(global0[_wgslsmith_index_u32(reverseBits(var_1.a), 22u)], arg_3.x == 5712u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_3.x, 16673u), 22u)], global0[_wgslsmith_index_u32(arg_3.x, 22u)] | global0[_wgslsmith_index_u32(u_input.c, 22u)])) | (global0[_wgslsmith_index_u32(u_input.b.x, 22u)] | !global0[_wgslsmith_index_u32(var_1.a, 22u)]);
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(1599f - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(trunc(384f));
    global0 = array<bool, 22>();
    var var_1 = ~firstTrailingBit(u_input.d.x) | _wgslsmith_add_u32(4294967295u & select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.d.x), vec4<u32>(67500u, u_input.d.x, 1u, 0u)), ~0u, false), u_input.b.x);
    let var_2 = firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 1i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)) >> (u_input.d.x % 32u)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1264f, -1720f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(214f)), _wgslsmith_f_op_f32(-776f + -1000f), !global0[_wgslsmith_index_u32(u_input.d.x, 22u)])), _wgslsmith_f_op_f32(f32(-1f) * -818f), _wgslsmith_f_op_f32(min(-186f, _wgslsmith_f_op_f32(round(690f)))))), u_input.b.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-302f, 2491f))) * _wgslsmith_f_op_f32(-347f * _wgslsmith_f_op_f32(func_3(-1094f, Struct_1(-3224f, -181f), vec3<i32>(2147483647i, var_2.x, 3831i), vec4<u32>(1u, 4294967295u, u_input.b.x, 0u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -237f), Struct_1(-736f, 473f), var_2, vec4<u32>(0u, u_input.c, u_input.d.x, u_input.b.x))) * 482f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(398f, -1486f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -711f))));
    return Struct_2(~max(66458u, u_input.b.x), var_3.d, var_3.d);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    let var_0 = vec2<i32>(arg_1.x, -493i);
    var var_1 = -18175i;
    var var_2 = arg_0;
    let var_3 = any(select(!vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(var_2.a, 22u)], global0[_wgslsmith_index_u32(100910u, 22u)], true, true)), all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(0u, 22u)])), true), vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 22u)]), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(round(107f)), func_2().c, _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(var_0.x, var_0.x, arg_1.x)), vec4<u32>(arg_2, 34193u, u_input.b.x, 0u))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-863f, -719f)), arg_0.c.a, true))));
    let var_4 = vec3<bool>(true, !(!global0[_wgslsmith_index_u32(12735u, 22u)]), all(select(!select(vec4<bool>(var_3, false, true, false), vec4<bool>(var_3, var_3, global0[_wgslsmith_index_u32(arg_2, 22u)], false), global0[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec4<bool>(false, true, var_3, all(vec2<bool>(var_3, false))), vec4<bool>(true, true, all(vec3<bool>(true, global0[_wgslsmith_index_u32(var_2.a, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)])), global0[_wgslsmith_index_u32(4294967295u, 22u)]))));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_1 {
    global0 = array<bool, 22>();
    let var_0 = Struct_2(min(1u, 0u) << (u_input.c % 32u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.b + _wgslsmith_div_f32(arg_0.b.b, -688f)) * -625f), arg_0.c.b), func_4(func_2(), ~(-(~u_input.a.zx)), ~(~(~arg_0.a))).c);
    global0 = array<bool, 22>();
    var var_1 = !vec2<bool>(true, ~_wgslsmith_mult_i32(u_input.a.x, 6818i) < _wgslsmith_add_i32(~(-1i), ~u_input.a.x));
    let var_2 = _wgslsmith_clamp_u32(19719u, 84176u, _wgslsmith_dot_vec4_u32(max(countOneBits(vec4<u32>(53861u, var_0.a, arg_0.a, 4294967295u) | vec4<u32>(var_0.a, 80907u, var_0.a, 1u)), select(vec4<u32>(u_input.b.x, var_0.a, 1u, var_0.a) ^ vec4<u32>(61769u, 13989u, 4294967295u, arg_0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, arg_0.a, 4294967295u, 6020u), vec4<u32>(arg_0.a, var_0.a, arg_0.a, u_input.d.x)), any(vec4<bool>(arg_2, global0[_wgslsmith_index_u32(arg_0.a, 22u)], arg_1, true)))), ~(vec4<u32>(4294967295u, arg_0.a, arg_0.a, 45033u) & vec4<u32>(u_input.d.x, 0u, 0u, u_input.c)) | firstLeadingBit(~vec4<u32>(0u, u_input.c, u_input.b.x, 26104u))));
    return func_4(func_4(var_0, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(15400i, -1i)) >> (~_wgslsmith_div_vec2_u32(vec2<u32>(46856u, var_0.a), vec2<u32>(var_0.a, 4294967295u)) % vec2<u32>(32u)), var_0.a), -vec2<i32>(countOneBits(1i), _wgslsmith_sub_i32(-1i, u_input.a.x)) << (select(firstTrailingBit(abs(vec2<u32>(u_input.c, u_input.c))), select(~vec2<u32>(u_input.d.x, 21785u), vec2<u32>(u_input.b.x, 50102u), !vec2<bool>(arg_1, true)), vec2<bool>(!arg_2, true)) % vec2<u32>(32u)), ~(var_0.a | arg_0.a)).c;
}

fn func_6(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    var var_0 = ~vec4<u32>(_wgslsmith_mod_u32(4294967295u & u_input.c, _wgslsmith_clamp_u32(27197u, u_input.b.x, 14667u)) << (firstTrailingBit(u_input.d.x << (34279u % 32u)) % 32u), 8670u, u_input.c, u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(floor(-1012f));
    var var_2 = Struct_4(~61784u, _wgslsmith_div_f32(arg_0.b, -1000f));
    let var_3 = global0[_wgslsmith_index_u32(~select(func_4(Struct_2(3867u, arg_0, arg_0), countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -1i), u_input.a.xz)), var_2.a).a, ~(~1u), any(!select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 22u)], true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)]), vec2<bool>(false, false)))), 22u)];
    let var_4 = vec3<i32>(~_wgslsmith_div_i32(-2147483647i, -(~arg_1)), arg_1, firstLeadingBit(-34091i));
    return Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(func_3(-340f, Struct_1(arg_0.a, var_2.b), vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), vec4<u32>(var_0.x, var_0.x, 95781u, 4294967295u))), func_2().b.b, _wgslsmith_f_op_f32(step(-447f, var_2.b)), 1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_2.b, 126f, arg_0.b))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1292f, arg_0.a, arg_0.b, 782f), _wgslsmith_f_op_vec4_f32(vec4<f32>(346f, var_2.b, var_2.b, arg_0.b) * vec4<f32>(-366f, -1343f, arg_0.a, var_2.b)))))), _wgslsmith_mult_u32(_wgslsmith_div_u32(countOneBits(86401u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 1u), u_input.b)) << (var_0.x % 32u), 1u), arg_0, arg_0);
}

fn func_1() -> Struct_3 {
    return func_6(func_5(func_4(func_2(), vec2<i32>(-2147483647i, u_input.a.x), 0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1309f)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1212f)), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(u_input.b.x, 4294967295u)), 22u)]), max(u_input.a.x, 1i));
}

fn func_7(arg_0: Struct_3) -> Struct_4 {
    global0 = array<bool, 22>();
    var var_0 = Struct_5(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(~func_2().a, 22u)], func_1().d);
    var_0 = Struct_5(_wgslsmith_mod_u32(52858u, u_input.d.x) != ~(~(4294967295u ^ arg_0.b)), false, Struct_1(_wgslsmith_f_op_f32(-var_0.c.b), 1898f));
    var var_1 = 2147483647i;
    var var_2 = min(u_input.a.xz, u_input.a.xx);
    return Struct_4(firstLeadingBit(select(0u << (u_input.d.x % 32u), ~1u, var_0.c.a >= 688f) >> (4294967295u % 32u)), arg_0.a.x);
}

fn func_8(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_4) -> vec3<bool> {
    global0 = array<bool, 22>();
    var var_0 = 35604u;
    var var_1 = Struct_2(~(_wgslsmith_add_u32(u_input.c, arg_3.a) << (firstTrailingBit(abs(4294967295u)) % 32u)), Struct_1(-1008f, -732f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(-arg_2)))), _wgslsmith_f_op_f32(-func_4(func_4(Struct_2(arg_3.a, Struct_1(arg_3.b, 1000f), Struct_1(-821f, arg_3.b)), u_input.a.zx, u_input.b.x), -vec2<i32>(-32076i, u_input.a.x), 46130u).b.a)));
    var var_2 = func_4(Struct_2(~0u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -797f) - 1f), arg_2), var_1.b), vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-u_input.a.x, u_input.a.x), u_input.a.x, -2147483647i)), 20640u).c.b;
    var var_3 = var_1.c.a;
    return vec3<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.a, func_1().b), 22u)] & !select(true, true, arg_1.x), arg_3.a <= ~43450u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(!vec3<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(41155u, 22u)], false, true)), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 22u)], global0[_wgslsmith_index_u32(3639u, 22u)], false)))));
    var_0 = !func_8(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))), vec3<bool>(all(var_0.xy), all(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false), vec4<bool>(false, var_0.x, false, global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], var_0.x, global0[_wgslsmith_index_u32(0u, 22u)], var_0.x))), select(u_input.a.x < u_input.a.x, 50920i > u_input.a.x, any(vec3<bool>(var_0.x, true, false)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1783f)), _wgslsmith_f_op_f32(-321f + 407f))), -1755f)), func_7(func_1()));
    let var_1 = u_input.c;
    var_0 = !vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-327f, 1020f, global0[_wgslsmith_index_u32(17038u, 22u)])), _wgslsmith_f_op_f32(floor(1107f))) == _wgslsmith_div_f32(354f, 1387f), !(1i == u_input.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, 4294967295u, u_input.d.x, 4294967295u)) > 1u);
    var var_2 = func_7(func_6(func_6(Struct_1(_wgslsmith_f_op_f32(ceil(-1129f)), 348f), _wgslsmith_mod_i32(u_input.a.x ^ -45797i, u_input.a.x & 13890i)).d, ~u_input.a.x));
    var_2 = Struct_4(0u, -1516f);
    var_0 = !func_8(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.b, -116f, var_2.b, -1800f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b, var_2.b, var_2.b, 449f)))), !(!vec3<bool>(false, var_0.x, var_0.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_4(Struct_2(u_input.c, Struct_1(121f, var_2.b), Struct_1(726f, 563f)), u_input.a.yz, 19633u).b.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1016f, var_2.b)))), Struct_4(_wgslsmith_mult_u32(var_2.a >> (var_1 % 32u), func_1().b), func_7(Struct_3(vec4<f32>(170f, var_2.b, var_2.b, var_2.b), var_1, Struct_1(1627f, var_2.b), Struct_1(var_2.b, var_2.b))).b));
    var var_3 = var_2.a << ((~(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(53635u, var_1, u_input.d.x)) << (_wgslsmith_mult_u32(9879u, 4785u) % 32u)) << (abs(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, var_1), select(25061u, 0u, false))) % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_1().c.a));
}

