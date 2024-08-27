struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30>;

var<private> global1: array<bool, 14>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> f32 {
    var var_0 = !select(select(select(!vec2<bool>(false, global1[_wgslsmith_index_u32(64027u, 14u)]), !vec2<bool>(global1[_wgslsmith_index_u32(43387u, 14u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)])), vec2<bool>(!global1[_wgslsmith_index_u32(u_input.a, 14u)], true || global1[_wgslsmith_index_u32(u_input.d.x, 14u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], false), vec2<bool>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(u_input.a, 14u)]), select(vec2<bool>(false, true), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 14u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 14u)])))), vec2<bool>(true, true), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], true))));
    var var_1 = ~(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(53258i, arg_1.a.a.x, 0i, arg_0), vec4<i32>(arg_0, arg_1.e.a.x, 4159i, 9903i)))) | -vec4<i32>(arg_1.d.a.x, arg_0, _wgslsmith_mod_i32(arg_1.e.a.x & u_input.b.x, _wgslsmith_add_i32(0i, 0i)), 2147483647i);
    var var_2 = vec2<bool>(true, var_0.x);
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(var_1.yz, var_1.zy), -vec2<i32>(_wgslsmith_clamp_i32(arg_1.d.a.x, 2147483647i, arg_1.e.a.x), ~u_input.b.x)), _wgslsmith_mult_vec2_i32(select(_wgslsmith_sub_vec2_i32(u_input.b.xx, var_1.yw), vec2<i32>(abs(arg_1.e.a.x), ~u_input.b.x), select(!vec2<bool>(false, var_0.x), select(vec2<bool>(false, global1[_wgslsmith_index_u32(86242u, 14u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], true), global1[_wgslsmith_index_u32(u_input.d.x, 14u)]), true)), firstLeadingBit(var_1.wz)));
    let var_4 = _wgslsmith_add_i32(arg_1.e.a.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_3, -var_1.x), -1i, -2147483647i)) > 29885i;
    return arg_1.a.b.x;
}

