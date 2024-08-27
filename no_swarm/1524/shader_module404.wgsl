struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<bool>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<i32>(1i, -13567i, 0i), vec2<bool>(true, false), -827f, vec2<bool>(false, false)), Struct_1(vec3<u32>(1u, 81373u, 0u), vec3<i32>(1i, -26406i, 2147483647i), vec2<bool>(true, false), 937f, vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 57685u, 0u), vec3<i32>(2147483647i, 1i, 52331i), vec2<bool>(false, true), -514f, vec2<bool>(true, true)), Struct_1(vec3<u32>(0u, 0u, 0u), vec3<i32>(-1i, 13616i, 1i), vec2<bool>(true, false), -580f, vec2<bool>(true, true)), Struct_1(vec3<u32>(1u, 67780u, 2665u), vec3<i32>(0i, 1i, 20532i), vec2<bool>(true, false), -951f, vec2<bool>(false, false)), Struct_1(vec3<u32>(19048u, 1u, 48135u), vec3<i32>(1i, -1i, 1i), vec2<bool>(true, true), -742f, vec2<bool>(true, false)), Struct_1(vec3<u32>(0u, 1u, 8923u), vec3<i32>(10480i, 12692i, -1599i), vec2<bool>(true, false), 1000f, vec2<bool>(false, false)), Struct_1(vec3<u32>(1u, 96122u, 4294967295u), vec3<i32>(1i, 1i, 4022i), vec2<bool>(false, true), -1975f, vec2<bool>(false, true)), Struct_1(vec3<u32>(14551u, 27706u, 13315u), vec3<i32>(-30933i, 37101i, i32(-2147483648)), vec2<bool>(true, false), 725f, vec2<bool>(true, true)), Struct_1(vec3<u32>(0u, 0u, 1u), vec3<i32>(-28332i, -1i, -1i), vec2<bool>(true, true), -1405f, vec2<bool>(true, false)), Struct_1(vec3<u32>(18290u, 21223u, 4294967295u), vec3<i32>(0i, 1i, 45246i), vec2<bool>(true, false), 1000f, vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<i32>(12376i, -1706i, i32(-2147483648)), vec2<bool>(true, false), -630f, vec2<bool>(false, true)), Struct_1(vec3<u32>(71160u, 31566u, 98354u), vec3<i32>(0i, 39925i, 11119i), vec2<bool>(true, false), 115f, vec2<bool>(true, false)), Struct_1(vec3<u32>(1u, 0u, 51236u), vec3<i32>(12929i, -12839i, 51693i), vec2<bool>(true, true), -108f, vec2<bool>(false, false)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<i32>(-34401i, -14144i, i32(-2147483648)), vec2<bool>(false, false), 657f, vec2<bool>(false, true)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec3<i32>(11350i, -15231i, -1i), vec2<bool>(true, true), -1733f, vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 65084u), vec3<i32>(i32(-2147483648), 6769i, 29487i), vec2<bool>(false, false), -1101f, vec2<bool>(true, false)), Struct_1(vec3<u32>(4294967295u, 47901u, 4294967295u), vec3<i32>(i32(-2147483648), 32401i, 1i), vec2<bool>(false, false), -587f, vec2<bool>(true, false)), Struct_1(vec3<u32>(48981u, 26910u, 56744u), vec3<i32>(1i, -86971i, 0i), vec2<bool>(true, true), -516f, vec2<bool>(true, true)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec3<i32>(2147483647i, 0i, 71648i), vec2<bool>(false, false), 408f, vec2<bool>(true, false)), Struct_1(vec3<u32>(57494u, 8840u, 77512u), vec3<i32>(0i, 1i, 39592i), vec2<bool>(false, false), -163f, vec2<bool>(true, false)), Struct_1(vec3<u32>(77184u, 0u, 34141u), vec3<i32>(41154i, 1i, 0i), vec2<bool>(true, false), -146f, vec2<bool>(false, false)), Struct_1(vec3<u32>(1u, 16932u, 0u), vec3<i32>(-14342i, 51993i, 1i), vec2<bool>(true, false), 161f, vec2<bool>(false, true)), Struct_1(vec3<u32>(1u, 20515u, 0u), vec3<i32>(-10924i, 20103i, 43740i), vec2<bool>(true, false), -323f, vec2<bool>(false, false)), Struct_1(vec3<u32>(1u, 116122u, 10390u), vec3<i32>(37308i, -12086i, 1i), vec2<bool>(false, true), -352f, vec2<bool>(false, false)), Struct_1(vec3<u32>(115406u, 1u, 27257u), vec3<i32>(1i, 0i, 2147483647i), vec2<bool>(true, false), -1000f, vec2<bool>(false, false)), Struct_1(vec3<u32>(1u, 4294967295u, 1u), vec3<i32>(1i, i32(-2147483648), -3693i), vec2<bool>(true, false), 613f, vec2<bool>(true, true)), Struct_1(vec3<u32>(57936u, 4294967295u, 76130u), vec3<i32>(i32(-2147483648), i32(-2147483648), 6486i), vec2<bool>(true, false), 831f, vec2<bool>(true, true)), Struct_1(vec3<u32>(51937u, 2918u, 23748u), vec3<i32>(-15823i, -58088i, 2147483647i), vec2<bool>(false, false), 583f, vec2<bool>(true, false)), Struct_1(vec3<u32>(26720u, 0u, 45853u), vec3<i32>(38903i, -1i, i32(-2147483648)), vec2<bool>(true, true), 375f, vec2<bool>(false, false)));

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(13588i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(1i, -1i));

