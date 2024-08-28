struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -268f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global0 = -197f;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1580f * 117f), 329f)))), 677f);
    global0 = 194f;
    global0 = _wgslsmith_f_op_f32(step(1130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1018f, -714f))) + 726f))));
    var var_0 = false;
    return vec3<bool>(all(vec2<bool>(true, true)), !(~4294967295u > _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_0.d.yx, vec2<u32>(arg_0.a.x, 1u)), 1u, ~arg_0.d.x)), any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)));
}

fn func_2(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(reverseBits(~vec2<u32>(~arg_0.b.x, arg_0.b.x)), 7629u | _wgslsmith_mult_u32(firstTrailingBit(1u), _wgslsmith_mult_u32(~arg_0.b.x, arg_0.b.x << (4294967295u % 32u))), ~(~(~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, arg_0.b.x, 20235u), vec3<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x)))), (select(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.b.x, 9947u, arg_0.b.x), vec3<u32>(arg_0.b.x, 24405u, arg_0.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x, 0u, 35616u), vec3<u32>(33487u, 4294967295u, arg_0.b.x)), func_3(Struct_1(vec2<u32>(arg_0.b.x, arg_0.b.x), arg_0.b.x, vec3<u32>(arg_0.b.x, 4294967295u, arg_0.b.x), vec3<u32>(0u, arg_0.b.x, arg_0.b.x)))) ^ vec3<u32>(4294967295u, arg_0.b.x, 0u)) | vec3<u32>(1u, (7166u ^ arg_0.b.x) | 93026u, _wgslsmith_div_u32(~arg_0.b.x, arg_0.b.x & 1u)));
    var var_1 = Struct_4(abs(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.b.x, arg_0.c.x, arg_0.c.x), max(_wgslsmith_mod_i32(arg_0.c.x, arg_0.c.x), u_input.b.x | 3301i))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.a, arg_0.a)))))), vec2<u32>(arg_0.b.x, var_0.c.x), -(~firstLeadingBit(vec4<i32>(arg_0.c.x, u_input.a.x, -41528i, arg_0.c.x)))), ~u_input.a.x);
    var_1 = Struct_4(_wgslsmith_dot_vec2_i32(-arg_0.c.yz, ~vec2<i32>(1i, ~u_input.b.x)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 37561u), ~(vec2<u32>(4294967295u, arg_0.b.x) >> (vec2<u32>(12734u, 1u) % vec2<u32>(32u)))), reverseBits(select(~vec4<i32>(u_input.a.x, arg_0.c.x, -18211i, 0i), _wgslsmith_sub_vec4_i32(u_input.a, arg_0.c), true))), -51087i);
    var var_2 = Struct_4(-16664i, Struct_2(671f, abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.a.x, arg_0.b.x), vec2<u32>(arg_0.b.x, 63972u))), vec4<i32>(u_input.a.x, arg_0.c.x, _wgslsmith_dot_vec2_i32(countOneBits(u_input.b), vec2<i32>(1i, var_1.a)), var_1.c)), -(-_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(arg_0.c.x, u_input.a.x)) >> (reverseBits(_wgslsmith_add_u32(2325u, var_0.c.x)) % 32u)));
    var_1 = Struct_4(_wgslsmith_dot_vec2_i32(var_1.b.c.yw, ~(-arg_0.c.yz) & vec2<i32>(-u_input.a.x, 1i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1605f * _wgslsmith_f_op_f32(-var_1.b.a))), var_2.b.b ^ ~max(var_2.b.b, vec2<u32>(arg_0.b.x, arg_0.b.x)), max(arg_0.c, -max(var_1.b.c, arg_0.c))), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(~var_2.c, _wgslsmith_dot_vec4_i32(var_2.b.c, vec4<i32>(46397i, u_input.b.x, var_2.b.c.x, u_input.b.x))), -17706i));
    return select(reverseBits(_wgslsmith_clamp_vec2_i32(~abs(arg_0.c.wy), reverseBits(-vec2<i32>(u_input.b.x, arg_0.c.x)), -var_2.b.c.zy)), vec2<i32>(~arg_0.c.x, var_1.b.c.x), vec2<bool>(true, true));
}

fn func_1() -> f32 {
    let var_0 = func_2(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2985f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-363f)) - _wgslsmith_f_op_f32(-474f * -784f))), select(~(~vec2<u32>(0u, 1u)), ~vec2<u32>(0u, 1u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, true))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, max(u_input.a, u_input.a)), vec4<i32>(u_input.b.x | 2147483647i, ~47146i, ~2147483647i, ~u_input.a.x))));
    var var_1 = !func_3(Struct_1(vec2<u32>(~116959u, 1u), 1u, min(vec3<u32>(24785u, 31307u, 114686u), vec3<u32>(0u, 4294967295u, 0u)) << (vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8808u, 0u, 4294967295u), vec3<u32>(24291u, 4294967295u, 0u)), ~0u, min(138897u, 17548u)))).xx;
    global0 = 1196f;
    let var_2 = u_input.b;
    var var_3 = ~3840u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_div_f32(-1122f, -699f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * -1740f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1081f)))));
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(~1u, 1u), _wgslsmith_mod_u32(1u, 25877u)), 0u), 1u, vec3<u32>(~(~(~55398u)), firstTrailingBit(~32335u) ^ 1u, ~firstTrailingBit(~1u)), vec3<u32>(min(49077u, reverseBits(~0u)), 1u, 4294967295u));
    let var_1 = u_input.a.wyw;
    var var_2 = 171f;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_1()), 742f);
    let var_4 = Struct_3(any(vec2<bool>(true, true)) | !any(vec4<bool>(true, true, true, true)), true, ~(var_0.d.x | 1u), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x * var_3.x) + _wgslsmith_f_op_f32(-var_3.x))))));
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer((~(~vec4<u32>(var_5.c, 4294967295u, var_5.c, var_5.c)) << (vec4<u32>(25626u, ~var_4.c, _wgslsmith_mult_u32(0u, 126767u), ~1u) % vec4<u32>(32u))) << (~(~reverseBits(vec4<u32>(var_4.c, 11191u, 28573u, 27015u))) % vec4<u32>(32u)), 4294967295u, var_5.d);
}

