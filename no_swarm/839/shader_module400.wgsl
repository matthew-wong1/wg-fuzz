struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_2(vec4<i32>(~(-62978i) >> (u_input.c % 32u), 2210i, (_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(9354i, 2631i, -2147483647i)) | abs(-69115i)) ^ 23135i, _wgslsmith_dot_vec4_i32(reverseBits(countOneBits(vec4<i32>(-1i, 17292i, 51594i, -1i))), ~vec4<i32>(17592i, 10458i, 12005i, 2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -179f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)))) < _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(936f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(634f, arg_2.a, arg_2.b.x))) * _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_div_f32(arg_2.a, arg_2.a)))));
    var_0 = Struct_2(vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, countOneBits(13697i)) ^ abs(-1i), var_0.a.x, var_0.a.x, -21138i));
    var_0 = Struct_2(~var_0.a);
    let var_2 = Struct_2(-firstLeadingBit(vec4<i32>(4311i, firstLeadingBit(var_0.a.x), var_0.a.x, -1i)));
    return 69168u;
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(arg_0.a, arg_0.b);
    return ~max(_wgslsmith_clamp_u32(func_3(vec2<u32>(u_input.b, u_input.c), countOneBits(vec2<u32>(26871u, u_input.a)), arg_0), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.c, u_input.c, 4057u, 1u)), reverseBits(vec4<u32>(u_input.c, u_input.b, u_input.b, u_input.c))), u_input.c), _wgslsmith_sub_u32(~(~4294967295u), u_input.b << (u_input.b % 32u)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(u_input.a, u_input.b);
    let var_1 = select(vec2<bool>(true, arg_1.x), !vec2<bool>(func_2(Struct_1(1057f, vec2<bool>(arg_1.x, arg_1.x))) != 5892u, false), false);
    let var_2 = Struct_1(447f, select(arg_1, vec2<bool>(false, all(select(var_1, arg_1, var_1))), select(vec2<bool>(true, !var_1.x), !arg_1, vec2<bool>(arg_1.x, var_1.x))));
    var var_3 = select(vec3<bool>(var_1.x, true, all(vec3<bool>(var_1.x, false, any(vec3<bool>(false, arg_1.x, false))))), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(arg_1.x, arg_1.x, var_2.b.x), vec3<bool>(true, arg_1.x, var_2.b.x)))), false);
    var_3 = select(vec3<bool>(true, false, 28974i != _wgslsmith_sub_i32(1i, firstTrailingBit(2147483647i))), !vec3<bool>(false, true, arg_1.x | !arg_1.x), select(select(select(select(vec3<bool>(true, var_1.x, var_3.x), vec3<bool>(var_3.x, true, var_2.b.x), var_3.x), vec3<bool>(var_3.x, true, false), !vec3<bool>(var_2.b.x, true, true)), !vec3<bool>(var_3.x, var_1.x, false), !var_1.x), vec3<bool>(all(vec2<bool>(var_2.b.x, false)), var_1.x || all(vec4<bool>(var_3.x, var_2.b.x, false, false)), !(!arg_1.x)), countOneBits(~2147483647i) >= select(_wgslsmith_sub_i32(2147483647i, 2147483647i), ~4266i, true)));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<i32>(0i, -1i, _wgslsmith_sub_i32(-_wgslsmith_div_i32(2147483647i, -7622i), 1i), _wgslsmith_add_i32(1i, 1i)));
    let var_1 = 58311u;
    let var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2256f)), vec2<bool>(all(vec2<bool>(true, true)), false != (var_1 >= ~0u)));
    var var_3 = var_2.a;
    var_0 = Struct_2(_wgslsmith_div_vec4_i32(var_0.a, firstLeadingBit(var_0.a)));
    var var_4 = !vec2<bool>(var_2.b.x, any(select(vec3<bool>(var_2.b.x, var_2.b.x, var_2.b.x), select(vec3<bool>(var_2.b.x, false, var_2.b.x), vec3<bool>(true, true, false), true), true)));
    var_3 = _wgslsmith_f_op_f32(trunc(425f));
    var_0 = Struct_2(select(var_0.a, ~vec4<i32>(-var_0.a.x, -25186i, 1i, var_0.a.x), select(!select(vec4<bool>(false, true, false, var_4.x), vec4<bool>(true, true, var_2.b.x, false), false), select(vec4<bool>(var_4.x, true, var_4.x, false), select(vec4<bool>(false, true, false, true), vec4<bool>(var_2.b.x, false, false, true), var_2.b.x), true), !(!vec4<bool>(true, false, var_4.x, var_4.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-736f + var_2.a) - var_2.a));
}

