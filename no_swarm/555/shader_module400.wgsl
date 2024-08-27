struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec2<f32> {
    let var_0 = vec4<u32>(36964u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), ~arg_1.x), 1u, _wgslsmith_mod_u32(54722u, _wgslsmith_mult_u32(~arg_1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1168u, 22813u, arg_1.x), ~u_input.a))));
    let var_1 = !all(!vec2<bool>(!arg_0, true));
    let var_2 = all(vec2<bool>(arg_0, ~abs(u_input.a.x) > ((0u << (arg_1.x % 32u)) >> (1u % 32u))));
    global0 = array<f32, 29>();
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0[_wgslsmith_index_u32(arg_1.x, 29u)], -930f))) + vec2<f32>(-743f, 215f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(309f)), _wgslsmith_f_op_f32(f32(-1f) * -2033f)) + vec2<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 29u)] - global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), 446f))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec3<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(true, _wgslsmith_clamp_vec2_u32(arg_1.xz, _wgslsmith_div_vec2_u32(vec2<u32>(21664u, _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(u_input.a.x, 4294967295u, 15498u, 11007u))), vec2<u32>(1u, 46593u)), ~(~u_input.a.yx))));
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 29u)] + _wgslsmith_f_op_f32(exp2(var_0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-405f, 520f, -465f, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, reverseBits(_wgslsmith_mult_u32(arg_1.x, arg_1.x))), 29u)]) + vec4<f32>(_wgslsmith_f_op_f32(250f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - global0[_wgslsmith_index_u32(4294967295u, 29u)]) + 177f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-129f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.zzz, vec3<u32>(arg_0.x, u_input.a.x, 0u)), 29u)])))));
    var_1 = _wgslsmith_f_op_f32(ceil(-2229f));
    var var_3 = var_0.x;
    return ~u_input.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_add_vec2_i32(~u_input.d & firstLeadingBit(vec2<i32>(-20777i, arg_1)), -(~(-vec2<i32>(u_input.d.x, -2147483647i)))), 1i);
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> i32 {
    global0 = array<f32, 29>();
    var var_0 = Struct_1(u_input.c.ww, ((firstTrailingBit(-2147483647i) >> (~4294967295u % 32u)) ^ u_input.b) & (abs(u_input.b >> (0u % 32u)) & -2147483647i));
    let var_1 = func_4(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 1728u, 32425u, 2622u), min(vec4<u32>(u_input.a.x, arg_0, 15505u, u_input.a.x), u_input.a)), ~u_input.a)), var_0.b, func_4(u_input.a, var_0.b, Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-31518i, -31051i), var_0.a), arg_1.b ^ arg_1.b), -56409i >> (~arg_0 % 32u))));
    var var_2 = -var_1.a;
    var_0 = func_4(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_0, 1u, u_input.a.x, u_input.a.x), reverseBits(u_input.a), vec4<bool>(true, true, false, false)), abs(vec4<u32>(u_input.a.x, arg_0, u_input.a.x, 19506u)), func_2(u_input.a.ww << (u_input.a.xx % vec2<u32>(32u)), u_input.a, select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true))), _wgslsmith_mod_i32(abs(firstLeadingBit(-1353i)) | var_0.b, _wgslsmith_div_i32(var_1.a.x, -var_1.b)), func_4(countOneBits(u_input.a), u_input.c.x, func_4(firstLeadingBit(min(vec4<u32>(u_input.a.x, 86388u, arg_0, 4294967295u), u_input.a)), ~1i | _wgslsmith_clamp_i32(-1i, var_2.x, 24333i), Struct_1(min(u_input.c.zz, arg_1.a), _wgslsmith_add_i32(0i, var_1.b)))));
    return min(var_2.x, var_2.x);
}

fn func_1(arg_0: vec2<bool>) -> bool {
    let var_0 = -vec3<i32>(func_5(select(abs(0u), u_input.a.x, !arg_0.x), func_4(func_2(u_input.a.yw, u_input.a, vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), u_input.c.x, Struct_1(u_input.d, u_input.d.x))), reverseBits(reverseBits(u_input.b)), u_input.c.x);
    global0 = array<f32, 29>();
    var var_1 = _wgslsmith_div_vec2_i32(~(~var_0.zx), ~(-max(vec2<i32>(u_input.d.x, u_input.b), vec2<i32>(-25242i, u_input.b) & vec2<i32>(var_0.x, -8440i))));
    var var_2 = func_4(u_input.a, -11298i, func_4(u_input.a, -61778i, func_4(vec4<u32>(~u_input.a.x, select(20096u, 27781u, true), ~35172u, ~u_input.a.x), countOneBits(~(-24135i)), func_4(vec4<u32>(38255u, u_input.a.x, u_input.a.x, u_input.a.x), ~var_0.x, func_4(u_input.a, 0i, Struct_1(u_input.d, u_input.b))))));
    let var_3 = u_input.c;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-2147483647i & (abs(u_input.c.x) ^ u_input.d.x), -12984i);
    var var_1 = ~(-_wgslsmith_add_vec2_i32(u_input.d, max(u_input.c.zy, vec2<i32>(u_input.b, u_input.c.x))));
    var var_2 = 0i;
    let var_3 = -_wgslsmith_dot_vec2_i32(~u_input.d, _wgslsmith_mod_vec2_i32(u_input.d, u_input.d));
    let var_4 = !func_1(vec2<bool>((1u << (u_input.a.x % 32u)) > ~19597u, true));
    var_2 = _wgslsmith_clamp_i32(u_input.c.x, (~(-2147483647i) >> (_wgslsmith_div_u32(~0u, u_input.a.x) % 32u)) << (_wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(select(37u, u_input.a.x, false), 1u, countOneBits(u_input.a.x))) % 32u), _wgslsmith_mult_i32(~1935i, _wgslsmith_mod_i32(~countOneBits(u_input.b), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.c, u_input.c), u_input.c << (u_input.a % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~select(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wxz, vec3<u32>(68729u, 4765u, u_input.a.x)), u_input.a.x), ~vec2<u32>(u_input.a.x, u_input.a.x) | ~vec2<u32>(u_input.a.x, u_input.a.x), !(!vec2<bool>(var_4, var_4))), _wgslsmith_div_vec3_i32(vec3<i32>(~1i, 55884i | -var_1.x, 0i), _wgslsmith_div_vec3_i32(~vec3<i32>(23863i, -2147483647i, 79255i), firstLeadingBit(max(vec3<i32>(-1i, var_3, u_input.c.x), vec3<i32>(var_1.x, 0i, 2147483647i))))));
}

