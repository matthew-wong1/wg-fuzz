struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<u32, 23>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    global0 = true;
    global0 = !any(!select(!arg_1.b.yzz, arg_1.b.ywx, select(arg_1.b.ywz, vec3<bool>(false, false, true), true)));
    global0 = true;
    let var_0 = arg_1;
    global1 = array<u32, 23>();
    return arg_1.c.c;
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    var var_0 = select(vec3<bool>(false, (all(vec4<bool>(true, false, false, false)) != true) & false, true), vec3<bool>(func_3(firstTrailingBit(min(7611u, 4294967295u)), Struct_4(Struct_3(Struct_1(1000f, u_input.b, false), Struct_1(-367f, arg_0.x, true), Struct_1(-1988f, arg_0.x, false), vec4<f32>(-925f, 2101f, 472f, 2322f), vec4<u32>(42893u, 0u, 4294967295u, arg_0.x)), vec4<bool>(true, true, true, true), Struct_1(479f, u_input.b, true), u_input.b | 75570u), Struct_1(_wgslsmith_f_op_f32(921f * 1133f), abs(arg_0.x), all(vec3<bool>(false, false, false)))), true, select(false, true, !all(vec4<bool>(false, false, false, true)))), select(!select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)), vec3<bool>(false, true, _wgslsmith_sub_u32(1u, u_input.b) < 1648u), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))));
    global0 = all(!var_0.zx);
    var_0 = vec3<bool>(!select(any(vec3<bool>(true, var_0.x, var_0.x)), any(vec4<bool>(true, var_0.x, true, var_0.x)), true) && !(!(var_0.x && var_0.x)), !(true | var_0.x), var_0.x & var_0.x);
    var_0 = vec3<bool>(any(vec3<bool>(true, _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 37258u), vec2<u32>(3903u, 0u)) > firstLeadingBit(u_input.b), true)), ~14354u != max(~(arg_0.x | 19247u), reverseBits(~u_input.b)), var_0.x);
    var var_1 = _wgslsmith_add_i32(-u_input.c, _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, reverseBits(vec2<i32>(u_input.c, -1i)))));
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1634f, _wgslsmith_f_op_f32(round(205f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(76490u, 17822u), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(arg_0.x, 23u)])), vec2<u32>(0u, 0u)), _wgslsmith_mult_u32(~1u, global1[_wgslsmith_index_u32(~arg_0.x, 23u)])), true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1475f))), 31887u, var_0.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), countOneBits(abs(_wgslsmith_mult_u32(u_input.b, arg_0.x))), var_0.x), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-794f - _wgslsmith_f_op_f32(1328f - 2296f)))), -725f, 484f, 633f), vec4<u32>(_wgslsmith_mod_u32(32434u, arg_0.x & 1u), ~11875u, ~u_input.b, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_0.x), vec3<u32>(14442u, u_input.b, 4294967295u)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4) -> u32 {
    let var_0 = 1405f;
    global1 = array<u32, 23>();
    let var_1 = ~20767u;
    var var_2 = -1i;
    var var_3 = vec2<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_0.x, -1i), ~arg_0.x), -(~vec2<i32>(0i, arg_0.x)))), select(i32(-1i) * -13123i, _wgslsmith_sub_i32(u_input.a.x | -1i, i32(-1i) * -2147483647i), !arg_1.b.x));
    return _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~arg_1.a.e.wxz, vec3<u32>(4294967295u, u_input.b, 4294967295u)), 23u)] | func_2(arg_1.a.e).e.x, firstLeadingBit(21774u));
}

