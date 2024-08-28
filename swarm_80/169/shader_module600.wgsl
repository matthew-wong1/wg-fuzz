struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> i32 {
    return (i32(-1i) * -u_input.a) | 1i;
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = vec3<i32>(min(0i, _wgslsmith_add_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 8349i, -1i, -38850i), vec4<i32>(2147483647i, arg_1, 8471i, 1i))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, -1i), -vec3<i32>(0i, u_input.a, 34442i)))), max(-56060i, ~1i), _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 12u)]))), _wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(u_input.a, 63098i)), -vec2<i32>(17154i, u_input.a)))));
    let var_1 = Struct_2(!(!(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 12u)])));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) + _wgslsmith_f_op_f32(arg_3.b.x + _wgslsmith_f_op_f32(-arg_3.b.x))));
    let var_3 = ~_wgslsmith_mult_vec2_u32((vec2<u32>(950u, 33653u) ^ u_input.b.zx) | u_input.b.yz, ~max(vec2<u32>(5248u, 14289u), u_input.b.yx)) << ((u_input.b.yx << (max(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2, arg_2), u_input.b.yx, u_input.b.zy), ~u_input.b.yx) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_4 = vec4<bool>(!(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_3.x, u_input.b.x), u_input.b) >= _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 56497u, var_3.x, var_3.x), vec4<u32>(u_input.b.x, 1u, 0u, 43022u))), false, var_3.x > _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(arg_2, 4294967295u)), u_input.b.xz), var_3), all(vec2<bool>(all(select(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, arg_3.a.x, var_1.a.x, true), var_1.a.x)), ~12725u != (arg_2 << (65111u % 32u)))));
    return select(!(!vec4<bool>(arg_3.a.x, !var_4.x, var_4.x, arg_3.b.x > arg_3.b.x)), vec4<bool>(false, !var_1.a.x, true && (~var_3.x > countOneBits(1u)), _wgslsmith_f_op_f32(651f + var_2) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(107f - -364f))), !select(!(!vec4<bool>(arg_3.a.x, true, true, true)), select(!vec4<bool>(var_4.x, false, false, false), select(vec4<bool>(true, var_4.x, false, true), vec4<bool>(true, var_1.a.x, var_4.x, var_4.x), true), !vec4<bool>(var_4.x, false, var_4.x, var_4.x)), select(select(vec4<bool>(false, var_1.a.x, true, true), vec4<bool>(arg_3.a.x, false, var_4.x, arg_3.a.x), arg_3.a.x), !vec4<bool>(true, false, var_1.a.x, false), select(vec4<bool>(false, false, false, var_1.a.x), vec4<bool>(true, false, var_4.x, true), vec4<bool>(var_1.a.x, true, var_4.x, var_4.x)))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>) -> u32 {
    global0 = array<vec3<bool>, 12>();
    let var_0 = ~(~u_input.b.zy);
    var var_1 = select(!select(vec4<bool>(true, true, true, arg_1.x == 119f), func_2(Struct_1(-927f, 906f), -20974i, var_0.x, Struct_3(vec2<bool>(true, false), arg_1.zzy)), all(vec2<bool>(true, true))), select(vec4<bool>(true, false, !all(vec3<bool>(true, false, true)), true), select(select(vec4<bool>(true, true, true, true), func_2(Struct_1(arg_1.x, -355f), -1i, 49497u, Struct_3(vec2<bool>(true, false), arg_1.yxw)), vec4<bool>(false, true, true, false)), vec4<bool>(true, u_input.a >= -24200i, true, func_2(Struct_1(-1000f, 273f), -2147483647i, 15074u, Struct_3(vec2<bool>(true, true), arg_1.zwz)).x), vec4<bool>(true, true, true, true)), ((u_input.a >> (arg_0 % 32u)) >> (_wgslsmith_mod_u32(4294967295u, u_input.b.x) % 32u)) > min(1i ^ u_input.a, -25823i)), vec4<bool>(true, !(!all(vec3<bool>(true, true, true))), arg_1.x <= _wgslsmith_f_op_f32(-arg_1.x), any(vec2<bool>(true, func_2(Struct_1(arg_1.x, arg_1.x), u_input.a, 14582u, Struct_3(vec2<bool>(false, false), arg_1.xxy)).x))));
    let var_2 = Struct_2(vec3<bool>(!var_1.x, any(vec3<bool>(true, func_2(Struct_1(-702f, arg_1.x), -2147483647i, arg_0, Struct_3(vec2<bool>(var_1.x, true), arg_1.zyz)).x, all(vec3<bool>(var_1.x, var_1.x, false)))), var_1.x));
    let var_3 = Struct_3(!vec2<bool>(true, !(!var_1.x)), _wgslsmith_div_vec3_f32(arg_1.yyy, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1011f), 1f)))));
    return ~(~4294967295u);
}

