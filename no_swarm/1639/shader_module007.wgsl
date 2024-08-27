struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, false, false, false, false, false, false);

var<private> global2: vec3<bool>;

var<private> global3: array<vec2<u32>, 1>;

var<private> global4: array<Struct_2, 30>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: f32) -> vec2<bool> {
    global3 = array<vec2<u32>, 1>();
    return !(!global2.xy);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> i32 {
    global4 = array<Struct_2, 30>();
    global4 = array<Struct_2, 30>();
    var var_0 = global2.yx;
    let var_1 = arg_1;
    var var_2 = ~0i >> (_wgslsmith_sub_u32(u_input.b, 1u) % 32u);
    return abs(_wgslsmith_clamp_i32(-(~0i), ~reverseBits(11505i), _wgslsmith_add_i32(_wgslsmith_add_i32(abs(32422i), _wgslsmith_add_i32(-26545i, -45826i)), abs(i32(-1i) * -54637i))));
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = arg_0.a.x;
    let var_1 = Struct_4(_wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(90342i, 10999i)) & 1i, _wgslsmith_div_i32(func_4(func_3(vec4<f32>(-1368f, arg_0.a.x, arg_0.a.x, 1431f), 22799i, arg_0.a.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(687f, arg_0.a.x, arg_0.a.x), vec3<f32>(-118f, arg_0.a.x, arg_0.a.x))), vec4<f32>(-274f, arg_0.a.x, arg_0.a.x, arg_0.a.x)), max(~18029i, -2147483647i))), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(40852u, 0u, 65916u), ~vec3<u32>(41107u, u_input.b, arg_0.c.x) & select(u_input.a, u_input.a, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true, true))), 30u)]);
    var var_2 = all(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x) + _wgslsmith_f_op_f32(-var_1.b.a.x)) > 1000f, global2.x, !var_1.b.d.c, all(select(select(vec3<bool>(var_1.b.d.c, global1[_wgslsmith_index_u32(4294967295u, 8u)], var_1.b.d.c), vec3<bool>(global2.x, global1[_wgslsmith_index_u32(0u, 8u)], true), true), !vec3<bool>(var_1.b.d.c, global1[_wgslsmith_index_u32(25537u, 8u)], false), false))));
    let var_3 = select(_wgslsmith_dot_vec2_i32(var_1.b.d.e, var_1.b.d.e), min(_wgslsmith_mult_i32(var_1.b.d.e.x, var_1.a), var_1.a & abs(-2147483647i)), !(global2.x && (var_1.b.b || global1[_wgslsmith_index_u32(0u, 8u)]))) | -6810i;
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(var_1.b.a.zzz)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.d.a.x, var_1.b.a.x, 193f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(175f, arg_0.a.x, arg_0.a.x), var_1.b.c.wyx)))))), arg_0.a.x, global2.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(min(-269f, arg_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(381f, arg_0.a.x)) + var_1.b.a.x), var_1.b.d.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_1.b.d.d.x))))), -var_1.b.d.e);
    return ~1u << (arg_0.c.x % 32u);
}

