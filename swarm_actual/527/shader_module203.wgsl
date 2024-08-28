struct Struct_1 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec2<bool>, arg_3: Struct_5) -> vec4<f32> {
    var var_0 = arg_3.b.c.ww;
    let var_1 = max(vec2<u32>(arg_3.b.a.a, arg_1.x), ~vec2<u32>(arg_1.x | 12654u, countOneBits(12320u))) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(~(~arg_3.b.a.a), ~_wgslsmith_add_u32(4294967295u, u_input.a)), ~(~min(vec2<u32>(u_input.a, 63289u), vec2<u32>(u_input.a, arg_3.b.a.a))));
    var var_2 = Struct_1(arg_3.a.a, -(var_0.x & countOneBits(reverseBits(arg_3.b.b))));
    let var_3 = abs(arg_1);
    var var_4 = select(select(select(!vec4<bool>(arg_2.x, arg_2.x, true, false), select(!vec4<bool>(arg_2.x, true, arg_2.x, true), vec4<bool>(false, false, arg_2.x, arg_2.x), arg_2.x), arg_2.x), select(select(select(vec4<bool>(false, arg_2.x, false, false), vec4<bool>(arg_2.x, arg_2.x, false, true), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), select(vec4<bool>(false, arg_2.x, false, true), vec4<bool>(false, arg_2.x, false, true), true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), arg_2.x)), select(!vec4<bool>(true, arg_2.x, arg_2.x, false), select(!vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, false, true, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), !(4294967295u != u_input.a))), select(select(vec4<bool>(arg_2.x, arg_2.x, true, true), vec4<bool>(!arg_2.x, any(vec4<bool>(true, false, arg_2.x, arg_2.x)), true, !arg_2.x), vec4<bool>(arg_2.x, arg_2.x, true, true)), vec4<bool>(true, ~arg_3.b.a.a != select(u_input.a, var_3.x, arg_2.x), arg_2.x & any(vec3<bool>(false, arg_2.x, false)), !arg_2.x), select(select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(false, arg_2.x, arg_2.x, true), vec4<bool>(true, arg_2.x, arg_2.x, false), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), any(vec4<bool>(true, arg_2.x, false, true))), !(!vec4<bool>(arg_2.x, true, arg_2.x, true)), arg_2.x)), select(!vec4<bool>(arg_2.x, any(arg_2), false, arg_1.x <= var_3.x), vec4<bool>(select(true, !arg_2.x, arg_2.x), any(arg_2), arg_2.x, false), arg_2.x));
    return vec4<f32>(-1000f, global1[_wgslsmith_index_u32(arg_3.b.a.a, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u ^ ~arg_3.b.a.a, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)))), 199f);
}