fn func_4(arg_0: bool) -> vec2<bool> {
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    let var_0 = _wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(4294967295u, select(u_input.b.x, u_input.b.x, true), _wgslsmith_clamp_u32(4126u, 32102u, u_input.b.x), u_input.b.x & u_input.b.x)), ~countOneBits(~vec4<u32>(4294967295u, 1u, 4294967295u, 97613u)), ~(reverseBits(~vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x)) | (select(vec4<u32>(52752u, u_input.b.x, 1u, 0u), vec4<u32>(1u, u_input.b.x, 23274u, 66545u), false) >> (~vec4<u32>(13855u, u_input.b.x, 0u, 4294967295u) % vec4<u32>(32u)))));
    global0 = array<vec3<bool>, 12>();
    global0 = array<vec3<bool>, 12>();
    return func_2(Struct_1(_wgslsmith_f_op_f32(abs(-574f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))), abs(~(~(-u_input.a))), _wgslsmith_add_u32(56296u & var_0.x, max(_wgslsmith_add_u32(11509u, var_0.x), 1u)), Struct_3(vec2<bool>(true, !arg_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-462f, 365f, -860f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 933f, -1000f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1658f, -1000f, -518f)))))).wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1216f;
    var var_1 = func_4(4294967295u >= func_1(_wgslsmith_div_u32(50273u, u_input.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(267f, 299f, -1208f, 598f) * vec4<f32>(376f, -1597f, -1190f, 1546f)))));
    var var_2 = Struct_2(vec3<bool>(any(!select(vec3<bool>(false, var_1.x, false), global0[_wgslsmith_index_u32(1u, 12u)], vec3<bool>(var_1.x, false, var_1.x))), true, ~(u_input.b.x >> (u_input.b.x % 32u)) > 10753u));
    var_1 = select(var_2.a.xx, var_2.a.zx, false & any(!vec2<bool>(var_2.a.x, true)));
    var_1 = vec2<bool>(all(vec4<bool>(!(!var_2.a.x), all(vec2<bool>(true, var_2.a.x)) && true, !(!var_1.x), var_1.x)), true);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(1f)), -791f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1037f - 389f))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -282f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-741f + -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1617f))))))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(534f * var_3.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) - _wgslsmith_f_op_f32(f32(-1f) * -370f)), any(global0[_wgslsmith_index_u32(1u >> (1u % 32u), 12u)]))))));
    let var_4 = select(!(!(!vec4<bool>(var_1.x, false, var_1.x, var_2.a.x))), select(!select(vec4<bool>(false, var_2.a.x, var_2.a.x, var_1.x), select(vec4<bool>(var_1.x, var_1.x, true, var_2.a.x), vec4<bool>(true, var_1.x, false, var_2.a.x), true), !var_1.x), select(vec4<bool>(true, -39337i <= u_input.a, u_input.b.x >= 13264u, true), vec4<bool>(!var_2.a.x, any(vec2<bool>(var_1.x, false)), var_1.x, var_1.x), true), true), var_2.a.x);
    var_2 = Struct_2(!vec3<bool>(1i == _wgslsmith_clamp_i32(-1i, u_input.a, 1i), any(vec2<bool>(true, true)), !func_4(var_4.x).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(167f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(-var_3.x)))), var_3.x);
}