fn func_5(arg_0: vec2<bool>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -1643f, arg_3.a.x, arg_3.a.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-597f, arg_3.a.x, arg_3.a.x, 233f))))), global2.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), -890f, _wgslsmith_f_op_f32(step(1000f, -146f)), -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, -260f) + vec4<f32>(arg_3.a.x, arg_3.a.x, arg_3.a.x, arg_3.a.x))))), Struct_1(vec3<f32>(_wgslsmith_div_f32(arg_3.a.x, 291f), _wgslsmith_f_op_f32(-arg_3.a.x), 194f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(530f + arg_3.a.x) + 714f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(131f * -557f))), global2.x | select(!arg_0.x, true, any(vec3<bool>(arg_0.x, true, true))), vec4<f32>(arg_3.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(243f + arg_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(852f * -912f)), arg_3.a.x), vec2<i32>(select(_wgslsmith_div_i32(arg_2, arg_2), arg_2, arg_2 >= arg_2), countOneBits(countOneBits(arg_2)))), -1000f);
    global2 = select(vec3<bool>(var_0.d.c, global2.x, all(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1, 8u)], true, false), vec4<bool>(arg_0.x, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], false), true), vec4<bool>(arg_0.x, var_0.d.c, arg_0.x, global1[_wgslsmith_index_u32(1u, 8u)]), !vec4<bool>(false, var_0.d.c, true, true)))), select(select(!(!vec3<bool>(global2.x, false, arg_0.x)), select(!vec3<bool>(var_0.b, arg_0.x, global2.x), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], var_0.b, false), func_3(var_0.c, 2147483647i, var_0.c.x).x), global1[_wgslsmith_index_u32(~countOneBits(arg_1), 8u)]), select(!(!vec3<bool>(arg_0.x, global1[_wgslsmith_index_u32(arg_3.b, 8u)], false)), select(vec3<bool>(arg_0.x, false, true), !vec3<bool>(global2.x, var_0.b, arg_0.x), select(vec3<bool>(true, true, var_0.d.c), vec3<bool>(true, global2.x, arg_0.x), global1[_wgslsmith_index_u32(33211u, 8u)])), vec3<bool>(false, var_0.b | global2.x, arg_1 <= 42770u)), vec3<bool>(true, (arg_2 >> (arg_1 % 32u)) >= select(arg_2, var_0.d.e.x, global1[_wgslsmith_index_u32(arg_3.b, 8u)]), arg_0.x)), vec3<bool>(all(!select(vec3<bool>(false, var_0.b, true), vec3<bool>(true, var_0.d.c, global2.x), global2.x)), any(vec4<bool>(true, false, any(vec2<bool>(false, false)), true)), global2.x));
    global0 = -(arg_2 & 0i) << (17381u % 32u);
    var var_1 = vec4<u32>(21357u, 4294967295u, _wgslsmith_dot_vec2_u32(min(select(global3[_wgslsmith_index_u32(arg_1, 1u)], select(u_input.a.yx, vec2<u32>(u_input.b, u_input.b), var_0.d.c), true), vec2<u32>(~4294967295u, reverseBits(u_input.b))), _wgslsmith_div_vec2_u32(u_input.a.yy, u_input.a.yz >> (_wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(arg_3.c.x, 1u)]) % vec2<u32>(32u)))), abs(arg_1));
    let var_2 = !select(select(vec3<bool>(any(vec4<bool>(global2.x, true, true, global2.x)), select(global1[_wgslsmith_index_u32(arg_3.b, 8u)], false, global2.x), arg_0.x), vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true, var_0.d.c)), arg_0.x, all(vec3<bool>(var_0.b, arg_0.x, true))), true == !global2.x), vec3<bool>(!arg_0.x == true, true, all(vec4<bool>(arg_0.x, var_0.b, arg_0.x, global2.x))), arg_0.x);
    return var_0.d;
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<i32>) -> u32 {
    let var_0 = select(countOneBits(~(-arg_2.b.d.e ^ vec2<i32>(19737i, arg_3.x))), vec2<i32>(2147483647i, 1i), global2.xz);
    global4 = array<Struct_2, 30>();
    let var_1 = ~7899u << (~arg_0 % 32u);
    var var_2 = ~(~vec2<u32>(~(~u_input.b), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 1u, var_1, var_1), vec4<u32>(33534u, arg_0, 39257u, arg_0))));
    let var_3 = arg_2;
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> f32 {
    let var_0 = func_6(firstTrailingBit(_wgslsmith_dot_vec4_u32(arg_0.c, select(select(vec4<u32>(1u, arg_0.b, 72699u, u_input.b), arg_0.c, false), select(vec4<u32>(arg_0.c.x, arg_1.c.x, u_input.b, arg_0.b), vec4<u32>(14606u, u_input.b, arg_1.b, arg_1.c.x), false), vec4<bool>(true, true, global2.x, false)))), global4[_wgslsmith_index_u32(arg_0.c.x, 30u)], Struct_4(~23316i, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(862f, arg_0.a.x, 699f, arg_1.a.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 699f, arg_1.a.x, -1752f))), true, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-892f, arg_0.a.x, 361f, 1621f), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(689f, arg_1.a.x, arg_1.a.x, arg_1.a.x))))), func_5(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_0.c.x, 8u)]), func_2(Struct_3(vec2<f32>(-362f, arg_0.a.x), arg_1.c.x, vec4<u32>(arg_0.b, arg_0.b, u_input.a.x, u_input.b))), ~48700i, arg_0), -1000f)), -(~_wgslsmith_div_vec2_i32(max(vec2<i32>(-36960i, 1i), vec2<i32>(2147483647i, -2147483647i)), vec2<i32>(1i, 1i))));
    let var_1 = Struct_4(_wgslsmith_clamp_i32(_wgslsmith_add_i32(8551i, -17272i), -func_5(!global2.zz, 14642u, select(2147483647i, 18792i, false), arg_0).e.x, func_4(select(global2.zx, select(vec2<bool>(global2.x, false), global2.xy, global1[_wgslsmith_index_u32(arg_0.b, 8u)]), !global1[_wgslsmith_index_u32(4294967295u, 8u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a.x, -1566f, -576f), vec3<f32>(1662f, arg_0.a.x, 740f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.a.x, 556f, -1310f, 884f))), vec4<f32>(arg_0.a.x, arg_0.a.x, 1314f, arg_1.a.x))))), Struct_2(vec4<f32>(arg_0.a.x, 1109f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-762f)) + -929f), arg_1.a.x), all(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), -1321f, _wgslsmith_f_op_f32(-932f - 812f))), func_5(vec2<bool>(true && global2.x, false & global2.x), firstLeadingBit(var_0 & var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(41977i, 1302i, -20055i), vec3<i32>(-111621i, -21722i, -27326i)) >> ((var_0 << (u_input.a.x % 32u)) % 32u), arg_0), -1429f));
    let var_2 = var_0;
    var var_3 = 2147483647i >= var_1.a;
    let var_4 = Struct_4(-42782i, Struct_2(vec4<f32>(func_5(global2.zz, ~0u, -2147483647i, Struct_3(arg_1.a, 0u, vec4<u32>(u_input.a.x, arg_0.c.x, var_2, var_0))).b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.d.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.d.d.x))), 1964f), !global2.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_1.b.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.c.x, -615f, var_1.b.d.d.x, arg_0.a.x))))), func_5(select(func_3(var_1.b.d.d, -5697i, var_1.b.e), func_3(var_1.b.a, var_1.a, 244f), all(vec3<bool>(var_1.b.d.c, true, true))), 1u, 15374i, Struct_3(_wgslsmith_f_op_vec2_f32(abs(var_1.b.d.a.zz)), ~3937u, arg_1.c)), _wgslsmith_f_op_f32(floor(var_1.b.e))));
    return 112f;
}

