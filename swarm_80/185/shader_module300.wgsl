struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: f32) -> i32 {
    let var_0 = arg_1.c;
    let var_1 = vec3<i32>(u_input.b.x, firstLeadingBit(arg_1.a.x), arg_1.a.x);
    let var_2 = 65458u;
    let var_3 = vec2<u32>(select(u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(25014u, u_input.a.x, arg_1.d.x), ~vec3<u32>(var_2, var_2, arg_1.d.x)), true), 4294967295u);
    let var_4 = _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, _wgslsmith_add_i32(22851i, var_1.x), 11334i, 1i), firstLeadingBit(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(9660i, 0i, u_input.b.x, 77953i), vec4<i32>(u_input.d.x, var_1.x, u_input.d.x, arg_1.a.x), vec4<i32>(3734i, var_1.x, 9582i, arg_1.a.x))))), reverseBits(~(-(~vec4<i32>(u_input.d.x, 2147483647i, 1i, -9270i)))));
    return ~1i;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(vec2<i32>(~(i32(-1i) * -2147483647i), ~_wgslsmith_sub_i32(abs(-38423i), u_input.b.x)), u_input.a.xz, -369f, _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 9515u, u_input.a.x, u_input.a.x) >> (firstTrailingBit(u_input.a) % vec4<u32>(32u)), u_input.a & u_input.a));
    var var_1 = _wgslsmith_div_f32(-1180f, _wgslsmith_f_op_f32(-221f + _wgslsmith_f_op_f32(select(var_0.c, var_0.c, !any(vec3<bool>(false, true, true))))));
    var var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(258i, var_0.a.x, i32(-1i) * -34661i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.d.x, var_0.a.x, var_0.a.x), vec3<i32>(13412i, u_input.b.x, -15145i)) ^ ~vec3<i32>(var_0.a.x, u_input.c, var_0.a.x)), -1619i, 2147483647i), -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, func_3(vec4<f32>(1093f, 607f, var_0.c, var_0.c), Struct_1(var_0.a, vec2<u32>(u_input.a.x, 4294967295u), var_0.c, vec4<u32>(69852u, 29473u, u_input.a.x, 4294967295u)), 488f), func_3(vec4<f32>(-293f, 185f, 1000f, var_0.c), Struct_1(var_0.a, vec2<u32>(1u, 37614u), var_0.c, vec4<u32>(u_input.a.x, u_input.a.x, 25118u, u_input.a.x)), var_0.c), u_input.b.x), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-37732i, 7640i, u_input.d.x, -1i), vec4<i32>(u_input.b.x, var_0.a.x, 2147483647i, 0i), vec4<bool>(true, true, true, true)), vec4<i32>(-16735i, 1962i, u_input.b.x, -11178i) & vec4<i32>(10755i, -1i, 48140i, 1i))));
    let var_3 = abs(abs(vec4<u32>(u_input.a.x, 0u, 0u, 14360u)));
    var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(var_0.a.x), -var_0.a.x, _wgslsmith_add_i32(2147483647i, -8396i), reverseBits(u_input.b.x)) << (_wgslsmith_mod_vec4_u32(var_0.d, vec4<u32>(82535u, u_input.a.x, 4294967295u, 21897u)) % vec4<u32>(32u)), vec4<i32>(u_input.c, 0i, 16661i, abs(91742i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x << (51963u % 32u), u_input.d.x, u_input.b.x, 0i), -(~vec4<i32>(u_input.c, var_0.a.x, var_2.x, 11375i)))), _wgslsmith_sub_vec4_i32(abs(select(abs(vec4<i32>(-41568i, -2147483647i, u_input.d.x, var_0.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_2.x, 25366i, var_0.a.x), vec4<i32>(u_input.c, 6016i, u_input.d.x, 5704i), vec4<i32>(0i, var_2.x, 0i, 0i)), true)), vec4<i32>(0i, -35164i, firstLeadingBit(-u_input.d.x), 0i)));
    return Struct_2(Struct_1(~vec2<i32>(i32(-1i) * -8892i, select(var_2.x, u_input.c, true)), var_3.yz, var_0.c, min(abs(var_0.d) | firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u)), ~var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + -691f)))) + 2025f), true);
}

fn func_1() -> bool {
    let var_0 = func_2();
    let var_1 = 0i;
    var var_2 = (~_wgslsmith_mult_i32(var_0.a.a.x, abs(var_0.a.a.x)) | abs(13582i)) << (_wgslsmith_add_u32(max(min(4294967295u, u_input.a.x), 65598u) ^ u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.xwy, func_2().a.d.yyw), ~vec3<u32>(4294967295u, u_input.a.x, var_0.a.d.x))) % 32u);
    var_2 = ~(countOneBits(u_input.d.x) << (_wgslsmith_clamp_u32(u_input.a.x & var_0.a.d.x, 0u, 0u) % 32u));
    var_2 = (2147483647i & var_0.a.a.x) << (var_0.a.d.x % 32u);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), !func_1());
    var var_1 = u_input.a.x;
    let var_2 = func_2();
    var_0 = vec3<bool>(true, false, all(select(select(vec3<bool>(var_2.c, true, true), vec3<bool>(var_2.c, var_2.c, var_0.x), var_0.x), select(vec3<bool>(true, var_0.x, var_2.c), vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, false, true)), var_0.x)) || false);
    var var_3 = 1f;
    var_0 = select(vec3<bool>(true, true, var_0.x), !select(select(select(vec3<bool>(var_0.x, true, true), vec3<bool>(var_2.c, var_0.x, var_2.c), vec3<bool>(true, var_2.c, var_0.x)), select(vec3<bool>(var_2.c, false, var_2.c), vec3<bool>(var_2.c, true, var_0.x), false), all(vec3<bool>(false, false, false))), vec3<bool>(true, var_0.x, true), false), false);
    var var_4 = reverseBits(u_input.a.x);
    var var_5 = firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, _wgslsmith_mult_i32(20298i, 1i)));
    var var_6 = Struct_1(u_input.d, reverseBits(~var_2.a.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1517f, var_2.b, any(vec3<bool>(true, var_2.c, var_0.x))))))), vec4<u32>(15119u, ~21522u, firstLeadingBit(_wgslsmith_sub_u32(~1u, _wgslsmith_sub_u32(u_input.a.x, 20461u))), ~_wgslsmith_div_u32(20301u, _wgslsmith_div_u32(4294967295u, 36388u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-104f, _wgslsmith_f_op_f32(1771f * -1587f), var_2.c))), var_6.c, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1477f - -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -104f)), 1186f, var_2.b, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b, var_6.c), _wgslsmith_f_op_f32(-var_2.a.c))))), ~(~vec2<i32>(select(0i, -1i, false), var_2.a.a.x >> (95316u % 32u))));
}

