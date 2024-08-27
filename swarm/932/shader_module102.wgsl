struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = true;
    var_0 = arg_0;
    var var_1 = !arg_0;
    let var_2 = Struct_2(!arg_0, firstLeadingBit(0u));
    var var_3 = Struct_2(true, var_2.b);
    return _wgslsmith_dot_vec4_u32(abs(countOneBits(~(vec4<u32>(var_3.b, 4294967295u, u_input.a.x, 21042u) & vec4<u32>(1u, var_2.b, var_2.b, var_3.b)))), ~abs(~firstLeadingBit(vec4<u32>(var_3.b, 24493u, u_input.b.x, var_3.b))));
}

fn func_4(arg_0: u32) -> u32 {
    var var_0 = vec2<bool>(true, true);
    var var_1 = -2147483647i;
    let var_2 = any(select(!(!(!vec2<bool>(false, var_0.x))), select(select(!vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true)), vec2<bool>(true, true), var_0.x), all(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, true), select(false, true, var_0.x)))));
    let var_3 = Struct_1(arg_0, 66563u);
    let var_4 = Struct_1(arg_0, 0u);
    return _wgslsmith_div_u32(var_3.a, 1663u);
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = 1i;
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~1u, ~(~u_input.a.x | ~24405u), ~u_input.b.x), vec3<u32>(~(~2436u) << (_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u), ~(~u_input.a.x), u_input.b.x));
    var var_2 = Struct_1(_wgslsmith_add_u32(firstLeadingBit(var_1.x), 1u), func_4(func_3((var_0 > var_0) == !arg_0)));
    var_2 = Struct_1(_wgslsmith_div_u32(96579u, var_2.a), countOneBits(var_1.x));
    let var_3 = Struct_1(_wgslsmith_mult_u32(~var_1.x, u_input.a.x), (_wgslsmith_add_u32(~46364u, _wgslsmith_mult_u32(15804u, var_2.a)) >> (1u % 32u)) | 69916u);
    return Struct_2(!((false || arg_0) && arg_0), _wgslsmith_mult_u32(firstLeadingBit(1u), ~(~1u)));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> vec3<i32> {
    let var_0 = !(abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0, 1i), arg_0)) == -arg_0);
    let var_1 = select(!select(vec4<bool>(all(vec3<bool>(arg_1.a, true, var_0)), false, func_2(false).a, var_0 == var_0), select(select(vec4<bool>(arg_1.a, true, true, arg_1.a), vec4<bool>(var_0, true, false, arg_1.a), vec4<bool>(true, false, arg_1.a, false)), vec4<bool>(arg_1.a, arg_1.a, false, true), !vec4<bool>(true, arg_1.a, arg_1.a, var_0)), !vec4<bool>(var_0, true, arg_1.a, false)), vec4<bool>(arg_1.a, var_0, all(select(select(vec4<bool>(var_0, var_0, arg_1.a, arg_1.a), vec4<bool>(true, var_0, arg_1.a, false), true), select(vec4<bool>(arg_1.a, false, true, false), vec4<bool>(true, arg_1.a, false, var_0), arg_1.a), select(vec4<bool>(false, arg_1.a, false, false), vec4<bool>(arg_1.a, arg_1.a, false, var_0), vec4<bool>(true, false, arg_1.a, arg_1.a)))), false), vec4<bool>(true, true, true, true));
    var var_2 = func_2(((all(var_1) & (u_input.a.x > arg_2)) != (arg_1.a & var_0)) || var_1.x);
    var_2 = Struct_2(select(1i > arg_0, false, any(var_1)), 0u);
    var var_3 = _wgslsmith_mod_vec2_u32(vec2<u32>(~49292u, ~(~(~arg_2))), _wgslsmith_mod_vec2_u32(u_input.a, ~reverseBits(u_input.b.xz)));
    return vec3<i32>((-arg_0 << (firstTrailingBit(arg_1.b) % 32u)) >> (~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_3.x, 1u), ~u_input.b.x, arg_2) % 32u), abs(46895i), 11356i);
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = !(!(reverseBits(-arg_0) >= 17604i));
    var var_1 = -805f;
    var var_2 = abs(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(arg_0, arg_0, -17412i)), func_5(40229i, func_2(4294967295u == u_input.b.x), ~u_input.b.x), ~(~vec3<i32>(0i, 0i, 1i)) ^ vec3<i32>(arg_0 << (1u % 32u), ~(-1i), firstLeadingBit(-1i))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1209f - 182f)) + 1283f)) + 601f);
    let var_3 = func_2(var_0);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-25337i);
    var var_1 = Struct_2(false, ~(~reverseBits(countOneBits(1u))));
    let var_2 = ~_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, 1i, 1i)), vec3<i32>(max(i32(-1i) * -2147483647i, i32(-1i) * -27072i), -66528i, -2147483647i));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-246f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(-251f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(221f)))), -1111f));
    var var_4 = !var_1.a;
    var var_5 = func_1(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_2, func_5((2147483647i ^ var_2) << ((59297u & var_1.b) % 32u), func_2(func_2(true).a), _wgslsmith_dot_vec4_u32(~vec4<u32>(12629u, u_input.b.x, 1u, 13241u), ~vec4<u32>(var_1.b, 41405u, u_input.b.x, u_input.a.x))).x));
}