fn func_1(arg_0: i32) -> Struct_3 {
    global0 = all(select(!vec2<bool>(false, all(vec2<bool>(false, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(func_4(vec3<i32>(_wgslsmith_sub_i32(0i, arg_0), ~u_input.a.x, ~arg_0), Struct_4(func_2(vec4<u32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], u_input.b, u_input.b, global1[_wgslsmith_index_u32(0u, 23u)])), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true)), func_2(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], 23u)], 0u, 1u, global1[_wgslsmith_index_u32(u_input.b, 23u)])).c, min(150792u, 0u))), u_input.b), 4294967295u);
    global1 = array<u32, 23>();
    var var_1 = _wgslsmith_add_u32(global1[_wgslsmith_index_u32(~(~(_wgslsmith_clamp_u32(4294967295u, 0u, global1[_wgslsmith_index_u32(1u, 23u)]) ^ (global1[_wgslsmith_index_u32(u_input.b, 23u)] ^ 4294967295u))), 23u)], ~u_input.b);
    var_1 = 4294967295u;
    return Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(166f, -331f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-424f, 654f))))), ~max(~1u, u_input.b), !any(vec3<bool>(true, true, false))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(652f * 719f) - 562f))), 16618u, all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-981f + _wgslsmith_f_op_f32(floor(1710f))) - -591f), ~0u << (u_input.b % 32u), !(any(vec3<bool>(false, false, false)) && true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1369f, -1845f, 421f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, -720f, -489f, -776f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1064f, 2298f, -563f, -331f))))) + vec4<f32>(-697f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(104f * -498f))), _wgslsmith_f_op_f32(144f - _wgslsmith_f_op_f32(floor(-749f))), -845f)), ~vec4<u32>(70707u, 95682u, u_input.b, ~var_0.x));
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1) -> Struct_3 {
    var var_0 = Struct_4(func_1(-u_input.a.x), select(select(arg_1.b, vec4<bool>(false, all(vec3<bool>(false, arg_2.c, arg_2.c)), arg_1.b.x | arg_0, arg_1.c.c), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 0i), vec3<i32>(-62771i, u_input.a.x, 1i)) > 50922i), vec4<bool>(arg_1.b.x, arg_2.c && true, !func_2(vec4<u32>(4294967295u, 0u, 4294967295u, 65347u)).a.c, arg_1.b.x), !arg_1.b), arg_2, 11044u);
    global1 = array<u32, 23>();
    var_0 = arg_1;
    global1 = array<u32, 23>();
    let var_1 = arg_1;
    return Struct_3(arg_2, arg_2, var_0.a.b, _wgslsmith_f_op_vec4_f32(-arg_1.a.d), var_0.a.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!(firstTrailingBit(u_input.b) > 0u), Struct_4(func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), abs(vec3<i32>(36649i, -68844i, u_input.c)))), select(vec4<bool>(true, true, any(vec2<bool>(true, true)), true), vec4<bool>(-73971i >= u_input.c, true, true, false), true), Struct_1(496f, _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, u_input.b, 0u), vec3<u32>(4294967295u, 4294967295u, 19552u)), firstLeadingBit(vec3<u32>(0u, u_input.b, 8614u))), false), u_input.b), func_1(u_input.a.x).c);
    let var_1 = Struct_2(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(global1[_wgslsmith_index_u32(~27026u, 23u)], 1u), _wgslsmith_clamp_u32(45419u, firstTrailingBit(var_0.b.b ^ u_input.b), var_0.b.b), 26873u));
    let var_2 = ~(~4294967295u);
    let var_3 = func_5(!(!(true | (true == var_0.c.c))), Struct_4(var_0, vec4<bool>(false, (var_0.a.c != var_0.b.c) & true, !func_2(var_0.e).c.c, true), func_1(-max(u_input.c, u_input.a.x)).b, ~53322u), func_5(true, Struct_4(var_0, vec4<bool>(var_0.a.c, func_1(u_input.c).b.c, var_0.b.c, false && var_0.b.c), var_0.c, ~(var_2 >> (var_2 % 32u))), Struct_1(-762f, 65226u, var_0.a.c)).a).c;
    global0 = false;
    let var_4 = var_0.e;
    let var_5 = 1u;
    var var_6 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d * vec4<f32>(-1065f, -302f, 145f, var_0.d.x)) - var_0.d) + var_0.d))), vec4<f32>(703f, _wgslsmith_f_op_f32(-538f * -729f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a.a, -552f), _wgslsmith_f_op_f32(exp2(var_0.d.x)))))), -293f));
    let var_7 = _wgslsmith_mod_u32(0u, var_5);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_5(any(!vec4<bool>(true, false, true, var_0.b.c)), Struct_4(Struct_3(var_3, Struct_1(-582f, var_2, var_3.c), var_0.b, var_0.d, var_4), !vec4<bool>(var_3.c, false, false, var_0.b.c), Struct_1(var_0.d.x, 95907u, true), var_1.a & u_input.b), var_0.b).b.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.c.a, 1362f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1222f - -321f)))), var_4.zy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_6.x), _wgslsmith_f_op_f32(f32(-1f) * -277f))), select(max(vec4<i32>(u_input.a.x, firstLeadingBit(u_input.a.x), 8661i, u_input.c), -vec4<i32>(u_input.c, u_input.a.x, u_input.a.x, -49034i)), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(1i, u_input.a.x, u_input.c, 63124i)) & select(vec4<i32>(u_input.c, u_input.c, u_input.c, 15515i), vec4<i32>(u_input.a.x, u_input.a.x, 41268i, u_input.a.x), var_0.b.c), ~(~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.c))), func_3(~var_2 | ~u_input.b, Struct_4(func_2(var_4), !vec4<bool>(var_0.c.c, true, var_3.c, var_0.b.c), func_1(10526i).c, 0u), Struct_1(-338f, countOneBits(27937u), true))), ~_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, -11281i, u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, 5531i, 12945i), vec3<i32>(-2147483647i, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (~var_0.e.yxx % vec3<u32>(32u))));
}

