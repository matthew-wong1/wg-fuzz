struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec2<bool>(true, true), vec3<f32>(-1375f, 1097f, 1663f), 21013u, Struct_2(5780i, i32(-2147483648), Struct_1(false)), 598f), Struct_3(vec2<bool>(true, false), vec3<f32>(-1443f, -655f, 104f), 7614u, Struct_2(7836i, 1i, Struct_1(false)), -710f), Struct_3(vec2<bool>(false, false), vec3<f32>(-764f, -1704f, -1515f), 22579u, Struct_2(-32075i, 35574i, Struct_1(false)), -631f), Struct_3(vec2<bool>(true, true), vec3<f32>(658f, 1264f, 1000f), 0u, Struct_2(7755i, -5587i, Struct_1(false)), 2097f), Struct_3(vec2<bool>(false, false), vec3<f32>(-1081f, -1377f, -445f), 12634u, Struct_2(-13105i, 30981i, Struct_1(true)), -241f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> bool {
    var var_0 = Struct_1(any(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))));
    global1 = !(1838i >= arg_1);
    global0 = array<f32, 19>();
    global0 = array<f32, 19>();
    let var_1 = -30397i;
    return var_0.a;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = !select(vec3<bool>(arg_0.x, func_3(select(-41331i, u_input.c, false), 2147483647i, vec2<i32>(15660i, 2147483647i)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)) == 1u), arg_0, select(!(!arg_0), select(!vec3<bool>(arg_0.x, true, arg_0.x), select(arg_0, vec3<bool>(false, true, true), true), arg_0.x), arg_0.x));
    let var_1 = Struct_4(Struct_2(_wgslsmith_div_i32(select(_wgslsmith_add_i32(16749i, u_input.c), u_input.b, true), u_input.c), -57409i, Struct_1(func_3(-u_input.a.x, 7930i, _wgslsmith_mult_vec2_i32(u_input.a.zx, vec2<i32>(26884i, u_input.a.x))))));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_3 = var_2.d.c;
    global1 = true;
    return global2[_wgslsmith_index_u32(0u, 5u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    var var_0 = func_2(!arg_0).d.c;
    let var_1 = func_2(arg_0).d;
    let var_2 = var_1.c;
    let var_3 = vec3<bool>(arg_0.x, arg_0.x, var_0.a);
    let var_4 = Struct_4(func_2(!vec3<bool>(any(vec3<bool>(false, true, false)), !arg_2.a.x, func_2(vec3<bool>(arg_2.a.x, false, false)).d.c.a)).d);
    return var_4.a.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1734f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 19u)] + -862f), global0[_wgslsmith_index_u32(1u, 19u)]))))));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), -313f));
    var_0 = arg_1.x;
    global0 = array<f32, 19>();
    var var_1 = arg_2.a;
    return var_1.c;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_4(func_2(select(vec3<bool>(arg_1 < 64037u, u_input.a.x >= 47483i, !arg_0.a), !select(vec3<bool>(false, arg_0.a, arg_2.x), vec3<bool>(arg_0.a, true, arg_2.x), arg_0.a), any(select(vec3<bool>(true, arg_0.a, false), vec3<bool>(true, false, false), true)))).d);
    return var_0.a;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = func_6(func_5(Struct_2(~u_input.a.x, -(~u_input.b), func_4(!arg_0, 48757i, func_2(arg_0))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -103f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 19u)] + 594f) - _wgslsmith_f_op_f32(max(503f, global0[_wgslsmith_index_u32(4294967295u, 19u)])))), Struct_4(func_2(arg_0).d)), max(select(1u, max(4294967295u, select(1u, 18880u, arg_0.x)), arg_0.x), 1u), !(!func_2(vec3<bool>(false, true, arg_0.x)).a));
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, 1u, max(34689u, 4294967295u)), ~(~vec3<u32>(15336u, 14529u, 33215u))), 4294967295u, 26003u, ~(~(~25703u)));
    global1 = var_0.c.a;
    var var_2 = arg_0.xx;
    return ~var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_mod_vec3_i32(vec3<i32>(-31953i, -25224i, u_input.a.x), u_input.a), vec3<i32>(min(-1i, firstTrailingBit(u_input.b)) ^ u_input.b, _wgslsmith_add_i32(u_input.b, _wgslsmith_sub_i32(~u_input.c, countOneBits(u_input.c))), _wgslsmith_mult_i32(u_input.b, 1i & func_1(vec3<bool>(false, false, true)))), global0[_wgslsmith_index_u32(1u, 19u)] != _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(139680u, 19u)] * global0[_wgslsmith_index_u32(17452u, 19u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(235f)), global0[_wgslsmith_index_u32(func_2(vec3<bool>(true, false, true)).c, 19u)]))));
    let var_1 = Struct_4(Struct_2(2147483647i, -(21152i ^ func_1(vec3<bool>(false, false, true))), func_5(Struct_2(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.b, u_input.a.x, -1i)), -1i, func_6(Struct_1(true), 46368u, vec2<bool>(true, false)).c), vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13005u, 19u)]), -185f), Struct_4(func_6(Struct_1(false), 9598u, vec2<bool>(false, true))))));
    global2 = array<Struct_3, 5>();
    var var_2 = ~select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), func_3(u_input.b, abs(u_input.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), u_input.a.yx, vec2<i32>(u_input.b, var_0.x)))) << (countOneBits(min(vec2<u32>(1u, 1u), select(firstTrailingBit(vec2<u32>(9674u, 74106u)), max(vec2<u32>(1u, 78839u), vec2<u32>(4294967295u, 1u)), true))) % vec2<u32>(32u));
    global2 = array<Struct_3, 5>();
    var var_3 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 19u)]);
    var_0 = firstTrailingBit(-(~(~vec3<i32>(-2147483647i, var_1.a.b, 18749i)))) << (vec3<u32>(1u, var_2.x, var_2.x) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~(~var_2.x)), select(var_2.x, ~(~39537u), false), 4294967295u), _wgslsmith_dot_vec4_i32(firstLeadingBit(abs(min(vec4<i32>(u_input.a.x, -1i, 2147483647i, 2147483647i), vec4<i32>(-10696i, 0i, -2147483647i, var_1.a.b)))), vec4<i32>(2147483647i, 1i, -countOneBits(-1i), var_0.x)));
}

