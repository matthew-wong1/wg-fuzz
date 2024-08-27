struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-48699i, -45713i, -13303i, 47320i, 0i, 3971i, -1i, -33813i, -1i, 14898i, 2147483647i, 0i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec3<u32>) -> vec3<bool> {
    global0 = array<i32, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(678f, -147f, 300f, -2538f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(557f, 687f, 719f, -1521f))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1069f, -1000f, 138f, 117f) + vec4<f32>(-233f, 1680f, 999f, 742f)))) - vec4<f32>(_wgslsmith_f_op_f32(sign(-797f)), _wgslsmith_f_op_f32(812f * -1360f), _wgslsmith_div_f32(351f, -458f), _wgslsmith_f_op_f32(floor(-284f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-935f, 200f, 225f, -1355f), vec4<f32>(-594f, -472f, -216f, -638f), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(405f, -130f, 2550f, 2515f))), !(~global0[_wgslsmith_index_u32(3669u, 12u)] > arg_1.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.x)), var_0.x, _wgslsmith_f_op_f32(-126f + _wgslsmith_f_op_f32(var_0.x * var_0.x)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(-var_0)), _wgslsmith_f_op_vec4_f32(round(var_0)), vec4<bool>(true, true, true, true))))));
    let var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(248f, var_1.x, -2293f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(390f)), _wgslsmith_f_op_f32(var_0.x - 1059f), _wgslsmith_f_op_f32(f32(-1f) * -205f))) * var_1.wxy)));
    return vec3<bool>(!(var_1.x < 748f), true, 47983u >= abs(~_wgslsmith_clamp_u32(0u, 4294967295u, 53396u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_1 {
    global0 = array<i32, 12>();
    var var_0 = min(~vec3<i32>(0i, -1i, u_input.a), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, global0[_wgslsmith_index_u32(arg_0.x, 12u)], global0[_wgslsmith_index_u32(31618u, 12u)]), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], -18740i, 2147483647i), vec3<i32>(-23588i, global0[_wgslsmith_index_u32(56781u, 12u)], -2147483647i)), abs(vec3<i32>(u_input.a, 44711i, u_input.a)), func_3(arg_0.zy, vec4<i32>(-1i, global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.a, u_input.a), arg_0.zwx))), max(abs(u_input.a), 1i), (~u_input.a & global0[_wgslsmith_index_u32(~arg_0.x, 12u)]) & _wgslsmith_clamp_i32(u_input.a, global0[_wgslsmith_index_u32(22700u, 12u)], -1i)));
    global0 = array<i32, 12>();
    var_0 = select(max(select(vec3<i32>(0i, global0[_wgslsmith_index_u32(arg_0.x, 12u)], u_input.a) >> (vec3<u32>(4294967295u, arg_0.x, 47974u) % vec3<u32>(32u)), abs(vec3<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(arg_0.x, 12u)])), true) ^ vec3<i32>(_wgslsmith_clamp_i32(u_input.a, 20703i, 3340i), var_0.x, var_0.x << (arg_0.x % 32u)), -(_wgslsmith_clamp_vec3_i32(vec3<i32>(21409i, 46330i, 0i), vec3<i32>(20691i, global0[_wgslsmith_index_u32(arg_0.x, 12u)], -81055i), vec3<i32>(var_0.x, -53364i, var_0.x)) | vec3<i32>(0i, var_0.x, u_input.a))), firstLeadingBit(-vec3<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_0.x, 12u)], -1359i), _wgslsmith_dot_vec3_i32(vec3<i32>(-77249i, 59863i, -1i), vec3<i32>(1i, global0[_wgslsmith_index_u32(arg_0.x, 12u)], var_0.x)), 1i)), func_3(~abs(reverseBits(arg_0.wy)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(abs(vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(0u, 12u)], 1i, u_input.a))), vec4<i32>(6741i, global0[_wgslsmith_index_u32(arg_0.x, 12u)] & global0[_wgslsmith_index_u32(0u, 12u)], -12643i, -2147483647i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(23977i, global0[_wgslsmith_index_u32(arg_0.x, 12u)], 39684i), vec3<i32>(var_0.x, u_input.a, global0[_wgslsmith_index_u32(0u, 12u)])), -1i, 38756i, global0[_wgslsmith_index_u32(arg_0.x | arg_0.x, 12u)])), arg_0.wzx));
    var var_1 = Struct_2(Struct_1(false, 2147483647i, firstTrailingBit(countOneBits(~vec3<i32>(global0[_wgslsmith_index_u32(20870u, 12u)], u_input.a, global0[_wgslsmith_index_u32(4294967295u, 12u)]))), select(vec3<i32>(~(-8988i), ~1i, ~(-21434i)), abs(vec3<i32>(var_0.x, u_input.a, 1i)), true)));
    return var_1.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_4 {
    let var_0 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1320f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-634f)))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1112f, 470f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f - -158f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(919f, -509f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) * _wgslsmith_f_op_f32(894f + -523f)))), true && ((8095u ^ ~var_0.x) > var_0.x)));
    global0 = array<i32, 12>();
    let var_2 = 3117i;
    return Struct_4(min(~(var_0.yzz >> (var_0.zzx % vec3<u32>(32u))), ~var_0.xyx >> (var_0.wxz % vec3<u32>(32u))), Struct_2(Struct_1(func_3(var_0.wx, vec4<i32>(var_2, global0[_wgslsmith_index_u32(1u, 12u)], var_2, 5446i), ~vec3<u32>(var_0.x, var_0.x, 20421u)).x, u_input.a, max(-arg_2.d, _wgslsmith_add_vec3_i32(arg_1.d, arg_1.c)), _wgslsmith_sub_vec3_i32(~vec3<i32>(9051i, arg_2.b, 48060i), vec3<i32>(arg_2.b, 5283i, 5224i)))), Struct_1(!arg_1.a, _wgslsmith_mod_i32(-arg_2.c.x, _wgslsmith_div_i32(-22892i, 1i)) >> (_wgslsmith_add_u32(var_0.x >> (91980u % 32u), ~51884u) % 32u), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.c & vec3<i32>(var_2, -29563i, -2147483647i), arg_1.c), _wgslsmith_mult_i32(-51372i, 0i), 50573i), arg_1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-731f))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    var var_0 = func_4(!select(vec3<bool>(true, !arg_0.x, select(arg_0.x, arg_0.x, arg_0.x)), !vec3<bool>(false, arg_0.x, true), vec3<bool>(false != arg_0.x, true, true)), func_2(~vec4<u32>(_wgslsmith_div_u32(4294967295u, 1u), 19778u, 1u, 60820u), 404f), func_2(vec4<u32>(select(0u << (0u % 32u), 1u, !arg_0.x), 1u, abs(~11257u), _wgslsmith_sub_u32(1u, firstTrailingBit(38003u))), -562f));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) - -1727f);
    var var_2 = Struct_1(true, _wgslsmith_add_i32(2147483647i, var_0.c.d.x), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.c.b, 3148i) << (_wgslsmith_sub_u32(var_0.a.x, var_0.a.x) % 32u), (var_0.c.b ^ global0[_wgslsmith_index_u32(var_0.a.x, 12u)]) << (0u % 32u), abs(u_input.a)), 0i, ~7180i), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.b.a.c.x, var_0.c.c.x, -2103i), _wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(0u, 12u)], -2147483647i, global0[_wgslsmith_index_u32(var_0.a.x, 12u)]), vec3<i32>(-33614i, global0[_wgslsmith_index_u32(1u, 12u)], -54869i))), ~vec3<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(11183u, 12u)], 26404i) << (_wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(23293u, 0u, 30305u)) % vec3<u32>(32u))), _wgslsmith_dot_vec2_i32(~vec2<i32>(60118i, var_0.c.c.x), vec2<i32>(6039i, 19007i)) ^ u_input.a, 2147483647i));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - var_0.d))), true, !(~(77434u << (0u % 32u)) < _wgslsmith_clamp_u32(42659u ^ var_0.a.x, _wgslsmith_sub_u32(var_0.a.x, var_0.a.x), ~25259u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1078f)), _wgslsmith_f_op_f32(-421f + var_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.d, -1057f))) * var_0.d)), var_0.b);
    let var_4 = vec3<f32>(var_0.d, 499f, 1322f);
    return func_4(vec3<bool>(true, all(!(!vec3<bool>(arg_0.x, var_3.b, false))), any(vec4<bool>(arg_0.x & arg_0.x, var_0.c.a, func_4(vec3<bool>(false, var_2.a, var_2.a), Struct_1(var_2.a, var_0.b.a.c.x, var_3.e.a.d, var_2.c), var_3.e.a).b.a.a, var_2.a))), var_3.e.a, func_2((min(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, var_0.a.x, 34142u, 27987u)) << (vec4<u32>(var_0.a.x, 1u, var_0.a.x, var_0.a.x) % vec4<u32>(32u))) & reverseBits(~vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), -201f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!vec2<bool>(!(u_input.a != u_input.a), true));
    let var_1 = var_0.a.x << (((var_0.a.x ^ 22301u) >> (~(var_0.a.x & 1u) % 32u)) % 32u);
    global0 = array<i32, 12>();
    let var_2 = _wgslsmith_f_op_f32(step(-547f, _wgslsmith_f_op_f32(var_0.d * -548f)));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var var_3 = 410f;
    let var_4 = ~var_0.a.x;
    let var_5 = ~_wgslsmith_div_vec2_i32(max(~vec2<i32>(u_input.a, var_0.b.a.b) << (~vec2<u32>(34012u, var_4) % vec2<u32>(32u)), func_4(vec3<bool>(var_0.b.a.a, false, var_0.c.a), Struct_1(var_0.c.a, u_input.a, vec3<i32>(5399i, global0[_wgslsmith_index_u32(89633u, 12u)], -1i), vec3<i32>(2147483647i, var_0.c.d.x, -2147483647i)), var_0.b.a).c.c.zx), select(vec2<i32>(0i, global0[_wgslsmith_index_u32(var_1, 12u)]), _wgslsmith_div_vec2_i32(var_0.b.a.c.yx, var_0.b.a.c.zz), select(vec2<bool>(var_0.b.a.a, var_0.b.a.a), vec2<bool>(false, true), var_0.b.a.a)) >> (~(~var_0.a.yx) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(1000f * var_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.d, -1000f))), _wgslsmith_f_op_f32(select(var_2, -605f, global0[_wgslsmith_index_u32(var_1, 12u)] != 28544i)))));
}

