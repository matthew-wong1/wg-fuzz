struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<f32, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> vec3<i32> {
    let var_0 = _wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(u_input.c, ~(-2147483647i))) >> (arg_0.zz % vec2<u32>(32u)), vec2<i32>(-2147483647i, countOneBits(arg_1.b.x << (~40502u % 32u))));
    global1 = array<f32, 29>();
    var var_1 = abs(_wgslsmith_mult_vec2_u32(arg_0.yy, arg_0.yz << (arg_0.yz % vec2<u32>(32u))));
    global0 = array<Struct_1, 19>();
    let var_2 = select(select(select(vec2<bool>(arg_1.a.b & true, true | arg_1.c.b), vec2<bool>(!arg_2, all(vec3<bool>(true, arg_1.c.b, arg_1.a.b))), any(!vec3<bool>(true, arg_2, false))), !vec2<bool>(all(vec3<bool>(arg_1.c.b, false, arg_2)), var_0.x < -2147483647i), !vec2<bool>(any(vec4<bool>(arg_2, arg_2, arg_2, arg_1.c.b)), arg_2)), select(vec2<bool>(arg_2, all(!vec2<bool>(arg_2, arg_2))), vec2<bool>(all(vec4<bool>(true, arg_2, false, true)) || true, false), true), false);
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec3<u32> {
    global1 = array<f32, 29>();
    let var_0 = Struct_1(vec3<f32>(arg_0.a.x, -431f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.a.x)))), true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.c.a), true), -vec3<i32>(~(-2147483647i), -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 27455i, arg_2.b.x))), arg_2.c);
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(arg_1.c.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), _wgslsmith_f_op_f32(floor(-1588f)), global1[_wgslsmith_index_u32(u_input.b | 4294967295u, 29u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a)))), ~max(~(-25431i), _wgslsmith_div_i32(arg_2.b.x, arg_2.b.x)) < (~reverseBits(0i) | -(arg_2.b.x ^ 0i)));
    let var_3 = Struct_2(arg_1.c, arg_2.b, var_2);
    return ~(~_wgslsmith_div_vec3_u32(~(~vec3<u32>(4294967295u, 17832u, u_input.b)), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, u_input.b), abs(vec3<u32>(1u, u_input.b, 42465u)))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.a.x;
    let var_1 = ~_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 81005u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 23383u, 38628u), vec3<u32>(0u, 48960u, u_input.b))), func_4(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(712f, global1[_wgslsmith_index_u32(36345u, 29u)], global1[_wgslsmith_index_u32(44196u, 29u)])), true), Struct_2(Struct_1(vec3<f32>(-825f, global1[_wgslsmith_index_u32(4294967295u, 29u)], 1000f), false), func_3(vec3<u32>(u_input.b, 1u, u_input.b), Struct_2(Struct_1(vec3<f32>(-447f, -1000f, 1449f), true), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.b, 19u)]), false), global0[_wgslsmith_index_u32(u_input.b, 19u)]), Struct_2(global0[_wgslsmith_index_u32(1u, 19u)], select(vec3<i32>(u_input.a.x, u_input.c, u_input.c), vec3<i32>(u_input.a.x, -6699i, u_input.a.x), vec3<bool>(false, true, true)), Struct_1(vec3<f32>(740f, -1453f, global1[_wgslsmith_index_u32(u_input.b, 29u)]), false))));
    var_0 = -1i;
    var var_2 = vec3<f32>(1329f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(46734u, 29u)]))), -973f);
    global0 = array<Struct_1, 19>();
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -1028f, _wgslsmith_f_op_f32(f32(-1f) * -473f)))), true);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global1 = array<f32, 29>();
    var var_0 = Struct_2(func_2(), vec3<i32>(arg_0.x, ~6149i, _wgslsmith_div_i32(arg_0.x, _wgslsmith_dot_vec3_i32(u_input.a, -u_input.a))), global0[_wgslsmith_index_u32(u_input.b, 19u)]);
    global0 = array<Struct_1, 19>();
    let var_1 = 313f;
    var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.b << (1u % 32u), 19u)], vec3<i32>(-1i, arg_0.x, firstLeadingBit(arg_0.x ^ 1i) >> (~(~u_input.b) % 32u)), func_2());
    return ~(~_wgslsmith_div_u32(u_input.b | u_input.b, u_input.b) << (u_input.b % 32u));
}

