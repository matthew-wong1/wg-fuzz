struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 4>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -686f))))), ~vec4<u32>(1u, ~(4294967295u >> (u_input.a.x % 32u)), u_input.a.x, u_input.a.x & global0.x), false, ~vec3<i32>(2147483647i, u_input.b.x >> (~0u % 32u), -42214i ^ u_input.b.x), reverseBits(abs(abs(firstLeadingBit(vec4<u32>(global0.x, 40845u, 100530u, 54270u))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) * _wgslsmith_f_op_f32(min(1158f, -691f)));
}

fn func_2() -> f32 {
    let var_0 = true;
    let var_1 = true;
    let var_2 = !vec2<bool>(!all(select(vec4<bool>(var_1, var_1, var_0, var_0), vec4<bool>(var_0, false, var_0, true), var_0)), false);
    var var_3 = !(!any(select(vec2<bool>(var_1, false), vec2<bool>(var_0, var_0), !var_2)));
    var_3 = false;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(519f, -332f))))) * -1000f));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(901f * 880f) * _wgslsmith_f_op_f32(sign(797f))))), _wgslsmith_f_op_f32(f32(-1f) * -542f));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -405f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1109f)), _wgslsmith_div_f32(-1155f, _wgslsmith_f_op_f32(func_3())))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1039f);
    global1 = array<Struct_1, 4>();
    var_0 = -258f;
    return _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(9005i, u_input.b.x, u_input.c.x, u_input.c.x)) >> (countOneBits(abs(vec4<u32>(75853u, 4273u, 29511u, 4294967295u) << (u_input.a % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(-(~_wgslsmith_mod_vec4_i32(u_input.b, u_input.b)), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 58517i, u_input.b.x, u_input.c.x), u_input.c) >> (vec4<u32>(1u, 12454u, 1u, 2771u) % vec4<u32>(32u)), vec4<i32>(u_input.c.x, u_input.b.x << (9153u % 32u), u_input.b.x, ~u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x)), global0.x, 0u), u_input.a.zwy | ~min(u_input.a.yzx, _wgslsmith_mod_vec3_u32(u_input.a.wzy, u_input.a.xxy)));
    global0 = u_input.a.zyw;
    var var_0 = vec4<i32>(0i, -reverseBits(u_input.b.x), _wgslsmith_add_i32(~func_1(), u_input.b.x) | ~_wgslsmith_dot_vec3_i32(u_input.b.wyz ^ vec3<i32>(1i, u_input.c.x, u_input.b.x), u_input.b.zyy), _wgslsmith_sub_i32((u_input.b.x | 2147483647i) << (global0.x % 32u), -1i));
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(), ~((var_1.d.x << (1u % 32u)) << (~var_1.e.x % 32u)), -39090i), vec3<u32>(var_1.b.x >> (~global0.x % 32u), 0u, 76178u), _wgslsmith_dot_vec2_u32(var_1.b.zx ^ vec2<u32>(var_1.e.x ^ u_input.a.x, _wgslsmith_clamp_u32(63932u, 15971u, 0u)), vec2<u32>(countOneBits(1u), u_input.a.x) >> (u_input.a.yz % vec2<u32>(32u))), _wgslsmith_mult_i32(abs(1i), _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(u_input.c, vec4<i32>(u_input.b.x, 1i, var_1.d.x, 2147483647i), vec4<i32>(1i, -1011i, -1i, u_input.b.x))), vec4<i32>(21118i, -var_1.d.x, -var_1.d.x, _wgslsmith_sub_i32(-23908i, -47945i)))), vec3<i32>(-1i, _wgslsmith_mult_i32(~min(u_input.c.x, 1i), ~_wgslsmith_sub_i32(8229i, u_input.c.x)), u_input.b.x));
}

