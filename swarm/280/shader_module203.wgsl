struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, false, true, false, false, false, false, true, true, true, false, true, false, false, false, false, true, true, false, true);

var<private> global1: array<f32, 3> = array<f32, 3>(410f, -666f, 1342f);

var<private> global2: array<i32, 17> = array<i32, 17>(2147483647i, 2147483647i, -7705i, -28247i, 42854i, -1i, -1i, -1i, 2147483647i, 17397i, 0i, i32(-2147483648), 1i, i32(-2147483648), 6024i, 11755i, -26711i);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = vec2<i32>(arg_0.x, ~_wgslsmith_dot_vec2_i32(u_input.d, arg_0.xx));
    var var_1 = -2147483647i;
    global2 = array<i32, 17>();
    global1 = array<f32, 3>();
    let var_2 = Struct_1(var_0.x, global1[_wgslsmith_index_u32(1u, 3u)], u_input.c);
    return select(select(select(select(vec2<bool>(false, arg_1.x), arg_1.zw, true), vec2<bool>(true, !global0[_wgslsmith_index_u32(4294967295u, 20u)]), vec2<bool>(arg_1.x, global2[_wgslsmith_index_u32(u_input.c.x, 17u)] <= -12176i)), !vec2<bool>(arg_1.x, arg_1.x && arg_1.x), all(arg_1.wx)), !arg_1.ww, select(select(select(!vec2<bool>(global0[_wgslsmith_index_u32(36778u, 20u)], arg_1.x), arg_1.zw, u_input.c.x < 38278u), arg_1.zz, true), select(arg_1.zw, !(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], false)), arg_1.x), !select(select(arg_1.zw, vec2<bool>(false, true), global0[_wgslsmith_index_u32(var_2.c.x, 20u)]), select(arg_1.xx, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), true), select(arg_1.zw, arg_1.zx, vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], false)))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = 56449u;
    global1 = array<f32, 3>();
    let var_1 = !select(select(vec2<bool>(true, false), !select(vec2<bool>(arg_0, true), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), func_3(firstLeadingBit(vec4<i32>(-2147483647i, 0i, 26212i, -41330i)), vec4<bool>(true, true, true, true))), vec2<bool>(false, true), !global0[_wgslsmith_index_u32(0u, 20u)]);
    var var_2 = select(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(-(~vec4<i32>(u_input.b, -1i, u_input.b, global2[_wgslsmith_index_u32(u_input.a, 17u)])), abs(vec4<i32>(-41107i, u_input.d.x, global2[_wgslsmith_index_u32(122u, 17u)], u_input.d.x) >> (u_input.c % vec4<u32>(32u)))), -(-vec4<i32>(u_input.d.x, -2147483647i, 13865i, global2[_wgslsmith_index_u32(53077u, 17u)]) ^ vec4<i32>(u_input.b, 29632i, 1i, 26145i))), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(11224u, 17u)], global2[_wgslsmith_index_u32(var_0, 17u)], 2147483647i), vec4<i32>(u_input.b, -18789i, u_input.d.x, global2[_wgslsmith_index_u32(var_0, 17u)]))) >> (~u_input.c % vec4<u32>(32u)), select(countOneBits(vec4<i32>(u_input.d.x, u_input.d.x, -58278i, -12978i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, global2[_wgslsmith_index_u32(86924u, 17u)], 27938i, 26429i), min(vec4<i32>(u_input.d.x, u_input.b, 1i, 2147483647i), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x))), all(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0, 20u)], arg_0)))), global0[_wgslsmith_index_u32(1u, 20u)]);
    let var_3 = Struct_1(-global2[_wgslsmith_index_u32(u_input.a << (u_input.c.x % 32u), 17u)], global1[_wgslsmith_index_u32(33477u, 3u)], ~u_input.c);
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = vec3<u32>(arg_0.c.x, ~_wgslsmith_dot_vec3_u32(firstTrailingBit(~u_input.c.xzy), func_2(global0[_wgslsmith_index_u32(~9483u, 20u)]).c.ywy), min(arg_0.c.x, _wgslsmith_dot_vec4_u32(arg_1.c, arg_0.c)));
    let var_1 = func_2(arg_2.x > (arg_1.c.x << (countOneBits(firstTrailingBit(4294967295u)) % 32u)));
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_sub_u32(10672u, ~(~var_1.c.x))), 3u)];
    global1 = array<f32, 3>();
    global2 = array<i32, 17>();
    return _wgslsmith_dot_vec4_u32(var_1.c, arg_0.c);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(-1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0, 3u)] + global1[_wgslsmith_index_u32(51057u, 3u)]), -272f)), u_input.c);
    var var_1 = min(u_input.d, vec2<i32>(select(~(global2[_wgslsmith_index_u32(u_input.c.x, 17u)] << (21795u % 32u)), _wgslsmith_clamp_i32(0i, arg_2, global2[_wgslsmith_index_u32(arg_0, 17u)]) >> (~16665u % 32u), global0[_wgslsmith_index_u32(~(arg_0 << (u_input.a % 32u)), 20u)]), reverseBits(~firstLeadingBit(arg_2))));
    var var_2 = Struct_2(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_3, ~u_input.a), 20u)], select(all(select(vec2<bool>(global0[_wgslsmith_index_u32(23921u, 20u)], global0[_wgslsmith_index_u32(66439u, 20u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(1220u, 20u)]), global0[_wgslsmith_index_u32(4294967295u, 20u)])), false, any(!vec4<bool>(false, global0[_wgslsmith_index_u32(77688u, 20u)], false, global0[_wgslsmith_index_u32(4294967295u, 20u)]))), !(u_input.d.x < arg_2)));
    var_1 = _wgslsmith_div_vec2_i32(abs(countOneBits(u_input.d)), u_input.d);
    let var_3 = Struct_2(select(var_2.a, vec3<bool>(select(var_2.a.x, false, true), true, false), var_2.a));
    return func_2(!all(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_0, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], true), vec4<bool>(true, var_2.a.x, global0[_wgslsmith_index_u32(4294967295u, 20u)], var_3.a.x), vec4<bool>(var_2.a.x, var_2.a.x, true, true)), vec4<bool>(var_3.a.x, var_3.a.x, false, true), true)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = array<bool, 20>();
    let var_0 = func_5(func_4(arg_0, func_2(true), _wgslsmith_mod_vec3_u32(select(_wgslsmith_mult_vec3_u32(u_input.c.wwz, vec3<u32>(arg_0.c.x, 0u, 0u)), arg_0.c.yww, !vec3<bool>(global0[_wgslsmith_index_u32(12682u, 20u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 20u)])), ~select(arg_0.c.yyx, vec3<u32>(arg_0.c.x, 0u, u_input.a), true))), arg_0.a, -34636i, _wgslsmith_clamp_u32(~u_input.c.x, 4294967295u, firstTrailingBit(arg_0.c.x >> (37397u % 32u)) << (arg_0.c.x % 32u)));
    var var_1 = 0u;
    global1 = array<f32, 3>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(10759i, _wgslsmith_f_op_f32(f32(-1f) * -2231f), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, ~u_input.c.x, _wgslsmith_mod_u32(u_input.a, 0u), select(20069u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 20u)])), firstLeadingBit(vec4<u32>(u_input.c.x, 14578u, u_input.a, u_input.a)))));
    var var_1 = select(vec4<bool>(u_input.c.x > u_input.c.x, global0[_wgslsmith_index_u32(22170u, 20u)], var_0.a > -2147483647i, false), select(!vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)] <= global1[_wgslsmith_index_u32(var_0.c.x, 3u)], any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], false, global0[_wgslsmith_index_u32(var_0.c.x, 20u)])), !global0[_wgslsmith_index_u32(0u, 20u)]), !(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(11952u, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(39472u, 20u)], global0[_wgslsmith_index_u32(19786u, 20u)], false, global0[_wgslsmith_index_u32(33867u, 20u)]), false)), any(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], false, global0[_wgslsmith_index_u32(var_0.c.x, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(26089u, 20u)], true, global0[_wgslsmith_index_u32(u_input.a, 20u)]), false)) | global0[_wgslsmith_index_u32(abs(~1u), 20u)]), select(vec4<bool>(!(!global0[_wgslsmith_index_u32(79316u, 20u)]), !global0[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(30521u, 17u)], -28181i, var_0.a), vec3<i32>(1i, u_input.b, u_input.b)) <= var_0.a, any(vec2<bool>(global0[_wgslsmith_index_u32(22969u, 20u)], false))), !(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.c.x, 20u)], true, global0[_wgslsmith_index_u32(var_0.c.x, 20u)])), !global0[_wgslsmith_index_u32(u_input.a, 20u)]));
    let var_2 = vec4<bool>(var_1.x, true, false, var_1.x);
    var var_3 = ~(-(-vec4<i32>(var_0.a, global2[_wgslsmith_index_u32(u_input.a, 17u)], -23302i, global2[_wgslsmith_index_u32(53039u, 17u)]) >> (vec4<u32>(u_input.a, 43722u >> (u_input.c.x % 32u), firstTrailingBit(var_0.c.x), _wgslsmith_mod_u32(u_input.a, 4294967295u)) % vec4<u32>(32u))));
    global1 = array<f32, 3>();
    var var_4 = u_input.c.wyx;
    let var_5 = var_3.zzy;
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(var_3.zxz), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, global1[_wgslsmith_index_u32(0u, 3u)], -1119f, 1576f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b, -1045f, -1648f, var_0.b))), vec4<bool>(false, true, true, true))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 3u)], 347f, var_0.b, 482f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-398f, global1[_wgslsmith_index_u32(4294967295u, 3u)], 613f, 307f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-622f, -901f, _wgslsmith_f_op_f32(sign(1742f)), _wgslsmith_f_op_f32(111f - global1[_wgslsmith_index_u32(u_input.a, 3u)])))), _wgslsmith_f_op_f32(min(var_0.b, global1[_wgslsmith_index_u32(32803u, 3u)])), var_4.x);
}

