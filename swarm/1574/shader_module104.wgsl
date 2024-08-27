struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = ~(-firstTrailingBit(abs(vec3<i32>(global0[_wgslsmith_index_u32(0u, 14u)], u_input.a, 21081i))));
    var var_1 = arg_0.zzz;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -153f);
    global0 = array<i32, 14>();
    let var_3 = reverseBits(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(~vec2<u32>(1u, 61956u), abs(vec2<u32>(27404u, 4294967295u)), true)), 14u)]);
    return _wgslsmith_add_i32(-1i | firstTrailingBit(global0[_wgslsmith_index_u32(~0u, 14u)]), -1i);
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = ~1i;
    var_0 = u_input.c;
    global0 = array<i32, 14>();
    var var_1 = ~(firstTrailingBit(~min(vec4<i32>(25303i, -1224i, 2147483647i, -1i), vec4<i32>(u_input.d.x, 2147483647i, global0[_wgslsmith_index_u32(86900u, 14u)], global0[_wgslsmith_index_u32(35199u, 14u)]))) ^ abs(vec4<i32>(_wgslsmith_add_i32(0i, 0i), -2147483647i, max(u_input.a, -24754i), global0[_wgslsmith_index_u32(max(1301u, 37463u), 14u)])));
    var_1 = vec4<i32>(max(-_wgslsmith_dot_vec2_i32(u_input.d, u_input.d) >> (0u % 32u), _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 14u)], -33064i, u_input.b, u_input.a), vec4<i32>(var_1.x, u_input.a, -2147483647i, 1i))) >> (4294967295u % 32u)), -firstLeadingBit(~u_input.a), -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(global0[_wgslsmith_index_u32(1u, 14u)], 0i)), u_input.d), vec2<i32>(_wgslsmith_div_i32(24711i, -1i), 2147483647i)), select(func_3(vec4<bool>(arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), true, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.c, -17380i), global0[_wgslsmith_index_u32(~4294967295u, 14u)]), select(vec2<i32>(global0[_wgslsmith_index_u32(1u, 14u)], u_input.d.x), vec2<i32>(1i, 1i), !arg_0.xx)), arg_0.x));
    return ~max(select(_wgslsmith_mod_u32(~2030u, 4294967295u), 0u, !arg_0.x), 1u);
}

fn func_1() -> vec3<bool> {
    let var_0 = ~(~firstTrailingBit(-vec4<i32>(global0[_wgslsmith_index_u32(1u, 14u)], -1i, -2147483647i, 2147483647i) >> (vec4<u32>(0u, 5854u, 38753u, 4294967295u) % vec4<u32>(32u))));
    var var_1 = ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(~4294967295u, 27763u), func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), firstLeadingBit(min(4294967295u, 1u)));
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, countOneBits(~var_1.x), firstTrailingBit(reverseBits(~var_1.x))), firstTrailingBit(_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(23827u, 88588u, 4294967295u), vec3<u32>(var_1.x, 4294967295u, 1u), vec3<u32>(var_1.x, 0u, 1u)), vec3<u32>(var_1.x, 4294967295u, ~63762u))), abs(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, var_1.x, 1u)))) >> (_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1097u, 62084u, var_1.x) ^ vec3<u32>(0u, 21392u, var_1.x), vec3<u32>(var_1.x, var_1.x, 55138u) | vec3<u32>(var_1.x, var_1.x, var_1.x), vec3<u32>(var_1.x, 102654u, var_1.x)), ~(~vec3<u32>(var_1.x, 82292u, 29687u))) % vec3<u32>(32u)));
    return select(!select(vec3<bool>(true, select(false, true, true), false), vec3<bool>(true, global0[_wgslsmith_index_u32(74348u, 14u)] >= u_input.c, all(vec2<bool>(true, false))), select(vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), true)), vec3<bool>(true, true, true), (1u >= var_1.x) && (var_1.x < _wgslsmith_clamp_u32(var_2.x, _wgslsmith_clamp_u32(73372u, 58794u, 4294967295u), ~51353u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + _wgslsmith_f_op_f32(trunc(-930f))) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1480f)) * 439f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(-1491f * 1315f), 1146f, -1816f)))));
    global0 = array<i32, 14>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, 744f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1965f, var_1.x)) * _wgslsmith_f_op_f32(max(var_1.x, var_1.x))), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_div_f32(var_1.x, -110f))))), !(((u_input.c ^ global0[_wgslsmith_index_u32(28391u, 14u)]) | u_input.a) <= max(-18518i, u_input.c))));
    let var_3 = min(min(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(24895u, 26113u, 85879u), vec3<u32>(1u, 1u, 1u), !vec3<bool>(var_0.x, false, var_0.x)), abs(vec3<u32>(19049u, 62144u, 4173u)), ~(~vec3<u32>(1u, 14424u, 72685u)))), min(select(~(~vec3<u32>(4294967295u, 1u, 0u)), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(46867u, 1u, 15792u), vec3<u32>(8135u, 4294967295u, 0u), vec3<u32>(24103u, 1u, 106904u)), vec3<u32>(4294967295u, 27800u, 7575u)), _wgslsmith_f_op_f32(-var_2.x) == _wgslsmith_f_op_f32(var_2.x + -1010f)), select(firstLeadingBit(~vec3<u32>(3473u, 1u, 0u)), vec3<u32>(1u, 1u, 1u), any(vec2<bool>(false, var_0.x)))));
    var var_4 = Struct_3(_wgslsmith_mult_vec2_i32(min(~u_input.d, vec2<i32>(0i, -1i)) | (vec2<i32>(u_input.b, u_input.b) & vec2<i32>(u_input.c, -2147483647i)), select(u_input.d, u_input.d, var_0.zz)), (~var_3.x | 1u) & ~var_3.x);
    let var_5 = Struct_1(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_mod_vec2_i32(-firstTrailingBit(vec2<i32>(var_4.a.x, 1i) ^ vec2<i32>(63283i, -2147483647i)), u_input.d), -abs(min(0i ^ global0[_wgslsmith_index_u32(38783u, 14u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(16141u, var_3.x, 4294967295u), 14u)])), ~select((vec4<u32>(var_4.b, var_4.b, var_3.x, var_4.b) ^ vec4<u32>(var_3.x, var_4.b, var_4.b, 15879u)) << (reverseBits(vec4<u32>(var_3.x, var_4.b, 69040u, var_4.b)) % vec4<u32>(32u)), vec4<u32>(var_3.x, ~var_3.x, ~37182u, 1u), select(vec4<bool>(var_0.x, false, var_0.x, false), select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, var_0.x, false, true), true), true)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(159f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), 1132f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-379f, var_2.x)), _wgslsmith_f_op_f32(round(835f))), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(911f, 589f), var_1.zz, var_0.x)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(var_5.e.yy, vec2<f32>(var_1.x, -133f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1631f, 278f))), var_0.yy)))));
}

