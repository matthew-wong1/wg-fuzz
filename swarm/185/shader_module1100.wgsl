struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32 = 213f;

var<private> global2: Struct_2 = Struct_2(vec3<bool>(true, true, true), 0i, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i)), 161f, Struct_1(vec3<i32>(-14427i, 26262i, 1i)));

var<private> global3: array<i32, 9>;

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<i32>(i32(-2147483648), -1i, 0i)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -47411i)), Struct_1(vec3<i32>(1952i, 53613i, 2147483647i)));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<f32>, arg_3: i32) -> vec4<i32> {
    var var_0 = vec3<u32>(1u, u_input.a, 31333u);
    global1 = _wgslsmith_f_op_f32(-global2.d);
    var var_1 = _wgslsmith_f_op_f32(-1030f + 241f);
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(~(~1u), _wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(0u & u_input.a, 7894u, _wgslsmith_mult_u32(var_0.x, 4294967295u)))), _wgslsmith_clamp_u32(42050u, ~_wgslsmith_sub_u32(var_0.x, arg_1 ^ u_input.a), ~(~arg_1 & 1u))), 3u)];
    var var_3 = true;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(i32(-1i) * -global0.x, 1i, (i32(-1i) * -2147483647i) >> (reverseBits(u_input.a) % 32u)), global0.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, var_2.a.x), vec2<i32>(0i, arg_3)), u_input.b.x), firstTrailingBit(~abs(vec4<i32>(global0.x, global2.e.a.x, var_2.a.x, 1i))) & firstLeadingBit(vec4<i32>(1i, ~u_input.c.x, ~(-2147483647i), global0.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = ~(~func_3(~4075i != _wgslsmith_div_i32(1i, global3[_wgslsmith_index_u32(u_input.a, 9u)]), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.d, global2.d), vec2<f32>(global2.d, global2.d))), global2.e.a.x));
    global0 = vec2<i32>(_wgslsmith_mod_i32(0i << (u_input.a % 32u), abs(-2147483647i) | _wgslsmith_sub_i32(0i, -global2.e.a.x)), _wgslsmith_add_i32((~global2.e.a.x << (u_input.a % 32u)) ^ -_wgslsmith_div_i32(-2147483647i, -14145i), _wgslsmith_mult_i32(u_input.c.x, _wgslsmith_add_i32(arg_1.a.x, global2.e.a.x) << (_wgslsmith_mult_u32(0u, u_input.a) % 32u))));
    let var_1 = arg_1;
    let var_2 = vec3<u32>(~u_input.a, _wgslsmith_mult_u32(u_input.a, 1u), _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, 7962u, 0u), ~vec4<u32>(1u, 40161u, 0u, 43771u)), ~(~select(u_input.a, 1833u, true))));
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(select(global2.e.a.x, min(2147483647i, u_input.b.x), arg_0.x), -2147483647i, u_input.b.x), _wgslsmith_add_i32(var_0.x, _wgslsmith_add_i32(2147483647i, ~global0.x)), _wgslsmith_div_i32(i32(-1i) * -global2.b, i32(-1i) * -global3[_wgslsmith_index_u32(4294967295u, 9u)])));
    return Struct_2(!global2.a, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global2.b, 2147483647i, global3[_wgslsmith_index_u32(0u, 9u)], global0.x), vec4<i32>(u_input.c.x, u_input.c.x, var_1.a.x, var_1.a.x)), -(~vec4<i32>(-18372i, 2147483647i, -1i, global0.x))), var_3.a.x), Struct_1(global2.e.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-108f * _wgslsmith_f_op_f32(962f * global2.d))) + -544f), Struct_1(var_1.a));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    let var_0 = global0.x != arg_0.x;
    global1 = 416f;
    var var_1 = Struct_2(!(!vec3<bool>(!var_0, any(vec4<bool>(global2.a.x, true, global2.a.x, true)), false)), _wgslsmith_mod_i32(global2.c.a.x, arg_0.x), func_2(!vec2<bool>(any(vec4<bool>(global2.a.x, global2.a.x, false, true)), global2.a.x), arg_1.e).c, _wgslsmith_f_op_f32(217f - global2.d), func_2(!global2.a.zx, global2.c).e);
    var var_2 = Struct_1(var_1.e.a);
    let var_3 = -(30796i << ((u_input.a ^ select(max(26803u, 12311u), 4294967295u << (u_input.a % 32u), func_2(var_1.a.xy, Struct_1(vec3<i32>(arg_1.e.a.x, global2.c.a.x, 2147483647i))).a.x)) % 32u));
    return func_2(vec2<bool>(!(!(u_input.b.x != u_input.b.x)), true), func_2(!var_1.a.zy, arg_1.c).e).a.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(select(vec3<bool>(true, true, true), !global2.a, vec3<bool>(true, func_4(global2.e.a, func_2(vec2<bool>(global2.a.x, global2.a.x), Struct_1(vec3<i32>(2147483647i, arg_1.a.x, arg_1.a.x)))), global2.a.x)), ~func_3(!(arg_0.x >= 0u), 4294967295u, _wgslsmith_div_vec2_f32(vec2<f32>(global2.d, global2.d), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d, 858f), vec2<f32>(1000f, global2.d), vec2<bool>(true, global2.a.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global2.b, 1i), _wgslsmith_clamp_vec3_i32(arg_1.a, vec3<i32>(32192i, -1342i, global2.e.a.x), global2.c.a))).x, func_2(vec2<bool>(true, true & !global2.a.x), Struct_1(_wgslsmith_clamp_vec3_i32(arg_1.a, arg_1.a, -u_input.c))).e, global2.d, func_2(vec2<bool>(global2.a.x, true & global2.a.x), func_2(vec2<bool>(global2.a.x, true), Struct_1(arg_1.a)).c).e);
    var var_1 = global2.a.xx;
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(~(select(u_input.a, 105661u, false) | 6699u)), 0u, u_input.a), 9u)];
    var_2 = -countOneBits(16272i);
    let var_3 = abs(arg_0);
    return func_2(vec2<bool>(var_1.x && any(!vec2<bool>(global2.a.x, false)), !(!any(global2.a.zx))), func_2(var_0.a.xx, global4[_wgslsmith_index_u32(4294967295u, 3u)]).c);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_1(_wgslsmith_div_vec2_u32(~reverseBits(firstTrailingBit(vec2<u32>(49048u, u_input.a))), ~vec2<u32>(1u, 0u)), arg_2.c);
    global1 = _wgslsmith_f_op_f32(exp2(arg_1));
    var_0 = arg_2;
    var var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(arg_0.wz, arg_2.c).e.a ^ global2.c.a, select(vec3<i32>(arg_2.b, 9539i, 2147483647i), vec3<i32>(global2.c.a.x, -2147483647i, global0.x), func_1(vec2<u32>(4294967295u, 1u), global4[_wgslsmith_index_u32(u_input.a, 3u)]).a) >> ((abs(vec3<u32>(0u, u_input.a, 0u)) >> (~vec3<u32>(8581u, 4294967295u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.c.x, _wgslsmith_add_i32(12353i, 49591i)));
    var var_2 = global2.a.x;
    return Struct_2(vec3<bool>(true, arg_0.x, true), var_1.x, Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, select(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 9u)], 8004i, global3[_wgslsmith_index_u32(0u, 9u)]), u_input.c, arg_2.a)), ~(var_0.e.a << (vec3<u32>(7781u, u_input.a, 0u) % vec3<u32>(32u))))), global2.d, func_1(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(91650u, u_input.a, 4294967295u, u_input.a), vec4<u32>(u_input.a, 1u, 0u, u_input.a)), firstTrailingBit(4294967295u)), Struct_1(~vec3<i32>(2147483647i, 1i, 0i))).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(!select(select(vec4<bool>(global2.a.x, false, global2.a.x, false), vec4<bool>(true, global2.a.x, false, false), global2.a.x), vec4<bool>(global2.a.x, true, global2.a.x, global2.a.x), true), select(select(!vec4<bool>(true, global2.a.x, false, false), select(vec4<bool>(global2.a.x, true, global2.a.x, global2.a.x), vec4<bool>(false, global2.a.x, global2.a.x, true), vec4<bool>(global2.a.x, false, global2.a.x, global2.a.x)), vec4<bool>(false, global2.a.x, true, false)), !vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false), global2.a.x), false), global2.d, func_1(~select(max(vec2<u32>(37692u, 58972u), vec2<u32>(0u, 109905u)), ~vec2<u32>(u_input.a, 0u), all(global2.a)), global2.e));
    let var_1 = func_1(countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), ~vec2<u32>(0u, 52927u)), u_input.a)), global4[_wgslsmith_index_u32(u_input.a, 3u)]).c;
    var var_2 = ~abs(vec3<u32>(u_input.a, 0u, _wgslsmith_clamp_u32(u_input.a, ~73948u, u_input.a | 0u)));
    global3 = array<i32, 9>();
    let var_3 = vec3<u32>(1u, _wgslsmith_div_u32(1u, ~569u), ~_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_add_u32(30084u, var_2.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(63302u, 34129u, u_input.a, 4294967295u), vec4<u32>(u_input.a, 0u, 57318u, var_2.x))));
    var_2 = _wgslsmith_div_vec3_u32(var_3, var_3) ^ ~(~(~vec3<u32>(87944u, u_input.a, 19874u)));
    var var_4 = Struct_1(~vec3<i32>(global0.x, var_0.b, u_input.b.x));
    var_4 = Struct_1(~vec3<i32>(_wgslsmith_mod_i32(-var_1.a.x, _wgslsmith_dot_vec3_i32(var_4.a, vec3<i32>(0i, global0.x, var_1.a.x))), _wgslsmith_sub_i32(min(-1i, 0i), _wgslsmith_mult_i32(global0.x, -2147483647i)), _wgslsmith_mult_i32(global0.x ^ var_1.a.x, global3[_wgslsmith_index_u32(var_2.x, 9u)])));
    var var_5 = func_5(vec4<bool>(func_4(vec3<i32>(-2147483647i, u_input.b.x >> (4294967295u % 32u), ~global3[_wgslsmith_index_u32(1468u, 9u)]), func_5(vec4<bool>(false, true, global2.a.x, global2.a.x), 1000f, func_1(var_2.yz, var_0.e))), !global2.a.x, global2.a.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d * global2.d), -1600f)) - -270f), Struct_2(vec3<bool>(var_1.a.x <= _wgslsmith_dot_vec2_i32(var_1.a.zy, vec2<i32>(-33034i, 37116i)), var_0.a.x, any(vec4<bool>(false, var_0.a.x, false, var_0.a.x))), 1i, global2.c, 1859f, func_1(~var_2.xy ^ vec2<u32>(34796u, 0u), global2.c).e)).a;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xz, 2147483647i, func_5(select(!(!vec4<bool>(true, true, var_5.x, global2.a.x)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, var_0.a.x, var_0.a.x, false), false), select(vec4<bool>(var_5.x, global2.a.x, var_0.a.x, var_0.a.x), vec4<bool>(global2.a.x, false, true, false), vec4<bool>(global2.a.x, var_0.a.x, global2.a.x, var_0.a.x)), vec4<bool>(var_0.a.x, true, var_5.x, false)), select(!vec4<bool>(var_0.a.x, false, var_0.a.x, true), vec4<bool>(var_5.x, global2.a.x, var_0.a.x, global2.a.x), select(vec4<bool>(global2.a.x, false, true, global2.a.x), vec4<bool>(var_0.a.x, false, var_5.x, false), vec4<bool>(var_5.x, global2.a.x, var_5.x, var_5.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(862f)), _wgslsmith_f_op_f32(-global2.d))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.d, -294f)))), Struct_2(vec3<bool>(true, true, any(vec4<bool>(false, global2.a.x, global2.a.x, true))), (global3[_wgslsmith_index_u32(10418u, 9u)] >> (4294967295u % 32u)) ^ _wgslsmith_add_i32(u_input.b.x, 4770i), Struct_1(func_3(var_5.x, var_3.x, vec2<f32>(596f, var_0.d), global3[_wgslsmith_index_u32(53198u, 9u)]).zyx), _wgslsmith_f_op_f32(select(-479f, -2686f, true)), global4[_wgslsmith_index_u32(0u, 3u)])).c.a.zy);
}

