struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(4294967295u, vec4<bool>(true, false, false, true), true, true), Struct_1(824u, vec4<bool>(false, true, false, false), true, false), Struct_1(1u, vec4<bool>(false, true, false, false), false, false), Struct_1(1u, vec4<bool>(false, false, false, false), true, true), Struct_1(4294967295u, vec4<bool>(false, true, true, true), false, false), Struct_1(1u, vec4<bool>(false, false, true, false), true, false), Struct_1(0u, vec4<bool>(true, false, false, true), false, false), Struct_1(40085u, vec4<bool>(true, true, true, false), true, false), Struct_1(0u, vec4<bool>(true, false, false, true), true, false), Struct_1(1844u, vec4<bool>(false, false, false, true), false, true), Struct_1(4294967295u, vec4<bool>(false, false, false, true), false, false), Struct_1(1u, vec4<bool>(true, false, false, false), false, true), Struct_1(84489u, vec4<bool>(false, true, true, true), true, true), Struct_1(4294967295u, vec4<bool>(true, false, false, true), false, false), Struct_1(1u, vec4<bool>(true, true, false, true), true, false), Struct_1(54473u, vec4<bool>(true, false, false, false), true, false), Struct_1(52570u, vec4<bool>(false, false, false, true), true, false), Struct_1(4294967295u, vec4<bool>(false, true, true, true), false, false), Struct_1(12047u, vec4<bool>(false, false, true, true), true, true), Struct_1(4294967295u, vec4<bool>(true, true, true, false), true, true), Struct_1(4294967295u, vec4<bool>(false, false, true, false), false, false), Struct_1(4294967295u, vec4<bool>(true, true, false, true), false, true), Struct_1(66288u, vec4<bool>(false, false, true, false), true, false), Struct_1(129466u, vec4<bool>(false, false, true, false), false, true));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_div_u32(reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, global1.d.a), arg_0.d.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx))), _wgslsmith_dot_vec3_u32(select(u_input.a, u_input.a, false) | u_input.a, ~(~vec3<u32>(1u, 4294967295u, global1.c))) ^ (global1.d.a << (1u % 32u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(min(1808f, arg_2.x)), 643f), vec3<f32>(_wgslsmith_f_op_f32(global2.a + global1.a), -1361f, global2.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, 1000f, 473f)) + vec3<f32>(_wgslsmith_f_op_f32(sign(-1443f)), _wgslsmith_f_op_f32(exp2(arg_0.a)), -803f))));
    var var_2 = Struct_1(~(~(_wgslsmith_clamp_u32(global1.b.a, 4294967295u, 1u) << (_wgslsmith_mod_u32(7002u, 50840u) % 32u))), !(!select(!arg_0.d.b, select(vec4<bool>(false, true, global3.x, true), global2.b.b, global2.d.b), global1.c >= arg_1)), true, false);
    global0 = array<Struct_2, 6>();
    var var_3 = abs(~vec4<u32>(arg_0.c, min(abs(23681u), arg_1), arg_1, _wgslsmith_mod_u32(58137u, global2.d.a >> (global1.d.a % 32u))));
    return vec4<bool>(true, any(!(!select(var_2.b.zz, vec2<bool>(global1.b.b.x, false), true))), global3.x, global1.d.d);
}

