struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-1i, -17945i, -44393i, 35951i, 2147483647i, i32(-2147483648), 1i, 30406i, 14631i, -1i, -1i, 2147483647i, -1i, 26912i, 1i, 2147483647i, i32(-2147483648), -1i, 2147483647i, 35075i, 23733i, 0i, i32(-2147483648), -843i, 0i, 922i);

var<private> global1: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> bool {
    global0 = array<i32, 26>();
    global1 = -1060f;
    let var_0 = any(vec4<bool>(true, false, true, !all(vec2<bool>(true, true)) & true));
    let var_1 = Struct_4(vec3<i32>(global0[_wgslsmith_index_u32(arg_0.b.x, 26u)], -77056i, 42303i));
    var var_2 = 12555i;
    return _wgslsmith_mod_i32(1i, arg_1.a.x) <= -1i;
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    global0 = array<i32, 26>();
    let var_0 = ~u_input.a.wz & vec2<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_div_vec3_u32(u_input.a.yyz, vec3<u32>(0u, 17120u, arg_0.x))), _wgslsmith_clamp_vec3_u32(u_input.a.yyw, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), u_input.a.zxy)));
    let var_1 = Struct_3(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec2<bool>(true, true))), select(~2147483647i < _wgslsmith_div_i32(11211i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 63569i, 23864i), vec3<i32>(0i, 1i, 6052i)) <= _wgslsmith_mod_i32(-28029i, global0[_wgslsmith_index_u32(4294967295u, 26u)]), true) && (~(arg_0.x & var_0.x) == firstTrailingBit(min(4294967295u, arg_0.x))), global0[_wgslsmith_index_u32(34074u, 26u)]);
    global0 = array<i32, 26>();
    var var_2 = 544f;
    return 448f;
}

fn func_2() -> Struct_3 {
    global0 = array<i32, 26>();
    var var_0 = abs(-2147483647i);
    global1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.a.wy), vec2<u32>(0u, u_input.a.x)), vec2<u32>(~0u, u_input.a.x))));
    var var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.zx), max(firstLeadingBit(~u_input.a.zz), ~u_input.a.zz));
    global0 = array<i32, 26>();
    return Struct_3(!vec3<bool>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) == (90521u >> (var_1.x % 32u)), all(vec3<bool>(true, false, true)), false), all(!vec4<bool>(true, true, select(true, true, false), true)), _wgslsmith_sub_i32(_wgslsmith_div_i32(firstTrailingBit(global0[_wgslsmith_index_u32(countOneBits(1u), 26u)]), global0[_wgslsmith_index_u32(26945u, 26u)]), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-21678i, 5054i), select(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<bool>(false, true)))));
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1117f - -121f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -902f)))), arg_0.a.x, firstLeadingBit(0i));
    let var_1 = ~(~vec2<u32>(u_input.a.x << (0u % 32u), 104758u & u_input.a.x)) & u_input.a.yx;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-var_0.a)) * var_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f * -1245f)), 1022f)))) - _wgslsmith_f_op_f32(-var_0.a));
    var var_2 = var_0;
    let var_3 = _wgslsmith_mod_u32(~4294967295u, ~_wgslsmith_div_u32(~u_input.a.x, u_input.a.x));
    return StorageBuffer(reverseBits(global0[_wgslsmith_index_u32(firstLeadingBit(0u), 26u)]), select(u_input.a.zyx, vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(5339u, 30517u, 65156u, u_input.a.x), u_input.a & u_input.a)), arg_0.a), var_2.a, select(select(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c, var_0.c, global0[_wgslsmith_index_u32(var_3, 26u)]), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], var_0.c)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(39672u, 55380u, var_1.x), u_input.a.zxy) % vec3<u32>(32u)), vec3<i32>(arg_0.c, var_0.c, _wgslsmith_sub_i32(0i, 0i)), !arg_0.a), -(vec3<i32>(-16909i, var_2.c, 2147483647i) | vec3<i32>(global0[_wgslsmith_index_u32(86068u, 26u)], -4709i, var_0.c)), !all(!vec2<bool>(true, arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(654f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -798f), -710f, !func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], u_input.a, u_input.a.yxy), Struct_4(vec3<i32>(global0[_wgslsmith_index_u32(0u, 26u)], -16768i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), 9102i, u_input.a.x)))));
    let x = u_input.a;
    s_output = func_4(func_2());
}

