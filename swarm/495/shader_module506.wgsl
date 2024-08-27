struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<i32, 8>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global2: array<i32, 31> = array<i32, 31>(1i, -1i, 0i, 1i, -10374i, 2147483647i, 2147483647i, 34637i, -57150i, 0i, -51942i, 0i, -1616i, 23730i, -1i, 31887i, 94197i, -1i, -1i, 2147483647i, -19694i, 1i, -1i, -1i, -28706i, i32(-2147483648), -16316i, 2147483647i, 50787i, 1i, -21368i);

var<private> global3: array<vec4<bool>, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = Struct_2(arg_0.a, 409u, _wgslsmith_f_op_vec3_f32(floor(arg_0.c)), Struct_1(arg_0.d.a));
    global0 = array<i32, 8>();
    global2 = array<i32, 31>();
    global3 = array<vec4<bool>, 6>();
    let var_1 = arg_0.d;
    return reverseBits(max(vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(global2[_wgslsmith_index_u32(var_0.b, 31u)], global0[_wgslsmith_index_u32(var_0.a, 8u)], -2147483647i), ~vec3<i32>(7460i, global2[_wgslsmith_index_u32(19470u, 31u)], -2147483647i)), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(reverseBits(0u), 8u)], 1i), -2147483647i, -(54873i ^ u_input.a.x)), countOneBits(vec4<i32>(-global2[_wgslsmith_index_u32(1u, 31u)], -u_input.a.x, _wgslsmith_add_i32(2147483647i, global0[_wgslsmith_index_u32(arg_0.b, 8u)]), -u_input.a.x))));
}

