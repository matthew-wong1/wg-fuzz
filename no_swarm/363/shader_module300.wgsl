struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 14> = array<f32, 14>(385f, -994f, -936f, -693f, 464f, 1000f, 1134f, 892f, -1019f, 1300f, 2252f, -196f, -189f, 1903f);

var<private> global2: f32;

var<private> global3: u32 = 1u;

var<private> global4: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_2 {
    global3 = ~0u;
    let var_0 = Struct_2(Struct_1(select(!(!global0.a), vec3<bool>(global0.a.x && global0.a.x, true, global0.a.x), all(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x))), ~vec2<u32>(global0.b.x, ~16728u)), !(!vec4<bool>(any(global0.a.zy), false, global0.a.x, !global0.a.x)), Struct_1(global0.a, vec2<u32>(_wgslsmith_sub_u32(global0.b.x, u_input.a.x), global0.b.x) & min(global0.b, ~vec2<u32>(13884u, u_input.a.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.xw) - arg_0.ww), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(global0.b.x, 14u)])), arg_0.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x + global1[_wgslsmith_index_u32(1u, 14u)]), arg_0.x)))));
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(65354u, ~_wgslsmith_dot_vec3_u32(~reverseBits(u_input.c.wzz), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, global0.b.x, arg_1), abs(u_input.c.yyz), _wgslsmith_sub_vec3_u32(u_input.c.zzx, vec3<u32>(global0.b.x, arg_1, arg_1))))), 14u)];
    let var_2 = min(i32(-1i) * -26295i, u_input.e);
    return var_0;
}

fn func_3() -> u32 {
    let var_0 = ~select(-vec4<i32>(u_input.e, 1i, u_input.e, u_input.e) ^ vec4<i32>(u_input.e, 30020i, -18515i, 28307i), -vec4<i32>(u_input.e, -2147483647i, 1i, u_input.e), vec4<bool>(any(vec4<bool>(global0.a.x, true, false, global0.a.x)), global0.a.x, global0.a.x, !global0.a.x)) | ((select(-vec4<i32>(0i, -24270i, -2147483647i, u_input.e), vec4<i32>(-1i, u_input.e, u_input.e, u_input.e), select(true, true, false)) >> (((vec4<u32>(0u, global0.b.x, global0.b.x, 1u) >> (u_input.c % vec4<u32>(32u))) ^ vec4<u32>(10017u, global0.b.x, u_input.d, 23083u)) % vec4<u32>(32u))) | -min(~vec4<i32>(-31751i, u_input.e, u_input.e, u_input.e), select(vec4<i32>(-1i, 3759i, 26655i, 943i), vec4<i32>(-2147483647i, 0i, 12430i, 36692i), global0.a.x)));
    let var_1 = ~(~vec3<u32>(4810u, _wgslsmith_mult_u32(~global0.b.x, 0u), u_input.b));
    var var_2 = ~(~max(u_input.c.xwz, u_input.c.zyx));
    var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~var_2.x), _wgslsmith_mod_u32(39802u >> (~var_2.x % 32u), 1u), _wgslsmith_dot_vec2_u32(~select(var_1.yx, vec2<u32>(28246u, var_2.x), global0.a.xx), u_input.a)), ~firstLeadingBit(max(~vec3<u32>(u_input.c.x, 0u, 0u), _wgslsmith_sub_vec3_u32(var_1, vec3<u32>(1u, global0.b.x, var_2.x)))));
    let var_3 = Struct_1(vec3<bool>(global0.a.x, !global0.a.x, global0.a.x), reverseBits(select(~(var_2.zy >> (var_2.zx % vec2<u32>(32u))), var_1.yy, select(global0.a.zz, select(vec2<bool>(global0.a.x, global0.a.x), global0.a.xx, true), func_2(vec4<f32>(global1[_wgslsmith_index_u32(global0.b.x, 14u)], global1[_wgslsmith_index_u32(global0.b.x, 14u)], global1[_wgslsmith_index_u32(107643u, 14u)], global1[_wgslsmith_index_u32(u_input.a.x, 14u)]), 24289u).a.a.xz))));
    return firstTrailingBit(~var_2.x);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> f32 {
    global1 = array<f32, 14>();
    global4 = 27869u;
    let var_0 = vec4<bool>(select(arg_0.c.a.x, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(89599u, 14u)], global1[_wgslsmith_index_u32(25852u, 14u)], 672f, global1[_wgslsmith_index_u32(57362u, 14u)]), vec4<f32>(global1[_wgslsmith_index_u32(arg_2, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], -1634f, global1[_wgslsmith_index_u32(1u, 14u)]), arg_0.b)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], 781f, global1[_wgslsmith_index_u32(0u, 14u)], global1[_wgslsmith_index_u32(11690u, 14u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], -1000f, global1[_wgslsmith_index_u32(4294967295u, 14u)], 708f))), _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_2, 0u), ~1u)).c.a.x, true), false, true, false);
    var var_1 = _wgslsmith_add_vec4_u32(min(~u_input.c, _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_1, global0.b.x, arg_2) ^ (u_input.c & vec4<u32>(1u, global0.b.x, 1u, 4294967295u)), ~u_input.c ^ _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 59857u, 25613u, 4737u), vec4<u32>(arg_2, arg_1, 6643u, arg_2)), u_input.c ^ u_input.c)), reverseBits((~vec4<u32>(arg_1, 4294967295u, arg_0.c.b.x, 0u) & u_input.c) >> (~u_input.c % vec4<u32>(32u))));
    let var_2 = u_input.e;
    return global1[_wgslsmith_index_u32(32539u, 14u)];
}

