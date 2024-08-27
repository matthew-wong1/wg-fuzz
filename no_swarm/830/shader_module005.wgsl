struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<f32, 23> = array<f32, 23>(-267f, 1096f, -238f, 385f, 1095f, 523f, -621f, 2030f, 693f, -1745f, -339f, -117f, 1159f, 286f, -975f, -1000f, -1357f, -1301f, 1222f, -1401f, 733f, 1148f, 1022f);

var<private> global2: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(79735u, 13878u, 30750u), vec3<u32>(1u, 6229u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 0u, 6724u), vec3<u32>(4294967295u, 21669u, 15156u), vec3<u32>(1u, 1u, 10997u), vec3<u32>(100506u, 21396u, 1u), vec3<u32>(36634u, 30036u, 4294967295u), vec3<u32>(125280u, 50979u, 0u), vec3<u32>(93773u, 1u, 1u), vec3<u32>(4294967295u, 62566u, 0u), vec3<u32>(4294967295u, 43085u, 12596u), vec3<u32>(4294967295u, 1u, 25577u), vec3<u32>(43774u, 4294967295u, 1u), vec3<u32>(4294967295u, 7744u, 1u), vec3<u32>(45214u, 1575u, 1u), vec3<u32>(0u, 4294967295u, 0u));

var<private> global3: array<i32, 3> = array<i32, 3>(-1i, 1i, -29723i);