var<private> global2: array<u32, 19> = array<u32, 19>(1u, 124684u, 1u, 4294967295u, 27810u, 0u, 0u, 42890u, 0u, 70127u, 5345u, 1u, 0u, 4294967295u, 8494u, 14055u, 0u, 88426u, 0u);

var<private> global3: array<vec3<f32>, 5>;

var<private> global4: vec3<u32> = vec3<u32>(1u, 1u, 4294967295u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global1 = array<vec2<i32>, 4>();
    global0 = array<Struct_1, 30>();
    var var_0 = !vec2<bool>(true, any(vec3<bool>(true, all(vec4<bool>(arg_2.e.x, false, arg_3.e.x, true)), all(vec3<bool>(false, false, arg_2.c.x)))));
    global3 = array<vec3<f32>, 5>();
    let var_1 = Struct_2(-(_wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.x, arg_3.b.x, arg_3.b.x, u_input.a), vec4<i32>(-68040i, 2147483647i, arg_2.b.x, u_input.a)) & _wgslsmith_div_i32(-arg_2.b.x, arg_3.b.x)), Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(~(0u & arg_3.a.x), 19u)], 3098u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~u_input.c, 19u)], 19u)]), ~abs(~arg_3.b), arg_3.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.d))), select(arg_2.e, select(vec2<bool>(arg_2.e.x, arg_3.e.x), select(vec2<bool>(true, arg_3.c.x), arg_3.c, false), true && arg_3.c.x), any(vec2<bool>(arg_2.c.x, false)))));
    return arg_3.b.x > arg_3.b.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32) -> bool {
    global4 = ~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, ~_wgslsmith_clamp_u32(39802u, u_input.c, 20975u), ~global4.x), _wgslsmith_sub_vec3_u32(~firstLeadingBit(vec3<u32>(0u, u_input.c, 1u)), vec3<u32>(global4.x ^ global2[_wgslsmith_index_u32(global4.x, 19u)], 29783u, _wgslsmith_sub_u32(global4.x, 67399u))));
    var var_0 = vec4<bool>(u_input.c > _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(63916u, 1u, global2[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(global2[_wgslsmith_index_u32(global4.x, 19u)], 4294967295u, global2[_wgslsmith_index_u32(global4.x, 19u)]))), all(vec4<bool>(true, func_3(-306f, _wgslsmith_mult_vec2_i32(global1[_wgslsmith_index_u32(u_input.c, 4u)], vec2<i32>(690i, u_input.a)), Struct_1(vec3<u32>(global4.x, 62222u, 13632u), vec3<i32>(u_input.b, u_input.a, u_input.b), vec2<bool>(false, arg_0.x), arg_1, vec2<bool>(arg_0.x, arg_0.x)), global0[_wgslsmith_index_u32(firstTrailingBit(1468u), 30u)]), arg_0.x, !(!arg_0.x))), select(all(vec2<bool>(all(arg_0), true)), (firstTrailingBit(62727u) > global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 19u)], 19u)]) | !(true & arg_0.x), true), any(vec4<bool>(arg_0.x, func_3(arg_1, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(20822u, 19u)]), vec2<u32>(u_input.c, 1u)), 4u)], global0[_wgslsmith_index_u32(global4.x, 30u)], global0[_wgslsmith_index_u32(~0u, 30u)]), arg_0.x, true)));
    var var_1 = arg_0;
    var var_2 = Struct_1(~vec3<u32>(33286u, 1u, global4.x), vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, -2147483647i, -62865i), -vec3<i32>(-15899i, u_input.b, -40516i)), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(u_input.c, 4u)] >> (vec2<u32>(global4.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55809u, 19u)], 19u)]) % vec2<u32>(32u)), -vec2<i32>(u_input.b, 62552i))) | _wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(-37979i), -u_input.b, -12758i), ~(~vec3<i32>(-63333i, -1i, u_input.b))), select(arg_0.zy, select(select(vec2<bool>(false, false), select(arg_0.wy, vec2<bool>(true, true), false), vec2<bool>(var_0.x, false)), vec2<bool>(true, var_0.x), var_0.x), var_1.x), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(sign(1868f))), select(select(var_0.yx, vec2<bool>(false, var_0.x), vec2<bool>(4294967295u <= global4.x, false | var_1.x)), vec2<bool>(!(!var_0.x), !any(vec3<bool>(var_0.x, false, true))), false));
    let var_3 = !(!var_0.ww);
    return arg_0.x;
}

