struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32> = array<f32, 32>(754f, 285f, 460f, -1000f, -174f, 1384f, -140f, -666f, 1739f, -638f, -961f, -1806f, 1000f, 1642f, -1244f, 186f, -818f, -1687f, 255f, 236f, -1752f, 2282f, 235f, -1351f, 598f, -2838f, 317f, -613f, 1182f, -424f, 1335f, -309f);

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_1, 13>;

var<private> global3: array<f32, 25>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: bool) -> f32 {
    let var_0 = reverseBits(-u_input.d);
    var var_1 = all(!(!arg_1));
    var var_2 = Struct_2(Struct_1(!(!any(vec3<bool>(true, true, arg_1.x)))), ~(~26856u), Struct_1(true), -2147483647i);
    global1 = array<u32, 13>();
    global0 = array<f32, 32>();
    return 2545f;
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_4) -> bool {
    let var_0 = -1329f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2578f * 1000f)));
    global2 = array<Struct_1, 13>();
    var var_2 = vec2<bool>((min(max(u_input.d, -18064i), u_input.e.x) >> (~(~1u) % 32u)) < ((i32(-1i) * -u_input.e.x) | u_input.d), all(select(vec4<bool>(!arg_2.b.a, arg_2.b.a, all(vec3<bool>(true, true, false)), false), !vec4<bool>(true, arg_2.b.a, true, arg_2.b.a), select(vec4<bool>(false, true, arg_2.b.a, arg_2.b.a), vec4<bool>(arg_2.b.a, arg_2.b.a, false, arg_2.b.a), !vec4<bool>(arg_2.b.a, true, arg_2.b.a, true)))));
    var_2 = vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(812f)) * _wgslsmith_f_op_f32(func_3(var_2.x, vec3<bool>(var_2.x, var_2.x, true), var_2.x))) + var_0) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.c.x)))));
    return var_2.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<f32>) -> Struct_4 {
    global2 = array<Struct_1, 13>();
    var var_0 = vec3<bool>(func_4(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(0u, 13u)]), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(29632u, 4294967295u, global1[_wgslsmith_index_u32(26773u, 13u)]), 13u)]), 13u)], 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)] >> (u_input.a % 32u), u_input.b, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 13u)], u_input.b), vec3<u32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 13u)])), 13u)], _wgslsmith_dot_vec3_u32(vec3<u32>(54174u, global1[_wgslsmith_index_u32(u_input.b, 13u)], 95998u), vec3<u32>(u_input.b, 0u, 0u)))), _wgslsmith_f_op_f32(func_3(any(!vec4<bool>(false, arg_1, true, false)), !vec3<bool>(arg_1, arg_1, false), arg_1)), Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(3201u, 25u)])))), Struct_1(false & arg_1), vec4<f32>(global0[_wgslsmith_index_u32(~u_input.b, 32u)], _wgslsmith_f_op_f32(min(arg_2.x, 892f)), -1000f, _wgslsmith_f_op_f32(-arg_2.x)))), arg_1, false);
    var var_1 = select(!(!(!(!vec4<bool>(false, false, arg_1, var_0.x)))), !select(vec4<bool>(u_input.d >= 1i, -1i >= u_input.c, arg_1, !var_0.x), select(vec4<bool>(arg_1, var_0.x, var_0.x, arg_1), !vec4<bool>(false, true, false, var_0.x), !var_0.x), !(arg_1 == arg_1)), !(true | all(select(vec4<bool>(arg_1, var_0.x, false, arg_1), vec4<bool>(true, var_0.x, arg_1, arg_1), vec4<bool>(true, true, arg_1, var_0.x)))));
    var_1 = select(vec4<bool>(!any(!vec2<bool>(false, arg_1)), var_0.x, true, func_4(firstTrailingBit(~vec4<u32>(4294967295u, 1u, 4294967295u, 21953u)), -1000f, Struct_4(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(0u, 25u)])), global2[_wgslsmith_index_u32(countOneBits(18312u), 13u)], vec4<f32>(arg_0.x, arg_2.x, arg_2.x, 1034f)))), !select(select(select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, false, var_1.x, true), var_1.x), !vec4<bool>(false, var_1.x, arg_1, false), select(vec4<bool>(false, true, var_1.x, var_1.x), vec4<bool>(arg_1, false, var_1.x, var_0.x), true)), !select(vec4<bool>(true, var_0.x, false, var_1.x), vec4<bool>(arg_1, var_1.x, var_1.x, var_0.x), arg_1), vec4<bool>(all(var_1.xxx), var_0.x, var_1.x != true, arg_1 && arg_1)), var_1.x);
    let var_2 = 0i == firstTrailingBit(-1i);
    return Struct_4(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~4294967295u), select(13449u, global1[_wgslsmith_index_u32(1u, 13u)], any(vec4<bool>(false, false, false, true)))), 25u)] + 111f), global2[_wgslsmith_index_u32(countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, u_input.a), vec3<u32>(u_input.a, 15265u, 30588u)), _wgslsmith_add_vec3_u32(vec3<u32>(22223u, 4294967295u, 56298u), vec3<u32>(1u, 1u, u_input.b))), ~min(vec3<u32>(17803u, global1[_wgslsmith_index_u32(4825u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 13u)], 13u)]), vec3<u32>(4294967295u, u_input.b, global1[_wgslsmith_index_u32(u_input.b, 13u)]))), 13u)]), 13u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], arg_2.x, 916f))) * vec4<f32>(_wgslsmith_f_op_f32(-1326f + arg_2.x), arg_2.x, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 25u)]), 1000f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1639f, 779f, global0[_wgslsmith_index_u32(u_input.b, 32u)], -109f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-388f, -1445f, 283f, arg_0.x) + vec4<f32>(arg_2.x, arg_0.x, 789f, -704f)), select(false, true, false)))))));
}

