struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(45757u, 1797u), vec2<u32>(4294967295u, 36122u), vec2<u32>(0u, 4294967295u), vec2<u32>(47737u, 2970u), vec2<u32>(31714u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 55438u), vec2<u32>(4294967295u, 12485u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(69909u, 4294967295u), vec2<u32>(44672u, 1u), vec2<u32>(113586u, 11816u), vec2<u32>(4294967295u, 0u), vec2<u32>(17455u, 0u), vec2<u32>(0u, 40240u), vec2<u32>(1u, 31492u), vec2<u32>(1u, 20418u), vec2<u32>(0u, 12676u), vec2<u32>(0u, 544u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u));

var<private> global1: array<f32, 5>;

var<private> global2: array<f32, 23> = array<f32, 23>(603f, 2130f, 1000f, 644f, 945f, 327f, -790f, 974f, -1336f, -253f, 2267f, 1560f, -581f, 2246f, -1027f, -2031f, -998f, 1333f, -1000f, -1307f, 248f, 846f, -626f);

var<private> global3: array<vec3<bool>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = Struct_5(i32(-1i) * -34463i, -1i);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-209f * global2[_wgslsmith_index_u32(57837u, 23u)])), 318f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-294f + 1074f), -1000f, !arg_2.b.x))))));
    let var_2 = all(arg_0.c.a);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -453f, 1456f, 995f), vec4<f32>(689f, arg_1, global1[_wgslsmith_index_u32(72635u, 5u)], arg_1)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], -786f, 202f, -140f) - vec4<f32>(240f, -1269f, -131f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)]))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(507f, -1790f, global2[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)])))) * _wgslsmith_div_vec4_f32(vec4<f32>(162f, 196f, arg_1, global1[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -1192f, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], 352f), vec4<f32>(-182f, arg_1, global1[_wgslsmith_index_u32(9747u, 5u)], -432f)))))) * _wgslsmith_div_vec4_f32(vec4<f32>(1430f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 5u)]), _wgslsmith_f_op_f32(-1410f * 672f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-515f - -1000f), _wgslsmith_f_op_f32(select(-561f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)], false))))), vec4<f32>(global1[_wgslsmith_index_u32(select(~u_input.b.x, ~u_input.b.x, any(vec4<bool>(var_2, arg_2.b.x, arg_0.b.x, false))), 5u)], 1486f, _wgslsmith_f_op_f32(max(-338f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, 4294967295u), vec4<u32>(0u, 13955u, 38041u, 4294967295u)), 5u)])), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], var_1.x)), _wgslsmith_div_f32(455f, var_1.x))))));
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(all(vec4<bool>(false, false, true, true)), vec2<bool>(true, true), Struct_1(vec4<bool>(true, true, false, true)), arg_0), global1[_wgslsmith_index_u32(20451u ^ ~u_input.b.x, 5u)], Struct_4(false, vec2<bool>(false, true), Struct_1(vec4<bool>(false, false, false, true)), Struct_3(-1i)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, -640f, -506f, global2[_wgslsmith_index_u32(u_input.b.x, 23u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(225f, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], 1757f) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(u_input.b.x, 23u)], -629f, 2971f)))))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(69927u, 5u)] - global1[_wgslsmith_index_u32(u_input.b.x, 5u)])), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(1u, 23u)])), 1133f))));
    let var_1 = u_input.b & vec3<u32>(u_input.b.x | 39620u, 45500u, u_input.b.x);
    let var_2 = Struct_1(!select(vec4<bool>(all(global3[_wgslsmith_index_u32(u_input.b.x, 19u)]), var_0.x < 211f, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec2<bool>(false, false)), true, true)));
    return _wgslsmith_add_u32(firstTrailingBit(u_input.b.x), 1u);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> Struct_5 {
    let var_0 = vec4<u32>(u_input.b.x, u_input.b.x & ~u_input.b.x, firstLeadingBit(u_input.b.x), 62264u);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(func_2(Struct_3(-u_input.a.x)), 5u)], global1[_wgslsmith_index_u32(~(~var_0.x) | countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, u_input.b.x), var_0.zz)), 5u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(714f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(2156f)))))))));
    let var_2 = Struct_3(-countOneBits(28871i & reverseBits(u_input.a.x)));
    var var_3 = global1[_wgslsmith_index_u32(~(~u_input.b.x), 5u)];
    let var_4 = 1u;
    return Struct_5(0i, min(1i, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 22>();
    global1 = array<f32, 5>();
    var var_0 = func_1(u_input.a.x, vec2<bool>(false, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 59680u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) >= u_input.b.x));
    var_0 = Struct_5(countOneBits(-u_input.a.x), -u_input.a.x);
    var var_1 = _wgslsmith_add_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, var_0.b, var_0.b, u_input.a.x)), firstLeadingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(0i, u_input.a.x, u_input.a.x, var_0.a), -vec4<i32>(9453i, var_0.a, 0i, -2147483647i)))) & -(~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, var_0.b, var_0.b) ^ vec4<i32>(u_input.a.x, 15289i, u_input.a.x, u_input.a.x), reverseBits(vec4<i32>(u_input.a.x, -43406i, -49748i, u_input.a.x))));
    var var_2 = select(~(~vec2<u32>(u_input.b.x, 4294967295u)) | abs(~vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(~0u, abs(~u_input.b.x)), (min(u_input.b.x, u_input.b.x) <= 1u) || !any(vec3<bool>(true, false, false))) >> (vec2<u32>(u_input.b.x, _wgslsmith_mod_u32(~u_input.b.x, func_2(Struct_3(u_input.a.x)))) % vec2<u32>(32u));
    var var_3 = Struct_3(firstLeadingBit(-var_1.x));
    var var_4 = vec2<bool>(false, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(257f)), global1[_wgslsmith_index_u32(79518u, 5u)]) < _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(15029u, 23u)] + -867f)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(826f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, (~(~vec3<u32>(16266u, 0u, var_2.x)) >> (firstLeadingBit(u_input.b) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~u_input.b, vec3<u32>(var_2.x, 26916u, var_2.x)), _wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, var_2.x, u_input.b.x), vec3<bool>(var_4.x, var_4.x, var_4.x)), abs(u_input.b))));
}

