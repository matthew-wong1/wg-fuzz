struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(-35777i, 10628i), 601f, vec4<f32>(1071f, -641f, -322f, 370f)), Struct_1(vec2<i32>(1i, 0i), -415f, vec4<f32>(1202f, 182f, -2117f, 1272f)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(global3[_wgslsmith_index_u32(u_input.b, 2u)], _wgslsmith_div_f32(-757f, -1253f) < _wgslsmith_f_op_f32(trunc(global1.c.x)), vec2<bool>(all(vec2<bool>(false, u_input.b > u_input.a.x)), true), abs(~(~24425u)));
    global3 = array<Struct_1, 2>();
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(min(5080u, 1u), 2u)], !var_0.c.x, var_0.c, _wgslsmith_mult_u32(9143u, 67462u << (u_input.a.x % 32u)));
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.d, 0u, 55329u), ~vec3<u32>(0u, 1u, var_1.d)), vec3<u32>(var_0.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_1.d), u_input.a), ~0u)), select(~vec3<u32>(4294967295u, var_1.d, var_0.d), vec3<u32>(var_0.d, ~0u, _wgslsmith_mod_u32(21278u, u_input.c)), !(!vec3<bool>(false, var_0.b, false)))), ~(~reverseBits(vec3<u32>(u_input.b, 4294967295u, var_1.d))));
    var var_3 = Struct_2(Struct_1(vec2<i32>(global0.a.x, reverseBits(abs(-15851i))), _wgslsmith_div_f32(-941f, _wgslsmith_f_op_f32(trunc(global1.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1067f, -1932f, -1005f, _wgslsmith_f_op_f32(max(var_0.a.b, global1.c.x))))), any(select(!vec4<bool>(var_1.c.x, true, true, var_1.b), vec4<bool>(!var_0.c.x, true, !var_0.c.x, var_0.c.x), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, var_1.c.x, true), all(var_1.c)))), vec2<bool>(false, false), _wgslsmith_mult_u32(~var_1.d, select(var_0.d, u_input.a.x >> (max(5046u, 0u) % 32u), var_0.c.x)));
    return _wgslsmith_f_op_f32(var_0.a.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(sign(var_1.a.c.x))))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = global1.c.wyz;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), -546f)), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x)))));
    let var_1 = 32212u ^ ~_wgslsmith_div_u32(arg_1.d, arg_0);
    let var_2 = ~(vec2<u32>(arg_0, ~arg_0) | u_input.a);
    global0 = Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_1.a.a.x, arg_1.a.a.x), vec2<i32>(1i, 2147483647i) << (u_input.a % vec2<u32>(32u))) ^ vec2<i32>(arg_1.a.a.x, global1.a.x | -1i), countOneBits(_wgslsmith_add_vec2_i32(global0.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a.x, arg_1.a.a.x), vec2<i32>(-23937i, 1i), global1.a)))), _wgslsmith_f_op_f32(max(global0.b, var_0.x)), _wgslsmith_f_op_vec4_f32(select(arg_1.a.c, vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.b)), _wgslsmith_f_op_f32(sign(var_0.x))), 751f, -1074f), vec4<bool>(arg_1.c.x, false, true, arg_1.b))));
    return _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -(~_wgslsmith_div_vec4_i32(vec4<i32>(arg_1.a.a.x, 28513i, 2147483647i, -8849i), vec4<i32>(-1i, global1.a.x, arg_1.a.a.x, global0.a.x))), -vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(global1.a.x, -9711i)), ~(~global1.a.x), countOneBits(~global1.a.x), ~firstLeadingBit(34217i)), vec4<i32>(abs(_wgslsmith_mod_i32(-22082i, arg_1.a.a.x)), -1i, ~40568i, min(global1.a.x, arg_1.a.a.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: f32, arg_3: vec3<u32>) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 52659u, u_input.c, u_input.c), vec4<u32>(arg_3.x, arg_3.x, 4294967295u, arg_3.x)), countOneBits(vec4<u32>(u_input.a.x, arg_3.x, arg_3.x, 4294967295u))), vec4<u32>(5549u, ~4294967295u, select(39515u, arg_3.x, arg_1), _wgslsmith_sub_u32(1u, 1u))) | ~(~vec4<u32>(1u, 30143u, 0u, 39904u)), vec4<u32>(~(~108942u), countOneBits(~arg_3.x), ~20202u, arg_3.x) << ((_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.b, u_input.b, 33210u) >> (vec4<u32>(arg_3.x, 18720u, 0u, arg_3.x) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, arg_3.x, u_input.a.x, arg_3.x) ^ vec4<u32>(5828u, u_input.a.x, arg_3.x, u_input.b)) >> (firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.c, u_input.b, 1u, arg_3.x))) % vec4<u32>(32u))) % vec4<u32>(32u))), 2u)];
    let var_1 = arg_3.yy;
    var var_2 = Struct_2(Struct_1(~min(~vec2<i32>(var_0.a.x, arg_0.x), abs(vec2<i32>(global1.a.x, 8324i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1770f, arg_2)) * global0.c.x), _wgslsmith_f_op_vec4_f32(ceil(global1.c))), all(select(!(!vec4<bool>(false, arg_1, true, true)), vec4<bool>(all(vec4<bool>(true, arg_1, true, true)), arg_1, true, true), !arg_1)), !(!vec2<bool>(true, select(true, arg_1, arg_1))), 25294u);
    global3 = array<Struct_1, 2>();
    var_2 = Struct_2(Struct_1(select(-vec2<i32>(-2075i, 7515i), vec2<i32>(countOneBits(var_0.a.x), arg_0.x), var_2.c), -1416f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, 1230f, global1.b, var_2.a.b) + vec4<f32>(arg_2, global0.b, 467f, 558f)) + vec4<f32>(var_2.a.b, -1185f, var_2.a.c.x, var_0.b))))), true, vec2<bool>(arg_1, var_2.b), 1u);
    return arg_1;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -global0.a, ~_wgslsmith_add_vec2_i32(arg_2.a.a, global0.a))) == -39053i;
    var var_1 = Struct_2(Struct_1(vec2<i32>(9213i, 20251i), _wgslsmith_f_op_f32(475f + -288f), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x * 302f), arg_1.x, arg_2.c.x && arg_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-992f)) + _wgslsmith_f_op_f32(-global0.c.x)), -916f, -2069f)), true, select(arg_3, select(vec2<bool>(any(vec2<bool>(arg_2.b, false)), true), select(!vec2<bool>(arg_2.b, false), select(vec2<bool>(true, true), vec2<bool>(true, false), arg_2.c), vec2<bool>(false, var_0)), true), arg_2.b), arg_2.d);
    global1 = Struct_1(vec2<i32>(-global0.a.x, arg_0.x), _wgslsmith_f_op_f32(-arg_2.a.b), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + global1.b) * 327f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.a.c.x, global0.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(312f)) + arg_2.a.c.x)))));
    global3 = array<Struct_1, 2>();
    global3 = array<Struct_1, 2>();
    return Struct_2(Struct_1(~vec2<i32>(-26i, 25533i), 646f, arg_2.a.c), arg_2.b, arg_3, ~max(68616u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.d, arg_2.d), vec3<u32>(22584u, var_1.d, arg_2.d))) ^ _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, var_1.d, 6391u), vec4<u32>(0u, 4294967295u, arg_2.d, u_input.c)), ~vec4<u32>(arg_2.d, arg_2.d, arg_2.d, 9644u)), arg_2.d));
}

