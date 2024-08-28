struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<bool, 13>;

var<private> global2: array<f32, 7>;

var<private> global3: array<vec3<bool>, 17>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    var var_0 = _wgslsmith_add_u32(u_input.b.x, firstLeadingBit(arg_0));
    global0 = !(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global0.x));
    var_0 = 13646u;
    let var_1 = Struct_2(Struct_1(u_input.b.x, select(vec3<i32>(arg_1.x ^ 1i, u_input.c, 1i), arg_3, !(!global0.x))), Struct_1(~u_input.d.x, ~select(~arg_1.zyy, vec3<i32>(arg_3.x, -3871i, u_input.c), any(vec2<bool>(true, global0.x)))), Struct_1(u_input.a.x, arg_3), ~u_input.b.x, 7370i ^ _wgslsmith_add_i32(firstTrailingBit(u_input.c), 6812i));
    let var_2 = select(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(39860u, var_1.a.a)), _wgslsmith_mult_u32(74789u, _wgslsmith_mult_u32(1u, u_input.b.x))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(99748u, u_input.d.x)), u_input.b) & u_input.a.x), 17u)], !global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), u_input.d), 17u)], !(!(!select(global3[_wgslsmith_index_u32(u_input.b.x, 17u)], global3[_wgslsmith_index_u32(57849u, 17u)], arg_2))));
    return firstTrailingBit(arg_0);
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = vec2<u32>(~(0u & ~u_input.a.x), ~(~(~func_3(u_input.b.x, vec4<i32>(-31224i, 42259i, u_input.c, u_input.c), global0.x, vec3<i32>(u_input.c, u_input.c, 0i)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-277f, 2598f, 416f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_0.x, 7u)], 518f, -2081f) + vec3<f32>(1705f, 629f, global2[_wgslsmith_index_u32(1u, 7u)]))))))));
    let var_2 = Struct_4(min(reverseBits(~_wgslsmith_div_u32(44338u, 1u)), _wgslsmith_mult_u32(var_0.x, ~_wgslsmith_mod_u32(var_0.x, 64466u))), Struct_1(_wgslsmith_div_u32(~4294967295u, max(var_0.x, u_input.a.x)), vec3<i32>(2147483647i, -2147483647i, u_input.c)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, _wgslsmith_f_op_f32(max(-238f, var_1.x)), _wgslsmith_f_op_f32(step(615f, 1183f)), global2[_wgslsmith_index_u32(4294967295u, 7u)])), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-778f, var_1.x)) - _wgslsmith_f_op_f32(abs(1634f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 811f)), global2[_wgslsmith_index_u32(u_input.a.x, 7u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, 0u), 7u)] * -1468f), _wgslsmith_f_op_f32(829f - 557f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.xy - vec2<f32>(global2[_wgslsmith_index_u32(17743u, 7u)], 1532f)), vec2<f32>(_wgslsmith_f_op_f32(floor(var_1.x)), -1009f), arg_0.x))));
    var var_3 = (global1[_wgslsmith_index_u32(u_input.d.x, 13u)] | arg_0.x) || arg_0.x;
    var var_4 = var_2.b;
    return var_2;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> i32 {
    let var_0 = u_input.c;
    global1 = array<bool, 13>();
    let var_1 = select(select(select(vec2<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], true, false)), global0.x), vec2<bool>(global1[_wgslsmith_index_u32(28174u, 13u)], true), !select(vec2<bool>(global1[_wgslsmith_index_u32(15689u, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(193u, 13u)]), global1[_wgslsmith_index_u32(arg_0.b.a, 13u)])), vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 13u)] || false, global1[_wgslsmith_index_u32(47742u, 13u)]), select(vec2<bool>(true, true), !select(vec2<bool>(global1[_wgslsmith_index_u32(20488u, 13u)], true), vec2<bool>(true, global0.x), false), any(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], true, false, false)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(u_input.c != 24041i, any(vec2<bool>(global0.x, false)))), vec2<bool>(-2147483647i <= _wgslsmith_dot_vec2_i32(vec2<i32>(-6413i, var_0), arg_1.b.b.yx), all(global3[_wgslsmith_index_u32(arg_0.a, 17u)])), global0.x), global1[_wgslsmith_index_u32(arg_1.a, 13u)]);
    var var_2 = Struct_2(func_2(!(!vec4<bool>(global1[_wgslsmith_index_u32(21322u, 13u)], false, var_1.x, var_1.x))).b, func_2(select(!(!vec4<bool>(true, false, false, var_1.x)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, global1[_wgslsmith_index_u32(39054u, 13u)], false), vec4<bool>(global0.x, global0.x, var_1.x, var_1.x)), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 13u)], global0.x, var_1.x), !vec4<bool>(var_1.x, global0.x, true, global0.x), select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a, 13u)], var_1.x, var_1.x, global0.x), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], true, global0.x), global1[_wgslsmith_index_u32(1u, 13u)])))).b, func_2(!vec4<bool>(true, true, global0.x, global0.x)).b, func_2(select(select(vec4<bool>(var_1.x, true, global0.x, global1[_wgslsmith_index_u32(13404u, 13u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 13u)], true, false), vec4<bool>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(arg_0.a, 13u)], false)), select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(7765u, 13u)], var_1.x), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(false, global0.x, true, false)), vec4<bool>(var_1.x, var_1.x, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], false))).b.a ^ _wgslsmith_add_u32(_wgslsmith_clamp_u32(~1u, ~12581u, ~u_input.d.x), ~(~17682u)), 0i);
    global1 = array<bool, 13>();
    return -min(~(-1i), firstLeadingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.b.b.x, -83877i), vec2<i32>(-1i, arg_0.b.b.x))));
}

