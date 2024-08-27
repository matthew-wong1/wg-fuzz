struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<u32, 9> = array<u32, 9>(2394u, 1u, 34634u, 9539u, 57640u, 0u, 24838u, 21264u, 23697u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<i32> {
    var var_0 = any(global1[_wgslsmith_index_u32(58067u, 19u)]);
    global1 = array<vec4<bool>, 19>();
    var var_1 = Struct_3(Struct_2(u_input.a, Struct_1(vec3<bool>(!global2.x, global0.c.b & global0.b.d, global2.x), global2.x, global0.c.c, true), Struct_1(select(!global0.b.a, global0.c.a, select(vec3<bool>(false, true, global2.x), global0.c.a, global0.b.a.x)), false, global0.c.c, true), vec2<u32>(1u, 1u) & ~vec2<u32>(global3[_wgslsmith_index_u32(global0.e.x, 9u)], 5826u), ~vec3<u32>(~global3[_wgslsmith_index_u32(35346u, 9u)], 45032u, countOneBits(global3[_wgslsmith_index_u32(1u, 9u)]))), global0.c.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(-19859i, reverseBits(u_input.a), u_input.a), ~vec3<i32>(global0.a, 40601i, global0.a)), global0.e, vec2<i32>(2147483647i, 0i) << (global0.d % vec2<u32>(32u)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)), _wgslsmith_f_op_f32(floor(-329f)))), var_1.a.b.c));
    let var_3 = var_1.a;
    return reverseBits(vec4<i32>(~1i, var_3.a, global0.a, firstTrailingBit(0i)));
}

