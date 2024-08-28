struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

var<private> global2: array<bool, 16>;

var<private> global3: vec3<i32> = vec3<i32>(41800i, 1i, -50908i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = !select(select(!(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 16u)], false, global2[_wgslsmith_index_u32(u_input.d, 16u)], global2[_wgslsmith_index_u32(u_input.e, 16u)])), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global3.x == global3.x, select(false, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(10125u, 16u)])), !(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(51114u, 16u)], false))), select(vec4<bool>(global2[_wgslsmith_index_u32(~4294967295u, 16u)], any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(38556u, 16u)], false)), global2[_wgslsmith_index_u32(9273u, 16u)] && false, true), !vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(13745u | u_input.b.x, 16u)], true, false, any(vec2<bool>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)])))), !all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.e, 16u)], true, global2[_wgslsmith_index_u32(1u, 16u)])));
    let var_1 = ~u_input.b.zzz;
    var var_2 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -2459f, arg_1.c, -146f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-795f, -142f, arg_1.e, arg_1.e)))))), vec4<i32>(-(arg_1.d.x ^ arg_0), -7751i << ((_wgslsmith_sub_u32(u_input.b.x, 0u) & ~var_1.x) % 32u), 2147483647i, _wgslsmith_mod_i32(global3.x, global3.x)), _wgslsmith_f_op_f32(-601f - _wgslsmith_f_op_f32(-arg_1.e)), arg_1.b.yzy, arg_1.e);
    let var_4 = _wgslsmith_add_vec2_u32(vec2<u32>(var_1.x, 1u), vec2<u32>(~(~63351u), ~_wgslsmith_sub_u32(4294967295u, 4294967295u) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 4665u, u_input.d), vec3<u32>(u_input.e, u_input.d, 4294967295u)) ^ countOneBits(u_input.b.x)) % 32u)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_3.e + -1407f), arg_1.e))), var_3.a.x) * 409f);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(41403u));
    var var_1 = arg_1;
    let var_2 = 16833u >> (u_input.e % 32u);
    var var_3 = _wgslsmith_f_op_f32(arg_1.a.x - -137f);
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(-25018i, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-668f, arg_1.e, -771f, 1017f) - var_1.a), arg_1.a), -vec4<i32>(-1i, arg_1.d.x, -1i, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -1000f), firstLeadingBit(vec3<i32>(global3.x, -1i, -75850i)), arg_0.x)))));
    return Struct_1(arg_1.a, abs(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.d.x, arg_1.b.x, var_1.d.x, var_1.b.x), ~var_1.b), vec4<i32>(_wgslsmith_add_i32(var_1.d.x, 2147483647i), _wgslsmith_add_i32(var_1.b.x, global3.x), global3.x, u_input.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, arg_1.a.x) - 1234f)) + 836f), countOneBits(var_1.d), var_1.c);
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = false;
    global3 = ~_wgslsmith_mult_vec3_i32(arg_0.b.wyx, abs(vec3<i32>(24475i, 21141i, -2147483647i)) | _wgslsmith_sub_vec3_i32(vec3<i32>(64328i, arg_0.d.x, global3.x), arg_0.d)) >> (~abs(countOneBits(u_input.b.xxw)) % vec3<u32>(32u));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~u_input.b, ~u_input.b, reverseBits(vec4<u32>(u_input.b.x, u_input.e, u_input.b.x, 44246u))), countOneBits(vec4<u32>(4294967295u, u_input.e, 0u, 5106u)) ^ u_input.b, vec4<u32>(66089u, ~u_input.b.x, ~u_input.d, _wgslsmith_mod_u32(3420u, u_input.e))), select(vec4<u32>(u_input.e, ~(u_input.b.x ^ u_input.e), 56995u, u_input.e), u_input.b, select(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 16u)], false, global2[_wgslsmith_index_u32(1u, 16u)], true), vec4<bool>(true, false, true, false), false), !vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.e, 16u)]), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, 15318u, 1u), 16u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(92877u, 16u)], false, global2[_wgslsmith_index_u32(u_input.d, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 16u)], false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(45283u, 16u)], true, true, global2[_wgslsmith_index_u32(45078u, 16u)]), global2[_wgslsmith_index_u32(u_input.e, 16u)]), false), !select(vec4<bool>(true, true, global2[_wgslsmith_index_u32(1u, 16u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 16u)], global2[_wgslsmith_index_u32(u_input.e, 16u)], true, true), global2[_wgslsmith_index_u32(1u, 16u)]))));
    var_0 = global2[_wgslsmith_index_u32(~(~(~4294967295u)), 16u)];
    return vec2<u32>(select(var_2.x, 4423u, func_2(_wgslsmith_f_op_vec3_f32(-var_1.a.zzy), Struct_1(vec4<f32>(arg_0.e, -175f, -1588f, -599f), arg_0.b, -347f, vec3<i32>(-1i, 2147483647i, global3.x), var_1.a.x), vec2<bool>(true, global2[_wgslsmith_index_u32(var_2.x, 16u)])).d.x < global3.x), 4294967295u);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = ~(func_4(func_2(vec3<f32>(792f, -565f, 292f), Struct_1(vec4<f32>(-1441f, -1450f, 1727f, 129f), vec4<i32>(-2147483647i, global3.x, -2147483647i, arg_1.x), 710f, vec3<i32>(u_input.a, 0i, -2147483647i), 779f), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec2<bool>(global2[_wgslsmith_index_u32(arg_2.x, 16u)], global2[_wgslsmith_index_u32(arg_2.x, 16u)]), true))) << (~(~vec2<u32>(4294967295u, arg_2.x) | firstLeadingBit(vec2<u32>(1u, arg_0))) % vec2<u32>(32u)));
    let var_1 = max(-_wgslsmith_mult_vec3_i32((vec3<i32>(arg_1.x, arg_1.x, u_input.a) << (u_input.b.yzx % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(80268u, 4294967295u, arg_2.x), vec3<u32>(var_0.x, u_input.d, var_0.x), arg_2.yyy) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(global3.x, arg_1.x, arg_1.x), vec3<i32>(global3.x, -1i, -2147483647i)) & vec3<i32>(0i, arg_1.x, global3.x)), vec3<i32>(countOneBits(1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1.x, -2147483647i, -20341i), vec3<i32>(arg_1.x, arg_1.x, -20338i) | vec3<i32>(global3.x, -11025i, global3.x)) | -(u_input.c.x >> (arg_2.x % 32u)), arg_1.x));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-745f + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(floor(-281f)), select(false, global2[_wgslsmith_index_u32(var_0.x, 16u)], true))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1919f) + _wgslsmith_f_op_f32(-522f * -652f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-227f * -1040f)), 307f)));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(select(759f, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(f32(-1f) * -994f)), all(vec2<bool>(true, arg_0)) || (global2[_wgslsmith_index_u32(8036u, 16u)] && false))), _wgslsmith_f_op_f32(-754f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), 2096f)), -375f), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1785f, arg_1.x, -419f, 1210f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-798f, arg_1.x, -584f, arg_1.x) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, 906f, arg_1.x, arg_1.x), vec4<f32>(arg_1.x, arg_1.x, 1510f, arg_1.x)))), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(global3.x), select(1i, 0i, true), _wgslsmith_clamp_i32(-2147483647i, global3.x, 2147483647i), -1i), ~(~vec4<i32>(u_input.c.x, global3.x, global3.x, global3.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f * -1000f)), _wgslsmith_f_op_f32(round(arg_1.x)), global2[_wgslsmith_index_u32(~0u, 16u)])), vec3<i32>(-14272i, 73960i, func_2(_wgslsmith_f_op_vec3_f32(-arg_1), func_2(arg_1, Struct_1(vec4<f32>(arg_1.x, -426f, 391f, arg_1.x), vec4<i32>(-941i, -20970i, u_input.c.x, 0i), -2137f, vec3<i32>(-21589i, global3.x, u_input.c.x), arg_1.x), vec2<bool>(true, false)), vec2<bool>(true, true)).d.x), 1975f), vec2<bool>(false, false));
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1940f, -1516f, var_0.c) * vec4<f32>(-853f, var_0.e, -664f, var_0.e))), vec4<f32>(_wgslsmith_f_op_f32(-340f - var_0.a.x), _wgslsmith_f_op_f32(arg_1.x + 1365f), var_0.c, 100f))), var_0.a), var_0.b, _wgslsmith_f_op_vec3_f32(func_1(~47777u, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -var_0.b.zz, global3.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(43218i, global3.x), global3.xx)), ~u_input.b)).x, vec3<i32>(_wgslsmith_mod_i32(-var_0.d.x, -global3.x ^ _wgslsmith_clamp_i32(25673i, global3.x, 22853i)), ~_wgslsmith_sub_i32(2147483647i, countOneBits(2147483647i)), u_input.c.x), _wgslsmith_f_op_f32(-var_0.e));
    var var_2 = _wgslsmith_mult_u32(~u_input.b.x, ~u_input.b.x);
    let var_3 = vec2<f32>(_wgslsmith_f_op_vec3_f32(func_1(firstLeadingBit(u_input.e), _wgslsmith_div_vec2_i32(u_input.c, min(vec2<i32>(20768i, 2147483647i), global3.yz)) | select(~vec2<i32>(global3.x, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b.x, var_0.d.x), u_input.c), true), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.d, u_input.b.x, u_input.d, 1u), u_input.b, vec4<bool>(arg_0, global2[_wgslsmith_index_u32(83659u, 16u)], arg_0, true)) & min(vec4<u32>(4294967295u, 20245u, 4294967295u, 16734u), vec4<u32>(u_input.b.x, u_input.d, 67622u, u_input.e)), firstTrailingBit(select(u_input.b, vec4<u32>(1u, u_input.d, 1u, 40197u), arg_0)), min(u_input.b, ~u_input.b)))).x, var_1.a.x);
    var_2 = ~_wgslsmith_dot_vec4_u32(~(u_input.b ^ u_input.b), min(~vec4<u32>(4294967295u, u_input.d, u_input.b.x, 40660u), ~vec4<u32>(u_input.e, u_input.e, 80766u, u_input.b.x)));
    return Struct_1(var_1.a, reverseBits(vec4<i32>(_wgslsmith_mult_i32(global3.x, var_0.d.x), ~2147483647i, global3.x, i32(-1i) * -40716i)) ^ -select(var_0.b, vec4<i32>(global3.x, u_input.c.x, 0i, -2147483647i), false | arg_0), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-828f, _wgslsmith_f_op_f32(round(var_0.e))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), ~var_1.b.zzx, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2952f), arg_1.x, true)));
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = func_5(any(select(!(!vec3<bool>(arg_1, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], false)), select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 16u)], false, false), vec3<bool>(true, arg_1, arg_1), arg_1), vec3<bool>(false, arg_1, true), false), !select(vec3<bool>(true, false, arg_1), vec3<bool>(false, true, true), vec3<bool>(global2[_wgslsmith_index_u32(9059u, 16u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 16u)])))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) * 441f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), _wgslsmith_f_op_f32(select(-1463f, arg_0.c, global2[_wgslsmith_index_u32(~u_input.e, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e, -1000f))));
    global1 = !(_wgslsmith_f_op_f32(sign(-396f)) >= _wgslsmith_f_op_f32(ceil(arg_0.c)));
    global2 = array<bool, 16>();
    global0 = _wgslsmith_dot_vec2_u32(select(~(~select(u_input.b.zw, vec2<u32>(u_input.e, u_input.d), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 16u)], global2[_wgslsmith_index_u32(u_input.e, 16u)]))), u_input.b.yw, 32751u >= ~(u_input.e << (17209u % 32u))), u_input.b.yz);
    let var_1 = arg_3;
    return !(!vec4<bool>(false, arg_3.c <= -106f, _wgslsmith_add_i32(u_input.c.x, arg_0.b.x) <= abs(8268i), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~reverseBits(~_wgslsmith_sub_vec4_u32(u_input.b, abs(vec4<u32>(0u, 7537u, u_input.e, u_input.b.x))));
    var var_1 = ~firstTrailingBit(~(min(var_0.xwy, vec3<u32>(0u, 126242u, u_input.d)) | _wgslsmith_clamp_vec3_u32(u_input.b.ywy, u_input.b.www, vec3<u32>(0u, var_0.x, u_input.b.x))));
    let var_2 = func_6(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(2513f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1172f, -990f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1153f - -110f))), select(~vec4<i32>(35309i, global3.x, 12420i, -2147483647i), vec4<i32>(firstTrailingBit(32488i), u_input.c.x, reverseBits(30573i), 2147483647i), !any(vec3<bool>(global2[_wgslsmith_index_u32(75131u, 16u)], global2[_wgslsmith_index_u32(1388u, 16u)], global2[_wgslsmith_index_u32(var_1.x, 16u)]))), 1f, vec3<i32>(-1i) * -(vec3<i32>(-2147483647i, global3.x, 2147483647i) & vec3<i32>(1i, u_input.a, -1i)), _wgslsmith_f_op_f32(floor(-273f))), !global2[_wgslsmith_index_u32(var_1.x << (~44955u % 32u), 16u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-671f, -546f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-762f - 1028f), _wgslsmith_f_op_f32(max(-1902f, 539f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))))), func_5(all(select(!vec4<bool>(global2[_wgslsmith_index_u32(var_1.x, 16u)], false, true, global2[_wgslsmith_index_u32(var_1.x, 16u)]), !vec4<bool>(false, global2[_wgslsmith_index_u32(26319u, 16u)], true, global2[_wgslsmith_index_u32(var_0.x, 16u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 16u)], global2[_wgslsmith_index_u32(1571u, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)], global2[_wgslsmith_index_u32(1306u, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)], false), false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(var_0.x, u_input.c, u_input.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1654f, 298f, 1000f))) + vec3<f32>(_wgslsmith_f_op_f32(1647f + 754f), _wgslsmith_f_op_f32(-280f * -548f), _wgslsmith_f_op_f32(min(-155f, -688f))))));
    let var_3 = ~vec4<i32>(1i, _wgslsmith_add_i32(global3.x, func_5(false, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(710f, 1473f, -1025f)))).d.x), -2147483647i, i32(-1i) * -2147483647i);
    global2 = array<bool, 16>();
    var var_4 = _wgslsmith_sub_vec3_i32(var_3.xzy, _wgslsmith_mult_vec3_i32(max(vec3<i32>(2149i, -31708i, -2147483647i), vec3<i32>(12386i, 27538i, global3.x)), min(-var_3.zxy, vec3<i32>(-2147483647i, global3.x, -1i))) << (reverseBits(select(~vec3<u32>(25857u, var_1.x, 4087u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), var_0.xxy), global2[_wgslsmith_index_u32(var_0.x, 16u)])) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(vec3<u32>(~var_0.x, _wgslsmith_add_u32(u_input.e, u_input.b.x) ^ u_input.b.x, 0u), u_input.b.ywx, ~vec3<u32>(u_input.d, _wgslsmith_div_u32(var_1.x, var_0.x), u_input.b.x)), vec4<f32>(1f, 1f, 1f, 1f));
}