fn func_1() -> Struct_2 {
    let var_0 = func_5(abs(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(global1.a.x, 0i, global0.a.x, global1.a.x), vec4<i32>(global0.a.x, global0.a.x, global0.a.x, global1.a.x)) >> (~vec4<u32>(0u, 4294967295u, u_input.c, 120710u) % vec4<u32>(32u)), vec4<i32>(global1.a.x, global1.a.x, global1.a.x, firstTrailingBit(-14052i)), reverseBits(~vec4<i32>(global1.a.x, global0.a.x, -21147i, -12634i)))), global0.c, Struct_2(Struct_1(vec2<i32>(global0.a.x, _wgslsmith_add_i32(global0.a.x, global1.a.x)), global1.c.x, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c.x, -726f, global0.c.x, global1.b)))), func_4(_wgslsmith_mod_vec4_i32(func_2(u_input.a.x, Struct_2(Struct_1(global0.a, 416f, global0.c), true, vec2<bool>(false, true), 64728u)), countOneBits(vec4<i32>(-9129i, -5213i, -2147483647i, 2147483647i))), true, global0.b, _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.b, u_input.c, u_input.b)), reverseBits(vec3<u32>(26735u, u_input.c, 2270u)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), false)), ~u_input.c), vec2<bool>(func_4(vec4<i32>(-1i >> (u_input.b % 32u), global1.a.x, -21434i, global1.a.x), any(vec4<bool>(true, false, true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global1.b)), vec3<u32>(countOneBits(u_input.b), ~u_input.c, 974u)), any(vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), all(vec3<bool>(false, false, true))))));
    var var_1 = Struct_2(Struct_1(global0.a, var_0.a.b, _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.c) * _wgslsmith_f_op_vec4_f32(global1.c * vec4<f32>(global0.c.x, -1066f, global0.b, -170f))))), (-global1.a.x <= firstLeadingBit(_wgslsmith_div_i32(23229i, global1.a.x))) & var_0.b, !vec2<bool>(var_0.c.x, !(global1.b > -624f)), u_input.b);
    global2 = true;
    var var_2 = ~var_0.a.a.x & var_1.a.a.x;
    global0 = global3[_wgslsmith_index_u32(max(~(u_input.b >> (4372u % 32u)), firstTrailingBit(var_0.d)), 2u)];
    return func_5(vec4<i32>(1i, _wgslsmith_add_i32(-2147483647i, -global0.a.x), ~(~_wgslsmith_add_i32(-19413i, -10831i)), -1i), _wgslsmith_f_op_vec4_f32(global1.c + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-257f, -344f, global0.b, var_0.a.c.x)), var_1.a.c))), var_0, !select(!func_5(vec4<i32>(global1.a.x, var_0.a.a.x, global0.a.x, -1i), vec4<f32>(global0.c.x, -489f, global1.c.x, var_0.a.c.x), Struct_2(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c), var_1.c.x, var_0.c, u_input.b), var_0.c).c, !(!var_0.c), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = array<Struct_1, 2>();
    var var_1 = var_0.d;
    var var_2 = var_0.a.c;
    var var_3 = global3[_wgslsmith_index_u32(min(u_input.c, var_0.d), 2u)];
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(1u, func_5(~vec4<i32>(global0.a.x, -5218i, var_3.a.x, var_4.a.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -150f, var_2.x, 977f)), Struct_2(Struct_1(global0.a, global0.b, global1.c), false, vec2<bool>(false, var_0.b), u_input.a.x), func_1().c)).zyw & (_wgslsmith_mult_vec3_i32(vec3<i32>(var_4.a.a.x, 2941i, 8896i) & vec3<i32>(var_0.a.a.x, -2147483647i, -61583i), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.a.x, var_4.a.a.x, 1i), vec3<i32>(var_3.a.x, global1.a.x, 0i))) << (((vec3<u32>(28964u, 29519u, u_input.a.x) ^ vec3<u32>(39636u, var_0.d, var_0.d)) << ((vec3<u32>(38758u, 4294967295u, u_input.b) << (vec3<u32>(var_0.d, var_4.d, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-984f, var_3.c.x)), _wgslsmith_f_op_f32(global1.b + 634f), -221f)), max(vec2<i32>(_wgslsmith_add_i32(-var_3.a.x, 1i), 1i | _wgslsmith_clamp_i32(26510i, global0.a.x, var_4.a.a.x)), func_5(vec4<i32>(abs(-34471i), -1i, firstTrailingBit(2147483647i), ~var_3.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, global1.c.x, -1938f, 1494f))), Struct_2(func_5(vec4<i32>(global0.a.x, -17968i, 2147483647i, var_0.a.a.x), global0.c, Struct_2(var_4.a, var_4.c.x, vec2<bool>(var_0.b, false), var_0.d), vec2<bool>(true, var_0.b)).a, !var_0.c.x, vec2<bool>(true, true), 3282u), !var_4.c).a.a), func_5(-func_2(_wgslsmith_mult_u32(0u, 10571u), func_5(vec4<i32>(var_0.a.a.x, 56888i, var_3.a.x, var_4.a.a.x), global0.c, Struct_2(global3[_wgslsmith_index_u32(u_input.b, 2u)], true, vec2<bool>(true, var_0.c.x), var_4.d), vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.c.x + var_2.x), 1018f, _wgslsmith_f_op_f32(sign(-1700f)), _wgslsmith_f_op_f32(256f - var_0.a.b)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a.c), _wgslsmith_f_op_vec4_f32(-global1.c))), func_1(), !select(vec2<bool>(false, var_4.c.x), vec2<bool>(true, true), var_4.c)).a.a.x, ~0u);
}