fn func_2() -> Struct_2 {
    let var_0 = select(select(global1.b.b, select(select(global1.d.b, func_3(global0[_wgslsmith_index_u32(u_input.b, 6u)], 86269u, vec2<f32>(-1000f, global1.a)), !global2.b.c), vec4<bool>(global3.x, global2.d.d | true, global2.d.c, false), global2.b.d), all(!(!global2.b.b.wxz))), vec4<bool>(12545i >= _wgslsmith_add_i32(i32(-1i) * -4029i, -global1.e.x), !global2.b.b.x, !(!func_3(global0[_wgslsmith_index_u32(100106u, 6u)], global2.b.a, vec2<f32>(global1.a, -709f)).x), true), global2.b.d || select(true, func_3(global0[_wgslsmith_index_u32(~79172u, 6u)], global2.b.a, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1182f, global2.a)))).x, any(vec4<bool>(false, true, global3.x, true))));
    let var_1 = Struct_1(global2.c, var_0, !(!all(global1.b.b.yyy)), true);
    let var_2 = global1.b;
    let var_3 = ~4294967295u;
    return Struct_2(global1.a, Struct_1(~min(u_input.a.x, 1u) ^ _wgslsmith_mod_u32(abs(var_2.a), firstLeadingBit(0u)), vec4<bool>(func_3(Struct_2(global2.a, Struct_1(0u, var_1.b, var_2.c, global2.d.c), 0u, global2.d, vec4<i32>(global2.e.x, global2.e.x, global2.e.x, -20132i)), _wgslsmith_add_u32(var_3, var_2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-377f, global2.a) - vec2<f32>(-537f, global1.a))).x, false, any(func_3(global0[_wgslsmith_index_u32(var_1.a, 6u)], 4294967295u, vec2<f32>(global1.a, global2.a)).yx), false), false, global1.d.d), var_3, var_1, max((global1.e ^ global2.e) >> (vec4<u32>(0u, 0u & var_3, 3737u, _wgslsmith_mod_u32(1u, 61695u)) % vec4<u32>(32u)), -vec4<i32>(global1.e.x, -2147483647i, global1.e.x, 2147483647i)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 6u)];
    let var_1 = func_2();
    var var_2 = var_1.d;
    let var_3 = 1u;
    global0 = array<Struct_2, 6>();
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a);
    global0 = array<Struct_2, 6>();
    let var_1 = global1.b;
    global1 = global0[_wgslsmith_index_u32(~abs(u_input.b) ^ var_1.a, 6u)];
    let var_2 = Struct_1(global1.d.a, vec4<bool>(true, !(_wgslsmith_f_op_f32(-global1.a) == _wgslsmith_f_op_f32(global2.a - arg_0.a)), global3.x, func_2().d.d), (arg_1 <= global2.c) | !(var_1.c & false), arg_0.b.c);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(func_1(-2147483647i, Struct_2(774f, Struct_1(1u, global1.b.b, global2.d.c, false), firstTrailingBit(_wgslsmith_add_u32(7018u, global2.c)), global1.b, _wgslsmith_mod_vec4_i32(reverseBits(global2.e), vec4<i32>(0i, 25233i, global1.e.x, 1i))), ~(vec2<u32>(u_input.c, 4294967295u) << (max(vec2<u32>(1u, global2.b.a), u_input.a.yz) % vec2<u32>(32u))), global2.e.zx), reverseBits(~u_input.a.x), min(-global2.e.x | -26083i, countOneBits(select(-2147483647i, global1.e.x, global3.x))) & _wgslsmith_dot_vec4_i32(firstTrailingBit(global1.e) & vec4<i32>(global2.e.x, global1.e.x, global1.e.x, 2147483647i), ~(-vec4<i32>(global1.e.x, -1i, global1.e.x, 1i))));
    let var_0 = Struct_1(1455u | func_1(-func_4(global0[_wgslsmith_index_u32(1u, 6u)], 48864u, 0i).e.x, func_2(), vec2<u32>(~u_input.a.x, func_4(Struct_2(global2.a, global1.b, 0u, Struct_1(16869u, vec4<bool>(false, global1.d.c, global2.d.b.x, global1.d.c), true, false), global1.e), u_input.b, -2147483647i).c), ~vec2<i32>(global2.e.x, -44187i) >> ((u_input.a.zz << (vec2<u32>(u_input.b, global2.c) % vec2<u32>(32u))) % vec2<u32>(32u))).c, global1.d.b, global1.d.c, all(vec2<bool>(false, true)));
    global0 = array<Struct_2, 6>();
    global1 = func_2();
    global1 = func_1(global1.e.x, Struct_2(_wgslsmith_f_op_f32(abs(global1.a)), global1.b, func_1(func_2().e.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.d.a ^ 1u, abs(1u)), 6u)], reverseBits(u_input.a.yy), global2.e.zw << (vec2<u32>(15408u, global1.c) % vec2<u32>(32u))).d.a, func_1(global2.e.x, Struct_2(_wgslsmith_f_op_f32(global1.a + -1125f), global1.b, global2.c, global4[_wgslsmith_index_u32(~76973u, 24u)], select(global2.e, vec4<i32>(-11218i, -1i, global2.e.x, -30221i), vec4<bool>(true, global1.b.b.x, true, global2.d.c))), vec2<u32>(~55167u, 11494u), _wgslsmith_add_vec2_i32(abs(vec2<i32>(5526i, -3322i)), _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, global1.e.x), vec2<i32>(-29213i, global2.e.x)))).d, min(abs(vec4<i32>(global2.e.x, global2.e.x, -75299i, global2.e.x)), ~vec4<i32>(global2.e.x, global1.e.x, global2.e.x, global1.e.x))), u_input.a.zx | vec2<u32>(var_0.a, 4294967295u), global1.e.xy);
    let var_1 = Struct_2(-1607f, func_1(countOneBits(global2.e.x), Struct_2(global2.a, Struct_1(49868u, vec4<bool>(true, true, global2.d.d, global3.x), false, true), 4294967295u, Struct_1(~u_input.b, vec4<bool>(global1.d.c, false, true, true), any(vec3<bool>(global1.b.c, var_0.b.x, true)), true), global2.e), vec2<u32>(67837u, countOneBits(86693u)), countOneBits(vec2<i32>(abs(-2147483647i), -1877i))).b, _wgslsmith_mult_u32(global1.d.a, u_input.c), Struct_1(~_wgslsmith_mod_u32(1u, global1.d.a), vec4<bool>(func_4(Struct_2(834f, global2.b, u_input.c, Struct_1(1u, var_0.b, global1.b.c, global3.x), global2.e), 1u, 13531i).b.b.x & global1.d.b.x, true, false, select(select(true, global1.d.c, true), true, var_0.d)), !global1.d.c, func_3(global0[_wgslsmith_index_u32(79669u, 6u)], _wgslsmith_add_u32(firstTrailingBit(19598u), ~var_0.a), vec2<f32>(_wgslsmith_f_op_f32(select(-1777f, 1819f, var_0.d)), _wgslsmith_f_op_f32(-global2.a))).x), func_1(global2.e.x >> (global1.c % 32u), func_1(_wgslsmith_dot_vec4_i32(global2.e, vec4<i32>(global2.e.x, global2.e.x, 0i, global2.e.x)) << ((0u >> (var_0.a % 32u)) % 32u), Struct_2(_wgslsmith_f_op_f32(select(global2.a, global2.a, true)), func_1(global2.e.x, Struct_2(global2.a, global1.b, 0u, var_0, vec4<i32>(5887i, global2.e.x, -24270i, -1i)), vec2<u32>(19552u, var_0.a), vec2<i32>(global1.e.x, global2.e.x)).b, 4294967295u | global1.c, Struct_1(4294967295u, vec4<bool>(true, global3.x, true, true), true, global2.b.c), max(global2.e, global2.e)), vec2<u32>(global2.b.a, 1u) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), global2.e.yw), vec2<u32>(_wgslsmith_div_u32(~107992u, reverseBits(var_0.a)), 4294967295u), min(countOneBits(reverseBits(global1.e.zw)), vec2<i32>(abs(global2.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.e.x, -1i, global2.e.x), global2.e.yyx)))).e);
    var var_2 = var_1.d;
    global1 = global0[_wgslsmith_index_u32(1u, 6u)];
    global2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(72894u, firstTrailingBit(min(reverseBits(global1.e.x), ~_wgslsmith_mult_i32(-3688i, -3722i))));
}

