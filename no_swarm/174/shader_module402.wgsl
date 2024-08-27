struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    global0 = 28657i & _wgslsmith_add_i32(firstLeadingBit(u_input.a.x), -countOneBits(-61104i));
    let var_0 = all(vec4<bool>(true, true, true, true));
    global0 = u_input.a.x;
    global0 = _wgslsmith_div_i32(0i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-10410i, _wgslsmith_add_i32(arg_0, arg_1.x), -2147483647i, 1i), ~u_input.a));
    let var_1 = abs(arg_0 << (_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(37856u, 0u, 0u, 65621u), vec4<u32>(1u, 1u, 35903u, 27140u)), max(4294967295u, 24879u)), select(vec2<u32>(1u, 0u), ~vec2<u32>(70622u, 35650u), var_0)) % 32u));
    return ~_wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(34885u, ~(~1u), 62094u));
}

fn func_2() -> f32 {
    var var_0 = ~_wgslsmith_mult_u32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 5540i, -2147483647i), u_input.a), ~abs(u_input.a.wzx)), max(_wgslsmith_clamp_u32(~1u, reverseBits(64369u), abs(13847u)), select(14946u, _wgslsmith_clamp_u32(114253u, 1u, 4294967295u), any(vec2<bool>(true, true)))));
    global0 = ~u_input.b.x;
    var_0 = 4294967295u;
    var_0 = 13560u;
    let var_1 = Struct_1(vec4<bool>(true, !(select(u_input.a.x, -56385i, true) == u_input.a.x), !(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-23959i, u_input.a.x, u_input.a.x, -2147483647i)) > _wgslsmith_mod_i32(u_input.a.x, u_input.b.x)), false), -1512f, -9898i, -1i, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a ^ u_input.a, vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.a.x) & vec4<i32>(6000i, u_input.a.x, u_input.b.x, 37884i)), vec4<i32>(~9568i, _wgslsmith_mult_i32(u_input.a.x, -7666i), -u_input.b.x, ~u_input.a.x)) ^ vec4<i32>(min(44063i, min(u_input.b.x, 24846i)), _wgslsmith_add_i32(u_input.b.x, -1i) >> (~4294967295u % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.yyw, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), u_input.a.wyz), ~u_input.b.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))))));
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    global0 = -1i;
    global0 = u_input.b.x;
    global0 = -18368i << (~_wgslsmith_sub_u32(~firstTrailingBit(4868u), 31758u) % 32u);
    global0 = abs(_wgslsmith_dot_vec2_i32(u_input.a.zw, -max(vec2<i32>(-1i, 63i), _wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(u_input.b.x, -2147483647i)))));
    var var_0 = u_input.b.x;
    return _wgslsmith_f_op_f32(func_2());
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.x;
    global0 = u_input.b.x;
    var var_0 = false;
    var_0 = false;
    var_0 = !(true || (u_input.a.x > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), reverseBits(vec2<i32>(u_input.b.x, 2147483647i)))));
    var var_1 = _wgslsmith_dot_vec3_u32(~select(vec3<u32>(1u, 9549u, ~0u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(69789u, 1u, 33492u), vec3<u32>(4294967295u, 18946u, 1u), vec3<u32>(45536u, 38667u, 0u)), (u_input.b.x > -70145i) | (u_input.b.x <= u_input.b.x)), reverseBits(vec3<u32>(_wgslsmith_div_u32(max(0u, 4294967295u), ~41737u), _wgslsmith_mod_u32(1u, reverseBits(31406u)), 0u)));
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1645f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(func_1(~u_input.a.x, true)), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1012f - -686f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-295f))))))));
    var_0 = all(!vec3<bool>(!any(vec2<bool>(true, true)), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(67579u, -38955i, abs(-2147483647i), ~(~(~_wgslsmith_div_u32(0u, 14638u))));
}

