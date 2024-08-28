struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 29>;

var<private> global2: array<bool, 13> = array<bool, 13>(false, true, false, true, true, false, false, true, false, false, false, false, true);

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(1000f), Struct_1(-306f), Struct_1(-1537f), Struct_1(333f), Struct_1(1929f), Struct_1(-800f), Struct_1(3183f), Struct_1(2268f), Struct_1(-914f), Struct_1(-1286f), Struct_1(-281f), Struct_1(-1702f), Struct_1(209f), Struct_1(350f), Struct_1(1027f), Struct_1(678f), Struct_1(-521f), Struct_1(-1128f), Struct_1(1000f), Struct_1(1000f), Struct_1(-1453f), Struct_1(2278f), Struct_1(347f));

var<private> global4: array<bool, 29>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = arg_0;
    global4 = array<bool, 29>();
    var var_1 = 1i;
    var var_2 = max(0u, ~min(arg_3, u_input.e) | (0u >> ((~arg_3 >> (u_input.b % 32u)) % 32u)));
    var_2 = 14015u;
    return -192f;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -396f)))), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.c), vec3<i32>(1i, u_input.c, 6557i))), 1000f, reverseBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e, 0u, 56898u), 1u)))), arg_0);
    let var_1 = _wgslsmith_div_u32(~(~1u), 4294967295u);
    global0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    global0 = Struct_2(_wgslsmith_f_op_f32(-arg_0));
    let var_2 = all(arg_3.xy);
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 44860u & arg_1.x), 23u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    global2 = array<bool, 13>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(arg_0.a)));
    let var_1 = _wgslsmith_f_op_f32(-global0.a);
    global3 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_mod_i32(u_input.c, -46915i);
    return select(select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 29u)], true), select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.e, 29u)], arg_1), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 13u)]), true), global4[_wgslsmith_index_u32(u_input.b, 29u)]), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 29u)])), select(select(vec2<bool>(global1[_wgslsmith_index_u32(25521u, 29u)], global1[_wgslsmith_index_u32(u_input.e, 29u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 29u)]), arg_1), vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 29u)], false), vec2<bool>(true, true))), !select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 29u)]), !vec2<bool>(global2[_wgslsmith_index_u32(u_input.e, 13u)], false), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec2<bool>(arg_1, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(6165u, 29u)]))), !(!select(vec2<bool>(global4[_wgslsmith_index_u32(43397u, 29u)], false), vec2<bool>(global2[_wgslsmith_index_u32(5224u, 13u)], false), vec2<bool>(true, true)))), vec2<bool>(true, true), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~u_input.a.xyw), vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 1u), ~u_input.a.yyx), u_input.a.x ^ ~0u)), 13u)]);
}

