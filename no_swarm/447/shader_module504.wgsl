struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec2<i32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 5> = array<bool, 5>(true, true, false, false, false);

var<private> global2: array<bool, 32>;

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-1i, -8664i, 10220i, -31189i), vec4<i32>(-1i, -40655i, 1i, 12179i), vec4<i32>(-23579i, 2147483647i, 8629i, -33364i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<i32>) -> vec3<bool> {
    let var_0 = Struct_3(~(~1u), !(!(~18688u > firstTrailingBit(global0.b.a))), _wgslsmith_f_op_f32(trunc(global0.a.c)), Struct_1(72082u >> (1u % 32u)));
    let var_1 = Struct_4(var_0, global0.a.d, global0.c, global0.d);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c - 2067f))))), var_1.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.a.c, -403f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c + 1167f) + _wgslsmith_f_op_f32(-var_0.c)), -342f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.c - _wgslsmith_f_op_f32(f32(-1f) * -226f)))))));
    let var_3 = Struct_5(!arg_1.x, arg_3.xy, all(vec4<bool>(arg_2, all(arg_1.www) | true, !select(var_0.b, arg_2, false), any(vec4<bool>(false, false, arg_2, arg_2)))), countOneBits(countOneBits(-arg_3.x)) << (1u % 32u));
    global3 = array<vec4<i32>, 3>();
    return vec3<bool>(true, any(select(vec2<bool>(global1[_wgslsmith_index_u32(~var_1.c.d.a, 5u)], all(vec2<bool>(false, var_1.a.b))), vec2<bool>(true, any(vec4<bool>(false, arg_1.x, var_1.c.b, global0.c.b))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a, var_1.d.a), 5u)] | var_1.a.b)), !(!select(true || global0.c.b, true, any(arg_1.xzz))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> bool {
    global3 = array<vec4<i32>, 3>();
    var var_0 = Struct_2(global0.a.d.a, all(select(!select(vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 32u)], true), vec3<bool>(false, global0.a.b, true), true), !(!vec3<bool>(true, false, global0.a.b)), func_3(-1i, !vec4<bool>(false, arg_1.c.b, global2[_wgslsmith_index_u32(u_input.a.x, 32u)], global2[_wgslsmith_index_u32(36245u, 32u)]), any(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 32u)], global2[_wgslsmith_index_u32(global0.d.a, 32u)])), ~global3[_wgslsmith_index_u32(arg_0.x, 3u)]))), Struct_1(~0u), arg_1.c.d);
    var var_1 = select(~(~u_input.a), u_input.a, !(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.c.c.a, _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(28763u, var_0.d.a))), 32u)] || any(vec4<bool>(arg_1.a.b, global0.a.b, true, var_0.b))));
    global0 = Struct_4(Struct_3(u_input.b, 18788i >= _wgslsmith_dot_vec4_i32(~vec4<i32>(35933i, -4670i, -2147483647i, 0i), vec4<i32>(-60199i, 14684i, -1i, 2147483647i)), global0.a.c, var_0.d), Struct_1(min(1u, _wgslsmith_mod_u32(~1u, 1u))), arg_1.c, Struct_1((~0u >> (firstLeadingBit(u_input.a.x) % 32u)) | var_0.a));
    var var_2 = Struct_1(var_0.c.a);
    return var_0.b;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = ~(-(vec2<i32>(~(-1i), 2147483647i) & ~(vec2<i32>(-47592i, arg_2) << (vec2<u32>(4294967295u, u_input.b) % vec2<u32>(32u)))));
    let var_1 = global0.b.a;
    var var_2 = global0.c.b;
    global1 = array<bool, 5>();
    let var_3 = select(!(!vec4<bool>(true, global0.a.b, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 5u)], true, global1[_wgslsmith_index_u32(93487u, 5u)], arg_0.b)), true)), !vec4<bool>(_wgslsmith_f_op_f32(-285f - global0.a.c) != _wgslsmith_f_op_f32(min(-679f, 590f)), !global1[_wgslsmith_index_u32(44625u, 5u)] && global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 5u)], select(false, func_2(u_input.a.zz, Struct_4(Struct_3(36837u, true, global0.a.c, global0.c.c), global0.c.c, Struct_2(arg_0.a, false, Struct_1(global0.a.a), arg_0.c), arg_3)), any(vec2<bool>(global2[_wgslsmith_index_u32(global0.b.a, 32u)], false))), true), true);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, global0.a.c, -1179f, -1565f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-518f, -1000f, global0.a.c, -673f), vec4<f32>(global0.a.c, global0.a.c, global0.a.c, global0.a.c))), vec4<f32>(global0.a.c, global0.a.c, -1000f, 833f), vec4<bool>(true, global0.a.b, false, arg_0.b))), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 32u)], false, global0.c.b), var_3, false))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> vec3<i32> {
    global0 = Struct_4(Struct_3(~(~u_input.b), false, _wgslsmith_f_op_f32(305f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.c), _wgslsmith_f_op_f32(-613f - 659f))), Struct_1(u_input.b)), global0.d, global0.c, Struct_1(firstTrailingBit(abs(~arg_2))));
    global2 = array<bool, 32>();
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(0i, reverseBits(~(-arg_1)), 1i, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(firstTrailingBit(4398i), arg_1, abs(arg_1)), arg_1, _wgslsmith_sub_i32(abs(arg_1), _wgslsmith_mult_i32(arg_1, arg_1)))), vec4<i32>(arg_1, -(~1i), 0i, arg_1));
    let var_1 = global2[_wgslsmith_index_u32(u_input.b, 32u)];
    let var_2 = firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_2, 1u, global0.a.d.a), u_input.a, vec3<bool>(false, global0.c.b, global2[_wgslsmith_index_u32(arg_2, 32u)])), ~u_input.a)) << (~u_input.b % 32u));
    return vec3<i32>(-_wgslsmith_mod_i32(~(-arg_1), 1i), _wgslsmith_dot_vec4_i32(~global3[_wgslsmith_index_u32(var_2, 3u)], global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b, global0.c.c.a, 0u), 3u)] | (firstLeadingBit(vec4<i32>(arg_1, 81497i, -2147483647i, arg_1)) & vec4<i32>(arg_1, -1i, 0i, arg_1))), abs(var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-240f, -1665f, -339f, 870f) * vec4<f32>(-2430f, global0.a.c, global0.a.c, 1663f)), _wgslsmith_f_op_vec4_f32(func_1(global0.c, -2147483647i, 18411i, Struct_1(global0.a.d.a))), vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, 869f, 306f, global0.a.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, 646f, global0.a.c, global0.a.c))), vec4<f32>(global0.a.c, _wgslsmith_f_op_f32(max(global0.a.c, global0.a.c)), _wgslsmith_f_op_f32(step(global0.a.c, 1343f)), 1f)))), -68496i, reverseBits(global0.a.a));
    let var_1 = global0.a.c;
    let var_2 = ~(~vec4<u32>(_wgslsmith_clamp_u32(15308u, global0.c.c.a, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.b.a, 44544u), vec3<u32>(global0.b.a, global0.b.a, 41258u)), _wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(0u, u_input.a.x)), 4294967295u)) ^ vec4<u32>(~(~global0.b.a), _wgslsmith_sub_u32(min(global0.b.a, 4294967295u), u_input.a.x), _wgslsmith_add_u32(~u_input.a.x, 80977u), 66708u);
    global3 = array<vec4<i32>, 3>();
    var var_3 = global0.a.c;
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1047f - -1213f) + _wgslsmith_f_op_f32(trunc(global0.a.c)));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c * global0.a.c)), 792f)) + -1482f);
    global0 = Struct_4(Struct_3(1u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.b, ~_wgslsmith_mod_u32(0u, 76066u)), 5u)], global0.a.c, global0.d), global0.d, global0.c, Struct_1(select(46684u, 20127u, any(!vec4<bool>(global0.a.b, false, global2[_wgslsmith_index_u32(1u, 32u)], false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - global0.a.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.c, global0.a.c, global0.a.c, -2618f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.c, global0.a.c, 256f, global0.a.c)))))));
}

