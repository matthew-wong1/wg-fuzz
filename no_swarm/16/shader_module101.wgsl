struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(31640u, 11542u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 19292u), vec2<u32>(7384u, 23348u), vec2<u32>(31847u, 47590u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 11722u), vec2<u32>(31345u, 7224u), vec2<u32>(4294967295u, 18701u), vec2<u32>(1u, 26525u), vec2<u32>(0u, 4294967295u), vec2<u32>(1014u, 4294967295u), vec2<u32>(13336u, 1u), vec2<u32>(34200u, 75971u), vec2<u32>(4294967295u, 58438u), vec2<u32>(7003u, 72491u), vec2<u32>(0u, 0u));

var<private> global4: Struct_1 = Struct_1(-558f, true, -1874i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = global4.a;
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(-u_input.a.x, global2.c) | global2.c, i32(-1i) * -1i);
    var_0 = -1581f;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(select(arg_0, global1.a, global1.b)))))) + _wgslsmith_f_op_f32(max(-1406f, _wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(-arg_0)))))), global2.b, u_input.c);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(min(-119f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a - -1208f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, 864f, true)), _wgslsmith_f_op_f32(-global4.a)))))), false, var_1.x);
    return 74890i;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = vec2<i32>(func_3(_wgslsmith_f_op_f32(round(global1.a))), _wgslsmith_mod_i32(-1i, -32921i));
    let var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 15u)];
    let var_2 = arg_2;
    let var_3 = arg_2;
    let var_4 = arg_0;
    return !select(vec3<bool>(true, true, true), !vec3<bool>(global4.b, var_3.b || false, var_1.x), arg_0.b);
}