fn func_2() -> bool {
    var var_0 = ~(_wgslsmith_sub_vec4_i32(func_3(), ~(-vec4<i32>(-34751i, 12335i, global0.a, u_input.a))) & select(abs(vec4<i32>(u_input.a, -52952i, u_input.a, u_input.a)) >> (vec4<u32>(1u, global0.e.x, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.d.x, 9u)], 9u)]) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(36002i, -2760i, u_input.a, u_input.a), vec4<i32>(global0.a, 0i, 48198i, -36786i)) << (vec4<u32>(global0.e.x, global3[_wgslsmith_index_u32(23776u, 9u)], global0.d.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)]) % vec4<u32>(32u)), true));
    let var_1 = var_0.x;
    return any(!vec3<bool>(!any(global0.c.a.xy), global0.c.a.x, true));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: f32) -> Struct_4 {
    var var_0 = global0.c;
    var var_1 = select(vec4<bool>(any(!select(vec2<bool>(true, true), var_0.a.yz, global0.c.a.xy)), func_2(), global2.x, false), !select(select(select(vec4<bool>(false, var_0.b, true, global2.x), vec4<bool>(global2.x, arg_0.x, false, true), global0.b.b), !vec4<bool>(var_0.b, arg_2, var_0.d, var_0.d), vec4<bool>(true, true, true, true)), !(!vec4<bool>(global0.c.d, arg_2, false, true)), !select(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47678u, 9u)], 19u)], global0.c.a.x)), !select(global1[_wgslsmith_index_u32(1u, 19u)], select(global1[_wgslsmith_index_u32(57453u, 19u)], select(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.d.x, 9u)], 9u)], 9u)], 9u)], 19u)], vec4<bool>(arg_0.x, arg_0.x, true, var_0.a.x), true), 306f >= arg_3), !vec4<bool>(arg_0.x, true, true, global0.b.a.x)));
    global1 = array<vec4<bool>, 19>();
    global2 = select(select(!(!global0.b.a.yx), select(vec2<bool>(true, true), !var_1.zx, var_1.zx), var_1.x), !var_0.a.yz, any(var_1.wzz) || (global0.b.c != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(343f - 1419f)))));
    var var_2 = global0.b;
    return Struct_4(Struct_2(3561i, Struct_1(!(!global0.c.a), var_1.x, -1000f, var_2.a.x), Struct_1(!global0.c.a, any(var_2.a.zz), global0.c.c, arg_0.x), global0.d ^ vec2<u32>(_wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(global0.e.x, 9u)]), _wgslsmith_sub_u32(84550u, 1u)), ~global0.e));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec4<i32> {
    let var_0 = func_1(vec2<bool>(!(!(arg_1.a.b.d || false)), !(!(arg_1.a.a > arg_1.a.a))), -vec2<i32>(abs(3949i), ~(-14424i) >> (~global3[_wgslsmith_index_u32(arg_1.a.e.x, 9u)] % 32u)), !(!(global3[_wgslsmith_index_u32(~4294967295u, 9u)] > min(global3[_wgslsmith_index_u32(arg_1.a.d.x, 9u)], 0u))), 469f).a;
    var var_1 = select(!vec3<bool>(global0.c.b, global0.c.d, func_1(select(arg_1.a.b.a.xz, vec2<bool>(false, global0.b.d), false), -vec2<i32>(arg_1.a.a, arg_0), true, arg_1.a.c.c).a.b.a.x), !(!global0.b.a), var_0.c.a);
    global3 = array<u32, 9>();
    global3 = array<u32, 9>();
    var var_2 = abs(~vec3<u32>(_wgslsmith_add_u32(global0.e.x, 2771u) | 4294967295u, ~(var_0.e.x ^ 34434u), 8631u));
    return vec4<i32>(-25623i, ~var_0.a & u_input.a, -1i, 1i);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_4) -> Struct_3 {
    global0 = arg_3.a;
    let var_0 = vec3<f32>(338f, _wgslsmith_f_op_f32(arg_3.a.c.c - _wgslsmith_div_f32(-586f, _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1972f * arg_3.a.c.c)))) * arg_0.c));
    global2 = arg_3.a.c.a.zy;
    let var_1 = abs(firstLeadingBit(_wgslsmith_clamp_i32(1i, arg_1.x | global0.a, u_input.a)));
    global3 = array<u32, 9>();
    return Struct_3(arg_3.a, arg_2, _wgslsmith_mult_i32(-2147483647i, ~max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, global0.a), arg_1.zy), func_3().x)), ~vec3<u32>(_wgslsmith_mult_u32(countOneBits(arg_3.a.d.x), reverseBits(arg_3.a.e.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global0.d, global0.e.xx), global0.e.x), global0.d.x | 23262u), vec2<i32>(-_wgslsmith_dot_vec3_i32(arg_1.zzz, arg_1.wzz | vec3<i32>(arg_3.a.a, var_1, var_1)), arg_3.a.a));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.c, -173f)), -513f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1023f, 537f))))))), arg_1.a.c.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.c) * _wgslsmith_f_op_f32(1207f * global0.b.c)));
    global2 = vec2<bool>(-1725f != _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(-arg_2))), true);
    var var_1 = global1[_wgslsmith_index_u32(min(~1u, ~(~105159u)), 19u)];
    global3 = array<u32, 9>();
    global1 = array<vec4<bool>, 19>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_1(global0.b.a, any(global0.b.a.yz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(425f + global0.b.c)), global2.x), ~func_4(0i, func_1(global0.c.a.xz, vec2<i32>(u_input.a, u_input.a), global2.x, -1757f)), func_1(select(vec2<bool>(global2.x, false), !vec2<bool>(false, global2.x), any(global0.b.a.yz)), countOneBits(select(vec2<i32>(-2147483647i, 0i), vec2<i32>(-2147483647i, u_input.a), global0.b.a.zz)), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.c - -207f)))).a.b.c, func_1(global0.c.a.xx, _wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, global0.a), min(vec2<i32>(global0.a, -1i), vec2<i32>(-49485i, global0.a)), vec2<i32>(u_input.a, u_input.a)), global0.c.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.c.c, -564f)), global0.c.c))), Struct_4(func_1(!(!vec2<bool>(global2.x, false)), _wgslsmith_add_vec2_i32(vec2<i32>(global0.a, 1i), vec2<i32>(-6901i, u_input.a)), all(select(vec4<bool>(global2.x, global0.b.b, global0.b.b, global0.b.a.x), vec4<bool>(true, false, global0.b.a.x, global2.x), global0.c.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(855f + global0.c.c)))).a), 1420f);
    var var_1 = var_0.e;
    var var_2 = _wgslsmith_f_op_f32(max(var_0.b, 813f));
    global0 = Struct_2(firstLeadingBit(~(-8417i)), func_1(global0.c.a.yz, ~vec2<i32>(u_input.a, 12612i), global2.x, 840f).a.b, Struct_1(vec3<bool>(global2.x, select(var_0.a.b.a.x, true, var_0.a.c.d || global0.c.d), true), global2.x, -400f, true), select(vec2<u32>(43754u & var_0.a.d.x, ~var_0.a.d.x) | vec2<u32>(min(58479u, var_0.d.x), ~var_0.a.e.x), ~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.d.x, var_0.d.x), global0.e.xx)), !func_5(var_0.a.b, -vec4<i32>(-8615i, 67330i, global0.a, 5567i), _wgslsmith_f_op_f32(var_0.b * -468f), func_1(var_0.a.b.a.xx, vec2<i32>(var_0.e.x, global0.a), true, 2091f)).a.b.a.x), firstLeadingBit(_wgslsmith_mult_vec3_u32(~global0.e >> ((var_0.a.e & vec3<u32>(global0.d.x, 0u, 927u)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_sub_u32(var_0.d.x, global3[_wgslsmith_index_u32(4294967295u, 9u)]), ~4294967295u, ~37342u))));
    let var_3 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(1i, 77131i), global0.a), func_1(global0.b.a.xx, vec2<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_1.x, u_input.a, -13005i), _wgslsmith_clamp_i32(-1i, 0i, var_1.x)), ~_wgslsmith_clamp_i32(-9727i, -25255i, 0i)), any(func_6(Struct_3(Struct_2(-1i, Struct_1(vec3<bool>(var_0.a.b.a.x, true, false), false, -164f, var_0.a.c.d), var_0.a.c, vec2<u32>(global0.e.x, global3[_wgslsmith_index_u32(81676u, 9u)]), var_0.a.e), -930f, -29597i, var_0.a.e, vec2<i32>(2147483647i, var_1.x)), Struct_4(Struct_2(var_0.c, Struct_1(global0.c.a, true, var_0.b, true), var_0.a.b, global0.d, global0.e)), _wgslsmith_f_op_f32(f32(-1f) * -827f)).a.b.a), -1129f).a.c, func_1(global0.b.a.zx, -(~_wgslsmith_mult_vec2_i32(var_0.e, var_0.e)), false, 1f).a.b, ~_wgslsmith_sub_vec2_u32(~var_0.a.e.zx | global0.d, vec2<u32>(global3[_wgslsmith_index_u32(global0.e.x, 9u)], 1u)), ~(vec3<u32>(global0.e.x, global0.d.x, global3[_wgslsmith_index_u32(45063u, 9u)]) >> (vec3<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50767u, 9u)], 9u)], 9u)]) % vec3<u32>(32u))) >> (var_0.a.e % vec3<u32>(32u)));
    let var_4 = _wgslsmith_add_u32(1u, 49751u) << (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_3.e, _wgslsmith_add_vec3_u32(~var_3.e, vec3<u32>(~4705u, _wgslsmith_sub_u32(45383u, var_0.a.d.x), var_0.a.e.x))), 9u)] % 32u);
    var_1 = vec2<i32>(-1i) * -var_0.e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, 1i, u_input.a));
}

