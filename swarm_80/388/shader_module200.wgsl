struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<bool>, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = u_input.c;
    var var_1 = arg_0;
    var_1 = _wgslsmith_f_op_f32(-1562f + arg_0);
    var_1 = 151f;
    var var_2 = Struct_1(select(select(select(vec2<bool>(arg_2.x, false), vec2<bool>(arg_2.x, true), arg_2.x), vec2<bool>(arg_2.x, false), all(arg_2) | (arg_0 >= 1733f)), select(!(!vec2<bool>(true, arg_2.x)), !arg_2.wy, !(!arg_2.zz)), arg_2.xw));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-891f - _wgslsmith_f_op_f32(-arg_3.a.x)), 170f, arg_3.a.x, _wgslsmith_div_f32(569f, arg_3.a.x)));
}

fn func_2() -> bool {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(round(-1606f)))), vec4<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a.x, -1i), u_input.c), 31804i, 0i), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1013f, 495f, 770f, 181f))), vec3<i32>(12495i, 8164i, u_input.b.x)))), ~u_input.c), _wgslsmith_clamp_u32(~_wgslsmith_sub_u32(45542u, 8990u), countOneBits(0u), ~(~1u)), 1u);
    var var_1 = Struct_2(var_0.a.a, vec3<i32>(2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(firstTrailingBit(-3345i), -u_input.a.x), -1i), -reverseBits(_wgslsmith_mult_i32(23512i, var_0.a.b.x))));
    var_1 = var_0.a;
    let var_2 = select(vec3<bool>(true, true, all(vec2<bool>(true, all(vec2<bool>(true, true))))), !vec3<bool>(any(vec2<bool>(true, false)) == all(vec4<bool>(false, true, false, true)), true, u_input.a.x >= abs(var_0.a.b.x)), false);
    var var_3 = var_0.a;
    return all(select(select(select(var_2, var_2, var_2.x), !vec3<bool>(var_2.x, var_2.x, var_2.x), !vec3<bool>(var_2.x, false, var_2.x)), !select(!vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(var_2.x, true, true), !vec3<bool>(var_2.x, var_2.x, var_2.x)), vec3<bool>(true, !(-8106i >= var_0.a.b.x), !var_2.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: bool) -> bool {
    return select(any(vec4<bool>(any(select(vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), arg_1)), all(!vec4<bool>(false, arg_1, false, arg_1)), func_2(), !(!arg_1))), true, arg_1);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec2<u32>(1u, 1u);
    var_0 = vec2<u32>(4294967295u, var_0.x);
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(910f, -2437f)) * -693f)), _wgslsmith_f_op_f32(ceil(-1500f)), _wgslsmith_f_op_f32(trunc(-817f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-179f + 142f)))), vec3<i32>(firstTrailingBit(-2147483647i ^ (u_input.a.x | -53442i)), ~0i, countOneBits(max(_wgslsmith_mult_i32(u_input.b.x, 1i), u_input.a.x))));
    let var_2 = Struct_1(arg_2.a);
    var var_3 = arg_2;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -358f) - var_1.a))))), firstLeadingBit(vec3<i32>(1i, max(u_input.a.x, -16978i), firstTrailingBit(0i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(false, true), true)), !func_1(~_wgslsmith_add_vec3_i32(vec3<i32>(627i, -34652i, 1i), u_input.c), true), Struct_1(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), var_0.a.x, _wgslsmith_f_op_f32(2134f * var_0.a.x), _wgslsmith_div_f32(260f, var_0.a.x))), -firstLeadingBit(firstLeadingBit(u_input.c))), 37578u, firstLeadingBit(~_wgslsmith_sub_u32(4294967295u, min(52606u, 38826u))));
    var var_2 = ~_wgslsmith_mod_vec3_u32(~vec3<u32>(~17491u, ~var_1.b, _wgslsmith_mult_u32(var_1.c, var_1.b)), vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 0u, 9837u), vec3<u32>(var_1.c, 82870u, var_1.b)), 4294967295u, false), ~(~var_1.b), 0u));
    let var_3 = -41590i & ((u_input.d << (~1697u % 32u)) | 2147483647i);
    var var_4 = firstLeadingBit(~reverseBits(~vec3<u32>(var_2.x, var_2.x, 76131u)));
    let var_5 = var_0.a.x;
    let var_6 = vec3<i32>(i32(-1i) * -1i, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(0i), -var_1.a.b.x), ~vec2<i32>(u_input.d, u_input.b.x))), _wgslsmith_clamp_i32(2147483647i, 0i, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, ~93598u, ~var_2.x, 0u) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_2.x, 29449u, 69056u, 4294967295u), abs(vec4<u32>(11207u, 1u, var_4.x, var_2.x))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(min(vec4<u32>(var_4.x, 4294967295u, var_2.x, var_1.c), vec4<u32>(var_2.x, var_1.c, 1u, 0u)) & (vec4<u32>(5356u, 4294967295u, var_2.x, 1u) >> (vec4<u32>(var_1.b, 4294967295u, 1u, var_2.x) % vec4<u32>(32u))), ~vec4<u32>(4294967295u, var_1.b, var_4.x, 1u))), vec3<u32>(max(var_1.c, 58057u), var_4.x, select(4294967295u, var_1.c, false)), var_1.a.a, vec3<u32>(~74468u, 1u & firstLeadingBit(var_1.b), countOneBits(min(select(var_2.x, var_1.c, false), ~23137u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5)) * -921f));
}