fn func_4(arg_0: vec3<bool>) -> vec3<i32> {
    let var_0 = countOneBits(global1.c);
    global1 = Struct_1(global4.a, any(select(func_2(Struct_1(-1243f, true, -87723i), vec3<u32>(16813u, u_input.b.x, u_input.b.x) & vec3<u32>(11046u, u_input.b.x, u_input.b.x), Struct_1(global2.a, global1.b, 23759i)), vec3<bool>(any(vec4<bool>(false, true, false, global1.b)), all(vec4<bool>(false, true, arg_0.x, global2.b)), global4.b), vec3<bool>(false, global4.b, true))), (i32(-1i) * -_wgslsmith_mult_i32(-2147483647i, var_0)) ^ u_input.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.a * 1000f))) - global2.a)), all(!vec4<bool>(all(vec3<bool>(true, global4.b, arg_0.x)), true, true, false)), -_wgslsmith_dot_vec2_i32(u_input.a, u_input.a));
    var var_2 = global3[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 17u)];
    let var_3 = -465f;
    return vec3<i32>(firstLeadingBit(global2.c), min(select(_wgslsmith_mult_i32(var_1.c, -2147483647i), _wgslsmith_mod_i32(2147483647i, u_input.c), func_2(Struct_1(510f, false, 0i), u_input.b, Struct_1(var_3, var_1.b, u_input.c)).x), 1i >> (countOneBits(var_2.x) % 32u)), 0i) | (_wgslsmith_mod_vec3_i32(vec3<i32>(3099i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-13458i, global2.c, global4.c, -14315i), vec4<i32>(-39156i, global1.c, 0i, -2147483647i))), vec3<i32>(2147483647i, global1.c | 2147483647i, 22590i)) >> (u_input.b % vec3<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~4294967295u, u_input.b.x);
    global3 = array<vec2<u32>, 17>();
    let var_1 = func_4(!select(select(func_2(Struct_1(-119f, arg_1.x, 0i), vec3<u32>(var_0, u_input.b.x, 135345u), Struct_1(global2.a, false, global4.c)), select(arg_1, arg_1, arg_1.x), !arg_1), select(func_2(Struct_1(-1000f, global2.b, -47730i), vec3<u32>(var_0, var_0, u_input.b.x), Struct_1(arg_0, global2.b, u_input.a.x)), func_2(Struct_1(global1.a, true, global2.c), vec3<u32>(var_0, u_input.b.x, 25639u), Struct_1(-1343f, true, global4.c)), global1.b), vec3<bool>(true, global4.b & global1.b, global4.c == -3148i)));
    let var_2 = var_0;
    global4 = Struct_1(-243f, true, _wgslsmith_mult_i32(-(~7127i) | _wgslsmith_div_i32(func_4(vec3<bool>(global4.b, global4.b, global1.b)).x, ~global2.c), _wgslsmith_div_i32(i32(-1i) * -41443i, 1i)));
    return Struct_1(_wgslsmith_f_op_f32(global2.a + global1.a), arg_3.x, _wgslsmith_sub_i32((var_1.x & -2147483647i) | _wgslsmith_mult_i32(global1.c, -12907i), i32(-1i) * -2147483647i));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> i32 {
    global3 = array<vec2<u32>, 17>();
    let var_0 = arg_1;
    var var_1 = func_2(func_1(_wgslsmith_f_op_f32(min(333f, -1539f)), select(!select(vec3<bool>(global4.b, global1.b, global2.b), vec3<bool>(true, global4.b, arg_2.b), arg_0), global0[_wgslsmith_index_u32(u_input.b.x, 15u)], select(!arg_0, arg_0, !vec3<bool>(false, arg_0.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.a, 635f, -2571f)))), vec2<bool>(any(vec3<bool>(false, true, true)) & true, any(vec3<bool>(arg_2.b, global2.b, arg_1.b)))), ~(~vec3<u32>(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), ~u_input.b.x, ~u_input.b.x)), arg_1);
    var var_2 = true | !(!arg_1.b);
    var var_3 = vec4<u32>(_wgslsmith_clamp_u32(47479u, u_input.b.x, ~u_input.b.x), ~59355u, u_input.b.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~u_input.b & abs(u_input.b), ~abs(vec3<u32>(60295u, u_input.b.x, 4294967295u))), u_input.b.x, min(~(~9917u), u_input.b.x)));
    return ~0i;
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global1 = func_1(110f, !global0[_wgslsmith_index_u32(1u, 15u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-620f, -175f, -1409f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a, -477f, arg_3.a))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, -1828f) - vec3<f32>(-1427f, 1018f, 1055f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.a, 1368f, global2.a)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, -499f, global1.a))))), vec2<bool>(true, true));
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -392f), global4.a)), -155f)), true, arg_2);
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> f32 {
    global0 = array<vec3<bool>, 15>();
    var var_0 = arg_1;
    let var_1 = vec3<u32>(arg_3, firstLeadingBit(1u) << (_wgslsmith_mod_u32(abs(~63693u), ~arg_0) % 32u), _wgslsmith_mod_u32(select(~arg_3, u_input.b.x, !any(vec4<bool>(global2.b, var_0.b, false, global1.b))), 11212u));
    let var_2 = arg_1;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(556f - _wgslsmith_f_op_f32(select(func_6(vec2<u32>(21393u, 59538u), vec3<u32>(15388u, var_1.x, 0u), global4.c, Struct_1(global1.a, var_0.b, var_0.c)).a, var_0.a, true))) + func_6(_wgslsmith_sub_vec2_u32(max(var_1.xy, var_1.yz), firstTrailingBit(vec2<u32>(108564u, var_1.x))), vec3<u32>(32448u ^ arg_3, ~var_1.x, abs(534u)), global1.c, var_2).a), all(vec4<bool>(func_6(vec2<u32>(arg_3, 4294967295u), countOneBits(u_input.b), 28867i >> (arg_3 % 32u), var_2).b, var_0.b, global1.b, !arg_1.b)), firstTrailingBit(-4554i));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_7(4294967295u, func_6(~vec2<u32>(u_input.b.x, 1u), ~vec3<u32>(u_input.b.x, u_input.b.x, 11350u), func_5(!global0[_wgslsmith_index_u32(5836u, 15u)], Struct_1(global2.a, global2.b, u_input.a.x), func_1(248f, vec3<bool>(false, global1.b, false), vec3<f32>(1000f, global4.a, 380f), vec2<bool>(false, global4.b)), global4.b), func_1(_wgslsmith_f_op_f32(abs(global1.a)), vec3<bool>(global1.b, false, true), vec3<f32>(1056f, -1008f, global2.a), select(vec2<bool>(false, global4.b), vec2<bool>(false, global2.b), vec2<bool>(false, true)))), func_6(u_input.b.zz, u_input.b, global4.c, Struct_1(_wgslsmith_f_op_f32(-global4.a), global4.b, 1i)).c, ~(u_input.b.x ^ ~u_input.b.x))), global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(vec2<u32>(u_input.b.x, 1u), u_input.b, -2147483647i, Struct_1(global4.a, false, u_input.c)).a + global2.a)), _wgslsmith_f_op_f32(f32(-1f) * -242f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global1.a, -607f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.a + -228f))), -826f), _wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a - global2.a) - -1116f))));
    let var_2 = ~select(_wgslsmith_mod_vec2_u32(~global3[_wgslsmith_index_u32(u_input.b.x, 17u)], _wgslsmith_add_vec2_u32(vec2<u32>(30343u, u_input.b.x), global3[_wgslsmith_index_u32(0u, 17u)])), vec2<u32>(u_input.b.x, 1u), !vec2<bool>(true, global1.b)) >> (vec2<u32>(firstTrailingBit(3703u), ~firstTrailingBit(~u_input.b.x)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(139f + 1000f))), global4.a, !select(false, true, true))) * 1057f);
    var var_4 = var_1.x;
    global3 = array<vec2<u32>, 17>();
    var var_5 = func_6(global3[_wgslsmith_index_u32(4294967295u, 17u)], u_input.b >> (~vec3<u32>(~var_2.x, countOneBits(89578u), 0u) % vec3<u32>(32u)), func_3(global1.a), Struct_1(_wgslsmith_f_op_f32(1220f + _wgslsmith_div_f32(global4.a, global1.a)), global4.b, firstTrailingBit(0i)));
    global2 = func_6(var_2, vec3<u32>(u_input.b.x, ~firstLeadingBit(u_input.b.x), 4294967295u) >> (u_input.b % vec3<u32>(32u)), global1.c << (1u % 32u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-125f - _wgslsmith_f_op_f32(-var_0.x))), true, firstTrailingBit(var_5.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, var_2.x, u_input.b.x));
}