fn func_5(arg_0: f32) -> Struct_1 {
    global1 = array<f32, 29>();
    global0 = array<Struct_1, 19>();
    var var_0 = ~vec4<i32>(-65284i, countOneBits(firstTrailingBit(-1i)), -15342i << (firstTrailingBit(reverseBits(u_input.b)) % 32u), ~u_input.c);
    global1 = array<f32, 29>();
    let var_1 = vec2<bool>(true, !select(true, true | func_2().b, false));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, -1308f, arg_0)) + _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(26313u, 29u)], 179f, global1[_wgslsmith_index_u32(1u, 29u)]), vec3<f32>(global1[_wgslsmith_index_u32(10918u, 29u)], -541f, -861f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1196f, arg_0, 1165f)) * vec3<f32>(arg_0, -353f, arg_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-942f, global1[_wgslsmith_index_u32(u_input.b, 29u)], -1040f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, -655f, 1184f)))))), !all(select(!vec4<bool>(var_1.x, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, var_1.x))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = arg_1.a.xx;
    global1 = array<f32, 29>();
    return Struct_2(func_2(), u_input.a, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1858f, -891f), arg_1.a))), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~firstLeadingBit(~u_input.b)), 29u)] * 284f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-330f)));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-284f)) + _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(4294967295u, 29u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(841f)) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 29u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 29u)])), 167f), !(!any(vec3<bool>(false, true, true)) | true));
    let var_3 = func_6(_wgslsmith_f_op_vec3_f32(select(var_2.a, var_2.a, !(!var_2.b))), func_5(global1[_wgslsmith_index_u32(func_1(min(firstTrailingBit(u_input.a.xz), -vec2<i32>(u_input.a.x, u_input.c))), 29u)]), global0[_wgslsmith_index_u32(countOneBits(~func_4(Struct_1(vec3<f32>(var_2.a.x, var_0, 112f), false), Struct_2(Struct_1(var_2.a, var_2.b), u_input.a, var_2), Struct_2(Struct_1(var_2.a, true), vec3<i32>(u_input.a.x, u_input.c, 11833i), var_2)).x), 19u)]);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.a.x, global1[_wgslsmith_index_u32(266u, 29u)]) + _wgslsmith_f_op_f32(abs(1000f)))) - _wgslsmith_f_op_f32(-var_0)) * -1053f);
    var var_5 = Struct_2(func_6(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b, 29u)], var_2.a.x, var_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -2339f)))), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(584f, var_4, var_4), var_3.a.a), _wgslsmith_f_op_vec3_f32(var_2.a * vec3<f32>(var_3.c.a.x, var_4, -516f)))), false), func_6(var_3.a.a, func_6(_wgslsmith_f_op_vec3_f32(-var_3.c.a), Struct_1(vec3<f32>(-786f, var_4, var_2.a.x), true), Struct_1(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], -110f, 1111f), var_3.c.b)).c, func_6(_wgslsmith_f_op_vec3_f32(-var_3.a.a), Struct_1(vec3<f32>(-310f, var_2.a.x, 1762f), var_3.c.b), Struct_1(vec3<f32>(var_0, var_4, -1485f), var_2.b)).c).c).a, vec3<i32>(-u_input.a.x, func_6(var_2.a, func_2(), func_6(vec3<f32>(-2054f, 590f, var_2.a.x), func_2(), func_6(var_3.a.a, Struct_1(vec3<f32>(var_0, -839f, 334f), false), global0[_wgslsmith_index_u32(u_input.b, 19u)]).c).a).b.x, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, u_input.a), -vec3<i32>(-1i, u_input.a.x, -5610i)), vec3<i32>(1i, 0i, func_3(vec3<u32>(u_input.b, u_input.b, u_input.b), var_3, var_2.b).x))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_3.a.a, vec3<f32>(155f, -1000f, var_3.a.a.x)))), _wgslsmith_f_op_vec3_f32(min(var_2.a, var_2.a))), true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u | u_input.b), _wgslsmith_f_op_f32(abs(-1457f)), func_4(Struct_1(_wgslsmith_div_vec3_f32(func_6(vec3<f32>(1153f, var_3.a.a.x, -443f), Struct_1(vec3<f32>(317f, -922f, global1[_wgslsmith_index_u32(4294967295u, 29u)]), var_3.a.b), global0[_wgslsmith_index_u32(4875u, 19u)]).c.a, _wgslsmith_f_op_vec3_f32(var_3.c.a - vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 29u)], -871f, -2113f))), false), func_6(vec3<f32>(_wgslsmith_f_op_f32(-312f + var_0), var_2.a.x, _wgslsmith_f_op_f32(344f + 819f)), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(236f, -898f, var_5.c.a.x) * vec3<f32>(var_5.a.a.x, var_5.a.a.x, -292f)), true), Struct_1(_wgslsmith_f_op_vec3_f32(var_5.c.a * vec3<f32>(-2270f, var_2.a.x, 197f)), select(true, true, var_2.b))), Struct_2(var_5.c, vec3<i32>(1i, var_5.b.x, var_3.b.x) << (vec3<u32>(u_input.b, 83803u, 0u) % vec3<u32>(32u)), func_6(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2170f, 1141f, global1[_wgslsmith_index_u32(u_input.b, 29u)]), var_3.c.a, vec3<bool>(var_2.b, true, false))), var_5.a, var_2).c)).x, _wgslsmith_dot_vec4_u32(min(countOneBits(vec4<u32>(0u, u_input.b, u_input.b, u_input.b) & vec4<u32>(40042u, u_input.b, 0u, u_input.b)), reverseBits(vec4<u32>(u_input.b, u_input.b, 27993u, 71468u) & vec4<u32>(1u, 45561u, u_input.b, u_input.b))), countOneBits(vec4<u32>(10216u, abs(u_input.b), min(82322u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 17978u, u_input.b))))));
}

