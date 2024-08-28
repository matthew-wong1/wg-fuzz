struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2> = array<i32, 2>(3298i, -22907i);

var<private> global1: vec3<f32> = vec3<f32>(236f, -1432f, -1510f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(121f, arg_0.d, global1.x) - vec3<f32>(-849f, -216f, 1584f)), vec3<f32>(arg_0.d, global1.x, -970f)))))));
    let var_0 = Struct_3(!(!all(!vec4<bool>(true, arg_1.c, false, arg_1.c))), countOneBits(min(-7028i & arg_1.d.x, 6397i)), !(!(!vec2<bool>(arg_1.c, true))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-298f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d * 681f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * -841f), -737f))));
    var var_1 = 2263u;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(169f, arg_0.d, var_0.d), vec3<f32>(arg_0.d, arg_0.d, -2256f)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -355f, -282f)))));
    let var_2 = _wgslsmith_add_vec4_u32(~vec4<u32>(1u, arg_1.b.x, 0u, 4294967295u) >> (vec4<u32>(0u, arg_1.b.x, ~0u, ~arg_1.b.x) % vec4<u32>(32u)), arg_1.b) | ~vec4<u32>(~_wgslsmith_sub_u32(1u, 1u), 62741u, u_input.a.x, select(~arg_1.a, ~0u, true));
    return !(min(arg_1.b.x, arg_1.a) > var_2.x);
}

fn func_2(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_1(u_input.a.x, vec4<u32>(~(~(~arg_0.x)), u_input.a.x, abs(arg_0.x), _wgslsmith_add_u32(select(61263u ^ arg_0.x, u_input.a.x, func_3(Struct_3(false, global0[_wgslsmith_index_u32(arg_0.x, 2u)], vec2<bool>(false, false), global1.x), Struct_1(4294967295u, vec4<u32>(41535u, 5087u, arg_0.x, 0u), true, vec4<i32>(44349i, 0i, -45690i, global0[_wgslsmith_index_u32(arg_0.x, 2u)]), vec4<i32>(43494i, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)], 12733i)))), _wgslsmith_dot_vec4_u32(~arg_0, ~arg_0))), true | any(vec3<bool>(true, true, true)), select(vec4<i32>(i32(-1i) * -global0[_wgslsmith_index_u32(10115u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(67139u & _wgslsmith_div_u32(u_input.a.x, u_input.a.x), 2u)], max(~1i, global0[_wgslsmith_index_u32(0u, 2u)] >> (u_input.a.x % 32u))), -(~max(vec4<i32>(8363i, 1i, -1i, -9597i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(arg_0.x, 2u)], global0[_wgslsmith_index_u32(45176u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))), true), vec4<i32>(_wgslsmith_clamp_i32(~1i, 33305i, -(-33144i >> (arg_0.x % 32u))), 8682i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], -8508i));
    let var_1 = 2147483647i;
    let var_2 = _wgslsmith_sub_u32(countOneBits(var_0.b.x), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zy ^ vec2<u32>(arg_0.x, u_input.a.x)), ~(~countOneBits(vec2<u32>(4294967295u, var_0.b.x)))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x))) * vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, -673f, false)), _wgslsmith_f_op_f32(round(-867f)), _wgslsmith_f_op_f32(step(-3111f, global1.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -1370f))), -376f, -565f));
    let var_3 = 6315i;
    return _wgslsmith_dot_vec3_i32(firstLeadingBit(abs(firstTrailingBit(var_0.d.yyx))), var_0.e.zzy);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> bool {
    global0 = array<i32, 2>();
    let var_0 = vec2<i32>(~global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.a.x), 2u)], select(global0[_wgslsmith_index_u32(~34522u, 2u)] << ((0u >> (arg_1.x % 32u)) % 32u), func_2(~vec4<u32>(1u, u_input.a.x, 1u, 24585u)), func_3(Struct_3(all(vec4<bool>(true, false, false, true)), -global0[_wgslsmith_index_u32(u_input.a.x, 2u)], vec2<bool>(false, false), arg_0.x), Struct_1(~u_input.a.x, firstTrailingBit(vec4<u32>(arg_1.x, u_input.a.x, u_input.a.x, 1u)), true, vec4<i32>(global0[_wgslsmith_index_u32(arg_1.x, 2u)], global0[_wgslsmith_index_u32(arg_1.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], 0i) << (vec4<u32>(20443u, 42523u, u_input.a.x, arg_1.x) % vec4<u32>(32u)), vec4<i32>(2147483647i, 1i, 2147483647i, 2147483647i)))));
    var var_1 = -33214i >= var_0.x;
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(1894f)), _wgslsmith_f_op_f32(global1.x - global1.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-349f, 397f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, -927f)))))));
    global0 = array<i32, 2>();
    return true & (arg_0.x < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-879f, -2144f) + _wgslsmith_f_op_f32(-343f + 1142f)), _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(1133f + global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 263f;
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(664f, 1000f, 844f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -843f, global1.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1.x, global1.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) * vec3<f32>(global1.x, 1263f, global1.x)), vec3<f32>(992f, -1289f, 631f)))), vec3<bool>(!(_wgslsmith_f_op_f32(1000f - 400f) >= global1.x), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(563f, 512f)), countOneBits(u_input.a.zx) & _wgslsmith_mod_vec2_u32(u_input.a.zx, vec2<u32>(63486u, u_input.a.x))), any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false)))));
    var var_1 = vec4<f32>(-1304f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(round(global1.x)), global1.x <= 1461f)), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x);
    var var_2 = Struct_3(!(!(true & (1i > global0[_wgslsmith_index_u32(4294967295u, 2u)]))), -37754i, !vec2<bool>(1u >= firstTrailingBit(u_input.a.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-859f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) + var_2.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.zzz)), _wgslsmith_f_op_vec3_f32(min(var_1.www, vec3<f32>(-488f, -1036f, global1.x)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, 547f, var_2.d), var_1.zwy))) * vec3<f32>(581f, -1374f, _wgslsmith_f_op_f32(f32(-1f) * -767f))), var_2.c.x));
    let var_4 = Struct_3(var_2.a, ~_wgslsmith_add_i32(0i, max(-2147483647i, var_2.b)) | firstLeadingBit(55520i << (max(u_input.a.x, u_input.a.x) % 32u)), vec2<bool>(true, false), _wgslsmith_f_op_f32(-var_2.d));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2066f, var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1076f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, -3560f, -814f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, global1.x, 1000f, 459f) * vec4<f32>(var_3.x, var_2.d, 1012f, var_3.x)), true || var_2.c.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, -393f, -222f, var_1.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, 1000f, -287f, var_1.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(544f, 1727f, var_3.x, var_4.d) * vec4<f32>(-2728f, var_1.x, -480f, var_3.x))))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.d + var_2.d))), _wgslsmith_f_op_f32(step(-989f, _wgslsmith_f_op_f32(select(-1737f, _wgslsmith_f_op_f32(-var_2.d), var_4.c.x || false))))));
}

