struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global0 = reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(96833u, 1u), select(vec2<u32>(1u, u_input.a) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), abs(vec2<u32>(u_input.b, 20305u)), true)), u_input.a));
    return vec4<i32>(u_input.c.x, -21469i | (_wgslsmith_add_i32(~(-10786i), u_input.c.x) & -firstLeadingBit(23406i)), ~min(~u_input.c.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, u_input.c.x, u_input.e, u_input.e)))), 0i);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec3<u32>) -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(arg_1.a))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(463f, 937f, 138f, arg_1.c.b.x) - vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, -2179f)), arg_1.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, true, true), select(false, true, false), true), any(vec4<bool>(true, true, true, true))))), vec4<i32>(arg_0, 2147483647i << (u_input.a % 32u), firstTrailingBit(-73921i), i32(-1i) * -1i), Struct_1(-(~arg_1.c.a), _wgslsmith_f_op_vec2_f32(-arg_1.c.b), ~vec4<u32>(11503u | global0.x, 1u, 77008u, ~20064u)));
    let var_1 = Struct_4(var_0.c.b.x, arg_1.c, select(select(vec2<bool>(true, true), vec2<bool>(global0.x > arg_2.x, true), vec2<bool>(false, true)), select(vec2<bool>(var_0.c.b.x > var_0.a.x, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)));
    let var_2 = var_0;
    let var_3 = _wgslsmith_add_u32(var_2.c.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(46983u, 96727u, ~(var_0.c.c.x << (global0.x % 32u))), ~var_2.c.c.www));
    global0 = _wgslsmith_add_vec2_u32(~(~(vec2<u32>(4294967295u, global0.x) | _wgslsmith_sub_vec2_u32(arg_1.c.c.yw, vec2<u32>(var_3, 24217u)))), vec2<u32>(global0.x, _wgslsmith_div_u32(firstLeadingBit(firstTrailingBit(4294967295u)), 1u)));
    return arg_1.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>) -> bool {
    let var_0 = arg_0.x;
    global0 = ~(~vec2<u32>(abs(_wgslsmith_div_u32(global0.x, 48821u)), firstLeadingBit(global0.x)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(40912i, _wgslsmith_sub_i32(-2147483647i, arg_1.x), 17251i), vec3<i32>(-u_input.e, -u_input.c.x, arg_1.x)), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(709f, -1413f, 196f, 1980f), vec4<f32>(-153f, 1000f, 857f, -1135f), true)))), func_3(_wgslsmith_f_op_f32(ceil(1000f))), Struct_1(-vec2<i32>(u_input.e, 6912i), vec2<f32>(-2535f, 197f), ~vec4<u32>(26687u, u_input.a, global0.x, global0.x))), vec3<u32>(~(~global0.x), u_input.b, countOneBits(~1u)))), _wgslsmith_div_vec4_i32(countOneBits(select(u_input.c, u_input.c, vec4<bool>(true, false, true, false))), ~(vec4<i32>(u_input.e, -2147483647i, arg_1.x, 0i) << (vec4<u32>(u_input.a, 1u, global0.x, u_input.d) % vec4<u32>(32u)))) & -firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.c, u_input.c)), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(~u_input.c.wzw, ~vec3<i32>(0i, 0i, 54743i)), select(2147483647i << (u_input.d % 32u), ~49747i, true)), vec2<f32>(_wgslsmith_div_f32(-282f, _wgslsmith_f_op_f32(sign(788f))), -2561f), max(firstTrailingBit(vec4<u32>(37136u, 51858u, 1u, u_input.b)) | ~vec4<u32>(76480u, global0.x, global0.x, 1u), countOneBits(reverseBits(vec4<u32>(u_input.d, 42219u, u_input.a, u_input.a))))));
    return true;
}

