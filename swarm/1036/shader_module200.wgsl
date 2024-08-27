struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30>;

var<private> global1: array<Struct_2, 29>;

var<private> global2: array<Struct_3, 20>;

var<private> global3: array<f32, 2> = array<f32, 2>(1925f, 884f);

var<private> global4: array<vec3<u32>, 7>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = arg_0 ^ _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_1, arg_1 >> (1u % 32u), _wgslsmith_mult_u32(885u, 1u))), vec3<u32>(~11489u, 5422u, 17481u));
    global1 = array<Struct_2, 29>();
    let var_1 = Struct_2(Struct_1(~countOneBits(~vec4<u32>(4294967295u, 33853u, arg_1, arg_0)), vec3<u32>(_wgslsmith_sub_u32(var_0, select(1u, 16994u, true)), abs(12770u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 30811u, arg_1), global4[_wgslsmith_index_u32(arg_1, 7u)]), vec3<u32>(9021u, 0u, 55u) ^ global4[_wgslsmith_index_u32(var_0, 7u)])), _wgslsmith_div_f32(-281f, _wgslsmith_div_f32(-2174f, 1000f)) >= global3[_wgslsmith_index_u32(~17761u, 2u)], all(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(arg_1, 30u)], global0[_wgslsmith_index_u32(59829u, 30u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], false, true), global0[_wgslsmith_index_u32(1u, 30u)])), -firstLeadingBit(abs(vec2<i32>(u_input.b, 36927i)))), false);
    global2 = array<Struct_3, 20>();
    global3 = array<f32, 2>();
    return false;
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = arg_3.b;
    var var_1 = ~max(u_input.b, firstTrailingBit(arg_3.c.e.x));
    let var_2 = 3039u;
    var var_3 = Struct_2(arg_3.c, !(!func_3(arg_0.d.x >> (84534u % 32u), max(82482u, u_input.c))));
    global2 = array<Struct_3, 20>();
    return _wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_0.b.x, arg_0.c.e.x, -1i, 1i), vec4<i32>(-36239i, 20346i, arg_0.c.e.x, 15819i), var_3.b), ~vec4<i32>(1i, -4153i, 40076i, -60941i), reverseBits(vec4<i32>(arg_3.b.x, -2147483647i, 0i, arg_2))) & vec4<i32>(var_0.x, i32(-1i) * -12453i, -_wgslsmith_mod_i32(arg_2, u_input.a), var_3.a.e.x), -(((vec4<i32>(var_0.x, arg_3.b.x, -2147483647i, arg_0.b.x) >> (vec4<u32>(arg_0.c.a.x, arg_3.d.x, 1u, var_3.a.a.x) % vec4<u32>(32u))) ^ (vec4<i32>(-22044i, 7389i, 0i, var_0.x) | vec4<i32>(16517i, u_input.b, -17787i, arg_2))) >> (max(vec4<u32>(0u, arg_0.c.a.x, 4294967295u, 22833u), ~vec4<u32>(36451u, 4294967295u, var_2, 1u)) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: i32) -> Struct_4 {
    var var_0 = arg_0.xy;
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(var_0.x), arg_0.x), arg_0.yw, ~_wgslsmith_div_vec2_i32(func_2(Struct_3(vec4<f32>(1118f, -448f, global3[_wgslsmith_index_u32(arg_1.x, 2u)], global3[_wgslsmith_index_u32(u_input.d, 2u)]), arg_0.xwy, Struct_1(vec4<u32>(17198u, u_input.d, arg_1.x, 4294967295u), global4[_wgslsmith_index_u32(arg_1.x, 7u)], false, false, vec2<i32>(0i, var_0.x)), vec4<u32>(arg_1.x, 92675u, arg_1.x, 0u)), global0[_wgslsmith_index_u32(1u, 30u)], var_0.x, Struct_3(vec4<f32>(526f, -1738f, -515f, -1000f), arg_0.xwx, Struct_1(vec4<u32>(1u, arg_1.x, u_input.d, arg_1.x), arg_1, false, global0[_wgslsmith_index_u32(arg_1.x, 30u)], arg_0.yz), vec4<u32>(29286u, arg_1.x, arg_1.x, 18086u))).xw, vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.xy, arg_0.yw), _wgslsmith_dot_vec2_i32(arg_0.zy, vec2<i32>(arg_0.x, u_input.b)))));
    var var_1 = true;
    let var_2 = true;
    global2 = array<Struct_3, 20>();
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2364f)), Struct_1(vec4<u32>(arg_1.x, u_input.c, 1u, 22400u), vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_1.x), vec2<u32>(arg_1.x, 49395u)), ~vec2<u32>(arg_1.x, 60721u)), u_input.c, firstTrailingBit(_wgslsmith_add_u32(arg_1.x, arg_1.x))), func_3(~4294967295u, _wgslsmith_div_u32(19193u, arg_1.x)) && any(select(vec2<bool>(false, var_2), vec2<bool>(global0[_wgslsmith_index_u32(0u, 30u)], false), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.x, 30u)], var_2))), all(select(select(vec3<bool>(false, var_2, var_2), vec3<bool>(var_2, global0[_wgslsmith_index_u32(arg_1.x, 30u)], false), vec3<bool>(var_2, true, true)), vec3<bool>(true, var_2, true), true)), arg_0.xy), Struct_2(Struct_1(vec4<u32>(u_input.c, 5808u, u_input.c, u_input.d), _wgslsmith_div_vec3_u32(reverseBits(global4[_wgslsmith_index_u32(arg_1.x, 7u)]), vec3<u32>(3763u, arg_1.x, 4294967295u) | vec3<u32>(arg_1.x, arg_1.x, 25267u)), !all(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], var_2, true)), any(vec3<bool>(global0[_wgslsmith_index_u32(25298u, 30u)], false, var_2)), select(arg_0.xw, _wgslsmith_mult_vec2_i32(arg_0.xx, arg_0.xw), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(arg_1.x, 2u)])) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(29764u, 2u)])) < global3[_wgslsmith_index_u32(countOneBits(1u), 2u)]));
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_4, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(349f * arg_3.x), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 2u)] - global3[_wgslsmith_index_u32(59759u, 2u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1000f, -487f)), vec3<bool>(true, true, false))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1218f)) + _wgslsmith_f_op_f32(-arg_2.a)), arg_0.x, _wgslsmith_div_f32(449f, _wgslsmith_f_op_f32(-arg_0.x))), select(vec3<bool>(!global0[_wgslsmith_index_u32(40771u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)] | true, arg_2.c.a.d), vec3<bool>(true, arg_2.c.b, global0[_wgslsmith_index_u32(countOneBits(arg_1), 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, arg_1), 30u)]))));
    global4 = array<vec3<u32>, 7>();
    global4 = array<vec3<u32>, 7>();
    var var_1 = vec3<bool>(all(vec2<bool>(false, any(vec4<bool>(arg_2.b.c, arg_2.b.c, arg_2.b.d, global0[_wgslsmith_index_u32(4294967295u, 30u)])))) || false, global0[_wgslsmith_index_u32(0u, 30u)], 0u <= _wgslsmith_clamp_u32(~(~arg_1), arg_1, arg_2.b.a.x));
    global4 = array<vec3<u32>, 7>();
    return global2[_wgslsmith_index_u32(~u_input.d, 20u)];
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec4<i32> {
    global1 = array<Struct_2, 29>();
    global0 = array<bool, 30>();
    var var_0 = _wgslsmith_f_op_f32(-1043f + func_4(vec4<i32>(-46990i, 1i, arg_0.c.e.x, countOneBits(arg_0.b.x | u_input.e)), _wgslsmith_sub_vec3_u32(~(~arg_1.c.a.b), vec3<u32>(arg_1.b.a.x, arg_0.d.x, u_input.d) << (arg_0.d.wxy % vec3<u32>(32u))), -u_input.a).a);
    var var_1 = arg_0;
    return (_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c.e.x, arg_1.b.e.x, -2311i, -90786i), ~vec4<i32>(var_1.c.e.x, u_input.a, u_input.a, 2147483647i)), vec4<i32>(firstLeadingBit(u_input.b), firstTrailingBit(arg_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.e.x, 35367i, u_input.b, 17230i), vec4<i32>(u_input.a, u_input.e, arg_0.b.x, 2147483647i)), arg_0.b.x)) >> (vec4<u32>(arg_1.c.a.a.x, 87644u, ~8169u, arg_0.c.a.x) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1972f, arg_0.a.x, 155f)), var_1.d.x, func_4(vec4<i32>(8693i, 1i, var_1.c.e.x, 7792i), arg_1.c.a.b, 31375i), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, global3[_wgslsmith_index_u32(8801u, 2u)], -304f, arg_0.a.x) * var_1.a)).c.e.x, arg_0.c.e.x, 0i), vec4<i32>(arg_0.c.e.x | 2873i, u_input.a, ~(-arg_0.b.x), var_1.c.e.x));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = reverseBits(func_6(func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(14722u, 2u)], global3[_wgslsmith_index_u32(u_input.d, 2u)], 1455f)), ~46448u, func_4(func_2(global2[_wgslsmith_index_u32(43794u, 20u)], false, u_input.b, Struct_3(vec4<f32>(global3[_wgslsmith_index_u32(1u, 2u)], 146f, global3[_wgslsmith_index_u32(75020u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)]), vec3<i32>(u_input.e, u_input.b, u_input.e), Struct_1(vec4<u32>(arg_0, 1u, 19698u, 0u), global4[_wgslsmith_index_u32(u_input.d, 7u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)], vec2<i32>(u_input.a, u_input.b)), vec4<u32>(u_input.c, arg_0, 4294967295u, arg_0))), ~vec3<u32>(0u, 4294967295u, 1u), ~u_input.a), vec4<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(84884u, 2u)] - global3[_wgslsmith_index_u32(u_input.c, 2u)]), -116f, -179f, -256f)), func_4(~vec4<i32>(u_input.b, u_input.e, -4708i, u_input.e) >> (~vec4<u32>(1u, u_input.c, 1u, 0u) % vec4<u32>(32u)), ~global4[_wgslsmith_index_u32(12942u, 7u)] >> (max(vec3<u32>(u_input.d, 4294967295u, 4294967295u), vec3<u32>(1u, 70529u, u_input.c)) % vec3<u32>(32u)), -2147483647i), vec4<bool>(any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 30u)], global0[_wgslsmith_index_u32(arg_0, 30u)]), vec2<bool>(true, false), global0[_wgslsmith_index_u32(1933u, 30u)])), global0[_wgslsmith_index_u32(u_input.c, 30u)] | global0[_wgslsmith_index_u32(u_input.c, 30u)], !global0[_wgslsmith_index_u32(37021u, 30u)], false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 2u)], -1390f) + vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(u_input.d, 2u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(574f, 594f))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.d, 2u)])));
    var var_2 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(func_4(-vec4<i32>(1i, 49229i, u_input.b, -2147483647i), ~vec3<u32>(u_input.c, u_input.d, 22759u), -1i).b.a.x, ~u_input.d, 3916u)), ~global4[_wgslsmith_index_u32(arg_0 << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, u_input.d), vec2<u32>(u_input.c, u_input.c)) % 32u), 7u)] & ~global4[_wgslsmith_index_u32(80798u, 7u)]);
    global4 = array<vec3<u32>, 7>();
    let var_3 = Struct_1(vec4<u32>(29069u, ~_wgslsmith_sub_u32(min(u_input.d, 20784u), ~7337u), u_input.d, arg_0), global4[_wgslsmith_index_u32(~(~6757u), 7u)], any(vec2<bool>(func_5(vec3<f32>(global3[_wgslsmith_index_u32(25266u, 2u)], -1953f, -375f), firstLeadingBit(arg_0), func_4(vec4<i32>(var_0.x, 12700i, u_input.a, u_input.a), vec3<u32>(arg_0, 1u, 1u), 1i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2861f, global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], 1000f))).c.d, global0[_wgslsmith_index_u32(arg_0, 30u)])), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(u_input.d, 2u)])) * global3[_wgslsmith_index_u32(~14622u, 2u)]) >= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(min(arg_0, 37146u), 2u)])), var_0.xy);
    return _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 2u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.d, u_input.c), ~vec2<u32>(u_input.c, u_input.c)), select(~vec2<u32>(75666u, 9807u), ~vec2<u32>(u_input.d, 0u), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 30u)]))), 0u, ~u_input.c), global4[_wgslsmith_index_u32(~1965u << (u_input.d % 32u), 7u)]);
    let var_1 = !(global0[_wgslsmith_index_u32(1u, 30u)] || false) || !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.x, 22254u)), countOneBits(~vec2<u32>(var_0.x, u_input.d))), 30u)];
    global4 = array<vec3<u32>, 7>();
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1034f * global3[_wgslsmith_index_u32(u_input.c, 2u)])) + global3[_wgslsmith_index_u32(~9988u ^ _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(55856u, u_input.d, 34846u)), 2u)]))));
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(22844u)), _wgslsmith_f_op_f32(1612f * global3[_wgslsmith_index_u32(var_0.x, 2u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d, 2u)]) * global3[_wgslsmith_index_u32(_wgslsmith_add_u32(52328u, var_0.x), 2u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(133f, 780f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(1u)), -140f, -565f, -702f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-732f, -288f, 1193f, global3[_wgslsmith_index_u32(u_input.d, 2u)]) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(1u, 2u)], -159f, global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(u_input.c, 2u)]), vec4<f32>(global3[_wgslsmith_index_u32(41031u, 2u)], -704f, -1404f, global3[_wgslsmith_index_u32(u_input.c, 2u)])))))));
    var var_5 = _wgslsmith_div_vec3_i32(max(vec3<i32>(~func_4(vec4<i32>(-1i, u_input.a, 51078i, 0i), global4[_wgslsmith_index_u32(var_0.x, 7u)], -1i).b.e.x, 0i, -5172i), vec3<i32>(abs(1i), _wgslsmith_mult_i32(_wgslsmith_div_i32(46848i, -576i), 0i), 16046i)), vec3<i32>(_wgslsmith_clamp_i32(reverseBits(~u_input.e), u_input.e, func_2(global2[_wgslsmith_index_u32(4294967295u, 20u)], any(vec3<bool>(var_3, var_3, global0[_wgslsmith_index_u32(var_0.x, 30u)])), _wgslsmith_add_i32(22218i, u_input.a), Struct_3(vec4<f32>(var_4.x, -772f, var_4.x, var_4.x), vec3<i32>(u_input.b, 28593i, u_input.a), Struct_1(vec4<u32>(0u, 45051u, var_0.x, 4294967295u), global4[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], var_1, vec2<i32>(-24864i, u_input.e)), vec4<u32>(u_input.d, u_input.d, 1u, u_input.c))).x), ~u_input.e, u_input.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -312f, global3[_wgslsmith_index_u32(var_0.x, 2u)])) + var_4.zyy)), _wgslsmith_f_op_vec3_f32(-var_4.xwy), !select(select(vec3<bool>(var_3, false, false), vec3<bool>(var_3, var_1, global0[_wgslsmith_index_u32(6798u, 30u)]), true), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], true, true), vec3<bool>(var_1, true, var_3), true), select(vec3<bool>(global0[_wgslsmith_index_u32(79001u, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)], true), vec3<bool>(var_3, var_1, true), true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, 1f, func_5(_wgslsmith_f_op_vec3_f32(var_4.xxw + vec3<f32>(508f, global3[_wgslsmith_index_u32(u_input.c, 2u)], var_4.x)), abs(4294967295u), Struct_4(global3[_wgslsmith_index_u32(14891u, 2u)], Struct_1(vec4<u32>(u_input.c, 69361u, var_0.x, 27066u), vec3<u32>(4294967295u, 30309u, 1u), true, true, var_5.xy), global1[_wgslsmith_index_u32(4294967295u, 29u)]), var_4).a.x, _wgslsmith_f_op_f32(abs(1112f)))));
}

