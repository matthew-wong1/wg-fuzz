struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, true, true, false, false, true, false, true, true, false, false, true, false, false, false, false, false, false, true, false, true);

var<private> global1: f32 = -583f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> vec4<bool> {
    let var_0 = Struct_1(!vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~41042u, 4294967295u, u_input.d.x ^ 19527u), 22u)], global0[_wgslsmith_index_u32(22608u, 22u)], any(select(vec3<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 22u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 22u)], arg_0.x, false)))), select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 22u)], false, true, true), vec4<bool>(true, false, true, arg_0.x), vec4<bool>(global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], false))), select(vec4<bool>(true, arg_0.x & false, arg_0.x, false), !(!vec4<bool>(arg_0.x, false, true, arg_0.x)), any(!vec4<bool>(false, arg_0.x, false, true))), !(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false, false), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 22u)], false), vec4<bool>(false, arg_0.x, global0[_wgslsmith_index_u32(19515u, 22u)], global0[_wgslsmith_index_u32(73900u, 22u)])))));
    var var_1 = Struct_1(var_0.a, !(!var_0.b));
    let var_2 = firstLeadingBit(u_input.e.x ^ -_wgslsmith_sub_i32(-52516i | u_input.b.x, u_input.b.x));
    var var_3 = Struct_1(vec3<bool>(var_0.b.x, true, any(vec3<bool>(false, true, false))), !var_0.b);
    var var_4 = Struct_1(vec3<bool>(true, !(!(!var_1.b.x)), var_0.a.x), !var_0.b);
    return var_1.b;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, u_input.a)) << (arg_0 % 32u), 22u)], global0[_wgslsmith_index_u32(~((u_input.a ^ 0u) >> (_wgslsmith_clamp_u32(1777u, arg_0, u_input.a) % 32u)), 22u)]), !select(func_3(select(vec2<bool>(global0[_wgslsmith_index_u32(9195u, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(4294967295u, 22u)]), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(81477u, 22u)])), _wgslsmith_f_op_f32(sign(-542f))), !vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 22u)], true, false), vec4<bool>(true, all(vec3<bool>(global0[_wgslsmith_index_u32(arg_0, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(arg_0, 22u)])), true, false)));
    var var_1 = true;
    var_1 = !func_3(var_0.b.zy, -1719f).x;
    let var_2 = var_0.a.yz;
    var var_3 = abs(_wgslsmith_mod_vec2_i32((vec2<i32>(1i, -1i) ^ _wgslsmith_add_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(-29044i, u_input.e.x))) >> (~vec2<u32>(6956u, 41271u) % vec2<u32>(32u)), arg_1.wz));
    return Struct_1(!vec3<bool>(any(select(var_0.a, var_0.b.zyz, false)), !(0u > u_input.a), var_2.x || var_0.b.x), select(vec4<bool>(true | all(vec2<bool>(true, var_0.a.x)), !(!global0[_wgslsmith_index_u32(u_input.c, 22u)]), any(!var_0.b), all(select(vec3<bool>(global0[_wgslsmith_index_u32(96108u, 22u)], true, true), vec3<bool>(true, false, var_0.a.x), vec3<bool>(true, false, false)))), var_0.b, any(select(func_3(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 22u)], var_2.x), 581f), var_0.b, !vec4<bool>(var_0.b.x, global0[_wgslsmith_index_u32(0u, 22u)], var_0.b.x, global0[_wgslsmith_index_u32(arg_0, 22u)])))));
}

fn func_1() -> f32 {
    let var_0 = true;
    var var_1 = func_2(42139u, vec4<i32>(u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.e, ~(-vec3<i32>(1i, u_input.b.x, u_input.e.x))), ~u_input.b.x, 8384i));
    let var_2 = vec4<bool>(select(true, !(!(var_0 | var_1.b.x)), var_0), !(all(var_1.a) || var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-703f, 1807f)), _wgslsmith_f_op_f32(select(1146f, 412f, var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(361f)))) == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f * -254f)))), any(vec4<bool>(var_0, global0[_wgslsmith_index_u32(u_input.c >> (u_input.d.x % 32u), 22u)], all(!vec3<bool>(global0[_wgslsmith_index_u32(28565u, 22u)], false, true)), any(!vec4<bool>(true, var_0, false, global0[_wgslsmith_index_u32(1u, 22u)])))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(105f + _wgslsmith_f_op_f32(floor(646f))), -981f, func_2(reverseBits(0u), firstLeadingBit(max(u_input.b, u_input.b))).a.x)));
    let var_3 = func_2(abs(countOneBits(u_input.d.x)), u_input.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -390f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -637f) + -668f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(step(-1147f, 1f));
    let var_0 = _wgslsmith_f_op_f32(func_1());
    let var_1 = vec2<i32>(u_input.e.x & abs(u_input.b.x), u_input.b.x);
    let var_2 = func_2(4294967295u, _wgslsmith_add_vec4_i32(abs(~(~u_input.b)), countOneBits(_wgslsmith_clamp_vec4_i32(~u_input.b, u_input.b, firstLeadingBit(vec4<i32>(-22803i, -1i, -1i, var_1.x))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, var_0, var_0)) + vec3<f32>(var_0, _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(-var_0))) + vec3<f32>(var_0, var_0, 1518f)));
    var var_4 = func_2(38673u, vec4<i32>((i32(-1i) * -41931i) & ~_wgslsmith_mult_i32(var_1.x, -14010i), u_input.e.x, _wgslsmith_dot_vec2_i32(~var_1, vec2<i32>(u_input.e.x ^ 0i, u_input.e.x)), abs(-_wgslsmith_div_i32(var_1.x, -38855i))));
    var var_5 = func_2(62666u, _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), ~(vec4<i32>(var_1.x, 18524i, 0i, var_1.x) << (~vec4<u32>(34007u, u_input.c, u_input.d.x, 0u) % vec4<u32>(32u)))));
    global0 = array<bool, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-867f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_3.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.zx), _wgslsmith_f_op_vec2_f32(-var_3.zx))))), countOneBits(vec3<i32>(min(77258i, var_1.x), countOneBits(0i), ~(var_1.x << (0u % 32u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, var_3.x, -566f, 648f) + vec4<f32>(1097f, var_0, var_3.x, var_3.x)))), vec4<f32>(-882f, _wgslsmith_f_op_f32(-var_3.x), var_3.x, _wgslsmith_f_op_f32(trunc(344f))))), vec4<f32>(-1308f, _wgslsmith_f_op_f32(-206f + _wgslsmith_f_op_f32(f32(-1f) * -342f)), 258f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(331f)), 1409f))), var_2.b)));
}

