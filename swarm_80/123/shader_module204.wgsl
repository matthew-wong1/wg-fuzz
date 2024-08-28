struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_2,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 19> = array<bool, 19>(false, false, false, true, false, true, true, false, true, true, false, false, false, false, false, false, true, true, false);

var<private> global2: array<vec2<f32>, 2>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1758f * 103f) - 1f)))));
    global2 = array<vec2<f32>, 2>();
    let var_0 = ~(~select(select(vec2<u32>(0u, u_input.c), vec2<u32>(u_input.a, 7098u), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 19u)])) ^ abs(vec2<u32>(31507u, 24217u)), ~vec2<u32>(u_input.e, 4294967295u), vec2<bool>(any(global3.xx), global3.x)));
    let var_1 = global3.zx;
    return -32062i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(168f))), (u_input.d | u_input.d) ^ firstTrailingBit(1i), any(vec4<bool>(true, true, true, true)), countOneBits(_wgslsmith_div_u32(35539u, u_input.e))), Struct_1(-1633f, u_input.d, !global1[_wgslsmith_index_u32(u_input.c, 19u)] || (u_input.e <= u_input.c), _wgslsmith_div_u32(u_input.c, u_input.c << (0u % 32u))), Struct_1(_wgslsmith_f_op_f32(step(-366f, _wgslsmith_f_op_f32(step(271f, 1317f)))), -17363i, !all(vec3<bool>(true, global3.x, true)), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, u_input.e), abs(vec2<u32>(u_input.c, 1428u))))), ~(~vec3<u32>(u_input.a & u_input.b, 0u, 0u)), Struct_2(Struct_1(-710f, func_3(), true, ~0u), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1472f - -937f), -629f)), _wgslsmith_dot_vec2_i32(vec2<i32>(-15322i, u_input.d) & vec2<i32>(-1i, u_input.d), -vec2<i32>(1i, u_input.d)), any(!vec3<bool>(global1[_wgslsmith_index_u32(40583u, 19u)], false, true)), ~u_input.e), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-777f, 763f)))), -2147483647i, false, ~u_input.a)), !(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(global3.x, global3.x, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.e, 19u)]), global1[_wgslsmith_index_u32(u_input.a, 19u)]), !vec4<bool>(global3.x, global3.x, global1[_wgslsmith_index_u32(55487u, 19u)], false), !vec4<bool>(global3.x, true, true, true))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f * -1000f)), -32442i, all(vec4<bool>(true, true, true, true)), u_input.c), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(610f)))), -14433i, true && (u_input.d > 3055i), _wgslsmith_mod_u32(4294967295u, ~u_input.b)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-315f * 959f), 966f, any(vec4<bool>(false, true, global3.x, global3.x)))), u_input.d >> (_wgslsmith_sub_u32(46470u, u_input.a) % 32u), _wgslsmith_f_op_f32(trunc(-1086f)) > _wgslsmith_f_op_f32(242f * 215f), ~(~50430u))));
    var var_1 = Struct_3(Struct_2(Struct_1(var_0.c.a.a, u_input.d, !any(var_0.d.xyy), 1u), var_0.a.b, var_0.e.a), ~(~_wgslsmith_div_vec3_u32(min(var_0.b, var_0.b), var_0.b)), Struct_2(var_0.a.a, Struct_1(515f, ~abs(1i), all(vec2<bool>(false, false)), _wgslsmith_mod_u32(~0u, 1u)), Struct_1(var_0.a.a.a, abs(_wgslsmith_mod_i32(28950i, u_input.d)), true, u_input.e & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, var_0.c.a.d, 18069u, 0u), vec4<u32>(1u, 4294967295u, var_0.b.x, var_0.e.c.d)))), select(!var_0.d, var_0.d, all(vec3<bool>(var_0.a.a.c, true, var_0.e.c.c)) | any(select(var_0.d.zxy, var_0.d.wzw, vec3<bool>(global3.x, true, true)))), var_0.c);
    var var_2 = countOneBits(abs(vec2<i32>(-1i) * -reverseBits(vec2<i32>(var_0.e.a.b, u_input.d))));
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -351f), -58958i, true, var_0.c.c.d), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.c.b.a, -169f)), var_1.a.b.a)), 2147483647i, !global3.x && (var_1.c.b.a > var_0.c.b.a), 24842u), Struct_1(var_1.c.b.a, var_2.x, var_0.d.x, reverseBits(7576u) >> (_wgslsmith_mod_u32(4294967295u, u_input.e) % 32u))), var_0.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1138f), _wgslsmith_mult_i32(var_0.c.a.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.c.b, 59796i, var_2.x), vec3<i32>(1i, -1822i, 22779i))), any(!global3.xz), 0u), var_1.c.a, var_0.e.b), select(vec4<bool>(var_1.a.c.c, true, true, false), select(select(select(vec4<bool>(var_1.d.x, false, global3.x, true), var_1.d, var_1.e.a.c), var_1.d, true), var_1.d, false), _wgslsmith_f_op_f32(var_1.e.c.a + _wgslsmith_f_op_f32(floor(-1000f))) <= _wgslsmith_f_op_f32(abs(var_1.a.c.a))), var_0.c);
    var_1 = Struct_3(var_0.a, _wgslsmith_clamp_vec3_u32(min(select(_wgslsmith_sub_vec3_u32(var_3.b, var_1.b), vec3<u32>(0u, var_1.a.b.d, 19316u), var_0.e.b.c & var_0.e.a.c), max(var_3.b, _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.b.d, u_input.e, var_0.c.b.d), vec3<u32>(var_0.b.x, 140u, u_input.a)))), var_3.b, max(vec3<u32>(u_input.e, ~1u, _wgslsmith_mod_u32(var_1.b.x, var_3.b.x)), var_1.b | (var_1.b | vec3<u32>(var_0.c.c.d, var_3.b.x, u_input.e)))), var_3.e, select(vec4<bool>(false, any(vec3<bool>(global3.x, true, var_3.d.x)), false, select(true, !var_3.e.a.c, true)), var_3.d, !(!select(vec4<bool>(false, var_0.c.c.c, var_1.a.b.c, false), var_1.d, vec4<bool>(var_1.a.b.c, true, true, true)))), var_3.c);
    return var_1.a.b;
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    let var_0 = Struct_3(arg_0.c.e, arg_0.c.b, Struct_2(func_2(), arg_0.c.c.c, func_2()), vec4<bool>(global3.x, all(arg_0.c.d), global3.x, false), Struct_2(Struct_1(arg_0.a.a, -u_input.d, true || func_2().c, arg_0.c.a.c.d << (~arg_0.a.d % 32u)), Struct_1(_wgslsmith_f_op_f32(sign(1f)), 2147483647i, true, u_input.e), func_2()));
    let var_1 = 769f;
    var var_2 = u_input.d;
    let var_3 = Struct_2(func_2(), Struct_1(_wgslsmith_div_f32(1603f, _wgslsmith_f_op_f32(-arg_0.c.a.b.a)), -2147483647i, true, _wgslsmith_mod_u32(var_0.c.b.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e.a.d, 0u), var_0.b.zy), ~vec2<u32>(1u, u_input.b)))), arg_0.a);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 + 983f) - var_0.a.a.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.a, _wgslsmith_f_op_f32(-var_0.c.b.a))))));
    return Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(select(var_1, arg_0.c.c.a.a, !func_2().c)), -firstTrailingBit(var_3.c.b << (u_input.c % 32u)), !any(!arg_0.c.d), firstLeadingBit(u_input.c)), Struct_1(_wgslsmith_f_op_f32(abs(461f)), abs(-u_input.d), -(-1i & var_3.a.b) != ~func_3(), ~_wgslsmith_mod_u32(u_input.e | var_0.b.x, 67807u ^ u_input.a)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    let var_0 = func_4(Struct_4(func_2(), vec4<u32>(u_input.e, u_input.e, u_input.a, 0u), Struct_3(Struct_2(Struct_1(-602f, arg_0.x, global3.x, u_input.c), func_2(), Struct_1(-1948f, 5770i, global1[_wgslsmith_index_u32(26189u, 19u)], u_input.c)), firstLeadingBit(vec3<u32>(u_input.b, u_input.c, u_input.c)), Struct_2(func_2(), Struct_1(-1316f, u_input.d, false, 1u), func_2()), !vec4<bool>(false, global3.x, false, false), Struct_2(func_2(), Struct_1(1566f, arg_0.x, global1[_wgslsmith_index_u32(47366u, 19u)], u_input.e), func_2())), ~(-64902i ^ func_3())));
    let var_1 = _wgslsmith_div_i32(0i, _wgslsmith_div_i32(func_3(), var_0.a.b ^ -2147483647i)) >= firstTrailingBit(_wgslsmith_mod_i32(1i, _wgslsmith_div_i32(_wgslsmith_mult_i32(51552i, u_input.d), 23978i)));
    var var_2 = _wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(u_input.e, var_0.b.d)) >> (~select(vec2<u32>(1u, 0u), vec2<u32>(84705u, var_0.b.d) << (vec2<u32>(u_input.b, 22531u) % vec2<u32>(32u)), var_0.b.c) % vec2<u32>(32u)), abs(~(~vec2<u32>(var_0.b.d, u_input.c))));
    let var_3 = select(select(vec4<bool>(false, all(global3.yz), true, global1[_wgslsmith_index_u32(21939u, 19u)]), !select(vec4<bool>(true, var_0.c.c, true, global3.x), select(vec4<bool>(global3.x, false, var_1, true), vec4<bool>(true, var_0.c.c, true, false), global3.x), var_1), true), select(select(!vec4<bool>(false, var_0.b.c, true, var_0.a.c), vec4<bool>(var_0.a.c == false, false, func_4(Struct_4(var_0.b, vec4<u32>(1u, u_input.a, 30604u, u_input.b), Struct_3(Struct_2(Struct_1(-1125f, -12700i, global3.x, 13013u), var_0.b, Struct_1(938f, 9583i, true, var_0.b.d)), vec3<u32>(0u, 1u, var_0.c.d), Struct_2(var_0.a, var_0.c, Struct_1(1908f, arg_0.x, var_0.a.c, 0u)), vec4<bool>(var_1, false, var_0.c.c, global3.x), var_0), -9895i)).b.c, true), (global1[_wgslsmith_index_u32(var_0.a.d, 19u)] || var_0.b.c) || all(vec4<bool>(global3.x, false, false, false))), vec4<bool>(global1[_wgslsmith_index_u32(1u, 19u)], true, func_2().c, var_0.b.c), !vec4<bool>(true, true, any(vec2<bool>(global3.x, global1[_wgslsmith_index_u32(59356u, 19u)])), var_0.b.a <= 1136f)), select(vec4<bool>(!var_0.c.c, var_1, true, all(vec2<bool>(false, global1[_wgslsmith_index_u32(var_2.x, 19u)]))), vec4<bool>(_wgslsmith_f_op_f32(abs(var_0.b.a)) != 223f, all(!global3.xx), var_1, false), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_2.x, 19u)], var_0.a.c), vec4<bool>(true, false, true, var_0.a.c), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(44097u, 19u)])), vec4<bool>(any(global3.zy), var_1, global3.x, true))));
    let var_4 = Struct_4(func_2(), ~(~vec4<u32>(1u, var_0.c.d, 1u, var_0.a.d)), Struct_3(Struct_2(func_2(), Struct_1(_wgslsmith_f_op_f32(-var_0.a.a), -1i, 297f > var_0.b.a, var_2.x << (4294967295u % 32u)), Struct_1(_wgslsmith_f_op_f32(-var_0.b.a), _wgslsmith_dot_vec4_i32(vec4<i32>(13995i, 1i, var_0.c.b, var_0.b.b), vec4<i32>(2147483647i, 0i, arg_0.x, 4988i)), !global1[_wgslsmith_index_u32(u_input.c, 19u)], reverseBits(u_input.a))), ~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(51379u, u_input.b, 0u), vec3<u32>(var_0.b.d, u_input.c, u_input.e))), func_4(Struct_4(Struct_1(-543f, 46693i, global3.x, 0u), select(vec4<u32>(u_input.a, u_input.e, var_0.a.d, 0u), vec4<u32>(0u, var_0.c.d, 1u, var_2.x), var_3.x), Struct_3(Struct_2(Struct_1(var_0.a.a, 2147483647i, true, 0u), Struct_1(var_0.b.a, var_0.b.b, false, var_0.a.d), Struct_1(-283f, var_0.a.b, false, var_0.a.d)), vec3<u32>(1u, u_input.a, 9335u), var_0, vec4<bool>(var_0.c.c, true, true, true), var_0), func_4(Struct_4(Struct_1(168f, arg_0.x, var_3.x, 36599u), vec4<u32>(8986u, var_2.x, u_input.e, var_2.x), Struct_3(Struct_2(var_0.c, Struct_1(996f, arg_0.x, global3.x, u_input.e), var_0.b), vec3<u32>(u_input.c, 42315u, u_input.b), var_0, var_3, Struct_2(Struct_1(521f, var_0.b.b, true, 4294967295u), var_0.a, Struct_1(691f, -34948i, global3.x, var_2.x))), -33189i)).a.b)), select(vec4<bool>(var_1, true, true, true), var_3, any(var_3.zyy)), func_4(Struct_4(func_4(Struct_4(var_0.a, vec4<u32>(0u, var_0.c.d, var_0.a.d, var_2.x), Struct_3(var_0, vec3<u32>(var_0.a.d, var_0.b.d, var_2.x), Struct_2(var_0.a, Struct_1(1000f, arg_0.x, var_1, 5538u), Struct_1(var_0.b.a, var_0.a.b, true, var_0.a.d)), var_3, Struct_2(Struct_1(687f, -1i, global1[_wgslsmith_index_u32(var_0.b.d, 19u)], 1u), var_0.b, var_0.a)), 2147483647i)).c, vec4<u32>(0u, 0u, var_0.a.d, 45537u), Struct_3(var_0, vec3<u32>(u_input.a, u_input.e, 22188u), var_0, var_3, Struct_2(Struct_1(var_0.c.a, 1i, var_0.a.c, u_input.a), Struct_1(var_0.a.a, -1i, false, var_2.x), var_0.c)), i32(-1i) * -19422i))), 0i);
    return func_4(Struct_4(var_0.c, ~vec4<u32>(1u, max(u_input.c, var_0.c.d), 1u, abs(var_4.a.d)), var_4.c, var_4.c.e.a.b >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(11023u, 4294967295u, 1u), var_4.b.zzw)) % 32u)));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1792f + 794f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_2.b.a, -2389f)))));
    global3 = select(select(!select(!vec3<bool>(arg_2.a.c, global1[_wgslsmith_index_u32(arg_2.b.d, 19u)], global1[_wgslsmith_index_u32(arg_2.b.d, 19u)]), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], true, arg_2.c.c), all(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 19u)], false))), !(!select(vec3<bool>(arg_2.c.c, arg_2.c.c, false), vec3<bool>(false, arg_2.a.c, false), global3.x)), select(vec3<bool>(func_2().c, all(vec4<bool>(arg_2.a.c, global1[_wgslsmith_index_u32(29768u, 19u)], arg_2.b.c, global1[_wgslsmith_index_u32(arg_2.a.d, 19u)])), all(vec3<bool>(true, false, true))), vec3<bool>(arg_0 >= -1199f, true || global3.x, true), vec3<bool>(true, global1[_wgslsmith_index_u32(18260u, 19u)] || false, global1[_wgslsmith_index_u32(2766u, 19u)]))), !select(!select(vec3<bool>(true, false, arg_2.a.c), vec3<bool>(false, false, false), false), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(arg_2.a.d, 19u)], global1[_wgslsmith_index_u32(19177u, 19u)]), select(vec3<bool>(arg_2.a.c, true, global3.x), vec3<bool>(false, false, false), arg_2.c.c), func_1(vec2<i32>(arg_2.a.b, -2147483647i)).a.c), vec3<bool>(global3.x, true, any(vec3<bool>(true, true, false)))), !arg_2.a.c);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.a, var_0.x, -646f, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1464f, 1621f, arg_0))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -886f, -1115f, arg_0)))), vec4<bool>(arg_2.a.c, global3.x, true, global1[_wgslsmith_index_u32(arg_2.b.d, 19u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, var_0.x, arg_0, -837f), vec4<f32>(arg_0, 675f, 552f, -571f)), vec4<f32>(var_0.x, 951f, -2345f, -294f))))));
    let var_2 = vec3<bool>(any(vec2<bool>(true, true)), true, global3.x);
    var var_3 = func_4(Struct_4(arg_2.a, ~vec4<u32>(abs(u_input.a), firstLeadingBit(12406u), _wgslsmith_div_u32(4741u, u_input.a), arg_2.c.d), Struct_3(arg_2, vec3<u32>(u_input.e, arg_2.a.d, arg_2.b.d | 55527u), func_4(Struct_4(Struct_1(var_1.x, -1i, true, u_input.c), vec4<u32>(4294967295u, 36147u, u_input.a, 64534u), Struct_3(arg_2, vec3<u32>(0u, 4294967295u, u_input.c), Struct_2(Struct_1(arg_0, u_input.d, global1[_wgslsmith_index_u32(4294967295u, 19u)], arg_2.b.d), Struct_1(arg_2.b.a, arg_2.a.b, var_2.x, 0u), arg_2.a), vec4<bool>(true, var_2.x, var_2.x, false), arg_2), u_input.d)), vec4<bool>(arg_2.b.c, true, true, -798f >= arg_2.a.a), func_4(Struct_4(Struct_1(var_1.x, u_input.d, arg_2.b.c, 24432u), vec4<u32>(4294967295u, 101292u, 47971u, 33893u), Struct_3(Struct_2(arg_2.a, arg_2.b, arg_2.c), vec3<u32>(u_input.c, 0u, arg_2.b.d), arg_2, vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a.d, 19u)], global3.x, false, false), arg_2), arg_1.x))), ~_wgslsmith_mod_i32(-arg_1.x, _wgslsmith_add_i32(-70363i, arg_1.x))));
    return select(var_2, vec3<bool>(false, true, arg_2.a.c), !(true & arg_2.b.c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(1609f, _wgslsmith_sub_vec4_i32(-(~vec4<i32>(1i, u_input.d, -1i, -2147483647i)), -vec4<i32>(-u_input.d, u_input.d, -1i, 1i)), func_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-52532i), ~u_input.d), -_wgslsmith_div_vec2_i32(vec2<i32>(13186i, -2147483647i), vec2<i32>(u_input.d, u_input.d)), -(vec2<i32>(15041i, u_input.d) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))))));
    var var_0 = reverseBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, -31427i, countOneBits(u_input.d), -23789i), vec4<i32>(-1i) * -vec4<i32>(u_input.d, u_input.d, u_input.d, -2147483647i)));
    let var_1 = Struct_4(Struct_1(1187f, _wgslsmith_add_i32(_wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i), u_input.d ^ -38035i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(40911u ^ u_input.e, ~1u), 19u)], 84275u), vec4<u32>(_wgslsmith_mult_u32((18466u << (1u % 32u)) & func_4(Struct_4(Struct_1(-927f, u_input.d, false, 55530u), vec4<u32>(4294967295u, u_input.e, 4294967295u, 0u), Struct_3(Struct_2(Struct_1(485f, u_input.d, global1[_wgslsmith_index_u32(47211u, 19u)], 46608u), Struct_1(-643f, 0i, false, u_input.c), Struct_1(-391f, var_0.x, global1[_wgslsmith_index_u32(u_input.b, 19u)], 4294967295u)), vec3<u32>(11779u, u_input.a, 1424u), Struct_2(Struct_1(-764f, 0i, global3.x, u_input.a), Struct_1(913f, -40153i, global3.x, 1u), Struct_1(917f, u_input.d, global3.x, 18409u)), vec4<bool>(false, false, global1[_wgslsmith_index_u32(46286u, 19u)], global3.x), Struct_2(Struct_1(-325f, u_input.d, global3.x, 4294967295u), Struct_1(108f, 0i, false, 1591u), Struct_1(886f, u_input.d, false, 70135u))), u_input.d)).a.d, ~4294967295u), min(_wgslsmith_clamp_u32(max(u_input.e, 25913u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.b, u_input.e), vec4<u32>(1u, 14274u, u_input.a, 32049u)), ~0u), _wgslsmith_clamp_u32(u_input.c & u_input.c, 1u, u_input.a)), ~27867u, func_4(Struct_4(func_1(var_0.xw).a, firstLeadingBit(vec4<u32>(0u, 0u, 7461u, u_input.c)), Struct_3(Struct_2(Struct_1(1378f, u_input.d, false, 19343u), Struct_1(215f, 0i, global3.x, u_input.e), Struct_1(1029f, 57581i, true, u_input.c)), vec3<u32>(u_input.a, u_input.e, 115293u), Struct_2(Struct_1(265f, -1i, global1[_wgslsmith_index_u32(u_input.c, 19u)], u_input.e), Struct_1(2709f, 2147483647i, false, 15983u), Struct_1(853f, u_input.d, global3.x, 4294967295u)), vec4<bool>(true, true, global3.x, global3.x), Struct_2(Struct_1(1034f, u_input.d, true, u_input.b), Struct_1(-637f, var_0.x, global3.x, 40672u), Struct_1(-2345f, u_input.d, global1[_wgslsmith_index_u32(u_input.a, 19u)], u_input.e))), abs(var_0.x))).a.d), Struct_3(func_4(Struct_4(Struct_1(908f, 1i, global1[_wgslsmith_index_u32(u_input.c, 19u)], u_input.b), ~vec4<u32>(u_input.b, u_input.a, 0u, u_input.c), Struct_3(Struct_2(Struct_1(-143f, 12061i, global1[_wgslsmith_index_u32(0u, 19u)], 52768u), Struct_1(2016f, var_0.x, true, u_input.c), Struct_1(1955f, -26334i, global1[_wgslsmith_index_u32(1u, 19u)], 4294967295u)), vec3<u32>(4294967295u, u_input.e, u_input.a), Struct_2(Struct_1(-993f, var_0.x, false, 50976u), Struct_1(1549f, -1i, global1[_wgslsmith_index_u32(u_input.b, 19u)], 39360u), Struct_1(-732f, -32891i, global1[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b)), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 19u)], global3.x, true), Struct_2(Struct_1(-178f, -13726i, false, u_input.e), Struct_1(1081f, var_0.x, global1[_wgslsmith_index_u32(77545u, 19u)], 0u), Struct_1(-990f, -1i, false, 23948u))), -22151i)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 0u, 20009u)), vec3<u32>(u_input.e, u_input.c & u_input.a, ~8709u)), func_1(select(vec2<i32>(var_0.x, u_input.d), vec2<i32>(var_0.x, 0i), global3.xy)), vec4<bool>(!all(vec3<bool>(true, true, true)), !func_2().c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.e), vec2<u32>(0u, u_input.b)) > 65719u, !(!global3.x)), Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(1394f)), -1i, true, u_input.c), func_4(Struct_4(Struct_1(-202f, 19685i, global1[_wgslsmith_index_u32(0u, 19u)], u_input.b), vec4<u32>(8638u, 87577u, 1u, 125285u), Struct_3(Struct_2(Struct_1(569f, 2147483647i, global1[_wgslsmith_index_u32(33892u, 19u)], u_input.b), Struct_1(101f, u_input.d, global1[_wgslsmith_index_u32(u_input.c, 19u)], u_input.c), Struct_1(615f, -7748i, false, u_input.b)), vec3<u32>(u_input.a, u_input.b, 26212u), Struct_2(Struct_1(-340f, var_0.x, global3.x, 18996u), Struct_1(-147f, -2147483647i, false, 0u), Struct_1(1000f, -33683i, false, 42877u)), vec4<bool>(false, global1[_wgslsmith_index_u32(27954u, 19u)], global3.x, global1[_wgslsmith_index_u32(u_input.e, 19u)]), Struct_2(Struct_1(432f, u_input.d, true, u_input.a), Struct_1(-1000f, -2147483647i, false, 66646u), Struct_1(598f, var_0.x, global3.x, 0u))), u_input.d)).a, func_1(~var_0.yz).c)), -(~(~_wgslsmith_div_i32(var_0.x, var_0.x))));
    let var_2 = false;
    global1 = array<bool, 19>();
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -437f);
    let var_4 = countOneBits(firstTrailingBit(vec3<i32>(~19518i, _wgslsmith_dot_vec2_i32(var_0.zw, var_0.wz), -16053i) ^ vec3<i32>(2147483647i, _wgslsmith_mod_i32(var_0.x, -60269i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -15135i, 2147483647i), var_0.yxw))));
    var var_5 = firstLeadingBit(~(~var_1.a.d));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(var_1.a.b & -u_input.d, ~func_2().b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a * var_3) - -1000f)), var_1.b);
}