fn func_2() -> u32 {
    var var_0 = min(_wgslsmith_mod_vec4_i32(reverseBits(-func_3(Struct_2(72637u, 1u, vec3<f32>(-649f, 304f, 185f), Struct_1(683f)))), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(90963u, 31u)], 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], u_input.a.x))) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 8u)], -12661i, 2147483647i), vec4<i32>(-17350i, u_input.a.x, global2[_wgslsmith_index_u32(41926u, 31u)], -1i))), vec4<i32>(58228i, -global0[_wgslsmith_index_u32(1u, 8u)], abs(0i), global2[_wgslsmith_index_u32(4294967295u, 31u)]) | reverseBits(~select(vec4<i32>(-1i, 29645i, 37654i, global2[_wgslsmith_index_u32(0u, 31u)]), vec4<i32>(-1i, global0[_wgslsmith_index_u32(39166u, 8u)], -35094i, 22666i), global1.x)));
    return ~14660u << (~_wgslsmith_clamp_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 16576u), vec4<u32>(4294967295u, 1u, 83210u, 4294967295u)), ~72668u & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 35114u), vec2<u32>(87623u, 43249u)), abs(~4294967295u)) % 32u);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -525f)))), -834f)));
    global0 = array<i32, 8>();
    let var_1 = -func_3(Struct_2(arg_0, ~arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(412f, 243f, var_0.a), vec3<f32>(var_0.a, var_0.a, -1067f), vec3<bool>(true, true, false))) - vec3<f32>(var_0.a, var_0.a, -414f)), Struct_1(_wgslsmith_f_op_f32(trunc(-3225f))))).xx;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f * 142f)), -1177f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a))), var_0.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(step(-120f, var_2.x)))), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + 762f)), 1000f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.x, var_0.a, var_0.a, -583f), vec4<f32>(884f, 1000f, 1924f, var_2.x)))), vec4<f32>(var_2.x, -1859f, 290f, -361f))))));
    return Struct_2(~_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0, arg_1.x), ~0u) & abs(max(arg_1.x & arg_1.x, 0u)), arg_0, var_2.zwy, Struct_1(var_0.a));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_3 {
    let var_0 = vec2<u32>(10178u, ~_wgslsmith_sub_u32(arg_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.b, 16464u), ~vec2<u32>(57856u, arg_2.c.b))));
    global0 = array<i32, 8>();
    let var_1 = abs(select(vec4<u32>(4294967295u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(71492u, 21568u, arg_2.e), vec3<u32>(arg_2.c.b, arg_0.a, 1u)), ~arg_0.b, 62998u, 1u), abs(vec4<u32>(25137u << (var_0.x % 32u), countOneBits(var_0.x), ~26161u, firstTrailingBit(5440u))), any(vec2<bool>(arg_2.b != arg_1.x, !arg_2.b))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(min(arg_2.c.d.a, 268f)));
    var var_3 = -2826f;
    return Struct_3(any(vec4<bool>(~(-1i) >= reverseBits(arg_2.d.x), global1.x, true, true)), any(!(!select(vec4<bool>(true, arg_1.x, arg_1.x, global1.x), global3[_wgslsmith_index_u32(arg_0.b, 6u)], global3[_wgslsmith_index_u32(40343u, 6u)]))), Struct_2(31883u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, var_1.x, var_1.x, arg_0.a), vec4<u32>(var_0.x, 115u, 4294967295u, 51022u))), func_4(~_wgslsmith_dot_vec4_u32(var_1, var_1), vec3<u32>(37563u, ~21018u, ~0u)).c, arg_2.c.d), vec3<i32>(2147483647i, u_input.a.x, _wgslsmith_div_i32(arg_2.d.x, countOneBits(28306i))), func_2());
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-104f, -1566f, -1404f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1321f, 596f, 1412f), vec3<f32>(1282f, -198f, -211f))))))));
    global0 = array<i32, 8>();
    global2 = array<i32, 31>();
    let var_1 = func_5(func_4(_wgslsmith_sub_u32(func_2(), ~_wgslsmith_div_u32(0u, 1u)), vec3<u32>(1u, 1u, 1u)), vec3<bool>(-1i >= global2[_wgslsmith_index_u32(max(~22202u, 7724u), 31u)], !any(!vec3<bool>(false, false, global1.x)), !global1.x), Struct_3(false, global1.x, Struct_2(reverseBits(firstLeadingBit(47469u)), ~4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-292f, -800f, var_0.x))), func_4(select(4294967295u, 96181u, global1.x), ~vec3<u32>(74703u, 1u, 21746u)).d), _wgslsmith_clamp_vec3_i32(vec3<i32>(8297i, i32(-1i) * -2147483647i, -1i), firstTrailingBit(vec3<i32>(1i, 1i, 1i)), select(vec3<i32>(global2[_wgslsmith_index_u32(1u, 31u)], u_input.a.x, 38357i), select(vec3<i32>(58974i, global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(57989u, 31u)]), vec3<i32>(-10784i, u_input.a.x, 3983i), global1.wyw), true)), max(_wgslsmith_div_u32(_wgslsmith_mod_u32(16614u, 1u), firstTrailingBit(2133u)), func_2())));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.x)), func_5(func_4(min(4294967295u, 9324u >> (0u % 32u)), vec3<u32>(4294967295u, 1u ^ var_1.c.a, func_5(var_1.c, vec3<bool>(var_1.a, false, true), var_1).c.a)), vec3<bool>(true, _wgslsmith_sub_i32(-13767i, global0[_wgslsmith_index_u32(var_1.c.b, 8u)]) == 1i, var_1.b), Struct_3(true, true, func_5(var_1.c, select(vec3<bool>(true, global1.x, global1.x), global1.zwy, false), func_5(var_1.c, global1.wyy, var_1)).c, var_1.d, 1u)).c.d.a, func_5(Struct_2(0u, 24674u, _wgslsmith_f_op_vec3_f32(min(var_1.c.c, var_1.c.c)), Struct_1(func_5(Struct_2(var_1.c.b, 1u, vec3<f32>(1275f, var_0.x, -754f), var_1.c.d), global1.wxz, var_1).c.d.a)), global1.wzz, var_1).c.c.x);
    return Struct_2(~var_1.c.a, var_1.e, vec3<f32>(func_4(firstLeadingBit(20615u), vec3<u32>(~4294967295u, var_1.e, 13791u)).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), var_1.c.c.x, true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), -1000f), func_4(var_1.c.a ^ firstTrailingBit(~30476u), vec3<u32>(~36984u, ~(~4626u), 4547u)).d);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = func_5(Struct_2(63917u, reverseBits(_wgslsmith_clamp_u32(1u, firstTrailingBit(4294967295u), abs(1u))), arg_0.c, Struct_1(433f)), !(!global1.wxy), Struct_3((1i | -global0[_wgslsmith_index_u32(arg_0.a, 8u)]) >= firstTrailingBit(1i), !(!global1.x & !global1.x), func_5(Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a, arg_0.b), vec2<u32>(arg_0.a, arg_0.a)), ~arg_0.b, vec3<f32>(arg_2.a, arg_0.c.x, arg_0.d.a), func_5(arg_0, global1.zwx, Struct_3(global1.x, global1.x, Struct_2(arg_0.b, arg_0.b, vec3<f32>(arg_2.a, -327f, arg_2.a), arg_2), vec3<i32>(arg_1, arg_1, -6814i), arg_0.b)).c.d), vec3<bool>(any(vec4<bool>(true, true, true, false)), global1.x, true), Struct_3(false, global1.x, arg_0, ~vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(48197u, 31u)], -1761i), _wgslsmith_add_u32(arg_0.a, 4294967295u))).c, vec3<i32>(arg_1, arg_1, _wgslsmith_add_i32(-11345i, 1i)), 4294967295u));
    global2 = array<i32, 31>();
    let var_1 = Struct_4(_wgslsmith_f_op_f32(round(-911f)));
    let var_2 = select(select(vec4<bool>(all(select(global1.zz, global1.yx, false)), func_5(arg_0, vec3<bool>(var_0.b, var_0.a, true), Struct_3(var_0.a, false, arg_0, var_0.d, arg_0.a)).b, any(vec2<bool>(global1.x, global1.x)), false && global1.x), select(vec4<bool>(var_0.b, true, true, global1.x && false), !(!vec4<bool>(global1.x, false, var_0.b, true)), !(1u > arg_0.a)), select(global3[_wgslsmith_index_u32(~0u ^ var_0.c.b, 6u)], global3[_wgslsmith_index_u32(~select(var_0.c.b, var_0.e, true), 6u)], var_0.a)), select(!vec4<bool>(true, global1.x, true, false), !vec4<bool>(var_0.b, true, func_5(var_0.c, global1.zxw, Struct_3(global1.x, true, var_0.c, vec3<i32>(arg_1, 2147483647i, -50293i), 4294967295u)).a, !global1.x), !(u_input.a.x >= arg_1) || all(select(global1.wx, vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false)))), select(select(select(global3[_wgslsmith_index_u32(~0u, 6u)], global3[_wgslsmith_index_u32(var_0.e, 6u)], !var_0.a), !(!global3[_wgslsmith_index_u32(62941u, 6u)]), !(!var_0.a)), !vec4<bool>(func_5(var_0.c, global1.xxw, Struct_3(false, false, Struct_2(arg_0.b, 0u, vec3<f32>(var_0.c.d.a, -430f, 564f), var_0.c.d), var_0.d, 1u)).b, global1.x && false, var_0.b, global1.x), true));
    var var_3 = global2[_wgslsmith_index_u32(arg_0.a, 31u)] != _wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 31u)] & (i32(-1i) * -global0[_wgslsmith_index_u32(var_0.c.a, 8u)]), _wgslsmith_dot_vec3_i32(func_5(Struct_2(48762u, 1u, arg_0.c, Struct_1(arg_0.d.a)), select(global1.wxw, var_2.xzx, global1.xyw), func_5(var_0.c, global1.yzy, Struct_3(var_2.x, true, Struct_2(1u, var_0.c.b, vec3<f32>(-1062f, -711f, -792f), Struct_1(-652f)), vec3<i32>(65995i, var_0.d.x, 1i), 0u))).d, -var_0.d));
    return func_5(Struct_2(1915u << (~(~1u) % 32u), 9307u, _wgslsmith_f_op_vec3_f32(-var_0.c.c), func_5(arg_0, vec3<bool>(true, var_0.b, true), func_5(func_4(var_0.c.a, vec3<u32>(42549u, 28044u, arg_0.a)), select(var_2.xzx, global1.wyx, true), Struct_3(var_0.b, true, var_0.c, vec3<i32>(1910i, global2[_wgslsmith_index_u32(arg_0.a, 31u)], 20263i), var_0.c.a))).c.d), vec3<bool>(true, var_0.a, var_0.b), func_5(arg_0, var_2.yzx, Struct_3(!global1.x, select(var_2.x, 4294967295u < arg_0.b, select(true, var_2.x, var_0.b)), Struct_2(~arg_0.a, arg_0.a << (arg_0.b % 32u), func_5(arg_0, var_2.zxw, Struct_3(true, true, var_0.c, var_0.d, 1u)).c.c, func_5(Struct_2(var_0.c.b, 1u, vec3<f32>(var_0.c.c.x, arg_0.d.a, 1151f), Struct_1(-126f)), var_2.wyy, Struct_3(global1.x, var_0.b, arg_0, var_0.d, 1u)).c.d), -min(var_0.d, var_0.d), arg_0.a >> (~32647u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = func_6(func_1(), -2147483647i, Struct_1(_wgslsmith_f_op_f32(floor(func_1().c.x))));
    var_0 = countOneBits(_wgslsmith_mod_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e, var_1.e), vec2<u32>(26392u, 4294967295u)), _wgslsmith_mod_u32(var_1.c.b, 104721u)), var_1.e));
    global2 = array<i32, 31>();
    let var_2 = 0i;
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c.b, 4798u, 41805u, var_1.c.a), vec4<u32>(1u, 0u, var_1.e, 0u))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(33467u, 20731u), vec2<u32>(41523u, var_1.c.b)), _wgslsmith_add_u32(~14064u, 0u), ~func_5(var_1.c, global1.zxz, Struct_3(var_1.a, global1.x, Struct_2(var_1.e, 60854u, var_1.c.c, Struct_1(var_1.c.d.a)), vec3<i32>(6423i, var_2, 1i), var_1.e)).e, var_1.e)), ~1u), 6u)];
    let var_3 = var_1.d;
    global0 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-372f);
}

