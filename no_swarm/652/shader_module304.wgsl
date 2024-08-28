struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<u32, 3>;

var<private> global2: Struct_1 = Struct_1(vec4<i32>(2147483647i, 26051i, 0i, 1i), 12663i, -51928i, vec3<i32>(0i, -9100i, i32(-2147483648)), true);

var<private> global3: array<i32, 23> = array<i32, 23>(32236i, 1i, -59577i, 0i, -31728i, -4196i, -47794i, 2147483647i, 12890i, i32(-2147483648), -1i, -23915i, 1i, 1i, 16083i, -1i, i32(-2147483648), 1i, 0i, -25084i, 2147483647i, -1i, -1104i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global2 = Struct_1(-vec4<i32>((global0.x | u_input.b) | global2.b, u_input.b, abs(0i), 1i & u_input.c), ~abs(0i), u_input.b, _wgslsmith_add_vec3_i32(vec3<i32>(2298i, _wgslsmith_mod_i32(i32(-1i) * -16574i, -20247i), 38387i), ~global2.a.yxy), true);
    let var_0 = Struct_2(min(~vec2<u32>(~u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 3u)], 3u)] | 39192u, 3u)]), ~(vec2<u32>(u_input.d.x, 1u) << (vec2<u32>(4294967295u, 21783u) % vec2<u32>(32u)))));
    let var_1 = ~_wgslsmith_dot_vec2_u32(var_0.a >> (~(~vec2<u32>(global1[_wgslsmith_index_u32(0u, 3u)], 13836u)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.x, global1[_wgslsmith_index_u32(88130u, 3u)]) | var_0.a, min(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d.x, var_0.a.x), var_0.a), select(vec2<u32>(global1[_wgslsmith_index_u32(67429u, 3u)], 4294967295u), vec2<u32>(23679u, 75089u), global2.e))));
    let var_2 = var_0;
    global0 = ~(~_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(global2.a & vec4<i32>(0i, 0i, global2.d.x, -1i), ~global2.a), min(vec4<i32>(-65733i, global3[_wgslsmith_index_u32(u_input.d.x, 23u)], u_input.b, global0.x) ^ vec4<i32>(global2.d.x, -1i, u_input.b, global3[_wgslsmith_index_u32(56351u, 23u)]), vec4<i32>(-2147483647i, 34109i, u_input.c, global2.c))));
    return global2.b == firstLeadingBit(min(_wgslsmith_dot_vec2_i32(-global0.zy, global2.d.xz | vec2<i32>(global0.x, 14590i)), -43967i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>) -> u32 {
    let var_0 = 1u;
    global1 = array<u32, 3>();
    let var_1 = vec3<bool>(global2.e, true, !func_3() && (var_0 == 0u));
    let var_2 = Struct_1((vec4<i32>(max(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], 23u)], -5485i), ~(-2147483647i), _wgslsmith_mult_i32(arg_0.x, global0.x), global0.x << (u_input.d.x % 32u)) >> (abs(~u_input.d) % vec4<u32>(32u))) ^ -vec4<i32>(min(global2.c, -11393i), u_input.b, global2.a.x, max(-35274i, global3[_wgslsmith_index_u32(7643u, 23u)])), firstLeadingBit(-1i), i32(-1i) * -5589i, arg_0, arg_1.x < u_input.a.x);
    var var_3 = global0.xw;
    return abs(~global1[_wgslsmith_index_u32(35400u, 3u)]) & ~u_input.a.x;
}

fn func_1() -> vec2<f32> {
    var var_0 = vec3<bool>(false, ~func_2(max(global2.d, global0.yyw), ~u_input.d.wy) < _wgslsmith_mult_u32(334u, min(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(60154u, global1[_wgslsmith_index_u32(1u, 3u)])), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)] >> (global1[_wgslsmith_index_u32(u_input.d.x, 3u)] % 32u))), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(u_input.d.xyx | u_input.d.yzx, u_input.d.ywx | u_input.d.zxz)) < 34423u);
    var var_1 = vec4<i32>(global0.x, min(abs((-1i >> (u_input.d.x % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(3992u, 3u)], u_input.d.x, global1[_wgslsmith_index_u32(1u, 3u)], 76154u), vec4<u32>(u_input.d.x, 138964u, u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 3u)])) % 32u)), global2.a.x), global0.x, i32(-1i) * -(~_wgslsmith_dot_vec3_i32(vec3<i32>(8066i, global3[_wgslsmith_index_u32(23800u, 23u)], u_input.c), vec3<i32>(2147483647i, global0.x, global2.d.x))));
    var var_2 = 1000f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f - 989f))))));
    var var_4 = Struct_2(~u_input.a);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f * 650f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1044f, 1055f) - vec2<f32>(-658f, 665f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 616f), vec2<f32>(-296f, -618f)))))) - vec2<f32>(-210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-848f, 1112f, global2.e)) * 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-926f - -889f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-672f, -187f, global2.e)))))));
    var var_1 = _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.d.wy, _wgslsmith_add_vec2_u32(vec2<u32>(60541u, 9160u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 3u)], 3u)], 4294967295u)) | vec2<u32>(0u, global1[_wgslsmith_index_u32(66406u, 3u)]))), u_input.a.x << (~1u % 32u));
    var var_2 = ~(~global2.a);
    var var_3 = var_2.xy;
    var var_4 = any(vec4<bool>(global2.e, true, any(select(!vec3<bool>(false, global2.e, false), select(vec3<bool>(false, true, true), vec3<bool>(global2.e, false, global2.e), vec3<bool>(false, global2.e, global2.e)), vec3<bool>(false, false, global2.e))), any(!select(vec4<bool>(true, global2.e, false, false), vec4<bool>(false, true, global2.e, global2.e), vec4<bool>(global2.e, false, false, global2.e)))));
    var var_5 = select(select(!select(select(vec2<bool>(global2.e, global2.e), vec2<bool>(global2.e, global2.e), vec2<bool>(true, false)), vec2<bool>(false, global2.e), true), vec2<bool>(true, (u_input.a.x != 58198u) && all(vec3<bool>(true, global2.e, global2.e))), any(select(!vec4<bool>(global2.e, global2.e, global2.e, true), !vec4<bool>(global2.e, global2.e, true, true), true))), vec2<bool>(!global2.e, all(select(vec3<bool>(false, true, global2.e), !vec3<bool>(global2.e, global2.e, false), false))), select(vec2<bool>(!(global2.e & false), global2.e), vec2<bool>(global2.e, global2.e), !vec2<bool>(false, global2.e)));
    let var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(111f)) * _wgslsmith_f_op_f32(ceil(2916f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(755f + -1383f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + vec2<f32>(1000f, 494f)) * vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1554f)))));
    global3 = array<i32, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x);
}