fn func_2() -> f32 {
    let var_0 = Struct_3(20705u, Struct_2(Struct_1(vec4<f32>(1440f, global1[_wgslsmith_index_u32(~40044u, 8u)], -1441f, -1537f), -1i), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(vec2<f32>(1993f, -100f), vec4<u32>(4294967295u, u_input.a, 0u, 1u) ^ vec4<u32>(0u, 4338u, u_input.a, 4294967295u), vec2<bool>(true, true), Struct_5(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(4523u, 8u)], 512f, global1[_wgslsmith_index_u32(u_input.a, 8u)], -683f), 1i), Struct_4(Struct_3(u_input.a, Struct_2(Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(24816u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.a, 8u)]), 17490i), Struct_1(vec4<f32>(1207f, -507f, 1345f, -473f), -43633i), Struct_1(vec4<f32>(-1020f, global1[_wgslsmith_index_u32(4294967295u, 8u)], 1000f, global1[_wgslsmith_index_u32(38140u, 8u)]), 1i), vec4<f32>(global1[_wgslsmith_index_u32(1u, 8u)], -836f, 1173f, global1[_wgslsmith_index_u32(12072u, 8u)]))), -42424i, vec4<i32>(1i, -23460i, -7768i, 1i), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 1872f, 665f))))), abs(-1i)), Struct_1(vec4<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(37824u, 8u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 8u)] + global1[_wgslsmith_index_u32(u_input.a, 8u)]), _wgslsmith_f_op_f32(f32(-1f) * -820f), -278f), select(2147483647i, -34059i, true)), vec4<f32>(_wgslsmith_f_op_f32(-1f), -1027f, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~8926u, u_input.a << (u_input.a % 32u), ~u_input.a), 8u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -931f))))));
    let var_1 = Struct_2(var_0.b.b, var_0.b.a, var_0.b.b, vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.a, var_0.a, u_input.a, 0u)), reverseBits(vec4<u32>(1u, u_input.a, u_input.a, var_0.a))), 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.a, 8u)] * var_0.b.b.a.x) - _wgslsmith_f_op_f32(floor(205f))) + -462f), 1248f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(14717u, 8u)] * global1[_wgslsmith_index_u32(46366u, 8u)])))));
    let var_2 = var_1;
    var var_3 = Struct_1(var_2.c.a, _wgslsmith_dot_vec3_i32(~(vec3<i32>(var_2.c.b, 19235i, var_1.b.b) ^ countOneBits(vec3<i32>(var_0.b.c.b, var_1.b.b, var_2.a.b))), vec3<i32>(var_0.b.c.b, ~(var_2.c.b | 0i), -(~(-2147483647i)))));
    var var_4 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, var_0.b.a.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_3.a.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(2125u, 56267u), 8u)], false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.a.x)) * var_3.a.x))), 592f, !any(vec4<bool>(true, true, true, true))));
    return -688f;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.a, 8u)])), global1[_wgslsmith_index_u32(~31261u, 8u)], _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(round(-573f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(35332u, 8u)], global1[_wgslsmith_index_u32(arg_0.x, 8u)], global1[_wgslsmith_index_u32(44095u, 8u)], -473f) - vec4<f32>(-1339f, global1[_wgslsmith_index_u32(25184u, 8u)], 383f, global1[_wgslsmith_index_u32(28308u, 8u)])))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(14341u, 8u)] * 768f) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 8u)] * global1[_wgslsmith_index_u32(arg_0.x, 8u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(34250u, 8u)]) + 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.x, 8u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(55746u, 8u)]))), _wgslsmith_mod_i32(countOneBits(~(-28313i)), firstTrailingBit(1i >> (u_input.a % 32u))));
    global0 = max(~(~(~43462u)) ^ (_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, u_input.a, 1u, 79720u), vec4<u32>(20623u, u_input.a, 11697u, arg_0.x), vec4<u32>(arg_0.x, 82573u, u_input.a, 1u)), vec4<u32>(1u, 44798u, arg_0.x, 5024u)) >> (arg_0.x % 32u)), 1u);
    global0 = firstLeadingBit(~(~u_input.a) >> (59312u % 32u));
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    return Struct_2(Struct_1(var_0.a, firstLeadingBit(-20529i)), var_0, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a - var_0.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-302f, 2260f, global1[_wgslsmith_index_u32(arg_0.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]) * vec4<f32>(654f, -1592f, -604f, 568f)))), _wgslsmith_sub_i32(-2190i, var_0.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    let var_0 = func_1(~vec2<u32>(1u | _wgslsmith_mod_u32(0u, u_input.a), ~1u));
    var var_1 = Struct_4(Struct_3(u_input.a, func_1(abs(vec2<u32>(4294967295u, 74418u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))), 1i, ~firstLeadingBit(-(vec4<i32>(var_0.a.b, 0i, var_0.c.b, 2147483647i) << (vec4<u32>(26238u, u_input.a, u_input.a, 0u) % vec4<u32>(32u)))), vec3<f32>(623f, 678f, global1[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.a)), 8u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.zwy, vec4<u32>(0u, var_1.a.a, var_1.a.a, firstLeadingBit((0u << (u_input.a % 32u)) | (var_1.a.a << (u_input.a % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x)))), ~var_1.a.a);
}

