struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<f32, 21> = array<f32, 21>(214f, 688f, 109f, -509f, -676f, 375f, 680f, 203f, 395f, -1579f, 2483f, -1000f, -1000f, 739f, -668f, 1812f, -152f, 1521f, 942f, -202f, -951f);

var<private> global2: vec4<f32> = vec4<f32>(676f, 616f, 829f, -738f);

var<private> global3: Struct_1;

var<private> global4: f32 = 334f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    global1 = array<f32, 21>();
    var var_0 = arg_1.x;
    let var_1 = 1u;
    global0 = true;
    var var_2 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(global3.b)), _wgslsmith_f_op_vec2_f32(select(global3.b, vec2<f32>(-1416f, global3.d), vec2<bool>(global3.a, global3.a)))))))), _wgslsmith_f_op_f32(-1383f * -715f), 1000f);
    return 569f;
}

fn func_3() -> bool {
    global1 = array<f32, 21>();
    let var_0 = Struct_1(((u_input.e << (4294967295u % 32u)) <= ~u_input.e) || (any(select(vec4<bool>(true, false, global3.a, global3.a), vec4<bool>(false, true, global3.a, global3.a), false)) && (any(vec2<bool>(true, true)) != !global3.a)), vec2<f32>(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(max(-1000f, global1[_wgslsmith_index_u32(~5248u, 21u)]))), -647f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(35174u, 0u)), 21u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 6381u), vec2<u32>(30485u, u_input.e)), 21u)])) * 1865f)), global3.d);
    var var_1 = ~reverseBits(39411u);
    let var_2 = vec4<i32>(firstLeadingBit(u_input.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~u_input.c, u_input.c), vec2<i32>(-1i, ~(-2147483647i))), abs(u_input.c)), u_input.a, u_input.c.x >> ((_wgslsmith_mod_u32(_wgslsmith_sub_u32(18816u, u_input.e), ~1540u) >> (abs(~57405u) % 32u)) % 32u));
    var var_3 = ~u_input.e;
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: bool) -> StorageBuffer {
    global0 = false;
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.xx);
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(global3.d - _wgslsmith_f_op_f32(func_2(-1373f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1761f, arg_0.x, global2.x))))), -856f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1251f - -993f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2463f), -1000f)))), arg_0.yz, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(202f, _wgslsmith_f_op_f32(-var_0.x)) + -536f), _wgslsmith_f_op_f32(global3.d - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, var_0.x)))), true)), vec4<u32>(u_input.e, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.e, reverseBits(u_input.e)), u_input.e), arg_1.x >> (~arg_1.x % 32u), 0u & _wgslsmith_div_u32(~arg_1.x, ~arg_1.x)), Struct_2(Struct_1(func_3(), global2.zw, -295f, -3444f), Struct_1((u_input.e > u_input.e) & true, arg_0.xy, 408f, -359f), 7220u));
    var var_2 = -abs(abs(vec3<i32>(-49887i, -1i, -2147483647i)) ^ (countOneBits(vec3<i32>(-1i, 1i, 2147483647i)) ^ firstLeadingBit(vec3<i32>(u_input.d, 4735i, 8795i))));
    let var_3 = min(_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.d, 2147483647i, -var_2.x, var_2.x), vec4<i32>(-2147483647i, 1i, -1i, 0i) | ~vec4<i32>(1i, 69111i, 2147483647i, u_input.c.x)) ^ _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(2147483647i, u_input.b, 55064i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_2.x, -2147483647i, 65779i), vec4<i32>(u_input.c.x, u_input.c.x, var_2.x, 69339i))), abs(vec4<i32>(u_input.b, u_input.c.x, var_2.x, var_2.x) >> (var_1.d % vec4<u32>(32u)))), vec4<i32>(-1i) * -(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, u_input.d, var_2.x), vec4<i32>(72117i, -4833i, 1i, var_2.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 1u, 4294967295u, arg_1.x), var_1.d) % vec4<u32>(32u))));
    return StorageBuffer(var_3.zww, var_3.xxy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    let var_1 = _wgslsmith_mod_i32(u_input.a, firstLeadingBit(u_input.b));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(2468f, global3.d, 358f, 1128f) + vec4<f32>(global2.x, -1231f, global2.x, global1[_wgslsmith_index_u32(57531u, 21u)])), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1718f, -1860f, global3.d, global1[_wgslsmith_index_u32(u_input.e, 21u)]))))), vec4<f32>(-1004f, _wgslsmith_f_op_f32(919f * -1000f), _wgslsmith_f_op_f32(trunc(337f)), global2.x)) + vec4<f32>(_wgslsmith_f_op_f32(max(global3.d, _wgslsmith_f_op_f32(global2.x + 3359f))), _wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.b.x * global1[_wgslsmith_index_u32(41572u, 21u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-258f, -159f))))));
    global1 = array<f32, 21>();
    let x = u_input.a;
    s_output = func_1(global2.zww, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.e, 104860u, u_input.e), vec4<u32>(50962u, 0u, 7758u, 32440u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, 4055u, u_input.e, u_input.e), vec4<u32>(u_input.e, 8064u, u_input.e, u_input.e)), vec4<u32>(55669u, 19900u, u_input.e, ~1u)) << (~(max(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.e), vec4<u32>(u_input.e, 0u, 0u, u_input.e)) & (vec4<u32>(12048u, 4294967295u, u_input.e, u_input.e) >> (vec4<u32>(10083u, u_input.e, 4294967295u, u_input.e) % vec4<u32>(32u)))) % vec4<u32>(32u)), global3.a);
}

