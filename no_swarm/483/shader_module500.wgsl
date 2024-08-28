struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4>;

var<private> global1: Struct_1 = Struct_1(1380f);

var<private> global2: array<Struct_1, 29>;

var<private> global3: i32 = 14959i;

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(371f)), Struct_2(Struct_1(-941f)), Struct_2(Struct_1(303f)), Struct_2(Struct_1(1874f)), Struct_2(Struct_1(609f)), Struct_2(Struct_1(-668f)), Struct_2(Struct_1(1012f)), Struct_2(Struct_1(-857f)), Struct_2(Struct_1(-861f)), Struct_2(Struct_1(1472f)), Struct_2(Struct_1(-2176f)), Struct_2(Struct_1(835f)), Struct_2(Struct_1(674f)), Struct_2(Struct_1(301f)), Struct_2(Struct_1(-1843f)), Struct_2(Struct_1(195f)), Struct_2(Struct_1(184f)), Struct_2(Struct_1(-203f)), Struct_2(Struct_1(-1429f)), Struct_2(Struct_1(-1212f)), Struct_2(Struct_1(-1311f)), Struct_2(Struct_1(859f)), Struct_2(Struct_1(425f)), Struct_2(Struct_1(1000f)), Struct_2(Struct_1(-614f)), Struct_2(Struct_1(-1618f)), Struct_2(Struct_1(615f)), Struct_2(Struct_1(1000f)), Struct_2(Struct_1(812f)), Struct_2(Struct_1(433f)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    var var_0 = Struct_3(~vec2<i32>(~u_input.d, u_input.d));
    let var_1 = select(vec3<bool>(true, !((global0[_wgslsmith_index_u32(25287u, 4u)] == global1.a) & true), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, any(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, true))), true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(max(u_input.c, u_input.b.x), 4u)])))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-281f)) * global0[_wgslsmith_index_u32(78887u, 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-447f, -988f))));
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(20101u ^ abs(_wgslsmith_sub_u32(u_input.a, 50723u)), 26580u, _wgslsmith_sub_u32(u_input.c << (u_input.b.x % 32u), ~6705u), ~u_input.c), abs(~(~min(vec4<u32>(4294967295u, u_input.c, 0u, 42525u), vec4<u32>(u_input.c, 1u, 7203u, 4294967295u)))));
    var var_3 = Struct_4(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.b.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.x, u_input.c, u_input.a, var_2.x), vec4<u32>(23611u, u_input.c, var_2.x, var_2.x)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(55423u, 4294967295u, 4294967295u, var_2.x), vec4<u32>(0u, u_input.a, 41391u, var_2.x)) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, u_input.c, var_2.x, u_input.a))), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(u_input.d, var_0.a.x)), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(-1i, u_input.d) << (u_input.b.xx % vec2<u32>(32u))), min(-var_0.a, min(var_0.a, vec2<i32>(u_input.d, 2147483647i))), abs(vec2<i32>(2147483647i, u_input.d)) << (~var_2.wy % vec2<u32>(32u)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-401f, global0[_wgslsmith_index_u32(var_2.x, 4u)]) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, -1063f) - vec2<f32>(global1.a, global0[_wgslsmith_index_u32(0u, 4u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-515f, _wgslsmith_f_op_f32(f32(-1f) * -835f))))), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x << (u_input.a % 32u)) & (var_2.x ^ _wgslsmith_mod_u32(95875u, var_2.x)), 29u)]);
    var var_4 = _wgslsmith_dot_vec3_u32(~(vec3<u32>(104240u, var_2.x, u_input.a) ^ firstLeadingBit(var_2.wxx)) >> (var_2.wzx % vec3<u32>(32u)), ~var_2.yzz);
    return reverseBits(8219i);
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = u_input.d;
    global3 = func_3();
    var_0 = 11218i;
    let var_1 = ~u_input.b;
    global1 = Struct_1(global0[_wgslsmith_index_u32(4294967295u, 4u)]);
    return global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.x, u_input.a), u_input.b.x ^ var_1.x), 0u)), 29u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(arg_0.x), -u_input.d | -4537i), i32(-1i) * -(-9204i ^ arg_0.x));
    let var_1 = var_0.x;
    global3 = i32(-1i) * -arg_0.x;
    let var_2 = _wgslsmith_add_vec3_i32(countOneBits(select(vec3<i32>(-1i) * -arg_0, ~vec3<i32>(13730i, arg_0.x, -43921i), true)), select(-arg_0, _wgslsmith_clamp_vec3_i32(arg_0, max(arg_0, min(arg_0, vec3<i32>(-2147483647i, u_input.d, 1200i))), min(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_0.x, -30506i), vec3<i32>(-1i, arg_0.x, arg_0.x)), -vec3<i32>(1i, u_input.d, 60237i))), false));
    global2 = array<Struct_1, 29>();
    return func_2(vec3<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -121f) == _wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(u_input.a, 4u)]))), all(vec2<bool>(true, true)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~u_input.a | min(u_input.a, u_input.c | 31137u)));
    var var_1 = ~u_input.b.yz;
    let var_2 = !vec4<bool>(any(vec4<bool>(true, true, true, true)), u_input.c >= ~0u, var_1.x >= var_1.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x ^ u_input.a, 4u)]) >= _wgslsmith_f_op_f32(f32(-1f) * -821f));
    let var_3 = u_input.c;
    let var_4 = global1.a;
    let var_5 = func_1(vec3<i32>(u_input.d, -48783i & u_input.d, _wgslsmith_div_i32(u_input.d, u_input.d)), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(17849u, var_1.x, select(0u, var_1.x, var_2.x)), ~u_input.b >> (vec3<u32>(88391u, 0u, 1u) % vec3<u32>(32u))), 4u)]));
    let var_6 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-firstLeadingBit(vec2<i32>(u_input.d, u_input.d)), select(firstTrailingBit(vec2<i32>(-1i, -2147483647i)), firstLeadingBit(vec2<i32>(-2135i, u_input.d)), select(var_2.zy, vec2<bool>(false, var_2.x), var_2.x))), ~select(vec2<i32>(u_input.d, u_input.d) >> (vec2<u32>(0u, var_1.x) % vec2<u32>(32u)), ~vec2<i32>(4688i, -2147483647i), global0[_wgslsmith_index_u32(4415u, 4u)] < global1.a)) | ~(vec2<i32>(1i, 1i) ^ ~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(15272i, 69657i)));
    let var_7 = Struct_3(vec2<i32>(var_6.x, ~(-u_input.d | u_input.d)));
    var var_8 = var_2.yxy;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a, vec3<i32>(0i, _wgslsmith_dot_vec2_i32(var_6 & var_7.a, vec2<i32>(var_7.a.x, -8493i)), 0i) ^ (vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_6.x, var_7.a.x, var_7.a.x), vec3<i32>(1i, var_6.x, var_7.a.x)), ~1i, 0i) ^ vec3<i32>(var_6.x, var_6.x | var_6.x, -var_7.a.x)), ~var_1.x);
}