fn func_1() -> vec2<bool> {
    let var_0 = vec2<u32>(min(1u, _wgslsmith_div_u32(108611u, ~_wgslsmith_mod_u32(41901u, 4294967295u))), u_input.a.x);
    let var_1 = Struct_3(func_4(func_2(vec4<bool>(24159u <= u_input.b.x, true, true, 23644u == var_0.x)), func_2(vec4<bool>(false, true, false && global0.x, global0.x && false))), Struct_2(func_2(!select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(global0.x, true, false, true), global0.x)).b, func_2(!(!vec4<bool>(global0.x, global0.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], false))).b, func_2(select(select(vec4<bool>(true, true, global0.x, global0.x), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 13u)], global0.x, global0.x, false), false), !vec4<bool>(false, global0.x, false, global1[_wgslsmith_index_u32(var_0.x, 13u)]), all(global3[_wgslsmith_index_u32(1u, 17u)]))).b, abs(0u), max(u_input.c, _wgslsmith_mult_i32(-12365i, u_input.c & -2147483647i))), vec2<bool>(true, true), Struct_1(90537u, vec3<i32>(u_input.c >> (1u % 32u), -u_input.c & firstLeadingBit(u_input.c), _wgslsmith_mod_i32(-u_input.c, u_input.c))));
    var var_2 = (i32(-1i) * -(i32(-1i) * -28381i)) & (_wgslsmith_mult_i32(u_input.c, _wgslsmith_add_i32(var_1.a, 2147483647i) ^ max(u_input.c, -40187i)) & var_1.a);
    global1 = array<bool, 13>();
    let var_3 = global2[_wgslsmith_index_u32(var_0.x, 7u)];
    return select(!vec2<bool>(_wgslsmith_mult_u32(u_input.d.x, var_0.x) > (var_0.x ^ var_0.x), true), var_1.c, select(vec2<bool>(any(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 13u)])), all(vec3<bool>(global0.x, true, global0.x))), !select(select(vec2<bool>(true, true), var_1.c, vec2<bool>(false, global0.x)), !vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)]), var_1.c.x), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 13u)]), !vec2<bool>(var_1.c.x, true), true), !var_1.c, vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = array<bool, 13>();
    var var_1 = Struct_3(u_input.c, Struct_2(Struct_1(u_input.b.x, ~(vec3<i32>(u_input.c, 28730i, u_input.c) | vec3<i32>(-2147483647i, 0i, 2147483647i))), func_2(!(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], true, global1[_wgslsmith_index_u32(24847u, 13u)], var_0.x))).b, Struct_1(~(~52631u), -(~vec3<i32>(-2310i, u_input.c, 0i))), 4294967295u, 0i), var_0, func_2(!(!select(vec4<bool>(var_0.x, true, false, global0.x), vec4<bool>(global0.x, true, false, false), vec4<bool>(global0.x, var_0.x, false, false)))).b);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.d.x, 7u)] * _wgslsmith_f_op_f32(f32(-1f) * -1550f)), _wgslsmith_f_op_f32(min(-149f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1.b.b.a, 7u)] - -544f))))))), _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(6388u, 7u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~7824u, 7u)]), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(1u, 7u)]))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(619u, abs(46110u)), 7u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_1.d.a >> ((var_1.d.a >> (39509u % 32u)) % 32u), 7u)]))));
    global2 = array<f32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

