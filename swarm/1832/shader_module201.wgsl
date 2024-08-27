struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true, false, -271f, 34000i));

var<private> global2: vec4<f32> = vec4<f32>(-162f, 274f, -1000f, -878f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = Struct_2(false, u_input.a, _wgslsmith_f_op_f32(-276f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1, 5u)]))) - global0[_wgslsmith_index_u32(arg_1, 5u)])), Struct_1(all(select(!vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, false, false), select(vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2), false))), 11146u <= _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4294967295u, arg_1, arg_1), max(arg_1, 0u)), global0[_wgslsmith_index_u32(52038u, 5u)], -u_input.b));
    var var_1 = !select(vec2<bool>(!(!arg_2), all(select(vec3<bool>(arg_2, arg_2, var_0.d.a), vec3<bool>(true, true, false), vec3<bool>(true, false, arg_2)))), vec2<bool>(arg_1 != _wgslsmith_clamp_u32(1u, arg_1, arg_1), false), vec2<bool>(true, arg_2));
    var var_2 = Struct_1(var_0.a, var_1.x, var_0.d.c, ~_wgslsmith_div_i32(~u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(16133u, 75575u, 43567u, 13740u), vec4<u32>(4294967295u, arg_1, arg_1, 4294967295u)) % 32u), min(~(-1i), var_0.b.x)));
    let var_3 = var_0.d;
    var_2 = Struct_1(var_1.x, select(all(!select(vec4<bool>(true, true, true, var_0.a), vec4<bool>(var_0.d.a, var_3.a, false, false), vec4<bool>(false, false, true, arg_2))), true, select(var_2.a, true, var_2.b)), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1, arg_1, ~(~0u)) << (((4294967295u | (arg_1 & arg_1)) | 4294967295u) % 32u), 5u)], var_2.d << (~0u % 32u));
    return ~firstTrailingBit(arg_1) & _wgslsmith_dot_vec4_u32(reverseBits(max(~vec4<u32>(arg_1, arg_1, 10613u, arg_1), vec4<u32>(22879u, arg_1, 1u, 55591u))), vec4<u32>(1u, max(1u, firstLeadingBit(arg_1)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, 33173u, 3807u), vec4<u32>(arg_1, 0u, arg_1, 0u)), 1u), countOneBits(35723u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(arg_3.a, u_input.a, -683f, Struct_1(arg_0.a, true, _wgslsmith_f_op_f32(arg_0.c * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.c))))), -50331i));
    var var_1 = ~select(vec3<u32>(_wgslsmith_add_u32(func_3(u_input.a, arg_2, arg_0.a), ~arg_2), ~arg_2, arg_2), vec3<u32>(~func_3(var_0.b, 4294967295u, true), func_3(var_0.b ^ vec4<i32>(var_0.d.d, u_input.a.x, arg_1.d, u_input.c), arg_2, true), 44572u), !(!(arg_1.a || arg_0.a)));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_3.c - 2191f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4363u, 5u)]), 438f, _wgslsmith_f_op_f32(-global2.x)) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2395f, arg_3.c, var_0.c, 1172f), vec4<f32>(global0[_wgslsmith_index_u32(28865u, 5u)], arg_3.c, arg_3.c, global2.x))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.c, 560f, arg_1.c, arg_1.c) - vec4<f32>(-1600f, arg_1.c, -702f, 470f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 5u)], arg_1.c, 650f, global2.x)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-551f, arg_0.c, var_0.d.c, 1007f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1458f, -339f, arg_1.c, 487f), vec4<f32>(1000f, var_0.c, var_0.d.c, 1207f))))), any(vec2<bool>(true, true)) || !arg_1.b)));
    return vec3<bool>(arg_0.a, !(!all(vec2<bool>(true, var_0.d.b))), var_0.d.b);
}

fn func_1() -> f32 {
    let var_0 = true;
    var var_1 = !(!select(!(!vec3<bool>(false, var_0, false)), func_2(global1[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(var_0, true, global0[_wgslsmith_index_u32(1u, 5u)], -560i), ~2521u, global1[_wgslsmith_index_u32(0u, 1u)]), !(!var_0)));
    let var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 5u)];
    global1 = array<Struct_1, 1>();
    var var_3 = u_input.a.wyw | vec3<i32>(firstLeadingBit(-25178i), i32(-1i) * -(~u_input.b), ~(-49933i));
    return _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(24413u, 5u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 5>();
    global2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-460f, -294f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(reverseBits(10670u), 5u)] - -1000f), -1930f))));
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 3610u), _wgslsmith_mult_vec2_u32(vec2<u32>(49523u, 0u), vec2<u32>(0u, 4294967295u))), 5u)] - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), -564f)), global2.x, _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 5u)], 819f)))), true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))));
    var var_0 = -1000f;
    global0 = array<f32, 5>();
    var var_1 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(max(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(47835u, 1u), vec2<u32>(0u, 0u)))), _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.b >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 101393u, 1u), vec4<u32>(54575u, 9697u, 0u, 1u)) % 32u), -23911i), _wgslsmith_div_vec2_i32(~countOneBits(u_input.a.yy), u_input.a.yz)), ~1u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 3049u, 4294967295u, 49354u), vec4<u32>(15250u, 25911u, 1u, 16818u), vec4<bool>(false, true, false, false)), vec4<u32>(4294967295u, 49622u, 60610u, 51359u)), countOneBits(reverseBits(4294967295u)))), 5u)], 24253i);
}

