struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<u32>, 21>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    global1 = array<vec2<u32>, 21>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-571f, 692f)), _wgslsmith_f_op_f32(f32(-1f) * -2143f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1316f, -1277f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2436f, -939f, -1184f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-676f, 1393f, 274f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1531f)), 1971f, -234f))));
    global0 = Struct_3(vec3<bool>(var_0.x == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_div_f32(var_0.x, var_0.x)) == var_0.x, global0.a.x), u_input.a, Struct_2(arg_1.a), vec2<i32>(_wgslsmith_add_i32(-_wgslsmith_mod_i32(global0.d.x, -18177i), _wgslsmith_mod_i32(global0.b >> (arg_2.a.x % 32u), _wgslsmith_mult_i32(arg_1.a.x, arg_2.d.x))), ~global0.c.a.x), global0.c);
    global0 = Struct_3(!(!vec3<bool>(any(arg_3), false, true)), -arg_2.d.x, global0.c, global0.d, global0.c);
    var var_1 = global0.e;
    return select(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2.c, 1u, u_input.c) & vec3<u32>(1u, 1u, 1u), select(arg_2.a, arg_2.a, vec3<bool>(arg_2.b.x, arg_3.x, true))), _wgslsmith_dot_vec4_u32(~reverseBits(max(vec4<u32>(105274u, u_input.c, 1u, arg_2.a.x), vec4<u32>(u_input.c, 0u, 0u, 1u))), _wgslsmith_add_vec4_u32(~max(vec4<u32>(1u, arg_0.x, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, 25155u, 74593u)), vec4<u32>(23321u, 53425u, min(arg_0.x, 21169u), 53967u))), arg_2.a.x <= 61939u);
}

fn func_4(arg_0: vec4<u32>) -> vec3<u32> {
    let var_0 = select(select(select(select(vec4<bool>(false, false, true, false), !vec4<bool>(false, false, false, global0.a.x), !global0.a.x), vec4<bool>(false, all(vec3<bool>(false, global0.a.x, global0.a.x)), arg_0.x < u_input.c, any(vec3<bool>(false, true, false))), !vec4<bool>(true, global0.a.x, global0.a.x, false)), select(select(!vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x), !vec4<bool>(true, false, true, global0.a.x), global0.a.x), vec4<bool>(true, true, true, true), true), vec4<bool>(global0.a.x, !(2147483647i < u_input.a), all(select(vec4<bool>(global0.a.x, false, false, global0.a.x), vec4<bool>(true, false, global0.a.x, false), vec4<bool>(true, global0.a.x, false, true))), global0.a.x)), select(!(!(!vec4<bool>(true, true, false, global0.a.x))), select(select(!vec4<bool>(global0.a.x, true, false, global0.a.x), !vec4<bool>(global0.a.x, false, false, false), true), !select(vec4<bool>(true, global0.a.x, global0.a.x, false), vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), global0.a.x), true), select(!(!global0.a.x), any(select(vec3<bool>(false, true, true), global0.a, global0.a.x)), global0.a.x)), false);
    return abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~21428u, 1u), u_input.c, max(countOneBits(35925u), _wgslsmith_mult_u32(u_input.c, arg_0.x))), ~arg_0.www, vec3<u32>(4294967295u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, u_input.c), vec2<u32>(u_input.c, u_input.c)), firstTrailingBit(4294967295u)), select(func_3(vec2<u32>(1u, 21929u), Struct_2(global0.d), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec4<bool>(true, global0.a.x, true, true), 0u, u_input.b), var_0.yzz), u_input.c, true))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32((~vec3<u32>(4294967295u, 1929u, 45684u) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 282u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 735u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c))) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_u32(select(vec3<u32>(86326u, u_input.c, u_input.c), _wgslsmith_sub_vec3_u32(vec3<u32>(31676u, u_input.c, u_input.c), vec3<u32>(90600u, 4294967295u, 55670u)), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(u_input.c, 4107u, u_input.c), vec3<u32>(u_input.c, u_input.c, 0u)), ~vec3<u32>(u_input.c, u_input.c, 24216u))), select(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, 49840u, 18585u), abs(vec3<u32>(16740u, u_input.c, 1u))), ~(~vec3<u32>(u_input.c, u_input.c, u_input.c)), vec3<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(71745u, 0u, u_input.c, 1u), vec4<u32>(u_input.c, u_input.c, 63263u, 1177u)) != 1u, global0.a.x, true)));
    let var_1 = Struct_2(vec2<i32>(global0.d.x, -40321i) ^ global0.c.a);
    let var_2 = Struct_1(abs(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0, u_input.c, 41498u), countOneBits(vec3<u32>(var_0, 4294967295u, u_input.c)))), !select(!(!vec4<bool>(global0.a.x, true, global0.a.x, true)), select(vec4<bool>(global0.a.x, true, false, global0.a.x), vec4<bool>(global0.a.x, true, false, global0.a.x), true), any(vec4<bool>(false, global0.a.x, true, true))), ~u_input.c, ~firstTrailingBit(vec2<i32>(-global0.e.a.x, -43265i)));
    let var_3 = func_4(~vec4<u32>(_wgslsmith_add_u32(func_3(var_2.a.yz, var_1, var_2, global0.a), ~4294967295u), 1u, ~(~75449u), 4294967295u));
    global1 = array<vec2<u32>, 21>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-848f, 514f))))) + _wgslsmith_f_op_f32(trunc(1228f)));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = ~1u;
    let var_1 = select(select(global0.a.xx, vec2<bool>(global0.a.x, any(select(vec4<bool>(false, false, true, false), vec4<bool>(global0.a.x, true, true, true), true))), true & global0.a.x), global0.a.xy, all(!(!select(vec4<bool>(true, global0.a.x, true, false), vec4<bool>(false, false, global0.a.x, global0.a.x), false))));
    var var_2 = firstTrailingBit(-reverseBits(vec2<i32>(max(global0.d.x, arg_2.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(24644i, 2147483647i, -1i), vec3<i32>(arg_2.a.x, global0.c.a.x, global0.b)))));
    let var_3 = _wgslsmith_f_op_f32(-arg_1);
    global1 = array<vec2<u32>, 21>();
    return Struct_3(!select(select(vec3<bool>(true, true, true), vec3<bool>(global0.a.x, var_1.x, var_1.x), !global0.a), global0.a, all(global0.a) != (arg_1 <= -1000f)), reverseBits(arg_2.a.x | var_2.x), Struct_2(global0.c.a), global0.c.a, Struct_2(arg_2.a));
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> Struct_4 {
    global1 = array<vec2<u32>, 21>();
    var var_0 = ~u_input.c;
    let var_1 = vec2<bool>(all(global0.a), global0.a.x);
    let var_2 = ~(~_wgslsmith_sub_i32(func_5(Struct_4(vec4<u32>(22843u, 1u, u_input.c, u_input.c)), -111f, arg_1.e).c.a.x, ~0i)) << ((1u | countOneBits(u_input.c)) % 32u);
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(391f, 1279f) * vec2<f32>(738f, 659f)), vec2<f32>(1422f, 1405f), true))))))));
    return Struct_4(vec4<u32>(abs(39182u), _wgslsmith_sub_u32(u_input.c, abs(~u_input.c)), u_input.c, u_input.c));
}

