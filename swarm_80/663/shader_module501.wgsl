struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(i32(-2147483648), 0i, 1i, 0i, 2147483647i, 1i);

var<private> global1: array<i32, 9> = array<i32, 9>(20126i, 0i, 1i, -60805i, -63614i, -81898i, 0i, 46530i, -1i);

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(!vec2<bool>(global2.a.a.x || (1u != global3.a.c), global2.a.a.x), u_input.b, global2.a.c);
    let var_1 = firstLeadingBit(_wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 62980i, -1i, -31960i), vec4<i32>(-2147483647i, var_0.b, -27576i, -1i))) ^ vec4<i32>(_wgslsmith_div_i32(-2147483647i, global1[_wgslsmith_index_u32(34431u, 9u)]), global1[_wgslsmith_index_u32(4294967295u, 9u)], reverseBits(global0[_wgslsmith_index_u32(0u, 6u)]), max(34010i, u_input.b)), vec4<i32>(-7595i, -1i, var_0.b, -21695i)));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1271f) - _wgslsmith_f_op_f32(756f - -1333f))))), _wgslsmith_f_op_f32(round(252f)), _wgslsmith_f_op_f32(f32(-1f) * -1858f));
    global3 = Struct_2(Struct_1(vec2<bool>(any(select(global2.a.a, vec2<bool>(true, false), false)), true), ~(-(global1[_wgslsmith_index_u32(var_0.c, 9u)] & -1i)), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(29825u, 0u, 10098u, u_input.a), vec4<u32>(21050u, global2.a.c, 52240u, u_input.a), vec4<bool>(false, false, false, var_0.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(28950u, 0u, 4294967295u, global3.a.c), vec4<u32>(global2.a.c, 62088u, 52886u, 17099u)))));
    let var_3 = _wgslsmith_dot_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.a.c, 4294967295u, global2.a.c), vec3<u32>(u_input.a, global2.a.c, global3.a.c)) << (~vec3<u32>(var_0.c, 13903u, 1u) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(vec3<u32>(global2.a.c, 4294967295u, 0u), firstLeadingBit(~vec3<u32>(4294967295u, u_input.a, 63592u)))) | _wgslsmith_dot_vec2_u32(~vec2<u32>(global3.a.c ^ 18407u, 14035u), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(16003u, var_0.c), vec2<u32>(global3.a.c, u_input.a))) & (vec2<u32>(4294967295u, var_0.c) | ~vec2<u32>(u_input.a, 60736u)));
    return _wgslsmith_div_u32(1u, u_input.a);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> vec2<i32> {
    global2 = Struct_2(Struct_1(select(!global3.a.a, vec2<bool>(global3.a.a.x | global2.a.a.x, global0[_wgslsmith_index_u32(1u, 6u)] <= global0[_wgslsmith_index_u32(36167u, 6u)]), !global2.a.a), 74498i, u_input.a));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(770f + -1902f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -277f) * _wgslsmith_f_op_f32(f32(-1f) * -622f)))), func_3(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(916f + -762f), _wgslsmith_f_op_f32(ceil(435f)), select(true, false, false))), _wgslsmith_f_op_f32(2594f * 1f))));
    var var_1 = Struct_2(global2.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.c.x, -285f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(401f * _wgslsmith_f_op_f32(min(-1236f, -754f))))), var_0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1499f, -1081f, -1566f, 1718f) * vec4<f32>(var_0.c.x, var_0.c.x, -1025f, -622f))))), true));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))), var_0.c.x));
    return select(vec2<i32>(~(global1[_wgslsmith_index_u32(1u, 9u)] | 0i), ~(~u_input.b)), -vec2<i32>(_wgslsmith_sub_i32(-1674i, -9047i), 2147483647i), !(!select(select(global3.a.a, vec2<bool>(global2.a.a.x, true), vec2<bool>(false, true)), select(global2.a.a, vec2<bool>(true, var_0.a), vec2<bool>(var_1.a.a.x, global2.a.a.x)), !vec2<bool>(var_1.a.a.x, var_0.a))));
}

