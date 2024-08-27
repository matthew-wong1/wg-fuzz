struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: f32) -> bool {
    global0 = reverseBits(u_input.a.x);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(567f, _wgslsmith_f_op_f32(-arg_2), arg_2, _wgslsmith_f_op_f32(-1033f - _wgslsmith_f_op_f32(step(727f, arg_2)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -146f, arg_2, _wgslsmith_f_op_f32(-1628f - 644f)))));
    return true;
}

fn func_3() -> vec4<bool> {
    let var_0 = reverseBits(_wgslsmith_div_vec3_i32(~(vec3<i32>(16576i, u_input.a.x, u_input.a.x) & u_input.a.xxw), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), u_input.a), u_input.a.x, countOneBits(0i)))) ^ u_input.a.wwz;
    var var_1 = ~(~max(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(60347u, 0u, 29338u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), ~reverseBits(vec4<u32>(4294967295u, 4294967295u, 28649u, 1u))));
    let var_2 = vec3<bool>(true, func_2(true, ~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(var_1.x, 22061u, var_1.x, 1u)), firstTrailingBit(vec4<u32>(var_1.x, 31258u, var_1.x, 4294967295u))), 1861f), all(select(vec2<bool>(var_1.x == var_1.x, true), vec2<bool>(true, false), vec2<bool>(true, true))));
    let var_3 = _wgslsmith_mult_u32(abs(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(var_1.xyx, firstLeadingBit(var_1.xwx)), var_1.x), var_1.wwx));
    var_1 = min(select(vec4<u32>(var_3 >> (29786u % 32u), ~var_3, _wgslsmith_sub_u32(30486u, var_3), countOneBits(~var_3)), select(abs(~vec4<u32>(var_3, 0u, 1u, var_1.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, var_1.x, var_1.x, 0u), firstTrailingBit(vec4<u32>(var_1.x, var_3, var_3, 0u))), true), any(vec4<bool>(var_2.x, all(var_2.yz), false, var_0.x > -2147483647i))), countOneBits(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_3, 17293u, 3623u), vec4<u32>(var_1.x, 0u, 7628u, 4294967295u)) << (_wgslsmith_div_vec4_u32(min(vec4<u32>(0u, 28247u, var_3, var_3), vec4<u32>(var_1.x, var_1.x, var_1.x, 0u)), ~vec4<u32>(var_3, 44021u, 4294967295u, 93919u)) % vec4<u32>(32u))));
    return !(!(!vec4<bool>(true, var_2.x, var_2.x, var_2.x & var_2.x)));
}

fn func_1() -> vec4<bool> {
    var var_0 = Struct_1(~firstLeadingBit(abs(vec4<u32>(4294967295u, 4294967295u, 95242u, 4294967295u))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -481f) * -678f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(450f + 1484f) + _wgslsmith_f_op_f32(1948f * 543f)), 876f))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), false), true)));
    let var_1 = 28187u;
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(abs(var_0.a.x), ~(~69235u), 28343u), ~vec3<u32>(6761u, _wgslsmith_dot_vec3_u32(var_0.a.xzy, var_0.a.xzx), 39723u)) & vec3<u32>(0u, var_0.a.x, 1u);
    let var_3 = 951f;
    var_0 = Struct_1(vec4<u32>(~reverseBits(~4294967295u), ~(~_wgslsmith_mod_u32(var_2.x, 1u)), ~(~var_2.x), ~var_0.a.x), _wgslsmith_f_op_f32(-var_3), var_0.c);
    return select(!vec4<bool>(var_0.a.x <= _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 4294967295u), vec2<u32>(var_2.x, var_1)), !func_2(false, var_0.a, 1717f), var_0.c, all(vec2<bool>(true, var_0.c))), func_3(), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(!(false || select(false, true, false)), true));
    var var_1 = _wgslsmith_f_op_f32(-1089f + _wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1921f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-639f, 2529f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-1358f, 839f), _wgslsmith_f_op_f32(536f + -237f), _wgslsmith_f_op_f32(max(-1161f, -809f)), _wgslsmith_f_op_f32(-2406f - -584f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-387f, -1000f, 494f, -247f))), func_1())) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(297f, 1000f, -1205f, -1282f) * vec4<f32>(-1531f, 1394f, -638f, 742f))))));
    let var_3 = -1000f;
    var_0 = true;
    var var_4 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_f32(-var_3), true);
    let var_5 = Struct_1(~vec4<u32>(~_wgslsmith_mult_u32(1u, var_4.a.x), _wgslsmith_dot_vec2_u32(var_4.a.zy, vec2<u32>(128294u, 0u)), 49197u, firstTrailingBit(16519u) << (41784u % 32u)), var_3, !var_4.c);
    var var_6 = func_1().ywy;
    var_6 = func_3().wxz;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(abs(u_input.a.zxw), u_input.a.zzz)), ~4294967295u, _wgslsmith_f_op_vec2_f32(-var_2.yx), u_input.a.x);
}

