struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

var<private> global1: array<vec3<bool>, 31>;

var<private> global2: vec2<u32>;

var<private> global3: array<f32, 20> = array<f32, 20>(676f, 163f, -231f, -182f, 2058f, -533f, 1167f, -478f, 775f, 2210f, -706f, -1000f, -202f, 382f, -532f, -1774f, 1429f, 880f, 704f, -611f);

var<private> global4: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(0i, i32(-2147483648), 63573i), vec3<i32>(0i, 1i, 1i), vec3<i32>(-51692i, 16850i, -6122i), vec3<i32>(0i, -1i, -38600i), vec3<i32>(-1i, 45819i, i32(-2147483648)), vec3<i32>(-1318i, 1241i, 1i));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(25343u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(31024u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(70317u, 2u)], global0[_wgslsmith_index_u32(12194u, 2u)]))), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], false), vec2<bool>(true, true), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 2u)])), select(vec2<bool>(true, global0[_wgslsmith_index_u32(global2.x, 2u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(29731u, 2u)]), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(13649u, 20u)]));
    var var_1 = arg_0;
    var var_2 = select(select(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(global2.x, 2u)], var_0.a.x, true)), vec4<bool>(true, global0[_wgslsmith_index_u32(~4294967295u >> (~u_input.a % 32u), 2u)], true, true), !select(select(vec4<bool>(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(1u, 2u)], var_0.a.x), vec4<bool>(true, var_0.a.x, false, global0[_wgslsmith_index_u32(u_input.b, 2u)]), vec4<bool>(false, var_0.a.x, false, var_0.a.x)), select(vec4<bool>(false, var_0.a.x, global0[_wgslsmith_index_u32(12024u, 2u)], true), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)], var_0.a.x), global0[_wgslsmith_index_u32(global2.x, 2u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(global2.x, 2u)], var_0.a.x, var_0.a.x), vec4<bool>(global0[_wgslsmith_index_u32(17366u, 2u)], var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, global0[_wgslsmith_index_u32(global2.x, 2u)], false)))), vec4<bool>(-20518i == select(~1i, select(0i, var_1.x, true), !var_0.a.x), !global0[_wgslsmith_index_u32(9331u, 2u)], var_0.a.x, false), !all(vec2<bool>(global0[_wgslsmith_index_u32(~1u, 2u)], any(global1[_wgslsmith_index_u32(4294967295u, 31u)]))));
    var var_3 = reverseBits(~vec2<u32>(10800u, firstLeadingBit(u_input.a)));
    var_2 = select(select(vec4<bool>(!(!var_0.a.x), any(select(vec2<bool>(true, var_0.a.x), vec2<bool>(false, true), var_2.xz)), false, -1i > arg_0.x), !select(!vec4<bool>(var_0.a.x, true, true, var_2.x), select(vec4<bool>(false, true, var_0.a.x, true), vec4<bool>(var_2.x, false, var_0.a.x, false), vec4<bool>(var_0.a.x, var_2.x, var_0.a.x, false)), !var_2.x), vec4<bool>(any(select(global1[_wgslsmith_index_u32(var_3.x, 31u)], var_2.wwz, var_2.xyw)), all(!vec4<bool>(true, false, false, var_2.x)), !all(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(var_3.x, 2u)])), true)), vec4<bool>(true, ((var_1.x == 7780i) || (var_3.x >= 0u)) || !any(vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 2u)], global0[_wgslsmith_index_u32(global2.x, 2u)])), any(var_2.zxz), true), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, global2.x, global2.x), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, var_3.x), vec3<u32>(global2.x, global2.x, 27233u)))), ~vec3<u32>(0u, u_input.b, ~4389u)), 2u)]);
    return arg_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_add_i32(min(_wgslsmith_mod_i32(firstTrailingBit(func_3(vec4<i32>(36011i, -2357i, 2147483647i, -1i))), 1i), abs(abs(firstTrailingBit(-30817i)))), _wgslsmith_div_i32(1i, arg_0.x));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -290f);
    let var_2 = vec4<i32>(arg_0.x, firstTrailingBit(_wgslsmith_clamp_i32(abs(arg_0.x), arg_0.x, _wgslsmith_mult_i32(arg_0.x, _wgslsmith_mult_i32(-2147483647i, arg_0.x)))), arg_0.x, _wgslsmith_mult_i32(arg_0.x, arg_0.x));
    global3 = array<f32, 20>();
    var_0 = reverseBits(var_2.x);
    return Struct_3(max(0i, arg_0.x));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: Struct_2, arg_3: u32) -> vec2<f32> {
    global0 = array<bool, 2>();
    var var_0 = -arg_0;
    let var_1 = all(!select(vec3<bool>(true, -49925i >= arg_0, global0[_wgslsmith_index_u32(global2.x, 2u)] | false), global1[_wgslsmith_index_u32(arg_3 ^ select(4294967295u, 4294967295u, true), 31u)], !global1[_wgslsmith_index_u32(u_input.b ^ u_input.b, 31u)]));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(11494u, 20u)], 903f, 786f, 1224f), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1076f, 443f, global3[_wgslsmith_index_u32(4294967295u, 20u)], arg_2.b.b), vec4<f32>(global3[_wgslsmith_index_u32(arg_3, 20u)], 663f, global3[_wgslsmith_index_u32(arg_3, 20u)], 411f))), true))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(arg_3, 20u)], _wgslsmith_f_op_f32(243f + global3[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(floor(316f)), -440f) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(143f, -1806f, 1000f, -179f) + vec4<f32>(476f, global3[_wgslsmith_index_u32(global2.x, 20u)], arg_2.a.b, global3[_wgslsmith_index_u32(arg_3, 20u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_2.a.b, -339f, -1000f) * vec4<f32>(arg_2.b.b, -1643f, arg_2.a.b, global3[_wgslsmith_index_u32(u_input.b, 20u)]))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-124f, arg_2.b.b)), _wgslsmith_f_op_f32(ceil(1826f)), global3[_wgslsmith_index_u32(~global2.x, 20u)], arg_2.b.b)), arg_2.a.a.x)));
    global0 = array<bool, 2>();
    return _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(firstLeadingBit(global2.x), 20u)], -180f))), _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(0u >> (_wgslsmith_mult_u32(arg_3, 0u) % 32u), 20u)])))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec4<i32>) -> Struct_4 {
    global3 = array<f32, 20>();
    var var_0 = Struct_2(Struct_1(select(!select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 2u)], true), vec2<bool>(global0[_wgslsmith_index_u32(11363u, 2u)], false), true), !(!vec2<bool>(true, global0[_wgslsmith_index_u32(80449u, 2u)])), select(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(global2.x, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), global0[_wgslsmith_index_u32(abs(u_input.a), 2u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 20u)] * _wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a, 20u)], _wgslsmith_f_op_f32(-1206f * arg_1.x)))), Struct_1(select(vec2<bool>(!global0[_wgslsmith_index_u32(1u, 2u)], true), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 2u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 2u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 2u)], false), select(true, global0[_wgslsmith_index_u32(64701u, 2u)], true))), -1883f));
    var var_1 = firstLeadingBit(_wgslsmith_div_vec4_u32(~(~vec4<u32>(33837u, 3850u, u_input.b, global2.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 1u, 0u, 4294967295u), vec4<u32>(1u, 18516u, global2.x, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.a, global2.x)) >> (vec4<u32>(u_input.b, global2.x, u_input.b & 0u, _wgslsmith_add_u32(u_input.a, 0u)) % vec4<u32>(32u))));
    global1 = array<vec3<bool>, 31>();
    let var_2 = vec2<f32>(global3[_wgslsmith_index_u32(1u & _wgslsmith_clamp_u32(var_1.x, ~abs(30548u), ~firstLeadingBit(global2.x)), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.b)))));
    return Struct_4(_wgslsmith_add_i32(_wgslsmith_sub_i32(~arg_2.a | -arg_3.x, arg_3.x), arg_2.a));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(46412u, 20u)], 1246f, global3[_wgslsmith_index_u32(u_input.a, 20u)], -200f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(1u, 20u)], -506f, 254f, -1365f))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1590f, global3[_wgslsmith_index_u32(arg_0, 20u)], global3[_wgslsmith_index_u32(40659u, 20u)], -1599f)))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(20454u, 20u)], -398f))))) + _wgslsmith_f_op_vec2_f32(func_4(~(-1i), Struct_5(Struct_3(-2147483647i), func_2(vec4<i32>(-2147483647i, 2147483647i, 0i, -20723i), vec3<f32>(166f, -1183f, global3[_wgslsmith_index_u32(u_input.b, 20u)]))), Struct_2(Struct_1(vec2<bool>(true, false), 712f), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], true), 375f)), arg_0 & arg_0))), Struct_4(max(1i, -max(2147483647i, 1i))), ~select(abs(vec4<i32>(-27477i, -1i, 17485i, 2147483647i)), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, 16986i, 37748i, 36058i), vec4<i32>(14813i, 2147483647i, -25567i, 6100i), true), -vec4<i32>(0i, -1i, 1i, 2147483647i)), select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], false), select(vec4<bool>(false, global0[_wgslsmith_index_u32(global2.x, 2u)], false, global0[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(global0[_wgslsmith_index_u32(107445u, 2u)], false, global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(23006u, 2u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(39372u, 2u)], true)), global0[_wgslsmith_index_u32(~arg_0, 2u)])));
    let var_1 = _wgslsmith_div_vec3_i32(select(-(abs(vec3<i32>(26132i, var_0.a, -3004i)) | -global4[_wgslsmith_index_u32(global2.x, 6u)]), global4[_wgslsmith_index_u32(4294967295u, 6u)], vec3<bool>(any(vec2<bool>(true, true)), true, false)), _wgslsmith_div_vec3_i32(min(global4[_wgslsmith_index_u32(countOneBits(~global2.x), 6u)], _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_0.a, -15198i), select(global4[_wgslsmith_index_u32(0u, 6u)], vec3<i32>(-1i, var_0.a, 1i), true))), countOneBits(_wgslsmith_div_vec3_i32(reverseBits(global4[_wgslsmith_index_u32(123595u, 6u)]), vec3<i32>(2147483647i, var_0.a, var_0.a)))));
    let var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, select(~29486u, _wgslsmith_div_u32(4294967295u, 4294967295u), true)), abs(~global2.x)), 20u)];
    var_0 = func_5(vec4<f32>(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 1u) >> (0u % 32u), 20u)], global3[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(u_input.a, 20u)])))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global2.x, 20u)]), -495f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), 1271f), func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], 391f, 850f, global3[_wgslsmith_index_u32(0u, 20u)]), vec4<f32>(global3[_wgslsmith_index_u32(u_input.b, 20u)], global3[_wgslsmith_index_u32(arg_0, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], -281f), global0[_wgslsmith_index_u32(27523u, 2u)])) + vec4<f32>(862f, 1554f, -1055f, 806f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-912f, 1576f, global3[_wgslsmith_index_u32(global2.x, 20u)], -1158f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -828f, global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(u_input.b, 20u)]), vec4<f32>(-191f, global3[_wgslsmith_index_u32(global2.x, 20u)], global3[_wgslsmith_index_u32(u_input.a, 20u)], global3[_wgslsmith_index_u32(1u, 20u)]))), select(vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 2u)], true, false, global0[_wgslsmith_index_u32(51605u, 2u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], true), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], global0[_wgslsmith_index_u32(arg_0, 2u)], false)))), vec4<bool>(any(vec3<bool>(false, false, true)), select(global0[_wgslsmith_index_u32(global2.x, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(47411u, 2u)]), false, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(arg_0, 20u)], global3[_wgslsmith_index_u32(global2.x, 20u)]))) - vec2<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global2.x, 20u)], global3[_wgslsmith_index_u32(global2.x, 20u)])), global3[_wgslsmith_index_u32(global2.x, 20u)])), func_5(vec4<f32>(137f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 20u)]), 1600f, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(arg_0, 20u)], global3[_wgslsmith_index_u32(global2.x, 20u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(-1i, Struct_5(Struct_3(1i), Struct_3(var_0.a)), Struct_2(Struct_1(vec2<bool>(true, true), global3[_wgslsmith_index_u32(arg_0, 20u)]), Struct_1(vec2<bool>(false, false), -356f)), arg_0)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 20u)], global3[_wgslsmith_index_u32(global2.x, 20u)]))), Struct_4(_wgslsmith_sub_i32(var_0.a, var_0.a)), vec4<i32>(_wgslsmith_div_i32(var_0.a, -14575i), ~(-1i), var_1.x, var_0.a)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.x, -1i), ~var_1.x), var_0.a, -6616i, reverseBits(-9058i))), (((vec4<i32>(0i, var_1.x, 2147483647i, 0i) >> (vec4<u32>(u_input.b, u_input.a, 15658u, 137021u) % vec4<u32>(32u))) & max(vec4<i32>(-30758i, var_1.x, var_0.a, 6452i), vec4<i32>(36554i, var_1.x, var_0.a, var_0.a))) << (vec4<u32>(24908u, ~global2.x, min(4294967295u, arg_0), ~global2.x) % vec4<u32>(32u))) << (vec4<u32>(~1u, 4294967295u, firstLeadingBit(u_input.b ^ 5951u), u_input.b) % vec4<u32>(32u)));
    var var_3 = firstLeadingBit(vec3<u32>(1u, ~reverseBits(_wgslsmith_div_u32(4294967295u, arg_0)), 1u));
    return Struct_2(Struct_1(!(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])), global3[_wgslsmith_index_u32(select(global2.x, max(0u ^ var_3.x, arg_0), -var_0.a >= 32062i), 20u)]), Struct_1(vec2<bool>(!global0[_wgslsmith_index_u32(81724u, 2u)], global0[_wgslsmith_index_u32(reverseBits(~u_input.a), 2u)]), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_3.x, max(1u, arg_0)), 20u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b);
    let var_1 = var_0.b;
    global1 = array<vec3<bool>, 31>();
    let var_2 = all(!(!var_1.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(242f, -673f, -324f, global3[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<f32>(399f, 208f, var_1.b, -461f), true))))))));
    var_0 = Struct_2(Struct_1(vec2<bool>(true, func_1(~u_input.a).b.a.x), var_3.x), func_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, global2.x), ~vec2<u32>(58449u, 1u))).b);
    let var_4 = func_1(17914u);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(min(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~global2.x, 4294967295u, 32485u << (u_input.b % 32u), u_input.b), reverseBits(~vec4<u32>(u_input.a, u_input.b, u_input.a, 58350u)))), 20u)]);
}