fn func_2() -> bool {
    let var_0 = !(u_input.a < countOneBits(2147483647i & u_input.b));
    global4 = vec3<u32>(abs(global2[_wgslsmith_index_u32(countOneBits(~_wgslsmith_add_u32(40397u, 11704u)), 19u)]), min(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global4.x, 19u)], _wgslsmith_clamp_u32(global4.x, 1u, global4.x)), global4.x) ^ ~u_input.c, min(u_input.c & ~(~34455u), 4294967295u));
    let var_1 = global0[_wgslsmith_index_u32(~min(global4.x, ~(u_input.c | 1u)), 30u)];
    global3 = array<vec3<f32>, 5>();
    let var_2 = ~(~(~(99817u >> ((global4.x & global2[_wgslsmith_index_u32(var_1.a.x, 19u)]) % 32u))));
    return func_4(vec4<bool>(true, !(!any(var_1.c)), all(vec4<bool>(var_0 & var_1.c.x, -73247i != u_input.a, func_3(var_1.d, vec2<i32>(u_input.b, var_1.b.x), Struct_1(var_1.a, var_1.b, var_1.e, var_1.d, vec2<bool>(true, var_0)), Struct_1(var_1.a, vec3<i32>(u_input.b, u_input.a, -1i), vec2<bool>(false, var_1.e.x), -1853f, var_1.c)), select(var_0, var_0, var_1.e.x))), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d))));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.e.x;
    global3 = array<vec3<f32>, 5>();
    return Struct_1(countOneBits(countOneBits(vec3<u32>(112358u, 25002u, 67205u))) & ~(~arg_1.a), arg_1.b, select(!select(arg_1.c, vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_1.c.x)), arg_1.e, any(select(arg_0.zx, !arg_1.c, !arg_1.c))), arg_1.d, vec2<bool>(arg_0.x == (any(arg_0.yy) | true), arg_0.x));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_5(select(vec3<bool>(true, true, false), vec3<bool>(true, func_2(), true), true), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(35570u, global4.x)), min(global4.xz, global4.zx)), global4.xz), _wgslsmith_sub_u32(u_input.c, u_input.c)), 30u)]);
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~firstTrailingBit(~global2[_wgslsmith_index_u32(u_input.c, 19u)])), select(33170u, abs(32673u), !var_0.c.x), u_input.c), 30u)];
    let var_2 = ~abs(var_1.a.xy);
    let var_3 = Struct_1(_wgslsmith_mod_vec3_u32(reverseBits(~firstLeadingBit(vec3<u32>(u_input.c, var_0.a.x, u_input.c))), vec3<u32>(~4294967295u << ((0u >> (0u % 32u)) % 32u), 0u, firstTrailingBit(max(var_0.a.x, 28825u)))), abs(vec3<i32>(arg_0, arg_0, ~(~var_0.b.x))), vec2<bool>(func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-297f)))), ~(-var_0.b.zy), global0[_wgslsmith_index_u32(~39964u, 30u)], var_0), true), var_0.d, var_1.e);
    global2 = array<u32, 19>();
    return Struct_2(2147483647i, func_5(vec3<bool>(var_0.c.x, var_0.c.x, ~10773u >= func_5(vec3<bool>(false, false, true), var_0).a.x), Struct_1(vec3<u32>(var_1.a.x, var_0.a.x, 4578u), vec3<i32>(max(1i, var_1.b.x), var_3.b.x, 6185i), select(select(vec2<bool>(true, var_1.c.x), vec2<bool>(var_1.c.x, var_3.e.x), true), var_1.c, var_1.c.x != false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) + -665f), vec2<bool>(func_5(vec3<bool>(var_1.e.x, true, var_3.c.x), var_3).e.x, var_3.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-max(-8998i ^ (1i & u_input.b), u_input.a << (u_input.c % 32u)));
    global4 = ~(~firstTrailingBit(abs(vec3<u32>(24574u, 46185u, var_0.b.a.x) >> (vec3<u32>(global4.x, 90795u, global2[_wgslsmith_index_u32(var_0.b.a.x, 19u)]) % vec3<u32>(32u)))));
    let var_1 = 4572u;
    var var_2 = true;
    var var_3 = _wgslsmith_mod_vec3_u32(select(~(~vec3<u32>(28276u, var_0.b.a.x, var_0.b.a.x)), vec3<u32>(1u, var_1, 0u) & var_0.b.a, select(!vec3<bool>(var_0.b.e.x, var_0.b.c.x, true), select(vec3<bool>(var_0.b.c.x, var_0.b.e.x, true), vec3<bool>(var_0.b.c.x, var_0.b.c.x, true), vec3<bool>(var_0.b.c.x, var_0.b.e.x, var_0.b.c.x)), false)), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(55204u, var_0.b.a.x), var_0.b.a.x, global2[_wgslsmith_index_u32(func_5(vec3<bool>(var_0.b.e.x, false, true), var_0.b).a.x, 19u)]), _wgslsmith_sub_u32(0u, var_1), ~(~29316u))) >> (var_0.b.a % vec3<u32>(32u));
    let var_4 = func_1(max(var_0.a ^ 0i, ~u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1616f, 445f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-478f, 1552f))))))));
}

