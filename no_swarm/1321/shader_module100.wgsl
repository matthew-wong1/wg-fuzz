struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_2(global0.yz, 1552f);
    var_0 = Struct_2(_wgslsmith_add_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(~global0.zy, ~global0.xx)), min(~vec2<u32>(39377u, var_0.a.x) << (firstTrailingBit(var_0.a) % vec2<u32>(32u)), global0.zy)), -1000f);
    let var_1 = Struct_1(-1i, ((_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, 2147483647i, -34039i), vec4<i32>(1i, -25707i, -2147483647i, 53420i)) & -38501i) ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(-2147483647i, 1i), -2147483647i)) | max(-25735i, 0i), countOneBits(86479i), vec4<u32>(~var_0.a.x << (firstLeadingBit(global0.x) % 32u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a.x, ~u_input.b.x, 1u), 38807u), u_input.a.x, global0.x), vec4<bool>(select(1i, -5586i, true) != firstLeadingBit(abs(2147483647i)), select(false, true, all(vec4<bool>(true, true, true, true))), true, true));
    let var_2 = reverseBits(~var_1.d.yyx) >> (reverseBits(_wgslsmith_div_vec3_u32(select(firstTrailingBit(vec3<u32>(var_0.a.x, 26776u, 0u)), _wgslsmith_div_vec3_u32(var_1.d.xzx, var_1.d.wxy), vec3<bool>(var_1.e.x, false, var_1.e.x)), _wgslsmith_div_vec3_u32(u_input.a.xyy, u_input.b | vec3<u32>(global0.x, global0.x, 0u)))) % vec3<u32>(32u));
    let var_3 = Struct_2(global0.yz, _wgslsmith_f_op_f32(trunc(753f)));
    return ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~(-36369i), ~45193i), 49791i >> (~global0.x % 32u)), abs(_wgslsmith_clamp_i32(~35981i, _wgslsmith_clamp_i32(var_1.c, -46334i, 0i), _wgslsmith_add_i32(var_1.c, var_1.a))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = vec3<i32>(-1i) * -(~min(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(-2147483647i, arg_1.x, arg_1.x) ^ arg_1));
    global0 = firstLeadingBit(u_input.a.xzw);
    var var_1 = select(select(vec2<bool>(true, true), vec2<bool>(false, true), !(!(692f >= arg_0.x))), vec2<bool>(true, true), vec2<bool>(true, false));
    global0 = u_input.a.wyw;
    let var_2 = all(select(select(vec4<bool>(any(vec4<bool>(true, var_1.x, true, false)), all(vec4<bool>(false, var_1.x, true, var_1.x)), all(vec4<bool>(var_1.x, true, var_1.x, var_1.x)), all(vec2<bool>(true, var_1.x))), !vec4<bool>(var_1.x, var_1.x, var_1.x, true), var_1.x), select(vec4<bool>(true, any(vec4<bool>(true, false, var_1.x, true)), false, !var_1.x), vec4<bool>(var_1.x, true, false && var_1.x, var_1.x), all(vec2<bool>(var_1.x, false))), !(-1i != min(arg_1.x, -1i))));
    return ~func_2();
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<u32> {
    global0 = ~(~countOneBits(abs(vec3<u32>(51347u, u_input.b.x, 24613u))));
    var var_0 = abs(firstTrailingBit(func_2()));
    var_0 = ~(countOneBits(func_2() ^ -vec2<i32>(-2147483647i, var_0.x)) >> (firstTrailingBit(u_input.b.zy) % vec2<u32>(32u)));
    var_0 = ~(~func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, 1000f, arg_1, arg_0))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, -1000f, 3322f))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true))), vec3<i32>(36148i, ~var_0.x, -40466i)));
    var_0 = ~firstLeadingBit(vec2<i32>(-33748i, abs(var_0.x)));
    return select(countOneBits(u_input.b), ~vec3<u32>(firstLeadingBit(u_input.a.x), _wgslsmith_dot_vec2_u32(global0.yy, vec2<u32>(global0.x, 4294967295u) ^ u_input.a.ww), _wgslsmith_mod_u32(global0.x, ~global0.x)), !(-156f > _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(~(~func_1(-750f, -744f)) ^ vec3<u32>(~global0.x ^ abs(1u), ~0u, 1u));
    global0 = u_input.b;
    global0 = countOneBits(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(102438u, ~global0.x, firstLeadingBit(11007u)), ~firstTrailingBit(u_input.b)), reverseBits(vec3<u32>(482u, global0.x, global0.x)) | u_input.b));
    global0 = u_input.b;
    global0 = countOneBits(_wgslsmith_mod_vec3_u32(u_input.a.wyy, _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, vec3<u32>(global0.x, global0.x, 1u)) & vec3<u32>(0u, global0.x, u_input.b.x), u_input.a.xzy)));
    var var_0 = global0.x;
    var var_1 = Struct_2(global0.zy, -1355f);
    let x = u_input.a;
    s_output = StorageBuffer(~40392u | _wgslsmith_dot_vec4_u32(u_input.a, ~vec4<u32>(u_input.a.x, 1u, global0.x, 33683u)), ~vec2<u32>(_wgslsmith_add_u32(4897u, var_1.a.x), global0.x) << (firstLeadingBit(u_input.b.zx) % vec2<u32>(32u)), min(-26251i, abs(i32(-1i) * -2147483647i) & func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-602f, var_1.b, var_1.b, 1279f), vec4<f32>(var_1.b, -334f, 190f, var_1.b))), vec3<i32>(13904i, 1i, -1i)).x), _wgslsmith_mult_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-13399i, -42447i, 2147483647i), select(vec3<i32>(-46803i, -5847i, 395i), vec3<i32>(1i, -1i, -21522i), vec3<bool>(false, true, true)), -vec3<i32>(4646i, 24268i, -40138i))), _wgslsmith_mult_vec3_i32(max(vec3<i32>(0i, -94759i, 0i), vec3<i32>(-56189i, -2147483647i, -1787i)) >> (_wgslsmith_mod_vec3_u32(u_input.b, vec3<u32>(var_1.a.x, 0u, global0.x)) % vec3<u32>(32u)), ~vec3<i32>(2147483647i, -15753i, -2147483647i))));
}