fn func_1(arg_0: vec2<u32>) -> vec3<i32> {
    var var_0 = -495f;
    let var_1 = select(u_input.a, min(~(~42859u) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1[_wgslsmith_index_u32(arg_0.x, 13u)], 4294967295u), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 13u)], arg_0.x)) % 32u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, 82159u, countOneBits(4294967295u) ^ arg_0.x), 13u)]), any(vec2<bool>(true, true)));
    var var_2 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], -893f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1436f, 1421f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(36711u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)]), vec2<f32>(-2363f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(1u, 32u)], 624f) * vec2<f32>(-1514f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19367u, 13u)], 25u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(arg_0.x, 25u)], global0[_wgslsmith_index_u32(21925u, 32u)]) * vec2<f32>(220f, -954f)))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), true))), false, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 13u)], u_input.a, 4294967295u), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x, 25u)] + global0[_wgslsmith_index_u32(1u, 32u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(arg_0.x >> (u_input.a % 32u), 25u)] - global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_1), 25u)])))));
    global0 = array<f32, 32>();
    let var_3 = 1158f;
    return select(abs(min(-_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -32641i, u_input.d), vec3<i32>(2147483647i, u_input.d, 2147483647i)), vec3<i32>(-51073i, u_input.e.x, u_input.d))), ~(-(~(-vec3<i32>(u_input.d, u_input.d, u_input.e.x)))), select(!vec3<bool>(u_input.d < u_input.c, true, var_2.b.a), vec3<bool>(true, true, true), !(!(!vec3<bool>(var_2.b.a, var_2.b.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    global3 = array<f32, 25>();
    var var_1 = max(firstTrailingBit(2147483647i & u_input.d), u_input.d);
    var_0 = u_input.d;
    var var_2 = !(!all(vec3<bool>(true, true, true)));
    var var_3 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, _wgslsmith_add_u32(~1u, u_input.b)), 25u)];
    global1 = array<u32, 13>();
    var var_4 = !any(vec4<bool>(u_input.b >= global1[_wgslsmith_index_u32(u_input.b, 13u)], true, true, true)) | true;
    global0 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(43757u, countOneBits(_wgslsmith_mod_vec3_i32(min(vec3<i32>(-1i, u_input.e.x, -1i) | vec3<i32>(43316i, 11383i, -1i), func_1(vec2<u32>(0u, u_input.a))), -abs(vec3<i32>(u_input.c, -2147483647i, -2147483647i)))), _wgslsmith_sub_vec2_i32(u_input.e, _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.d, u_input.d), _wgslsmith_clamp_vec2_i32(u_input.e, vec2<i32>(-14693i, u_input.e.x), u_input.e)) >> (countOneBits(~vec2<u32>(u_input.b, 45156u)) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32(~(vec4<i32>(-86882i, 2147483647i, u_input.d, 1i) >> (vec4<u32>(1u, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11617u, 13u)], 13u)], u_input.a) % vec4<u32>(32u))), -select(vec4<i32>(u_input.d, 31020i, -2147483647i, u_input.c), vec4<i32>(1i, -1i, 2147483647i, -1834i), false)) ^ u_input.e.x, ~u_input.a);
}