fn func_1() -> vec4<bool> {
    global4 = array<bool, 29>();
    global3 = array<Struct_1, 23>();
    let var_0 = -vec3<i32>(-1i, -1i, -2098i);
    var var_1 = !select(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.e, 29u)] | global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(15232u, 29u)]), select(vec2<bool>(!global1[_wgslsmith_index_u32(u_input.b, 29u)], global4[_wgslsmith_index_u32(~u_input.b, 29u)]), vec2<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(36591u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global4[_wgslsmith_index_u32(0u, 29u)], false)), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e, 29u)], global1[_wgslsmith_index_u32(36265u, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], false))), !global2[_wgslsmith_index_u32(~31036u, 13u)]), select(func_4(func_2(global0.a, u_input.a, global2[_wgslsmith_index_u32(98772u, 13u)], vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.e, 29u)], global1[_wgslsmith_index_u32(u_input.e, 29u)], global4[_wgslsmith_index_u32(u_input.a.x, 29u)])), global0.a > global0.a), select(vec2<bool>(global4[_wgslsmith_index_u32(133855u, 29u)], false), !vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 29u)], true), true), vec2<bool>(global4[_wgslsmith_index_u32(u_input.e ^ u_input.a.x, 29u)], global1[_wgslsmith_index_u32(4294967295u, 29u)])));
    var var_2 = vec3<u32>(u_input.e, ~(~_wgslsmith_mod_u32(4294967295u, 1u)) ^ u_input.a.x, max(0u, ~_wgslsmith_div_u32(u_input.a.x, ~0u)));
    return vec4<bool>(global2[_wgslsmith_index_u32(var_2.x, 13u)], global4[_wgslsmith_index_u32(u_input.e, 29u)], (all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.e, 29u)], false, global4[_wgslsmith_index_u32(var_2.x, 29u)])) | (_wgslsmith_f_op_f32(round(1136f)) < global0.a)) & global2[_wgslsmith_index_u32(var_2.x, 13u)], global1[_wgslsmith_index_u32(countOneBits(~countOneBits(u_input.a.x)), 29u)] == true);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.a.x, 26210u) << (vec2<u32>(1u, ~u_input.b) % vec2<u32>(32u))), u_input.a.xx | u_input.a.xx), 23u)];
    let var_1 = all(!select(!select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.e, 13u)], true, global2[_wgslsmith_index_u32(u_input.e, 13u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.e, 29u)], global1[_wgslsmith_index_u32(17703u, 29u)]), false), select(!vec3<bool>(true, true, global4[_wgslsmith_index_u32(119312u, 29u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 13u)], global4[_wgslsmith_index_u32(u_input.b, 29u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(4294967295u, 29u)], false)), vec3<bool>(global2[_wgslsmith_index_u32(~u_input.b, 13u)], u_input.b == u_input.e, global4[_wgslsmith_index_u32(min(4294967295u, u_input.a.x), 29u)])));
    let var_2 = arg_2;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(-111f), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 18035i, 2147483647i), vec3<i32>(arg_0, arg_0, 58302i)), _wgslsmith_f_op_f32(arg_2.a - 848f), 11294u)), global0.a)));
    var var_4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(556f, var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1236f), arg_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.a, var_3.a), vec2<f32>(var_3.a, 543f), vec2<bool>(global4[_wgslsmith_index_u32(u_input.e, 29u)], true))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(923f, var_2.a))), !(!vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 29u)]))))), vec2<bool>(u_input.c <= -1i, false)));
    return Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_2.a, var_4.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    var var_1 = func_5(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(max(vec4<i32>(-1i, u_input.d, 2147483647i, -22539i), vec4<i32>(-1i, u_input.d, u_input.c, u_input.d))), -vec4<i32>(u_input.d, u_input.c, u_input.c, -18029i)), select(-(vec4<i32>(2147483647i, u_input.d, u_input.c, -21528i) ^ vec4<i32>(21374i, 35162i, u_input.c, 23747i)), ~(vec4<i32>(u_input.d, 0i, u_input.c, u_input.c) | vec4<i32>(1i, -1i, u_input.d, -1i)), !func_1())), Struct_1(-373f), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(902f, global0.a)), -429f)), _wgslsmith_div_f32(global0.a, 364f))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(global0.a - global0.a), _wgslsmith_f_op_f32(-1738f * _wgslsmith_f_op_f32(var_1.a * var_1.a)), 2403f, global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a, -239f, 549f, -431f), vec4<f32>(var_1.a, var_1.a, -1353f, 288f))))) - vec4<f32>(1f, 1f, 1f, 1f)))), ~u_input.e, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.d, _wgslsmith_add_i32(u_input.d, u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 10325i, -1i, 2925i), vec4<i32>(u_input.c, u_input.d, u_input.d, u_input.c))), abs(~vec3<i32>(-1i, -1198i, 1i))), -(abs(vec3<i32>(u_input.d, 2147483647i, u_input.c)) | ~vec3<i32>(41709i, 8108i, u_input.c))), u_input.b);
}

