struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(true, false, true, false, false, false, false, false);

var<private> global1: array<Struct_4, 16>;

var<private> global2: array<bool, 18> = array<bool, 18>(true, true, true, true, true, false, true, false, false, false, true, false, false, true, true, false, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> f32 {
    var var_0 = 20115i >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(27037u, select(84858u, 10765u, global0[_wgslsmith_index_u32(u_input.a, 8u)])), vec2<u32>(u_input.a, u_input.a)) & u_input.a) % 32u);
    let var_1 = firstTrailingBit(~firstTrailingBit(1u));
    let var_2 = Struct_4(Struct_2(Struct_1(-1i), -654f), Struct_3(~(~countOneBits(vec3<u32>(var_1, var_1, u_input.a)))));
    var_0 = arg_0;
    var_0 = -6374i;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_2.a.b, _wgslsmith_f_op_f32(ceil(1095f)))))), _wgslsmith_f_op_f32(-var_2.a.b)));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = select(true, true, all(select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(27600u, 8u)], global2[_wgslsmith_index_u32(76716u, 18u)]), vec3<bool>(false, false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(0u, 18u)])), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(100203u, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(arg_3, 18u)], global0[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(1753u, 18u)]), global2[_wgslsmith_index_u32(arg_3, 18u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 18u)], false, false), vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(u_input.a, 18u)]), false)), vec3<bool>(global0[_wgslsmith_index_u32(41458u, 8u)], !global2[_wgslsmith_index_u32(4294967295u, 18u)], !global2[_wgslsmith_index_u32(arg_3, 18u)]), global0[_wgslsmith_index_u32(u_input.a, 8u)])));
    let var_1 = Struct_3(vec3<u32>(~_wgslsmith_mod_u32(96465u, arg_3) & ~_wgslsmith_sub_u32(arg_3, 1u), arg_3, select(firstLeadingBit(1u), ~34568u, true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b)) + _wgslsmith_f_op_f32(f32(-1f) * -283f));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, arg_2.b))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.b, -928f), vec2<f32>(756f, -738f), global2[_wgslsmith_index_u32(31248u, 18u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-758f, -876f), vec2<f32>(-1000f, arg_2.b))), true))) + vec2<f32>(616f, arg_0)));
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1273f, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, var_3.x)) - vec2<f32>(arg_2.b, 850f)), !var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(952f, arg_2.b)))), vec2<bool>(arg_3 >= ~u_input.a, !var_0))) + vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_3.x)), arg_0))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_2.a.a, select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(19705u, 8u)], true), vec3<bool>(var_0, false, false)), !vec3<bool>(var_0, false, global0[_wgslsmith_index_u32(u_input.a, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(24693u, 8u)], false, true)))), -218f, select(!var_0, true, true))));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 45449u)), ~vec3<u32>(~16015u, 45685u, countOneBits(4294967295u)));
    global1 = array<Struct_4, 16>();
    var var_1 = Struct_1(select(firstLeadingBit(~(-15432i >> (var_0 % 32u))), u_input.c, global2[_wgslsmith_index_u32(~(firstLeadingBit(var_0) ^ ~u_input.a), 18u)]));
    let var_2 = Struct_3(_wgslsmith_mod_vec3_u32(~min(max(vec3<u32>(1u, 51860u, u_input.a), vec3<u32>(28539u, 0u, var_0)), vec3<u32>(4294967295u, u_input.a, 50559u)), firstLeadingBit(vec3<u32>(~u_input.a, _wgslsmith_add_u32(var_0, 22422u), 1u))));
    var var_3 = Struct_2(Struct_1(var_1.a), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(-var_1.a, select(select(vec3<bool>(false, false, false), vec3<bool>(global0[_wgslsmith_index_u32(6439u, 8u)], global2[_wgslsmith_index_u32(var_2.a.x, 18u)], true), false), select(vec3<bool>(global0[_wgslsmith_index_u32(100468u, 8u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(6849u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)]), global2[_wgslsmith_index_u32(u_input.a, 18u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], true, global2[_wgslsmith_index_u32(9734u, 18u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(33007u, 18u)], false), global2[_wgslsmith_index_u32(67051u, 18u)])))), vec4<i32>(1i, var_1.a, -23181i, var_1.a), Struct_2(Struct_1(~0i), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(351f, arg_0))), 1u)));
    return ~1u;
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = vec3<u32>(~func_2(_wgslsmith_f_op_f32(f32(-1f) * -735f)), 4294967295u, _wgslsmith_dot_vec4_u32(~(~min(vec4<u32>(arg_0, u_input.a, u_input.a, arg_1), vec4<u32>(4294967295u, 4294967295u, 26801u, 4294967295u))), ~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1, arg_0, arg_0, u_input.a), vec4<u32>(arg_1, arg_1, arg_1, u_input.a)))));
    global0 = array<bool, 8>();
    var var_1 = Struct_1(u_input.c);
    global2 = array<bool, 18>();
    let var_2 = vec3<bool>(select(false, !any(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_1, 18u)])), global2[_wgslsmith_index_u32(~var_0.x, 18u)]), all(select(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)] && true, all(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 8u)], true, false))), vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 18u)], !global2[_wgslsmith_index_u32(46125u, 18u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], false)))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-488f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.b >> (_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(4294967295u, u_input.a, 4294967295u)), vec3<u32>(u_input.a, 31886u, u_input.a)) % 32u), _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_clamp_i32(-1i, u_input.b, 9437i)), _wgslsmith_div_i32(u_input.b, -4638i))) << (vec2<u32>(~1u, ~firstTrailingBit(~62050u)) % vec2<u32>(32u));
    let var_1 = -803f;
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(~(31463u >> (1u % 32u)), _wgslsmith_add_u32(67956u, 1798u) | u_input.a)), _wgslsmith_div_f32(var_1, -382f))), -862f, vec3<i32>(11027i, -var_0.x, countOneBits(0i)), _wgslsmith_mod_vec2_i32(firstLeadingBit(-vec2<i32>(u_input.c, -10098i)), (~vec2<i32>(2147483647i, u_input.b) & (vec2<i32>(u_input.c, 23759i) ^ vec2<i32>(-27853i, 2147483647i))) & vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-6636i, var_0.x, 2147483647i), vec3<i32>(-2147483647i, u_input.c, u_input.b)))), firstTrailingBit(1i) << (reverseBits(u_input.a) % 32u));
}

