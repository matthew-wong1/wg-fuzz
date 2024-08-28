struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(0u, 9003u, 12013u, 4294967295u, 34616u, 1u, 15090u, 4294967295u, 49563u);

var<private> global1: Struct_2 = Struct_2(Struct_1(0i, 1401f, vec3<u32>(1u, 1u, 5440u), vec4<u32>(36331u, 41498u, 89950u, 0u)), -1468f);

var<private> global2: array<u32, 10> = array<u32, 10>(8170u, 1u, 4294967295u, 4294967295u, 0u, 107569u, 4294967295u, 1u, 82033u, 0u);

var<private> global3: bool;

var<private> global4: vec2<f32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1() -> vec2<bool> {
    global0 = array<u32, 9>();
    let var_0 = !(-1i < global1.a.a);
    var var_1 = ~_wgslsmith_dot_vec4_u32(global1.a.d, vec4<u32>(firstTrailingBit(~17122u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.a.c.x, 10u)], 10u)], global1.a.c.x, firstLeadingBit(1u)));
    var var_2 = !(!(!var_0));
    var var_3 = global1.a;
    return select(vec2<bool>(var_0, true), !vec2<bool>(false, var_0), true);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<u32>) -> bool {
    global3 = func_1().x;
    let var_0 = Struct_3(-924f, Struct_2(Struct_1(~max(1i, -30748i), _wgslsmith_f_op_f32(-global1.a.b), ~global1.a.c, vec4<u32>(42347u >> (global0[_wgslsmith_index_u32(arg_1.x, 9u)] % 32u), ~0u, ~arg_1.x, _wgslsmith_dot_vec4_u32(global1.a.d, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.b)) - _wgslsmith_f_op_f32(select(1457f, global1.b, true))))), Struct_2(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global4.x)) - _wgslsmith_f_op_f32(sign(1516f)))), max(21800u, (1u << (global0[_wgslsmith_index_u32(4294967295u, 9u)] % 32u)) ^ 21139u) << (4294967295u % 32u), arg_1.xy);
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1458f, 1171f)), vec2<f32>(684f, -1331f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.a.b, global1.a.b)))), vec2<f32>(-1315f, 1000f), vec2<bool>(all(vec2<bool>(true, true)), true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.a.b, -320f)));
    var var_1 = global1.a;
    global4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(-1052f, _wgslsmith_f_op_f32(round(-935f)))), _wgslsmith_f_op_f32(sign(-141f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(abs(-954f)))), vec2<bool>(true, true)));
    return select(any(select(vec4<bool>(true, false, 14792u != arg_1.x, true), vec4<bool>(true, var_1.b > -845f, any(vec2<bool>(false, false)), true), vec4<bool>(all(vec2<bool>(false, false)), false, true, true))), false, true);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<bool>) -> Struct_3 {
    let var_0 = all(vec3<bool>(func_3(arg_0.yy, global1.a.d), !(global2[_wgslsmith_index_u32(max(120816u, global0[_wgslsmith_index_u32(4294967295u, 9u)]), 10u)] < (5853u & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 10u)], 10u)])), false));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(440f, global1.b) * vec2<f32>(592f, 1049f)))))))));
    var var_1 = abs(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20872u, 9u)], 9u)], global0[_wgslsmith_index_u32(1u, 9u)], 1u), reverseBits(vec3<u32>(arg_1, arg_1, 1134u)))));
    global2 = array<u32, 10>();
    var var_2 = Struct_2(Struct_1(0i, _wgslsmith_f_op_f32(f32(-1f) * -296f), select(select(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(0u, 9u)], 45662u, 57381u)), global1.a.d.zwy, arg_2.x), vec3<u32>(global2[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 10u)], 1u), 50633u >> (var_1.x % 32u)), vec3<bool>(true, arg_2.x, select(var_0, arg_2.x, false))), countOneBits(vec4<u32>(reverseBits(global2[_wgslsmith_index_u32(1u, 10u)]), global2[_wgslsmith_index_u32(global1.a.d.x, 10u)], countOneBits(4294967295u), ~global0[_wgslsmith_index_u32(arg_1, 9u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1795f)));
    return Struct_3(326f, Struct_2(Struct_1(-arg_0.x, global4.x, ~vec3<u32>(var_2.a.c.x, 4907u, 1096u), countOneBits(vec4<u32>(13872u, arg_1, var_1.x, global0[_wgslsmith_index_u32(var_2.a.c.x, 9u)]) & vec4<u32>(0u, arg_1, 32548u, global2[_wgslsmith_index_u32(1u, 10u)]))), -1856f), Struct_2(Struct_1(-7490i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a.b))), ~firstTrailingBit(global1.a.d.ywx), ~vec4<u32>(0u, 42902u, global1.a.c.x, var_1.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-933f)) - _wgslsmith_f_op_f32(floor(-1005f)))))), ~4294967295u, ~_wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(var_2.a.d.x), ~global2[_wgslsmith_index_u32(4294967295u, 10u)]), max(var_1.yz, _wgslsmith_div_vec2_u32(global1.a.d.zy, vec2<u32>(global0[_wgslsmith_index_u32(var_1.x, 9u)], 4294967295u)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: bool) -> Struct_2 {
    global1 = func_2(firstLeadingBit(abs(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(22067i, -2147483647i, 43268i, 44335i), vec4<i32>(2147483647i, u_input.a.x, global1.a.a, global1.a.a))))), 13408u, vec2<bool>(true, arg_3)).c;
    global4 = vec2<f32>(-785f, _wgslsmith_f_op_f32(floor(581f)));
    let var_0 = vec2<i32>(u_input.a.x, -arg_0.a);
    global4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.b, 1557f) - vec2<f32>(global4.x, -220f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, 965f)))))));
    global1 = func_2(firstLeadingBit(firstTrailingBit(u_input.a ^ u_input.a)), _wgslsmith_clamp_u32(global1.a.d.x, 105137u, ~(~arg_2.c.a.d.x)), !select(vec2<bool>(1507f != arg_2.c.a.b, true & arg_3), !select(vec2<bool>(false, arg_3), vec2<bool>(arg_3, true), vec2<bool>(arg_3, arg_3)), false)).c;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1229f + global4.x)))), Struct_2(global1.a, _wgslsmith_f_op_f32(max(-104f, 1339f))), func_4(global1.a, true & !(global0[_wgslsmith_index_u32(4294967295u, 9u)] != 12724u), func_2(reverseBits(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(-1163i, global1.a.a, global1.a.a))), global1.a.d.x, !func_1()), false), ~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(firstLeadingBit(0u), 10u)], 4294967295u), vec2<u32>(~(global1.a.d.x >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 10u)], 10u)], 9u)], 10u)]) % 32u)), _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(global1.a.c.x, 0u), 4294967295u), select(89110u, global0[_wgslsmith_index_u32(1u, 9u)], u_input.a.x >= u_input.b))));
    var var_1 = func_2(vec3<i32>(countOneBits(firstTrailingBit(2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-u_input.a, u_input.a, -u_input.a), _wgslsmith_div_vec3_i32(-u_input.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-3969i, global1.a.a, 2147483647i), vec3<i32>(47095i, 0i, u_input.a.x)))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, -u_input.a), global1.a.a)), 1u, func_1()).b;
    var var_2 = vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global1.a.d.x, 9u)], 1u, ~_wgslsmith_dot_vec4_u32(~(~global1.a.d), var_1.a.d));
    var var_3 = !(!select(vec3<bool>(any(vec2<bool>(false, true)), true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), -2147483647i < global1.a.a), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    global1 = Struct_2(func_4(Struct_1(-13169i, var_1.a.b, _wgslsmith_mod_vec3_u32(~var_1.a.d.yzw, var_0.c.a.d.ywx), ~vec4<u32>(4294967295u, 4294967295u, 19812u, 0u)), var_3.x, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a.b, var_1.b) - -211f), var_0.c, var_0.c, func_2(vec3<i32>(var_1.a.a, var_1.a.a, 0i), ~4294967295u, vec2<bool>(true, true)).d, vec2<u32>(_wgslsmith_add_u32(var_1.a.c.x, var_0.c.a.c.x), var_1.a.d.x)), 2147483647i == _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.a, -2147483647i), vec2<i32>(u_input.b, -2147483647i)), func_2(u_input.a, 36471u, var_3.xx).b.a.a)).a, var_0.c.a.b);
    global2 = array<u32, 10>();
    let var_4 = var_0;
    let var_5 = func_2(u_input.a, 18225u, vec2<bool>(any(select(vec4<bool>(var_3.x, false, var_3.x, true), vec4<bool>(var_3.x, false, var_3.x, true), func_3(u_input.a.zx, vec4<u32>(72828u, 4294967295u, var_4.b.a.d.x, global1.a.c.x)))), !(!all(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1092f, var_1.a.b, _wgslsmith_f_op_f32(-var_5.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f))), _wgslsmith_add_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.a.a, var_4.c.a.a, 2147483647i), vec3<i32>(1i, var_5.c.a.a, 2147483647i) >> (global1.a.c % vec3<u32>(32u))), u_input.a)), var_0.c.b, _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(21126i, var_5.b.a.a, var_0.c.a.a)), u_input.a), vec3<i32>(i32(-1i) * -23940i, -1i, var_4.b.a.a)));
}

