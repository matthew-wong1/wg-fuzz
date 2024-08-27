struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-4471i << (u_input.a.x % 32u), reverseBits(-13664i)), reverseBits(~abs(2147483647i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-7189i, -2147483647i, 41921i), vec3<i32>(-2147483647i, 0i, -47185i)) & ~firstTrailingBit(25231i), 394i << (u_input.a.x % 32u)), (~abs(vec4<i32>(1i, -58823i, 23517i, -3340i)) >> (~(~vec4<u32>(u_input.a.x, u_input.a.x, 14817u, 4294967295u)) % vec4<u32>(32u))) & firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 12570i), vec2<i32>(-2147483647i, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -49946i, 2147483647i), vec3<i32>(2147483647i, -2147483647i, 1i)), i32(-1i) * -10345i, _wgslsmith_add_i32(-2147483647i, 4287i))));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(~(vec2<u32>(9143u, 34251u) | vec2<u32>(1u, u_input.a.x)) ^ (firstTrailingBit(u_input.a) | firstTrailingBit(vec2<u32>(1u, 1u))), countOneBits(abs(u_input.a))), ~(max(abs(1u), ~u_input.a.x) >> (u_input.a.x % 32u)), _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), ((u_input.a.x << (u_input.a.x % 32u)) | ~4294967295u) & u_input.a.x));
    var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 0i, 1i, ~var_0.x), vec4<i32>(_wgslsmith_mult_i32(0i, min(1i, firstLeadingBit(var_0.x))), -21418i, var_0.x, _wgslsmith_mult_i32(-1727i, ~0i)));
    var_0 = ~(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, var_0.x, 7602i, var_0.x), vec4<i32>(var_0.x, 17420i, var_0.x, var_0.x), vec4<i32>(41273i, var_0.x, 9150i, var_0.x)))) ^ _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, -42293i, var_0.x, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)), ~vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), false), countOneBits(vec4<i32>(var_0.x, var_0.x, 57142i, var_0.x) >> (vec4<u32>(var_1.x, 10718u, 98297u, 0u) % vec4<u32>(32u))), abs(vec4<i32>(21153i, 0i, -40638i, var_0.x))), vec4<i32>(var_0.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(-13970i, var_0.x), countOneBits(vec2<i32>(var_0.x, 25088i))), _wgslsmith_add_i32(reverseBits(var_0.x), firstLeadingBit(-1i)), var_0.x & var_0.x));
    return vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.x, -178f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -1124f))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool) -> i32 {
    let var_0 = 922f;
    let var_1 = !global1.yx;
    global1 = vec3<bool>(true, !(!(!arg_1) & all(!vec3<bool>(true, var_1.x, false))), true);
    let var_2 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 36443u, 0u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-334f, global0.x, var_0, var_0)), _wgslsmith_f_op_vec4_f32(abs(var_2.b)))))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), 107f, 1f, global0.x) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(504f, -972f, var_0, var_0), vec4<f32>(var_0, var_2.b.x, -1185f, -1804f)))))));
    return ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, 26460i, arg_0.x), vec3<i32>(arg_0.x, 1i, arg_0.x), vec3<i32>(2147483647i, arg_0.x, arg_0.x)), vec3<i32>(arg_0.x, arg_0.x, 0i)), _wgslsmith_sub_i32(2147483647i, countOneBits(arg_0.x))), 0i, ~min(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, -2147483647i), -26682i));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = -838f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * arg_2.b.x), arg_2.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, var_0) - _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-733f + arg_0.x), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0))))));
    var var_2 = !(!global1.x);
    var var_3 = Struct_2(2147483647i, ~_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(arg_1.ww), arg_1.wx), -arg_1.yw), _wgslsmith_div_i32(arg_1.x, -(_wgslsmith_clamp_i32(15693i, arg_1.x, -1i) >> (28340u % 32u))), _wgslsmith_sub_vec4_i32(vec4<i32>(~(-18623i), firstTrailingBit(i32(-1i) * -11708i), _wgslsmith_add_i32(arg_1.x, i32(-1i) * -10786i), 0i), arg_1), false);
    var_3 = Struct_2(_wgslsmith_mod_i32(func_2(~var_3.d.yx, var_3.e), arg_1.x), vec2<i32>(max(arg_1.x, 1i >> (u_input.a.x % 32u)), -20469i), i32(-1i) * -16159i, -abs(vec4<i32>(var_3.b.x, 9839i, -1i, arg_1.x) << (~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 0u) % vec4<u32>(32u))), !(_wgslsmith_f_op_f32(-var_1.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))));
    return 43650i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> Struct_1 {
    return Struct_1(min(countOneBits(arg_1), select(reverseBits(arg_1), vec3<u32>(u_input.a.x, _wgslsmith_mult_u32(0u, arg_1.x), 1u), select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, global1.x), false), !vec3<bool>(global1.x, global1.x, global1.x), any(vec4<bool>(global1.x, false, global1.x, global1.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(global0.x, -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), global0.x) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-364f, -1214f, 313f, _wgslsmith_f_op_f32(-1234f * global0.x))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = arg_0.b.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(all(vec4<bool>(global1.x, global1.x | global1.x, !global1.x, true)))).x);
    let var_2 = ~(_wgslsmith_dot_vec2_u32(~(u_input.a ^ vec2<u32>(u_input.a.x, arg_0.a.x)), arg_0.a.xz) >> ((1432u & u_input.a.x) % 32u));
    let var_3 = !(!select(global1.xx, global1.xy, any(vec4<bool>(true, false, global1.x, global1.x))));
    var var_4 = Struct_2(1i, firstTrailingBit(-_wgslsmith_mod_vec2_i32(~vec2<i32>(36112i, -2147483647i), vec2<i32>(1i, 1i))), select(min(1i, reverseBits(~2147483647i)), i32(-1i) * 0i, false), _wgslsmith_clamp_vec4_i32(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 0i, -2147483647i, 1i), firstLeadingBit(vec4<i32>(-1i, -2147483647i, -2147483647i, 61678i))), vec4<i32>(-41497i, 23456i, 1i, ~(-1i))), vec4<i32>(_wgslsmith_clamp_i32(1747i, select(-16119i, -2147483647i, global1.x), i32(-1i) * -1i), _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(-11153i, -1961i)), _wgslsmith_add_i32(1i, i32(-1i) * -25382i), i32(-1i) * -6398i), -vec4<i32>(-2147483647i, i32(-1i) * -32015i, i32(-1i) * -15454i, ~56595i)), global1.x);
    return StorageBuffer(_wgslsmith_div_vec3_i32(var_4.d.ywy, var_4.d.xyx));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(vec4<i32>(-1i, 1i << (_wgslsmith_mod_u32(30359u, u_input.a.x) % 32u), 1i, abs(func_1(global0.wzw, vec4<i32>(-2147483647i, 1i, 0i, -37773i), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 0u), vec4<f32>(1176f, 379f, -1346f, 399f))))), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 0u))), global0.ywx);
}

