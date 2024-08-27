struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, true, true, true, true, false, true, true, false, true, true, false, true, true, true);

var<private> global1: u32;

var<private> global2: array<vec4<u32>, 22>;

var<private> global3: vec4<f32> = vec4<f32>(1864f, -343f, -788f, -311f);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32) -> vec4<bool> {
    return !select(!select(vec4<bool>(global0[_wgslsmith_index_u32(32045u, 15u)], global0[_wgslsmith_index_u32(16506u, 15u)], true, global0[_wgslsmith_index_u32(1u, 15u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(arg_2, 15u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 15u)], false, true)), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], global0[_wgslsmith_index_u32(70821u, 15u)], false, false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(86694u, 15u)], false), true)), !vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.c, 16198u), 15u)]));
}

fn func_2(arg_0: vec3<i32>) -> vec2<u32> {
    let var_0 = global3.xwy;
    let var_1 = firstTrailingBit(firstTrailingBit(vec3<i32>(arg_0.x, firstLeadingBit(arg_0.x) << (abs(u_input.a) % 32u), ~(-2147483647i))));
    global2 = array<vec4<u32>, 22>();
    global0 = array<bool, 15>();
    var var_2 = Struct_1(select(!(!func_3(vec2<u32>(4294967295u, 19277u), Struct_2(10801i, 2069f, u_input.a), u_input.a)), vec4<bool>((1u > u_input.a) | true, true, any(vec4<bool>(true, true, true, true)), select(!global0[_wgslsmith_index_u32(u_input.a, 15u)], true, any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 15u)], false, global0[_wgslsmith_index_u32(u_input.a, 15u)])))), global0[_wgslsmith_index_u32(~firstLeadingBit(min(1u, 48162u)), 15u)]), vec2<f32>(global3.x, var_0.x));
    return ~_wgslsmith_add_vec2_u32(~(vec2<u32>(73864u, u_input.a) >> (~vec2<u32>(4294967295u, 8712u) % vec2<u32>(32u))), ~vec2<u32>(u_input.a & u_input.a, ~19810u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global1 = 9329u;
    var var_0 = u_input.c.yww;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1019f)));
    var var_2 = _wgslsmith_dot_vec2_i32(var_0.zy, var_0.xy << (_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(u_input.a, 0u)), func_2(vec3<i32>(19337i, 2147483647i, u_input.c.x) | vec3<i32>(2147483647i, -9279i, -1i))) % vec2<u32>(32u)));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(135f, var_1, arg_0.b, -3265f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1374f, 602f, 324f, -1000f) * vec4<f32>(-150f, -445f, 539f, global3.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(355f, global3.x, arg_0.b, 755f)))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_mult_i32(u_input.b, firstLeadingBit(u_input.c.x));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-243f, global3.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.yw, arg_0.wz), 15u)])), -857f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(arg_1, -1461f, global0[_wgslsmith_index_u32(arg_0.x, 15u)]))), -945f) * vec4<f32>(-1000f, -696f, _wgslsmith_f_op_f32(-arg_1), arg_1)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 309f, -712f, 2175f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(301f, arg_1, arg_1, arg_1) + vec4<f32>(global3.x, global3.x, -353f, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, 1766f, -576f, -2297f), vec4<f32>(1144f, 201f, -699f, 1868f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-840f, -378f, 1096f, arg_1) * vec4<f32>(-470f, global3.x, global3.x, global3.x))), any(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(4511u, 15u)])))))));
    let var_1 = Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(_wgslsmith_mod_u32(arg_0.x, 1u))), 15u)], 4458u > u_input.a, true), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-326f - 818f), 548f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))));
    let var_2 = func_3(vec2<u32>(~(~u_input.a), _wgslsmith_sub_u32(func_2(vec3<i32>(u_input.c.x, var_0, u_input.b)).x, max(_wgslsmith_add_u32(1u, 19502u), ~39169u))), Struct_2(firstTrailingBit(firstLeadingBit(u_input.b)), -949f, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(4294967295u, 16091u)), vec2<u32>(u_input.a, ~4294967295u))), ~max(arg_0.x, ~u_input.a)).x;
    let var_3 = _wgslsmith_f_op_f32(-global3.x);
    return vec4<bool>(any(!(!select(var_1.a, vec4<bool>(var_1.a.x, true, false, var_1.a.x), var_1.a))), true, any(vec4<bool>(all(vec2<bool>(var_1.a.x, var_2)) == func_3(vec2<u32>(4294967295u, 3710u), Struct_2(var_0, -1000f, u_input.a), 1u).x, !all(var_1.a), true, true)), all(select(select(vec4<bool>(var_1.a.x, var_2, true, global0[_wgslsmith_index_u32(4294967295u, 15u)]), var_1.a, var_1.a), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 15u)] || true, var_2), var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 22>();
    global0 = array<bool, 15>();
    let var_0 = Struct_1(!select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], false, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), !vec4<bool>(global0[_wgslsmith_index_u32(36479u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(48427u, 15u)]), func_4(~global2[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_f32(func_1(Struct_2(u_input.b, global3.x, u_input.a), Struct_1(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(u_input.a, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], true), global3.zx))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1000f + global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + global3.x) + _wgslsmith_f_op_f32(-1337f + global3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global3.yw)))));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(reverseBits(0u), 1u, firstLeadingBit(select(u_input.a, 1u, var_0.a.x))), u_input.a << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(42345u, u_input.a, u_input.a))) % 32u));
    let var_2 = (u_input.a & u_input.a) < u_input.a;
    let var_3 = select(vec3<bool>(global0[_wgslsmith_index_u32(26382u, 15u)], u_input.b == _wgslsmith_sub_i32(9605i, _wgslsmith_add_i32(u_input.b, u_input.b)), true), var_0.a.yww, func_3(~vec2<u32>(44428u, u_input.a), Struct_2(_wgslsmith_add_i32(u_input.b, u_input.b) << ((19429u | u_input.a) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -1493f), ~(u_input.a >> (u_input.a % 32u))), u_input.a).xwz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(911f, 790f), ~firstTrailingBit(~_wgslsmith_sub_vec2_u32(vec2<u32>(58458u, 1u), vec2<u32>(0u, u_input.a))), ~_wgslsmith_clamp_vec3_i32(min(abs(vec3<i32>(u_input.b, u_input.b, 19431i)), u_input.c.ywz), abs(u_input.c.wzx & vec3<i32>(-44879i, 1i, 2147483647i)), u_input.c.yyx), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, ~u_input.a), vec2<u32>(~u_input.a, countOneBits(u_input.a))), ~((vec2<u32>(52893u, u_input.a) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))));
}