fn func_1() -> vec2<u32> {
    let var_0 = 4294967295u;
    global0 = countOneBits(~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0) ^ vec2<u32>(u_input.d, global0.x), vec2<u32>(0u, 0u))));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1320f + -1517f) + -581f), -595f, _wgslsmith_div_f32(-1287f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-621f, -536f)))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 170f)) + _wgslsmith_f_op_f32(-908f - 130f))))), select(u_input.c, u_input.c, select(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, true, false)), true, func_2(vec3<bool>(false, true, true), vec3<i32>(2925i, u_input.e, u_input.c.x))), vec4<bool>(true, all(vec3<bool>(false, true, true)), true, select(true, false, false)), true)), Struct_1(reverseBits(vec2<i32>(~(-47079i), _wgslsmith_add_i32(u_input.e, u_input.e))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, 107f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-451f, -896f) * vec2<f32>(-805f, 847f))))), ~(_wgslsmith_add_vec4_u32(vec4<u32>(var_0, 4294967295u, 0u, 4294967295u), vec4<u32>(27029u, var_0, global0.x, 13157u)) | ~vec4<u32>(u_input.a, var_0, 3821u, u_input.d))));
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.c.b.x))), var_1.c.b.x, -748f), var_1.b, Struct_1(func_3(var_1.c.b.x).zx, var_1.c.b, ~(~(~var_1.c.c))));
    global0 = vec2<u32>(var_1.c.c.x, ~(~min(0u, 98722u))) | _wgslsmith_div_vec2_u32(vec2<u32>(13740u, _wgslsmith_sub_u32(~u_input.a, _wgslsmith_add_u32(0u, var_0))), ~_wgslsmith_sub_vec2_u32(~var_1.c.c.wy, vec2<u32>(9579u, 0u) >> (var_1.c.c.zy % vec2<u32>(32u))));
    return var_1.c.c.yy & _wgslsmith_mult_vec2_u32(var_1.c.c.zy, max(min(~vec2<u32>(global0.x, u_input.d), var_1.c.c.zw), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(1u, 4294967295u)), ~var_1.c.c.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1() << ((countOneBits(abs(vec2<u32>(global0.x, global0.x))) >> (vec2<u32>(~_wgslsmith_sub_u32(19362u, global0.x), global0.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = _wgslsmith_div_vec2_u32(~vec2<u32>(firstLeadingBit(_wgslsmith_mod_u32(u_input.a, global0.x)), 1u), ~(func_1() ^ vec2<u32>(1u, reverseBits(16777u))));
    global0 = vec2<u32>(select(countOneBits(firstTrailingBit(0u)), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(~global0.x, 4294967295u), firstLeadingBit(countOneBits(global0.x))), true), 0u);
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(280f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-375f * -1213f), _wgslsmith_f_op_f32(1559f * _wgslsmith_f_op_f32(171f - 196f)))), Struct_1(vec2<i32>(_wgslsmith_mod_i32(-34733i, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x)), ~_wgslsmith_div_i32(u_input.c.x, -1i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(674f, -1000f) * vec2<f32>(1189f, -544f))))), ~vec4<u32>(countOneBits(1844u), u_input.b, abs(28058u), global0.x)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(!all(vec4<bool>(false, false, false, false)), true)));
    let var_1 = var_0.b.c.x;
    let var_2 = select(select(select(vec4<bool>(all(vec3<bool>(false, false, false)), true, var_0.c.x, !var_0.c.x), vec4<bool>(global0.x >= 1u, true, any(vec3<bool>(var_0.c.x, true, true)), var_0.c.x), reverseBits(var_1) < _wgslsmith_mult_u32(var_1, u_input.b)), select(!select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(true, true, var_0.c.x, var_0.c.x), var_0.c.x), select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), select(vec4<bool>(false, true, true, var_0.c.x), vec4<bool>(var_0.c.x, var_0.c.x, false, true), false), !vec4<bool>(true, true, false, var_0.c.x)), all(var_0.c)), var_0.c.x), vec4<bool>(any(vec4<bool>(var_0.c.x, !var_0.c.x, false, global0.x == var_0.b.c.x)), !var_0.c.x, !any(vec3<bool>(var_0.c.x, var_0.c.x, false)), var_0.c.x | (true || func_2(vec3<bool>(false, false, true), vec3<i32>(-15156i, -1i, var_0.b.a.x)))), all(vec4<bool>(all(var_0.c), any(!vec4<bool>(var_0.c.x, true, var_0.c.x, true)), 5438u < _wgslsmith_mult_u32(u_input.a, var_0.b.c.x), !var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f)) * -364f)), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(~8721i, u_input.e, 14996i, ~abs(9964i))), 0i, var_0.b.c);
}