fn func_7(arg_0: i32, arg_1: bool, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(-arg_2), -119f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(func_5(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 8u)]), u_input.a.x, 33344i, Struct_3(vec2<f32>(-1940f, arg_2), u_input.a.x, vec4<u32>(4294967295u, u_input.b, 24556u, u_input.a.x))).a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-513f, 1000f, 482f))))), arg_2, true | arg_1, vec4<f32>(arg_2, -318f, arg_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2, 2195f, func_5(global2.xz, u_input.a.x, arg_0, Struct_3(vec2<f32>(465f, 864f), u_input.a.x, vec4<u32>(18938u, u_input.a.x, 32701u, 45597u))).c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2)) * _wgslsmith_f_op_f32(-arg_2))))), vec2<i32>(0i, 2147483647i));
    global3 = array<vec2<u32>, 1>();
    let var_1 = !func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.b, var_0.d.x, var_0.b, var_0.d.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(-var_0.d)), vec4<bool>(var_0.c, global2.x, any(vec2<bool>(global1[_wgslsmith_index_u32(28478u, 8u)], global1[_wgslsmith_index_u32(4294967295u, 8u)])), any(vec2<bool>(true, global2.x))))), _wgslsmith_div_i32(arg_0, var_0.e.x), 1084f).x;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 637f, 826f, arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.d, vec4<f32>(var_0.b, var_0.b, var_0.a.x, -863f)))), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1886f, arg_2, global1[_wgslsmith_index_u32(7212u, 8u)])))) * arg_2) <= 227f, vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(select(-622f, arg_2, var_0.c)))), _wgslsmith_f_op_f32(floor(arg_2)), 243f, 402f), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.a, vec3<f32>(var_0.d.x, arg_2, arg_2))))), arg_2, var_1 && (37394i >= arg_0), var_0.d, -_wgslsmith_mult_vec2_i32(var_0.e, var_0.e) & (vec2<i32>(2147483647i, var_0.e.x) >> (~vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))), var_0.a.x);
    global1 = array<bool, 8>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(min(var_0.a.yz, var_0.d.yy)), 42963u, vec4<u32>(u_input.a.x, u_input.b, 9806u, u_input.a.x & _wgslsmith_sub_u32(func_2(Struct_3(vec2<f32>(var_0.a.x, 1460f), 4294967295u, vec4<u32>(4294967295u, u_input.b, 28171u, u_input.a.x))), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_7(_wgslsmith_mult_i32(-20562i, 18399i), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2099f, 780f) * _wgslsmith_f_op_f32(func_1(Struct_3(vec2<f32>(893f, 620f), 16222u, vec4<u32>(u_input.b, 1u, u_input.b, u_input.a.x)), Struct_3(vec2<f32>(1196f, -1125f), u_input.a.x, vec4<u32>(70174u, 3579u, var_0.x, 4294967295u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1100f))))))));
    let var_2 = 26624u;
    global4 = array<Struct_2, 30>();
    global2 = select(vec3<bool>(select(503f < var_1.a.x, true, true), !global2.x, (~83055u >> (u_input.b % 32u)) > var_0.x), vec3<bool>(global2.x, select(true, global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 8u)], true) != true, true), select(!vec3<bool>(false, global2.x, all(vec3<bool>(true, true, false))), vec3<bool>(true, any(global2.xz) | all(vec3<bool>(global1[_wgslsmith_index_u32(var_1.c.x, 8u)], true, global2.x)), true), true));
    let var_3 = abs(-66898i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, var_0.xz, -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + -388f)))));
}