fn func_4(arg_0: f32, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<i32, 6>();
    global2 = Struct_2(global3.a);
    global2 = Struct_2(Struct_1(global3.a.a, -2147483647i, global3.a.c));
    global0 = array<i32, 6>();
    return Struct_1(!(!select(vec2<bool>(true, global2.a.a.x), vec2<bool>(global3.a.a.x, true), select(global3.a.a, vec2<bool>(global2.a.a.x, global2.a.a.x), false))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(24495i, global2.a.b, -1i, arg_1.x), vec4<i32>(-49440i, global0[_wgslsmith_index_u32(4294967295u, 6u)], global2.a.b, -2147483647i) << (vec4<u32>(95242u, 0u, u_input.a, u_input.a) % vec4<u32>(32u))) | _wgslsmith_mod_i32(~(-1i), -global0[_wgslsmith_index_u32(52592u, 6u)])), firstLeadingBit(~u_input.a));
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = 0i;
    global0 = array<i32, 6>();
    global3 = Struct_2(func_4(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_clamp_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, -21750i), vec2<i32>(0i, 6804i))), func_2(global2.a.b, vec2<i32>(global3.a.b, -26389i)) | ~vec2<i32>(global1[_wgslsmith_index_u32(58859u, 9u)], u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, u_input.b) & vec2<i32>(global1[_wgslsmith_index_u32(global3.a.c, 9u)], u_input.b), _wgslsmith_add_vec2_i32(vec2<i32>(var_0, 2147483647i), vec2<i32>(-1i, global0[_wgslsmith_index_u32(global2.a.c, 6u)]))))));
    let var_1 = !(!(!select(vec4<bool>(global3.a.a.x, false, false, true), vec4<bool>(true, true, false, global2.a.a.x), false)));
    let var_2 = global2.a;
    return vec2<u32>(var_2.c, select(var_2.c, firstLeadingBit(~(~global3.a.c)), !func_4(_wgslsmith_f_op_f32(sign(-206f)), func_2(-1i, vec2<i32>(global1[_wgslsmith_index_u32(0u, 9u)], 2147483647i))).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    let var_0 = _wgslsmith_mod_vec2_u32(func_1(-801f), ~vec2<u32>(u_input.a, countOneBits(~u_input.a)));
    global0 = array<i32, 6>();
    var var_1 = countOneBits(vec3<u32>(var_0.x & func_1(-750f).x, 4294967295u << (_wgslsmith_mult_u32(global2.a.c, 11526u >> (1u % 32u)) % 32u), ~_wgslsmith_add_u32(var_0.x, ~var_0.x)));
    let var_2 = func_4(_wgslsmith_f_op_f32(floor(359f)), vec2<i32>(33543i, abs(2147483647i)));
    let var_3 = !all(!vec2<bool>(var_2.a.x, all(vec3<bool>(var_2.a.x, false, global2.a.a.x))));
    global1 = array<i32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(abs(-vec3<i32>(global2.a.b, var_2.b, 1i) << (~vec3<u32>(var_0.x, 14972u, var_0.x) % vec3<u32>(32u))), ~vec3<i32>(i32(-1i) * -2147483647i, abs(global1[_wgslsmith_index_u32(var_1.x, 9u)]), -1i), -firstTrailingBit(abs(vec3<i32>(global2.a.b, global0[_wgslsmith_index_u32(0u, 6u)], u_input.b)))), _wgslsmith_div_vec3_u32(~(select(vec3<u32>(10107u, 1u, 28496u), vec3<u32>(1u, 4294967295u, u_input.a), vec3<bool>(var_2.a.x, true, var_3)) << (vec3<u32>(1u, global3.a.c, 67545u) % vec3<u32>(32u))), ~(~vec3<u32>(0u, 49757u, u_input.a))));
}

