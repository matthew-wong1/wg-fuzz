struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = ~(-((reverseBits(vec3<i32>(u_input.c.x, 2147483647i, -67084i)) ^ ~vec3<i32>(u_input.c.x, 1i, u_input.c.x)) ^ (vec3<i32>(2147483647i, u_input.c.x, -2147483647i) << ((vec3<u32>(2968u, u_input.a, u_input.b) ^ vec3<u32>(u_input.b, 2346u, 0u)) % vec3<u32>(32u)))));
    var var_1 = vec3<i32>(16247i, -16901i, abs(_wgslsmith_clamp_i32(i32(-1i) * -var_0.x, 80762i, var_0.x)));
    var_1 = -(abs(~vec3<i32>(2147483647i, var_0.x, u_input.c.x) | ~vec3<i32>(0i, -1i, u_input.c.x)) >> (vec3<u32>(1u, 4294967295u | u_input.b, min(~u_input.b, ~0u)) % vec3<u32>(32u)));
    var var_2 = vec3<f32>(1f, 1f, 1f);
    let var_3 = 0i;
    return 1i;
}

fn func_2(arg_0: Struct_4, arg_1: u32) -> vec3<u32> {
    let var_0 = _wgslsmith_clamp_i32(~25881i, ~abs(func_3()), _wgslsmith_mult_i32(~(_wgslsmith_div_i32(1i, u_input.c.x) | u_input.c.x), 1i));
    var var_1 = !(arg_0.d.b.x || arg_0.d.b.x);
    let var_2 = vec2<i32>(max(_wgslsmith_sub_i32(-2147483647i, var_0 | -1i), -select(-2147483647i, u_input.c.x, arg_0.d.b.x)) ^ -2147483647i, select(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(-13302i, 45671i), vec2<i32>(var_0, 5717i)), u_input.c), _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(20741i, 41247i))), var_0, any(!arg_0.d.b)));
    let var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(652f, 556f), vec2<f32>(-731f, arg_0.b)))))), arg_0.a.yz));
    var_1 = any(vec4<bool>(_wgslsmith_div_i32(var_0, ~var_2.x) > countOneBits(0i), !arg_0.d.b.x, !all(select(arg_0.d.b.zy, arg_0.d.b.zx, true)), all(select(select(vec4<bool>(arg_0.d.b.x, arg_0.d.b.x, arg_0.d.b.x, true), vec4<bool>(false, false, false, arg_0.d.b.x), vec4<bool>(arg_0.d.b.x, arg_0.d.b.x, true, arg_0.d.b.x)), vec4<bool>(true, arg_0.d.b.x, true, true), arg_0.d.b.x))));
    return countOneBits(~abs(~select(vec3<u32>(4294967295u, 71033u, 16274u), arg_0.d.a, arg_0.d.b.x)));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-441f, _wgslsmith_f_op_f32(round(-1555f)))));
    var var_1 = Struct_3(func_2(Struct_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(var_0.x, 2357f, var_0.x, 522f)), _wgslsmith_f_op_f32(exp2(var_0.x)), 2442u, Struct_3(vec3<u32>(u_input.b, 1u, u_input.d.x), arg_0)), countOneBits(4294967295u)) << (~vec3<u32>(u_input.b, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(26681u, u_input.d.x, u_input.b, 4294967295u), vec4<u32>(u_input.a, 1u, u_input.b, u_input.b))) % vec3<u32>(32u)), vec3<bool>(true, false, !(!arg_0.x & true)));
    let var_2 = -372f;
    let var_3 = ~2147483647i;
    let var_4 = var_3;
    return !var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1100f))))), select(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(func_1(vec3<bool>(true, true, true)), any(vec4<bool>(false, false, true, true)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - 1603f), _wgslsmith_f_op_f32(-var_0.a));
    var var_2 = -abs(~firstLeadingBit(vec4<i32>(-2147483647i, u_input.c.x, 34250i, u_input.c.x)) & -reverseBits(vec4<i32>(-2147483647i, u_input.c.x, 24542i, 2147483647i)));
    var var_3 = select(vec3<i32>(var_2.x, _wgslsmith_dot_vec4_i32(-(vec4<i32>(var_2.x, 0i, -12770i, 1i) & vec4<i32>(var_2.x, var_2.x, 38560i, var_2.x)), firstTrailingBit(vec4<i32>(0i, -31409i, 2147483647i, -35387i))), _wgslsmith_add_i32(func_3() >> (102392u % 32u), u_input.c.x)), _wgslsmith_mod_vec3_i32(var_2.wwz, reverseBits(var_2.zyw) << (select(firstLeadingBit(vec3<u32>(23652u, 4294967295u, u_input.d.x)), ~vec3<u32>(27207u, 62907u, 4294967295u), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)) % vec3<u32>(32u))), select(select(vec3<bool>(true, true, true != var_0.b.x), !select(vec3<bool>(var_0.b.x, var_0.b.x, true), vec3<bool>(var_0.b.x, false, false), true), any(vec2<bool>(var_0.b.x, true))), vec3<bool>(true, true, true), !select(select(vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(true, true, var_0.b.x), vec3<bool>(false, true, var_0.b.x)), vec3<bool>(var_0.b.x, var_0.b.x, false), select(vec3<bool>(true, var_0.b.x, true), vec3<bool>(true, var_0.b.x, var_0.b.x), vec3<bool>(var_0.b.x, false, false)))));
    let var_4 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(1862f * 263f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1636f)), _wgslsmith_f_op_f32(f32(-1f) * -328f)))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_f32(f32(-1f) * -972f), _wgslsmith_dot_vec3_u32(reverseBits(~countOneBits(vec3<u32>(77930u, u_input.a, u_input.a))), vec3<u32>(5535u | u_input.d.x, 0u, reverseBits(~0u))), Struct_3(min(firstTrailingBit(vec3<u32>(u_input.b, u_input.d.x, 1u)) | vec3<u32>(u_input.d.x, 6410u, 18806u), countOneBits(vec3<u32>(u_input.b, 48041u, 4294967295u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, 40774u, 1u), vec3<u32>(26491u, u_input.d.x, 33729u)) % vec3<u32>(32u))), !(!(!vec3<bool>(true, var_0.b.x, false)))));
    var var_5 = var_4.d;
    var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_add_i32(-1i, u_input.c.x), abs(-2147483647i), ~var_3.x), firstTrailingBit(select(-vec4<i32>(var_2.x, 2147483647i, 2524i, u_input.c.x), -vec4<i32>(var_2.x, 0i, var_2.x, u_input.c.x), var_0.b.x))), -abs(abs(min(vec4<i32>(var_2.x, -2147483647i, -4001i, u_input.c.x), vec4<i32>(-2147483647i, -65231i, 2147483647i, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.a.x & var_4.c, var_3.x, var_5.a.x);
}

