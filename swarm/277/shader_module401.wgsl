struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    var var_0 = (arg_2 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))) && !(4294967295u <= u_input.a.x);
    var var_1 = !(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)));
    var var_2 = Struct_1(var_1.x);
    var_0 = !select(true, select(all(vec4<bool>(var_1.x, var_2.a, var_1.x, true)), true, true), _wgslsmith_f_op_f32(f32(-1f) * -1000f) != arg_2);
    let var_3 = 1i;
    return firstLeadingBit(i32(-1i) * -arg_1.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = arg_1.a;
    var var_1 = ~vec2<i32>(12835i, 21034i);
    var_1 = max(firstLeadingBit(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, 63409i), vec2<i32>(var_1.x, 1i)))), _wgslsmith_mod_vec2_i32(max(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, -12891i)), abs(vec2<i32>(var_1.x, var_1.x))) << (u_input.a.xz % vec2<u32>(32u))) & ~min(select(firstLeadingBit(vec2<i32>(var_1.x, var_1.x)), vec2<i32>(var_1.x, 0i), vec2<bool>(arg_2.a, arg_1.a)), -(~vec2<i32>(var_1.x, -25464i)));
    let var_2 = Struct_1(arg_0.a);
    var var_3 = arg_2;
    return select(vec2<bool>(false, true), !select(vec2<bool>(true, !arg_1.a), vec2<bool>(arg_0.a && arg_1.a, true), true), vec2<bool>(false, select(false, var_0, u_input.a.x <= _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz))));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: bool, arg_3: f32) -> Struct_1 {
    var var_0 = 6981i;
    var_0 = func_2(-15158i, vec4<i32>(-28591i, _wgslsmith_clamp_i32(1i, i32(-1i) * -1i, firstTrailingBit(49300i)), firstTrailingBit(abs(-10487i)), reverseBits(1i)), arg_3);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1170f + -1291f) - _wgslsmith_f_op_f32(f32(-1f) * -2090f)) + -401f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2355f, arg_3)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, -783f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3)))), true)), select(vec2<bool>(true, true), func_3(Struct_1(false), Struct_1(arg_0 > 2692u), Struct_1(any(vec3<bool>(arg_2, false, false)))), any(vec2<bool>(all(vec2<bool>(arg_2, arg_2)), arg_2)))));
    var var_2 = Struct_1(!arg_2);
    var_2 = Struct_1(!var_2.a);
    return Struct_1(all(select(vec4<bool>(false, var_2.a, true, false), !vec4<bool>(var_2.a, false, true, arg_2), true)) && false);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~arg_0 >> (firstTrailingBit(arg_0) % vec4<u32>(32u));
    let var_1 = ~(~countOneBits(arg_0));
    let var_2 = Struct_1(select(arg_2.a, arg_2.a, arg_2.a));
    let var_3 = 2147483647i;
    var_0 = ~(_wgslsmith_add_vec4_u32(~(~var_1), _wgslsmith_div_vec4_u32(~arg_0, _wgslsmith_mod_vec4_u32(vec4<u32>(42008u, 1u, 74251u, arg_0.x), vec4<u32>(0u, u_input.a.x, 0u, 135992u)))) & vec4<u32>(1u, 0u, u_input.a.x, _wgslsmith_div_u32(1u, ~var_0.x)));
    return func_1(~(~_wgslsmith_mod_u32(u_input.a.x, ~65029u)), (1u >> (~arg_0.x % 32u)) ^ abs(0u), arg_1.a, -121f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4((~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u), vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x)) ^ vec4<u32>(55624u, 56390u, u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(20557u, 11495u, 12293u)))) & vec4<u32>(1u, 1u, 1u, 1u), func_1(u_input.a.x, ~u_input.a.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1753f))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-372f, 618f)), _wgslsmith_f_op_f32(trunc(1012f)), any(vec2<bool>(true, true)))))), Struct_1(false));
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-309f, -139f, _wgslsmith_f_op_f32(select(-335f, -507f, true)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, 349f, _wgslsmith_div_f32(-426f, -1114f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1822f), _wgslsmith_f_op_f32(f32(-1f) * -1293f), -1000f)))));
    var var_3 = func_4(~_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(60929u, 19606u, u_input.a.x, 6273u)), countOneBits(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)) ^ (vec4<u32>(u_input.a.x, 73724u, 0u, u_input.a.x) | vec4<u32>(7709u, 0u, 4294967295u, u_input.a.x))), Struct_1(false), func_4(~(~vec4<u32>(0u, 9605u, 6855u, 0u)) | ~vec4<u32>(u_input.a.x, u_input.a.x, 33165u, 41119u), func_1(9910u, ~(u_input.a.x | 1u), var_0.a, var_2.x), func_1(u_input.a.x, u_input.a.x, false, _wgslsmith_f_op_f32(f32(-1f) * -383f))));
    let var_4 = func_4(min(countOneBits(vec4<u32>(0u, u_input.a.x, 1u, u_input.a.x)) ^ ~vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 63058u))) ^ vec4<u32>(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), 4294967295u, _wgslsmith_add_u32(u_input.a.x, 157566u) << (u_input.a.x % 32u), 1u), func_4(vec4<u32>(countOneBits(firstLeadingBit(29889u)), _wgslsmith_sub_u32(u_input.a.x, 4294967295u), 0u, 24313u), func_4(~(~vec4<u32>(4294967295u, 0u, 37835u, 20415u)), func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(17865u, u_input.a.x, u_input.a.x, 6629u), vec4<u32>(1u, 43415u, 0u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), u_input.a), all(vec3<bool>(var_0.a, false, var_3.a)), _wgslsmith_f_op_f32(floor(-435f))), Struct_1(var_3.a)), Struct_1(true)), func_4(vec4<u32>(abs(35881u), abs(u_input.a.x), ~0u, 0u) >> (max(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 39252u, u_input.a.x, 19828u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 12546u)), vec4<u32>(48708u, 40547u, u_input.a.x, 36941u)) % vec4<u32>(32u)), Struct_1(var_3.a), func_4(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, 6606u), vec4<u32>(0u, 57646u, u_input.a.x, u_input.a.x))), Struct_1(any(vec4<bool>(var_0.a, true, var_3.a, var_0.a))), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a.x), u_input.a), _wgslsmith_add_u32(u_input.a.x, u_input.a.x), func_1(u_input.a.x, u_input.a.x, var_0.a, var_2.x).a, _wgslsmith_f_op_f32(max(var_2.x, var_2.x))))));
    var_0 = func_4(_wgslsmith_clamp_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 7001u, 13088u), vec4<u32>(1u, u_input.a.x, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), abs(~abs(vec4<u32>(0u, 1u, u_input.a.x, 1u))), firstTrailingBit(vec4<u32>(~u_input.a.x, 25821u, _wgslsmith_dot_vec2_u32(vec2<u32>(22631u, 362u), u_input.a.zz), _wgslsmith_add_u32(u_input.a.x, 26903u)))), Struct_1(_wgslsmith_mod_u32(1u, 8192u) > _wgslsmith_add_u32(u_input.a.x, reverseBits(u_input.a.x))), var_4);
    let var_5 = u_input.a.zz;
    var_0 = func_4(~(~vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(72440u, u_input.a.x, u_input.a.x)), 1u, ~var_5.x, _wgslsmith_sub_u32(u_input.a.x, var_5.x))), var_4, var_4);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(u_input.a.x, 4294967295u), ~u_input.a, abs(~abs(countOneBits(u_input.a))), 1425i, firstTrailingBit(firstLeadingBit(countOneBits(select(vec4<i32>(var_1, var_1, var_1, var_1), vec4<i32>(-2147483647i, -1i, var_1, var_1), vec4<bool>(true, true, false, false))))));
}