fn func_2(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.zz);
    var var_1 = Struct_4(min(vec3<i32>(~select(1566i, u_input.b.x, true), _wgslsmith_mult_i32(~2147483647i, u_input.b.x), u_input.b.x), vec3<i32>(u_input.b.x, 7158i, 17748i >> ((u_input.d.x | 29148u) % 32u))), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), u_input.b.zz) >> (_wgslsmith_mod_vec2_u32(u_input.c.zx, vec2<u32>(u_input.a, 68318u)) % vec2<u32>(32u)), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(func_3(-2147483647i, Struct_2(Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec2<f32>(-1283f, var_0.x)), arg_0.x, var_0.x, Struct_1(vec2<i32>(2147483647i, u_input.b.x), vec2<f32>(arg_0.x, arg_0.x)), Struct_1(vec2<i32>(u_input.b.x, -45888i), vec2<f32>(-1000f, 1828f))))))), 329f, -215f, Struct_1(vec2<i32>(u_input.b.x ^ u_input.b.x, ~u_input.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zz) - vec2<f32>(var_0.x, 181f))), Struct_1(-u_input.b.xz >> (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 25802u), u_input.c.yw) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1356f, var_0.x), arg_0.zx)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, arg_0.x), arg_0.yx, global1[_wgslsmith_index_u32(0u, 14u)]))))));
    let var_2 = vec2<bool>(false, false);
    let var_3 = vec3<f32>(-344f, _wgslsmith_f_op_f32(-653f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.b.a.b.x)) - 753f))), arg_0.x);
    let var_4 = true;
    return abs(vec4<u32>(_wgslsmith_mult_u32(~u_input.a, 55497u), ~28213u, 11917u, ~24775u)) >> ((vec4<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.a), vec4<u32>(0u, 15173u, 4294967295u, 83811u)), u_input.c), u_input.c.x ^ u_input.d.x, 1u) << (vec4<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(94001u, u_input.a)), ~u_input.d.xw), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.zyw, u_input.d.zzy), u_input.c.wzx ^ u_input.d.xzz), ~7358u, firstLeadingBit(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = 2147483647i;
    var var_1 = arg_1;
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(0u | _wgslsmith_sub_u32(4294967295u | u_input.d.x, 1u), 81069u, 1u), u_input.d.yww);
    let var_3 = _wgslsmith_dot_vec4_u32(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1280f, -624f, var_1.c.x)) * vec3<f32>(arg_1.d.b.x, -1655f, 1000f))), ~((vec4<u32>(4294967295u, u_input.a, u_input.c.x, var_2.x) << (u_input.c % vec4<u32>(32u))) << (u_input.c % vec4<u32>(32u)))) & 37571u;
    var_0 = 1i;
    return Struct_4(u_input.b << (~_wgslsmith_mod_vec3_u32(u_input.c.zzz, countOneBits(vec3<u32>(0u, u_input.a, var_2.x))) % vec3<u32>(32u)), arg_1.b);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_4 {
    global0 = array<vec4<f32>, 30>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.c.x << (_wgslsmith_div_u32(31404u, u_input.a) % 32u)), 30u)]))));
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    global1 = array<bool, 14>();
    return arg_0.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global1 = array<bool, 14>();
    var var_1 = 724f;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1765f, _wgslsmith_f_op_f32(round(538f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(1000f, -398f)))), Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-16419i, -15497i), _wgslsmith_mult_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, 1i))), vec2<f32>(_wgslsmith_f_op_f32(select(924f, -215f, true)), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(365f))), 317f, Struct_1(vec2<i32>(u_input.b.x << (u_input.a % 32u), i32(-1i) * -38832i), _wgslsmith_div_vec2_f32(vec2<f32>(231f, -941f), _wgslsmith_f_op_vec2_f32(vec2<f32>(343f, -309f) + vec2<f32>(-979f, -121f)))), func_5(func_4(func_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], true, false, global1[_wgslsmith_index_u32(u_input.a, 14u)]), Struct_3(-1000f, Struct_2(Struct_1(u_input.b.zy, vec2<f32>(-1080f, -615f)), -936f, -1659f, Struct_1(vec2<i32>(u_input.b.x, -1i), vec2<f32>(-1201f, -703f)), Struct_1(vec2<i32>(2147483647i, 1i), vec2<f32>(2907f, -1560f))), vec2<f32>(251f, 953f), Struct_1(u_input.b.yz, vec2<f32>(741f, -392f)), Struct_1(vec2<i32>(-4501i, 57621i), vec2<f32>(-1147f, -364f)))), func_1(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], true), Struct_3(-1000f, Struct_2(Struct_1(u_input.b.zz, vec2<f32>(430f, -324f)), 680f, -143f, Struct_1(u_input.b.zx, vec2<f32>(-166f, 1087f)), Struct_1(vec2<i32>(-35222i, -13423i), vec2<f32>(622f, 1934f))), vec2<f32>(1000f, -1651f), Struct_1(u_input.b.zy, vec2<f32>(1000f, 793f)), Struct_1(vec2<i32>(42753i, u_input.b.x), vec2<f32>(-168f, 756f)))).b.e, reverseBits(u_input.b.zx)), var_0, select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 14u)], true), vec2<bool>(true, true), any(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], false))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(312f - -592f)), 851f)), func_1(vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0, 14u)], !any(vec3<bool>(global1[_wgslsmith_index_u32(14320u, 14u)], global1[_wgslsmith_index_u32(u_input.c.x, 14u)], false))), Struct_3(_wgslsmith_f_op_f32(func_3(countOneBits(u_input.b.x), Struct_2(Struct_1(u_input.b.yy, vec2<f32>(322f, -1008f)), -511f, 319f, Struct_1(u_input.b.zz, vec2<f32>(-1000f, 1328f)), Struct_1(u_input.b.yy, vec2<f32>(-601f, 2167f))))), Struct_2(func_1(vec4<bool>(true, false, false, false), Struct_3(1177f, Struct_2(Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec2<f32>(338f, 2359f)), 840f, 243f, Struct_1(u_input.b.xz, vec2<f32>(589f, 178f)), Struct_1(u_input.b.zz, vec2<f32>(-1263f, 601f))), vec2<f32>(-966f, 424f), Struct_1(vec2<i32>(u_input.b.x, -1i), vec2<f32>(-1532f, 245f)), Struct_1(u_input.b.yy, vec2<f32>(527f, 1325f)))).b.e, _wgslsmith_f_op_f32(1916f * -166f), _wgslsmith_div_f32(1026f, 1008f), Struct_1(u_input.b.xz, vec2<f32>(-374f, -1401f)), Struct_1(vec2<i32>(-19609i, u_input.b.x), vec2<f32>(932f, 404f))), vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(step(447f, 1545f))), Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1559f, 994f))), func_5(Struct_4(vec3<i32>(u_input.b.x, -1i, 2147483647i), Struct_2(Struct_1(vec2<i32>(2147483647i, -23299i), vec2<f32>(-932f, -1606f)), 311f, -387f, Struct_1(u_input.b.yx, vec2<f32>(-363f, -716f)), Struct_1(u_input.b.yx, vec2<f32>(-1232f, -1111f)))), var_0, vec2<bool>(true, false)))).b.a, Struct_1(func_4(func_1(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 14u)], global1[_wgslsmith_index_u32(u_input.d.x, 14u)], global1[_wgslsmith_index_u32(var_0, 14u)], true), Struct_3(-587f, Struct_2(Struct_1(u_input.b.yx, vec2<f32>(-910f, 417f)), 1031f, -1267f, Struct_1(vec2<i32>(26315i, u_input.b.x), vec2<f32>(-438f, 650f)), Struct_1(u_input.b.xx, vec2<f32>(-280f, -313f))), vec2<f32>(313f, 236f), Struct_1(u_input.b.xy, vec2<f32>(889f, -235f)), Struct_1(u_input.b.zy, vec2<f32>(967f, -718f)))), func_1(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 14u)], global1[_wgslsmith_index_u32(44332u, 14u)], false, true), Struct_3(-2054f, Struct_2(Struct_1(u_input.b.xx, vec2<f32>(1024f, 643f)), 679f, 1029f, Struct_1(u_input.b.xz, vec2<f32>(1000f, 722f)), Struct_1(u_input.b.yz, vec2<f32>(132f, 1650f))), vec2<f32>(-152f, 886f), Struct_1(u_input.b.yx, vec2<f32>(-787f, -246f)), Struct_1(u_input.b.yy, vec2<f32>(1711f, 155f)))).b.e, vec2<i32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(65993u, var_0) % vec2<u32>(32u))).a.zx ^ select(select(vec2<i32>(-2147483647i, u_input.b.x), u_input.b.zx, vec2<bool>(global1[_wgslsmith_index_u32(30999u, 14u)], global1[_wgslsmith_index_u32(var_0, 14u)])), -u_input.b.xy, global1[_wgslsmith_index_u32(var_0, 14u)] & global1[_wgslsmith_index_u32(u_input.d.x, 14u)]), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-538f, -1628f), vec2<f32>(365f, -618f)) + func_1(vec4<bool>(global1[_wgslsmith_index_u32(27493u, 14u)], false, false, true), Struct_3(641f, Struct_2(Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec2<f32>(813f, -191f)), 744f, 122f, Struct_1(u_input.b.xz, vec2<f32>(-1000f, -1097f)), Struct_1(vec2<i32>(-41445i, u_input.b.x), vec2<f32>(-508f, 661f))), vec2<f32>(-871f, -441f), Struct_1(vec2<i32>(u_input.b.x, 1i), vec2<f32>(-730f, -1378f)), Struct_1(vec2<i32>(u_input.b.x, -27597i), vec2<f32>(-626f, 460f)))).b.a.b)))));
    var var_3 = _wgslsmith_add_vec2_u32(u_input.d.xw, u_input.d.xz & u_input.d.yy);
    global0 = array<vec4<f32>, 30>();
    var_2 = Struct_3(_wgslsmith_f_op_f32(-793f - var_2.c.x), Struct_2(func_4(func_1(vec4<bool>(global1[_wgslsmith_index_u32(143u, 14u)], false, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(80401u, 14u)]), Struct_3(266f, var_2.b, vec2<f32>(257f, 1063f), var_2.b.d, Struct_1(vec2<i32>(2147483647i, u_input.b.x), vec2<f32>(-507f, var_2.c.x)))), Struct_1(vec2<i32>(var_2.e.a.x, u_input.b.x), vec2<f32>(var_2.a, -685f)), vec2<i32>(u_input.b.x, 12756i) & vec2<i32>(var_2.d.a.x, var_2.d.a.x)).b.a, -1537f, -656f, var_2.b.a, func_4(Struct_4(u_input.b, var_2.b), func_5(func_1(vec4<bool>(global1[_wgslsmith_index_u32(44132u, 14u)], global1[_wgslsmith_index_u32(var_0, 14u)], global1[_wgslsmith_index_u32(var_0, 14u)], false), Struct_3(var_2.d.b.x, Struct_2(Struct_1(vec2<i32>(var_2.b.e.a.x, u_input.b.x), var_2.e.b), 456f, 819f, Struct_1(u_input.b.yx, var_2.c), var_2.d), vec2<f32>(179f, 1596f), Struct_1(var_2.b.d.a, vec2<f32>(var_2.a, -974f)), Struct_1(vec2<i32>(u_input.b.x, var_2.b.e.a.x), var_2.d.b))), var_3.x, !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 14u)])), u_input.b.yy).b.d), var_2.c, Struct_1(var_2.d.a, _wgslsmith_f_op_vec2_f32(select(func_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(var_3.x, 14u)], true, true), Struct_3(var_2.d.b.x, Struct_2(var_2.b.e, var_2.e.b.x, -401f, Struct_1(vec2<i32>(u_input.b.x, u_input.b.x), vec2<f32>(var_2.b.b, -391f)), var_2.e), vec2<f32>(-974f, 339f), Struct_1(vec2<i32>(-2147483647i, -66340i), vec2<f32>(-906f, -770f)), var_2.e)).b.a.b, _wgslsmith_f_op_vec2_f32(sign(var_2.e.b)), vec2<bool>(select(global1[_wgslsmith_index_u32(var_3.x, 14u)], true, true), any(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 14u)])))))), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(47854u, 12478u));
}