fn func_1(arg_0: u32) -> vec3<bool> {
    global4 = ~global0.b.x & u_input.b;
    let var_0 = vec4<f32>(-512f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1184f, 144f, global1[_wgslsmith_index_u32(global0.b.x, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(32971u, 14u)], global1[_wgslsmith_index_u32(global0.b.x, 14u)]))), global0.b.x), ~func_3(), select(global0.b.x << (global0.b.x % 32u), _wgslsmith_mod_u32(global0.b.x, u_input.c.x), true)))), -2148f);
    let var_1 = Struct_1(!(!global0.a), vec2<u32>(~abs(arg_0), arg_0));
    var var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-674f))), 1121f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_0, ~1u), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -1419f)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(4294967295u, global0.b.x, 3053u), u_input.c.zzw, var_1.a.x), vec3<u32>(1u, 4294967295u, 32165u), firstLeadingBit(u_input.c.yyw)), vec3<u32>(48657u, arg_0, arg_0)), ~((vec3<u32>(19208u, u_input.d, 33885u) << (u_input.c.wyx % vec3<u32>(32u))) ^ ~vec3<u32>(0u, 1u, 52632u))));
    global4 = ~(~(~abs(global0.b.x)));
    return vec3<bool>(any(vec2<bool>(true, all(!vec4<bool>(var_1.a.x, var_2.a.a.x, var_1.a.x, global0.a.x)))), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(!func_1(~(~4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(24740u, 0u << (~u_input.c.x % 32u)), ~global0.b));
    var var_0 = true;
    let var_1 = _wgslsmith_div_f32(380f, global1[_wgslsmith_index_u32(~abs(u_input.c.x), 14u)]);
    global1 = array<f32, 14>();
    let var_2 = firstTrailingBit(~u_input.e);
    global3 = ~global0.b.x;
    var var_3 = Struct_2(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], var_1, global1[_wgslsmith_index_u32(7091u, 14u)], 639f), vec4<f32>(var_1, global1[_wgslsmith_index_u32(24138u, 14u)], 103f, 866f), vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, 1475f, var_1) - vec4<f32>(-415f, -1655f, var_1, var_1)))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(906f, 798f, -650f, var_1) * vec4<f32>(global1[_wgslsmith_index_u32(global0.b.x, 14u)], var_1, global1[_wgslsmith_index_u32(19011u, 14u)], global1[_wgslsmith_index_u32(global0.b.x, 14u)])), abs(u_input.c.x)).b)), 45295u).a, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(332f, 521f, 1007f, global1[_wgslsmith_index_u32(u_input.d, 14u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 695f, -486f, -512f)), !vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_f_op_f32(trunc(1854f)), _wgslsmith_f_op_f32(-846f - global1[_wgslsmith_index_u32(global0.b.x, 14u)]), _wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(global0.a, u_input.a), vec4<bool>(true, true, global0.a.x, false), Struct_1(global0.a, u_input.c.yy)), u_input.c.x, 101574u)))), _wgslsmith_add_u32(u_input.b, ~min(31807u, 33657u))).b, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1635f, 379f, -119f, 1696f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1, global1[_wgslsmith_index_u32(global0.b.x, 14u)], global1[_wgslsmith_index_u32(u_input.a.x, 14u)], 390f), vec4<f32>(var_1, -1236f, global1[_wgslsmith_index_u32(global0.b.x, 14u)], 1942f)), all(vec2<bool>(global0.a.x, false)))) * vec4<f32>(_wgslsmith_f_op_f32(-1671f - global1[_wgslsmith_index_u32(u_input.b, 14u)]), _wgslsmith_div_f32(473f, global1[_wgslsmith_index_u32(46601u, 14u)]), global1[_wgslsmith_index_u32(1338u, 14u)], _wgslsmith_f_op_f32(-var_1))), 4294967295u).c);
    let var_4 = Struct_1(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], global1[_wgslsmith_index_u32(var_3.c.b.x, 14u)], 507f), vec4<f32>(var_1, -408f, 695f, 977f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1, global1[_wgslsmith_index_u32(9800u, 14u)], global1[_wgslsmith_index_u32(global0.b.x, 14u)], global1[_wgslsmith_index_u32(global0.b.x, 14u)]), vec4<f32>(-1421f, global1[_wgslsmith_index_u32(1u, 14u)], var_1, var_1)))))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 1353u, 0u), _wgslsmith_add_u32(var_3.c.b.x, 1u)) & _wgslsmith_clamp_u32(1u, var_3.a.b.x, 1u)).c.a, abs(vec2<u32>(_wgslsmith_mult_u32(~4294967295u, ~global0.b.x), _wgslsmith_mod_u32(35083u, _wgslsmith_sub_u32(u_input.d, 0u)))));
    var var_5 = !(func_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_3.a.b.x, var_3.c.b.x), ~var_3.c.b.x)).x & global0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(340f, var_1, -890f), vec3<f32>(113f, var_1, 3019f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 14u)], var_1, var_1)))), min(_wgslsmith_mod_u32(52677u << ((1u | var_4.b.x) % 32u), _wgslsmith_mult_u32(~u_input.a.x, var_4.b.x)), _wgslsmith_mult_u32(var_4.b.x, firstLeadingBit(var_3.a.b.x))), select(u_input.c.xxy, u_input.c.zwz, select(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(516f, -565f, var_1, global1[_wgslsmith_index_u32(var_3.a.b.x, 14u)]), vec4<f32>(var_1, global1[_wgslsmith_index_u32(global0.b.x, 14u)], var_1, var_1)), 67606u).b.wwx, global0.a, var_4.a)), ~func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(var_4.b.x, 14u)], 1010f, -1296f, 793f))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], var_1, var_1, var_1)))), _wgslsmith_add_u32(var_4.b.x, u_input.d) & ~u_input.b).a.b, ~var_3.a.b);
}

