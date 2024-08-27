struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3>;

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>) -> vec3<f32> {
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    global0 = array<u32, 3>();
    var var_0 = select(select(select(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83710u, 3u)], 3u)], 3u)], 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60339u, 3u)], 3u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13816u, 3u)], 3u)]), vec2<bool>(true, false)), vec2<bool>(false, true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(5058u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(46247u, 3u)], false)), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], true), global1[_wgslsmith_index_u32(~65406u, 3u)])), vec2<bool>(true, !(arg_0.x <= arg_0.x)), true), !(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], true), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 3u)]), global1[_wgslsmith_index_u32(u_input.d.x, 3u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]), false)), 22772i <= u_input.c);
    global1 = array<bool, 3>();
    return vec3<f32>(1f, 1f, 1f);
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(!vec4<bool>(firstLeadingBit(u_input.c) != -u_input.c, true, false, (2147483647i >> (global0[_wgslsmith_index_u32(u_input.b.x, 3u)] % 32u)) == _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 5628i, u_input.c, -2147483647i), vec4<i32>(-1615i, u_input.c, u_input.c, u_input.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(836f, 1213f, -122f)), _wgslsmith_div_vec3_f32(vec3<f32>(494f, 330f, -486f), vec3<f32>(2140f, 1000f, -854f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-590f, -846f, 166f) * vec3<f32>(-1000f, 808f, -605f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2050f, 1095f, -709f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<i32>(-2147483647i, 38600i, u_input.c)))))), vec4<f32>(-241f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -709f)))), -141f, _wgslsmith_f_op_f32(floor(1514f))));
    global1 = array<bool, 3>();
    return Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-var_0.c.zzz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<f32> {
    global1 = array<bool, 3>();
    global1 = array<bool, 3>();
    global0 = array<u32, 3>();
    var var_0 = 59361u;
    let var_1 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.c));
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_4(~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(~global0[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_sub_u32(u_input.a.x, 3230u))), func_2(vec2<bool>(any(!vec4<bool>(false, global1[_wgslsmith_index_u32(262u, 3u)], false, global1[_wgslsmith_index_u32(0u, 3u)])), var_0)), select(func_2(func_2(select(vec2<bool>(true, var_0), vec2<bool>(false, arg_1), vec2<bool>(false, false))).a.yx).a.wzw, select(select(func_2(vec2<bool>(false, false)).a.xzz, select(vec3<bool>(var_0, true, true), vec3<bool>(false, false, var_0), vec3<bool>(true, true, arg_1)), true), vec3<bool>(arg_1 | global1[_wgslsmith_index_u32(49233u, 3u)], any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], arg_1)), global1[_wgslsmith_index_u32(0u, 3u)] && true), vec3<bool>(true, select(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], false), var_0)), false)));
    global1 = array<bool, 3>();
    var var_2 = Struct_1(!select(!vec4<bool>(var_0, false, false, arg_1), !select(vec4<bool>(false, false, arg_1, arg_1), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 3u)], false, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(13190u, 3u)], true)), !all(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12712u, 3u)], 3u)], false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(4294967295u, Struct_1(vec4<bool>(var_0, var_0, false, arg_1), vec3<f32>(-222f, -996f, var_1.x), vec4<f32>(var_1.x, arg_0, -681f, 308f)), vec3<bool>(true, false, var_0))).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - 885f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-328f, arg_0), _wgslsmith_f_op_f32(-1084f + 337f)))), 252f), vec4<f32>(-1134f, _wgslsmith_f_op_vec3_f32(func_3(-vec3<i32>(u_input.c, -2147483647i, u_input.c))).x, -1344f, _wgslsmith_f_op_f32(select(-366f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), arg_1))));
    var var_3 = func_2(vec2<bool>(_wgslsmith_f_op_vec3_f32(func_3(abs(vec3<i32>(u_input.c, u_input.c, u_input.c)))).x > 1445f, any(func_2(func_2(vec2<bool>(var_0, false)).a.zx).a.zyw)));
    return -144f;
}

fn func_5(arg_0: Struct_1) -> u32 {
    global0 = array<u32, 3>();
    var var_0 = arg_0;
    return ~u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 3>();
    var var_0 = (false | global1[_wgslsmith_index_u32(41477u, 3u)]) || global1[_wgslsmith_index_u32(func_5(Struct_1(!select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d.x, 3u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], true, false), false), vec3<f32>(854f, _wgslsmith_f_op_f32(141f * 1396f), _wgslsmith_f_op_f32(-313f - -868f)), vec4<f32>(_wgslsmith_f_op_f32(floor(-156f)), -948f, _wgslsmith_f_op_f32(func_1(254f, true)), 1000f))), 3u)];
    let var_1 = !any(func_2(!select(vec2<bool>(global1[_wgslsmith_index_u32(36249u, 3u)], global1[_wgslsmith_index_u32(u_input.d.x, 3u)]), vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.d.x, 3u)])).a.zyy);
    var var_2 = -(~select(abs(select(vec2<i32>(u_input.c, 2147483647i), vec2<i32>(u_input.c, u_input.c), vec2<bool>(var_1, global1[_wgslsmith_index_u32(22962u, 3u)]))), vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-35783i, u_input.c, u_input.c), vec3<i32>(u_input.c, 551i, -28994i))), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(68157u, 3u)]), vec2<bool>(var_1, var_1))));
    var_2 = abs(vec2<i32>(select(~(u_input.c ^ -1362i), _wgslsmith_mult_i32(-u_input.c, abs(u_input.c)), any(vec4<bool>(false, var_1, false, global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))), 749i));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(1u), 47065i, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-5444i, 1i, 29591i, var_2.x), -vec4<i32>(var_2.x, u_input.c, -11097i, var_2.x))), _wgslsmith_mod_vec2_i32(firstTrailingBit(min(vec2<i32>(var_2.x, var_2.x), -vec2<i32>(u_input.c, var_2.x))), max(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.c, var_2.x), vec2<i32>(u_input.c, 0i)), max(reverseBits(vec2<i32>(u_input.c, var_2.x)), firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i))))), -320f);
}

