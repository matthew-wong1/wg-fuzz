struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = ~vec4<u32>(4294967295u, min(var_0.c.x, 64444u) ^ _wgslsmith_mult_u32(arg_0, 18625u), arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_0.c.x, 11211u), select(vec4<u32>(1u, 0u, arg_0, arg_1.c.x), vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.b.x), arg_1.a.x))) << (vec4<u32>(~(_wgslsmith_div_u32(28298u, arg_1.c.x) >> (arg_0 % 32u)), ~_wgslsmith_sub_u32(67178u >> (1u % 32u), firstTrailingBit(1u)), ~_wgslsmith_clamp_u32(max(arg_1.c.x, arg_0), 4294967295u, ~u_input.b.x), 40678u & (~arg_1.c.x | 7022u)) % vec4<u32>(32u));
    var var_2 = arg_1;
    let var_3 = arg_0;
    return min(-(max(vec2<i32>(u_input.c.x, 1i), ~vec2<i32>(u_input.c.x, 62423i)) << (vec2<u32>(select(var_1.x, arg_1.c.x, false), _wgslsmith_mod_u32(arg_1.c.x, arg_1.c.x)) % vec2<u32>(32u))), vec2<i32>(u_input.c.x, 2147483647i));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(vec3<bool>(true, true, true), func_3(~firstTrailingBit(firstLeadingBit(7132u)), Struct_1(vec3<bool>(false, true, true), ~(~u_input.c.xz), vec2<u32>(4294967295u, u_input.b.x >> (u_input.b.x % 32u)), all(vec3<bool>(false, true, false)), false)), ~u_input.b.yx, !(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), true)) | any(vec4<bool>(false, true, false, true))), select(true, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var_0 = Struct_1(select(select(var_0.a, select(!var_0.a, !vec3<bool>(false, var_0.e, var_0.a.x), true), all(!var_0.a.yz)), var_0.a, true), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -185i, var_0.b.x), -min(57091i, -9413i)), vec2<i32>(-var_0.b.x, _wgslsmith_mod_i32(u_input.c.x, 2147483647i)) & vec2<i32>(_wgslsmith_sub_i32(-1i, u_input.a), countOneBits(1i))), ~(~(~(~vec2<u32>(u_input.b.x, 1u)))), true, !(!(var_0.b.x <= 2147483647i) && all(!vec4<bool>(var_0.a.x, true, false, true))));
    return -2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = -vec2<i32>(func_2(), 50i);
    var_0 = reverseBits(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, arg_0.b.x) & vec2<i32>(arg_0.b.x, 9802i), u_input.c.zz), countOneBits(2147483647i)) << (abs(vec2<u32>(firstLeadingBit(2230u), 4294967295u)) % vec2<u32>(32u)));
    let var_1 = max(-10951i, ~33471i);
    var_0 = arg_0.b >> (_wgslsmith_mult_vec2_u32(u_input.b.zy, ~arg_0.c) % vec2<u32>(32u));
    var_0 = vec2<i32>(52419i, max(-44614i, 1i));
    return arg_0;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(ceil(684f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1830f, 1110f) * -1050f), 158f) * vec3<f32>(_wgslsmith_f_op_f32(func_4(~u_input.c, vec3<bool>(true, true, true), func_1(Struct_1(vec3<bool>(true, false, false), u_input.c.xx, vec2<u32>(1u, 60135u), false, false), var_0), u_input.c)), -123f, -1071f)));
    let var_2 = func_1(func_1(Struct_1(vec3<bool>(true, true, true), vec2<i32>(_wgslsmith_mult_i32(u_input.a, u_input.a), -2147483647i), u_input.b.zy, select(false, select(false, true, true), true), false), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(0u, 4294967295u, 0u, 42151u)), ~vec4<u32>(67101u, 1u, 54447u, 1u)), ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), reverseBits(_wgslsmith_div_u32(~(u_input.b.x ^ 44733u), var_0)));
    let var_3 = func_1(Struct_1(vec3<bool>(true, false, var_2.e & var_2.a.x), vec2<i32>(-2147483647i, ~func_3(4294967295u, var_2).x), u_input.b.zy, !(any(vec4<bool>(true, false, var_2.d, var_2.a.x)) & true), any(vec4<bool>(var_2.a.x, var_2.e, var_2.d, var_2.d)) & !(var_2.b.x == 40803i)), ~(~35457u));
    var var_4 = vec2<bool>(any(select(func_1(Struct_1(vec3<bool>(false, var_2.e, true), vec2<i32>(-2147483647i, -1i), vec2<u32>(0u, 35233u), var_2.e, false), ~var_0).a, !vec3<bool>(var_2.a.x, true, var_3.a.x), select(vec3<bool>(false, var_3.e, var_2.a.x), vec3<bool>(var_2.d, false, var_2.a.x), func_1(Struct_1(var_3.a, var_3.b, u_input.b.zx, true, var_2.e), 1u).a))), !(!(~1u < _wgslsmith_add_u32(1u, var_0))));
    var var_5 = var_2;
    var_4 = select(var_3.a.xy, !vec2<bool>(all(select(vec4<bool>(false, true, false, var_5.d), vec4<bool>(false, false, var_3.d, var_3.a.x), vec4<bool>(true, var_2.d, true, false))), true), var_2.a.zx);
    let var_6 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, -1230f, var_1.x), vec3<f32>(var_1.x, var_1.x, -1664f))) + vec3<f32>(var_1.x, var_1.x, var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~min(~47170u >> (0u % 32u), _wgslsmith_div_u32(~var_5.c.x, ~61400u)), firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 17525u, 4294967295u) & var_3.c.x, ~abs(var_2.c.x), 61492u, ~(~38319u))), vec2<f32>(_wgslsmith_f_op_f32(-1035f - var_1.x), 955f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-623f + -851f) * 612f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-151f + var_6.x)))) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_6.x)) - -824f), 571f))));
}