fn func_1() -> vec2<u32> {
    var var_0 = func_6(-global0.e.a, func_5(Struct_4(~vec4<u32>(u_input.c, u_input.c, 68959u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(min(572f, -1597f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(711f, -1547f, true)) - 173f)), global0.c), func_5(Struct_4(vec4<u32>(u_input.c, 6362u, reverseBits(53711u), ~u_input.c)), 1f, Struct_2(u_input.b)).c, -2147483647i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1148f * -1000f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1364f - _wgslsmith_f_op_f32(f32(-1f) * -387f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - -1096f)));
    var var_2 = !(!vec3<bool>(!all(global0.a), global0.a.x, (false == global0.a.x) | true));
    global0 = func_5(func_6(vec2<i32>(i32(-1i) * -28183i, ~(global0.e.a.x >> (1u % 32u))), Struct_3(!global0.a, global0.d.x, func_5(func_6(u_input.b, Struct_3(vec3<bool>(false, false, global0.a.x), -2812i, Struct_2(u_input.b), vec2<i32>(-47473i, -2147483647i), Struct_2(u_input.b)), Struct_2(u_input.b), -31974i), -2364f, global0.c).e, vec2<i32>(37369i, global0.b) & u_input.b, func_5(Struct_4(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), 700f, global0.c).e), global0.c, 29040i), -798f, Struct_2(firstTrailingBit(vec2<i32>(firstTrailingBit(12120i), 1i))));
    let var_3 = Struct_3(vec3<bool>(all(select(func_5(Struct_4(var_0.a), 764f, global0.c).a.yx, func_5(Struct_4(vec4<u32>(u_input.c, var_0.a.x, u_input.c, 65054u)), 1026f, global0.e).a.xz, global0.a.zx)), 756f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2()))), false), -(~(-global0.c.a.x)), global0.e, ~_wgslsmith_mult_vec2_i32(vec2<i32>(-2932i, ~u_input.b.x), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(global0.c.a.x, global0.e.a.x)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, 15511i), vec2<i32>(u_input.b.x, 1i)))), func_5(func_6(select(global0.c.a & vec2<i32>(0i, u_input.b.x), global0.c.a | vec2<i32>(global0.b, global0.b), true), func_5(func_6(vec2<i32>(global0.d.x, u_input.b.x), Struct_3(global0.a, 4819i, global0.e, vec2<i32>(2147483647i, -49366i), Struct_2(u_input.b)), global0.c, global0.b), _wgslsmith_f_op_f32(-1000f * 640f), global0.c), func_5(func_6(vec2<i32>(global0.c.a.x, 297i), Struct_3(global0.a, -554i, Struct_2(global0.d), vec2<i32>(-4410i, 2147483647i), global0.c), Struct_2(global0.e.a), -65666i), _wgslsmith_f_op_f32(abs(-1804f)), global0.e).e, ~u_input.b.x | -39289i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-332f * -1004f))), func_5(Struct_4(~var_0.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-470f * 263f))), func_5(func_6(global0.e.a, Struct_3(vec3<bool>(global0.a.x, false, var_2.x), global0.d.x, Struct_2(u_input.b), global0.e.a, Struct_2(global0.e.a)), Struct_2(vec2<i32>(2147483647i, 2147483647i)), u_input.b.x), -1532f, Struct_2(vec2<i32>(-15097i, u_input.b.x))).e).c).c);
    return vec2<u32>((var_0.a.x & (~24940u >> (firstLeadingBit(1u) % 32u))) ^ ~_wgslsmith_sub_u32(_wgslsmith_div_u32(53303u, u_input.c), _wgslsmith_div_u32(var_0.a.x, u_input.c)), 53522u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(global0.a, select(!vec3<bool>(false, global0.a.x, global0.a.x), vec3<bool>(false, true, global0.a.x), global0.a.x), false | any(global0.a))) == false;
    let var_1 = _wgslsmith_div_vec2_i32(min(select(firstTrailingBit(vec2<i32>(-1i, -1i)), u_input.b, global0.a.yx) & ~(-global0.e.a), vec2<i32>(1i, _wgslsmith_mult_i32(18651i, min(2147483647i, u_input.b.x)))), vec2<i32>(-1i, firstLeadingBit(_wgslsmith_add_i32(u_input.a >> (18909u % 32u), -1i))));
    let var_2 = 72464i;
    var var_3 = 0i << (1u % 32u);
    var var_4 = Struct_1(vec3<u32>(firstLeadingBit(~min(49368u, u_input.c)), u_input.c, ~(~_wgslsmith_sub_u32(u_input.c, 86730u))), vec4<bool>(false, any(select(select(global0.a.xx, vec2<bool>(var_0, true), global0.a.yx), global0.a.zy, !var_0)), var_0, true), 10484u, global0.e.a << (_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(u_input.c, 21u)], vec2<u32>(1u, 11784u)), vec2<u32>(41072u, u_input.c) >> (global1[_wgslsmith_index_u32(u_input.c, 21u)] % vec2<u32>(32u)), vec2<u32>(u_input.c, 43534u)), func_1()) % vec2<u32>(32u)));
    global1 = array<vec2<u32>, 21>();
    global0 = Struct_3(vec3<bool>(false, all(!vec4<bool>(global0.a.x, var_4.b.x, true, true)), true), 0i, Struct_2(~func_5(func_6(var_1, Struct_3(vec3<bool>(var_0, var_0, false), -17550i, global0.e, vec2<i32>(-67715i, 1i), global0.e), global0.e, global0.d.x), _wgslsmith_f_op_f32(-349f - -664f), func_5(Struct_4(vec4<u32>(1u, var_4.a.x, 1u, var_4.c)), -485f, global0.c).c).e.a), vec2<i32>(~(var_2 >> (~var_4.a.x % 32u)), var_1.x), global0.e);
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1434f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-616f - 1000f) + -637f), 587f) + vec3<f32>(_wgslsmith_f_op_f32(trunc(-1252f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1273f, 1369f)))), _wgslsmith_f_op_f32(min(-1029f, -761f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1034f - -211f)), _wgslsmith_div_u32(countOneBits(firstLeadingBit(var_4.a.x)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.c, u_input.c, var_4.c, 4294967295u)), ~(~vec4<u32>(17371u, 1u, 0u, 1u)))), _wgslsmith_sub_vec3_u32(firstTrailingBit(~var_4.a), ~vec3<u32>(~0u, abs(u_input.c), var_4.a.x)), _wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32((u_input.c & func_1().x) | var_4.c, 21u)], vec2<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(49769u, 55417u, 91512u, 4294967295u), vec4<u32>(var_4.c, var_4.c, 23306u, 4294967295u)), ~8019u, global0.a.x | true), 1u)));
}