var<private> global4: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, -25812i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(14634u, 16u)];
    return Struct_2(1i, var_0.b);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(46538u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), vec3<f32>(2639f, global1[_wgslsmith_index_u32(35970u, 23u)], global1[_wgslsmith_index_u32(25090u, 23u)]))), vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], -907f, global1[_wgslsmith_index_u32(1u >> (u_input.b % 32u), 23u)]))), vec3<f32>(-323f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(38368u, 23u)] - global1[_wgslsmith_index_u32(abs(0u >> (u_input.a % 32u)), 23u)]), _wgslsmith_f_op_f32(f32(-1f) * -500f)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(536f, _wgslsmith_f_op_f32(abs(-629f)))));
    var var_2 = arg_2.yw;
    var var_3 = vec2<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(5155u, 1u)), func_1(var_0.yz, 57736i).b.b), (vec2<u32>(4294967295u, u_input.a) | vec2<u32>(u_input.a, u_input.a)) | ~vec2<u32>(0u, 0u)), u_input.a);
    return _wgslsmith_f_op_f32(max(-2327f, 524f));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = Struct_2(~54488i, arg_1.b);
    global3 = array<i32, 3>();
    var var_1 = Struct_4(Struct_1(arg_1.b.a, firstTrailingBit(vec2<u32>(reverseBits(arg_1.b.b.x), ~5903u))), Struct_2(-25054i >> ((var_0.b.b.x ^ 1u) % 32u), var_0.b), arg_1, func_1(vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(func_3(vec2<i32>(global4.x, 1i), u_input.c.zy, vec4<bool>(false, var_0.b.a, arg_0.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1819f) - _wgslsmith_f_op_f32(324f * global1[_wgslsmith_index_u32(u_input.b, 23u)]))), min(firstLeadingBit(global3[_wgslsmith_index_u32(u_input.b, 3u)]), -arg_1.a >> (u_input.a % 32u))).b, ~(_wgslsmith_add_u32(61440u, 9634u) & _wgslsmith_div_u32(~u_input.a, 1u)));
    global4 = abs(~(-vec3<i32>(1i, -1i, var_0.a)));
    global4 = ~(~vec3<i32>(u_input.d, ~var_0.a, ~firstLeadingBit(arg_1.a)));
    return Struct_3(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_1.b.b.x, 23u)], global1[_wgslsmith_index_u32(var_1.a.b.x, 23u)]) + vec2<f32>(1484f, global1[_wgslsmith_index_u32(0u, 23u)])) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(7763u, 23u)], -737f))))), -_wgslsmith_mult_i32(~2147483647i, _wgslsmith_mod_i32(-30652i, u_input.d))), arg_0.wy, _wgslsmith_dot_vec4_u32(~((vec4<u32>(1u, 0u, var_0.b.b.x, 4294967295u) | vec4<u32>(arg_1.b.b.x, 79778u, var_0.b.b.x, var_0.b.b.x)) | vec4<u32>(0u, 4294967295u, u_input.b, arg_1.b.b.x)), countOneBits(min(vec4<u32>(1u, 1u, 13369u, arg_1.b.b.x), vec4<u32>(33476u, 4294967295u, var_1.c.b.b.x, u_input.b))) & _wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.b, 4294967295u, arg_1.b.b.x, 0u), vec4<u32>(var_0.b.b.x, var_1.e, 0u, var_1.b.b.b.x)), ~vec4<u32>(var_1.b.b.b.x, arg_1.b.b.x, 33678u, u_input.b))), vec4<i32>(-36281i, select(firstLeadingBit(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.b, 3u)], arg_2)), arg_1.a, all(vec2<bool>(false, var_1.a.a))), _wgslsmith_mod_i32(firstLeadingBit(~2147483647i), i32(-1i) * -u_input.c.x), global4.x), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(18837u, 23u)])))), _wgslsmith_f_op_f32(-452f - global1[_wgslsmith_index_u32(firstTrailingBit(var_1.c.b.b.x), 23u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-895f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_1.b.b.x, 23u)], global1[_wgslsmith_index_u32(5157u, 23u)])), 112f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1664f * global1[_wgslsmith_index_u32(u_input.a, 23u)]), global1[_wgslsmith_index_u32(u_input.b | 37880u, 23u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 23u)])))))) + -1000f);
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(95077u, 23u)], -1308f)))))) + vec2<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(62534u, 23u)], global1[_wgslsmith_index_u32(select(4294967295u, u_input.b, false), 23u)])), var_0)), 16692i);
    let var_2 = func_2(!(!select(vec4<bool>(var_1.b.a, var_1.b.a, var_1.b.a, false), vec4<bool>(var_1.b.a, var_1.b.a, var_1.b.a, var_1.b.a), !vec4<bool>(false, true, false, var_1.b.a))), var_1, ~(-14504i));
    let var_3 = func_2(vec4<bool>(true, true, true, true), Struct_2(~(-1i), var_1.b), global4.x);
    let var_4 = var_1.b;
    var var_5 = func_2(select(select(select(!vec4<bool>(var_2.a.b.a, true, true, true), !vec4<bool>(false, var_4.a, false, var_2.b.x), all(vec4<bool>(var_2.a.b.a, var_3.a.b.a, true, var_3.b.x))), !vec4<bool>(true, true, var_4.a, true), var_4.a), !vec4<bool>(var_3.a.a <= 65093i, var_2.b.x == var_4.a, false, true), false), func_2(!(!select(vec4<bool>(true, var_2.b.x, var_1.b.a, var_4.a), vec4<bool>(true, var_4.a, true, false), vec4<bool>(true, var_2.b.x, var_1.b.a, var_4.a))), func_1(_wgslsmith_f_op_vec2_f32(floor(var_3.e.yy)), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_4.b.x, var_3.c), 3u)]), var_2.a.a & (var_1.a << (19453u % 32u))).a, func_2(select(select(!vec4<bool>(false, var_2.a.b.a, true, var_2.a.b.a), vec4<bool>(false, true, false, false), !vec4<bool>(var_2.a.b.a, var_3.b.x, true, true)), select(vec4<bool>(var_1.b.a, true, false, var_2.b.x), select(vec4<bool>(var_3.a.b.a, var_3.b.x, var_4.a, false), vec4<bool>(false, true, var_2.b.x, false), vec4<bool>(var_4.a, true, true, false)), vec4<bool>(false, var_1.b.a, var_2.a.b.a, false)), var_2.a.b.a), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_2.a.b.b.x, 0u), ~var_3.c >> (abs(u_input.b) % 32u)), 16u)], _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.a, 22118i ^ var_2.d.x), var_2.d.wz)).d.x);
    let var_6 = var_2.e.x;
    let var_7 = Struct_2(func_2(select(vec4<bool>(var_5.a.b.a, true, true != var_3.b.x, false), !select(vec4<bool>(true, var_4.a, var_2.a.b.a, var_3.b.x), vec4<bool>(var_2.b.x, var_2.a.b.a, var_5.a.b.a, false), vec4<bool>(var_3.a.b.a, var_2.a.b.a, var_2.a.b.a, true)), !(!vec4<bool>(var_2.a.b.a, true, var_2.b.x, false))), Struct_2(select(firstTrailingBit(28841i), i32(-1i) * -2147483647i, true), Struct_1(!var_1.b.a, vec2<u32>(1u, 1u))), _wgslsmith_dot_vec2_i32(func_2(!vec4<bool>(var_4.a, var_1.b.a, true, var_5.b.x), Struct_2(-1i, var_2.a.b), -var_2.a.a).d.xx, _wgslsmith_mod_vec2_i32(var_5.d.xy, global4.xy))).a.a, func_1(var_5.e.yx, -1i).b);
    let x = u_input.a;
    s_output = StorageBuffer(var_7.a, _wgslsmith_add_i32(reverseBits(-30042i), -20687i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-155f, 133f, var_3.e.x, var_2.e.x)), vec4<f32>(var_2.e.x, var_0, -100f, var_2.e.x)))) + vec4<f32>(444f, global1[_wgslsmith_index_u32(func_1(var_2.e.zy, 30936i).b.b.x, 23u)], _wgslsmith_f_op_f32(-364f * _wgslsmith_f_op_f32(-1000f + var_2.e.x)), _wgslsmith_f_op_f32(step(806f, _wgslsmith_f_op_f32(select(var_5.e.x, var_2.e.x, true)))))));
}

