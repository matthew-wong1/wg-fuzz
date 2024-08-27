struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_3,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<Struct_4, 32>;

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: Struct_5, arg_3: vec4<u32>) -> u32 {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), arg_2.e.b, _wgslsmith_f_op_f32(-arg_0.e.b)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(496f, -1820f, 706f)))))));
    var var_2 = select(arg_1, !vec4<bool>(false, false, all(arg_1), true), true);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.yw + arg_0.a.zw)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1512f, arg_0.e.b), var_1.xx, var_2.wy)) * _wgslsmith_f_op_vec2_f32(-arg_2.a.ww)), var_1.xy, select(var_2.wx, vec2<bool>(var_2.x, false), any(var_2.ww)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(579f, _wgslsmith_f_op_f32(min(-168f, -515f))))));
    var var_4 = arg_2;
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, arg_0.e.a.c.e), min(max(var_4.e.a.c.d, u_input.c.yz), arg_0.d.zz)), arg_2.e.a.c.d));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> Struct_4 {
    global1 = array<Struct_4, 32>();
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 36319i, -9824i), min(arg_1.a.b.wzw, countOneBits(vec3<i32>(arg_1.a.b.x, 2147483647i, arg_0.b.x)))) <= (arg_1.a.b.x >> (_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, arg_1.c.e), u_input.c.x) % 32u));
    var var_1 = ~firstTrailingBit(~arg_1.b.b.yw);
    global2 = array<Struct_1, 23>();
    global1 = array<Struct_4, 32>();
    return Struct_4(vec2<u32>(1u, (1u >> (func_3(Struct_5(vec4<f32>(-201f, 594f, -1031f, -706f), Struct_3(Struct_2(Struct_1(arg_1.c.a, vec4<i32>(arg_1.c.b.x, var_1.x, var_1.x, u_input.b), false, vec2<u32>(global0[_wgslsmith_index_u32(90084u, 1u)], 18518u), arg_1.a.d.x), global2[_wgslsmith_index_u32(5297u, 23u)], Struct_1(var_0, vec4<i32>(u_input.b, u_input.b, arg_1.b.b.x, arg_0.b.x), false, arg_0.d, arg_0.e)), 432f, Struct_1(true, arg_0.b, arg_0.a, arg_0.d, global0[_wgslsmith_index_u32(u_input.a, 1u)])), Struct_1(true, vec4<i32>(var_1.x, arg_0.b.x, arg_1.a.b.x, 0i), true, vec2<u32>(global0[_wgslsmith_index_u32(5061u, 1u)], 0u), 0u), u_input.c, Struct_3(Struct_2(Struct_1(true, u_input.d, arg_1.a.c, vec2<u32>(4294967295u, u_input.c.x), arg_1.c.d.x), Struct_1(false, vec4<i32>(u_input.d.x, 0i, -1916i, 13304i), arg_0.a, u_input.c.zz, arg_1.b.e), global2[_wgslsmith_index_u32(91500u, 23u)]), -1907f, Struct_1(arg_0.c, arg_0.b, false, vec2<u32>(u_input.a, 1u), 49475u))), vec4<bool>(arg_0.a, var_0, false, arg_0.c), Struct_5(vec4<f32>(-614f, -2216f, 996f, -1260f), Struct_3(Struct_2(arg_1.a, Struct_1(true, vec4<i32>(arg_0.b.x, var_1.x, 1i, arg_0.b.x), false, vec2<u32>(arg_1.b.d.x, global0[_wgslsmith_index_u32(arg_0.e, 1u)]), global0[_wgslsmith_index_u32(u_input.c.x, 1u)]), Struct_1(true, arg_0.b, arg_1.b.c, vec2<u32>(1u, arg_1.a.d.x), u_input.c.x)), -622f, arg_0), arg_1.b, u_input.c, Struct_3(Struct_2(arg_0, global2[_wgslsmith_index_u32(38220u, 23u)], Struct_1(false, u_input.d, true, vec2<u32>(37363u, 1u), arg_1.b.e)), 136f, global2[_wgslsmith_index_u32(arg_1.b.e, 23u)])), vec4<u32>(4294967295u, 2415u, 0u, u_input.c.x)) % 32u)) >> (92942u % 32u)), _wgslsmith_f_op_f32(abs(-744f)), _wgslsmith_dot_vec4_i32(u_input.d, ~arg_0.b) | firstLeadingBit(_wgslsmith_dot_vec4_i32(arg_1.c.b ^ arg_0.b, abs(vec4<i32>(0i, arg_0.b.x, var_1.x, arg_1.c.b.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-735f, -1304f, _wgslsmith_f_op_f32(-249f - 1426f), -1330f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1228f, -2454f, -1600f, -1324f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1141f, 137f, 871f, -1000f), vec4<f32>(-360f, 1000f, -1599f, -1136f))))));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> u32 {
    global2 = array<Struct_1, 23>();
    global0 = array<u32, 1>();
    var var_0 = Struct_3(Struct_2(Struct_1(true, select(_wgslsmith_sub_vec4_i32(u_input.d, u_input.d), select(u_input.d, u_input.d, vec4<bool>(false, true, false, arg_1)), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_1, true, true, arg_1), false)), true, firstLeadingBit(vec2<u32>(arg_0.a.x, arg_0.a.x)), ~u_input.a), Struct_1(true, u_input.d, true != (0i != arg_0.c), u_input.c.zz | u_input.c.zx, ~0u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(_wgslsmith_clamp_u32(u_input.c.x, arg_0.a.x, 0u)), ~abs(u_input.a)), 23u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.b))) * _wgslsmith_f_op_f32(f32(-1f) * -611f))), global2[_wgslsmith_index_u32(select(~global0[_wgslsmith_index_u32(21976u, 1u)], _wgslsmith_add_u32(~6363u, abs(u_input.c.x) >> (26546u % 32u)), all(vec2<bool>(any(vec3<bool>(arg_1, arg_1, arg_1)), arg_0.b >= 624f))), 23u)]);
    global1 = array<Struct_4, 32>();
    var var_1 = var_0.a.b;
    return ~(~_wgslsmith_div_u32(func_3(Struct_5(arg_0.d, Struct_3(var_0.a, var_0.b, var_0.a.a), global2[_wgslsmith_index_u32(arg_0.a.x, 23u)], u_input.c, Struct_3(var_0.a, 149f, Struct_1(false, vec4<i32>(arg_0.c, var_1.b.x, 0i, 22213i), arg_1, vec2<u32>(arg_0.a.x, 0u), 62636u))), vec4<bool>(var_0.c.c, false, true, false), Struct_5(arg_0.d, Struct_3(Struct_2(global2[_wgslsmith_index_u32(0u, 23u)], Struct_1(true, var_0.a.c.b, false, vec2<u32>(var_0.c.e, u_input.a), 54035u), global2[_wgslsmith_index_u32(arg_0.a.x, 23u)]), -1224f, var_0.c), Struct_1(var_0.c.c, vec4<i32>(2147483647i, -2147483647i, 0i, -33772i), arg_1, var_0.c.d, 47418u), u_input.c, Struct_3(var_0.a, -1411f, Struct_1(false, u_input.d, true, vec2<u32>(0u, var_0.c.d.x), arg_0.a.x))), vec4<u32>(0u, 20204u, 1u, 0u)), var_0.a.a.e)) >> (max(u_input.c.x, arg_0.a.x) % 32u);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = vec2<i32>(arg_0.c, (firstLeadingBit(-1i) & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -32445i), ~vec2<i32>(arg_0.c, u_input.b))) & 1i);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.b);
    global1 = array<Struct_4, 32>();
    var_1 = 474f;
    var var_2 = vec4<i32>(~(-_wgslsmith_sub_i32(-6314i, 0i) >> (func_4(func_2(Struct_1(arg_2.x, vec4<i32>(arg_0.c, -15748i, -1i, -22636i), false, arg_0.a, 68599u), Struct_2(Struct_1(false, u_input.d, arg_2.x, vec2<u32>(arg_0.a.x, 1u), 19536u), Struct_1(true, vec4<i32>(arg_0.c, arg_0.c, arg_0.c, var_0.x), arg_2.x, u_input.c.zy, arg_0.a.x), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9347u, 1u)], 23u)])), true) % 32u)), ~(-4268i) >> (1u % 32u), u_input.d.x, ~firstLeadingBit(arg_0.c));
    return _wgslsmith_f_op_f32(min(-272f, arg_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f - 221f) - -1398f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1178f) - 1000f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2263f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(~115005u, 32u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(212f, 1027f, -570f) * vec3<f32>(841f, 1000f, -121f)), vec2<bool>(true, false))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(914f))))), 687f)));
    var var_1 = -1i;
    global0 = array<u32, 1>();
    let var_2 = Struct_2(Struct_1(false, -max(select(vec4<i32>(2147483647i, u_input.b, -6018i, 38717i), u_input.d, false), u_input.d ^ u_input.d), global0[_wgslsmith_index_u32(u_input.c.x, 1u)] <= global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c.x, 1u)] >> (875u % 32u), 1u)], reverseBits(~vec2<u32>(15499u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12821u, 1u)], 1u)])), 21668u), Struct_1(false, u_input.d, (-1i >= u_input.d.x) | !any(vec4<bool>(false, true, false, true)), u_input.c.yy, 82630u), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~reverseBits(~52226u >> (1u % 32u)), 1u)], 23u)]);
    var var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.zz)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -141f), _wgslsmith_f_op_f32(abs(905f)))), 195f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -1i, ~var_2.c.b.x, u_input.b), vec4<i32>(var_2.c.b.x, u_input.b, func_2(Struct_1(var_2.a.c, vec4<i32>(var_2.c.b.x, -2147483647i, u_input.d.x, 0i), true, u_input.c.yy, 1u), Struct_2(Struct_1(true, vec4<i32>(u_input.d.x, u_input.b, var_2.c.b.x, var_2.c.b.x), var_2.a.c, vec2<u32>(1u, 1u), u_input.c.x), global2[_wgslsmith_index_u32(58213u, 23u)], Struct_1(var_2.c.c, vec4<i32>(var_2.b.b.x, var_2.b.b.x, -42961i, var_2.b.b.x), false, u_input.c.xx, u_input.c.x))).c, u_input.d.x)), 1541f, 4556i);
}

