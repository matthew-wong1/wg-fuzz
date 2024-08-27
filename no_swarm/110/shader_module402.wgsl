struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, false, true, true, true, true, true, true, true);

var<private> global1: vec4<bool>;

var<private> global2: array<i32, 13> = array<i32, 13>(1i, -72486i, -48671i, 31836i, 0i, 0i, 1i, 1i, 27227i, 28489i, -2979i, 15779i, 0i);

var<private> global3: vec3<i32> = vec3<i32>(-41833i, 2147483647i, 2147483647i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> f32 {
    global1 = select(select(select(select(select(vec4<bool>(arg_3, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)], false), vec4<bool>(true, true, true, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global1.x, true, global0[_wgslsmith_index_u32(15454u, 10u)])), !vec4<bool>(false, true, global1.x, arg_3), all(global1.wy)), vec4<bool>(select(true, false, global1.x), global0[_wgslsmith_index_u32(~51066u, 10u)], !global1.x, global1.x | false), true), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true, true, global1.x), vec4<bool>(global1.x, global0[_wgslsmith_index_u32(11706u, 10u)], arg_3, global1.x), true), !vec4<bool>(global1.x, global0[_wgslsmith_index_u32(58251u, 10u)], global1.x, false), true), select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(33822u, 10u)], false), select(vec4<bool>(global0[_wgslsmith_index_u32(47371u, 10u)], arg_3, false, true), vec4<bool>(true, false, arg_3, true), vec4<bool>(arg_3, global1.x, global1.x, false)), vec4<bool>(arg_3, global1.x, arg_3, true)), !vec4<bool>(global1.x, true, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(_wgslsmith_sub_i32(select(48679i, u_input.a.x, global1.x), reverseBits(arg_1.a)) < _wgslsmith_clamp_i32(reverseBits(43747i), 0i, -16099i), arg_3, !all(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(62230u, 10u)], global1.x)), countOneBits(max(u_input.a.x, u_input.a.x)) > 1i), select(vec4<bool>(all(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(~62628u, 10u)], true, true), vec4<bool>(all(vec2<bool>(true, true)), true, all(vec3<bool>(arg_3, global0[_wgslsmith_index_u32(4294967295u, 10u)], false)), arg_3), global0[_wgslsmith_index_u32(1u, 10u)]));
    global0 = array<bool, 10>();
    global2 = array<i32, 13>();
    let var_0 = -2147483647i;
    global3 = arg_2;
    return 1466f;
}

fn func_2(arg_0: Struct_5) -> u32 {
    var var_0 = Struct_5(~1i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -456f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(587f, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 13u)], vec4<f32>(arg_0.b.x, -1000f, arg_0.b.x, arg_0.b.x)), u_input.a.zzz, global1.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x))), 241f));
    let var_1 = Struct_4(Struct_1(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)), -347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.b.x, var_0.b.x))))));
    return 4727u;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<f32>) -> StorageBuffer {
    var var_0 = max(vec2<u32>(1u, 28995u), max(~vec2<u32>(4294967295u, 49537u), vec2<u32>(1u, 4294967295u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) | vec2<u32>(1u, func_2(Struct_5(global3.x, arg_0.b)))) | vec2<u32>(_wgslsmith_clamp_u32(func_2(arg_0), 1u, firstTrailingBit(~29945u)), 4294967295u);
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.zz))), arg_2.zy));
    let var_3 = _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(global3.x, u_input.a.x, reverseBits(global3.x))), u_input.a.yyx) | _wgslsmith_sub_i32(-36446i, _wgslsmith_mod_i32(var_1.a.a, firstLeadingBit(global2[_wgslsmith_index_u32(24278u, 13u)])));
    var_0 = min(~vec2<u32>(countOneBits(63097u), ~0u), _wgslsmith_add_vec2_u32(abs(vec2<u32>(var_0.x, var_0.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, 86072u))) ^ abs(vec2<u32>(var_0.x, 0u))) & _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.x, 0u), 1u), ~1u), vec2<u32>(max(~4294967295u, 39887u), abs(abs(var_0.x))));
    return StorageBuffer(-1408f, vec3<i32>(1i, -1i, 1i) ^ vec3<i32>(u_input.a.x, _wgslsmith_mult_i32(countOneBits(global3.x), _wgslsmith_add_i32(var_3, 0i)), _wgslsmith_add_i32(arg_1.a.a, u_input.a.x) >> (~var_0.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1291f, -285f) - vec2<f32>(-183f, 820f)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1523f - -409f))), _wgslsmith_f_op_f32(trunc(-192f))))));
    var var_1 = global1.yzw;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -194f)));
    var_1 = global1.wyw;
    let x = u_input.a;
    s_output = func_1(Struct_5(_wgslsmith_div_i32(28151i, global3.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-953f, var_0.x, 1000f), vec3<f32>(var_0.x, -1666f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 826f, var_0.x)), !vec3<bool>(global1.x, false, global1.x)))))), Struct_4(Struct_1(-2147483647i, vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1586f), _wgslsmith_f_op_f32(sign(285f)), var_0.x))), vec3<f32>(-1040f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x))), var_0.x));
}

