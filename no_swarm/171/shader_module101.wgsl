struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<u32, 17>;

var<private> global2: vec2<bool>;

var<private> global3: i32 = 1i;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> bool {
    return !(_wgslsmith_add_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], firstLeadingBit(arg_0.x)), firstLeadingBit(select(1u, 63884u, true))) == 8524u);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = !(!global2.x);
    global2 = arg_3.a.zx;
    let var_1 = Struct_2(Struct_1(!vec3<bool>(false, func_3(vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 17u)], 1u, 1u), Struct_2(arg_3, -2147483647i, Struct_1(arg_3.a, vec4<f32>(-1883f, -1025f, arg_3.b.x, -669f)), arg_3, arg_3)), false), arg_3.b), u_input.b, Struct_1(select(vec3<bool>(!arg_3.a.x, arg_3.a.x | true, arg_3.a.x), vec3<bool>(arg_3.a.x, !global2.x, false), any(!arg_3.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(arg_3.b))))), arg_3, arg_3);
    let var_2 = _wgslsmith_sub_vec3_i32(~_wgslsmith_clamp_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(var_1.b, -942i, var_1.b), vec3<i32>(var_1.b, 41817i, u_input.b)), -abs(vec3<i32>(var_1.b, -16871i, -14662i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -30168i, 0i), vec3<i32>(u_input.b, 1i, u_input.b)), ~vec3<i32>(u_input.a.x, var_1.b, -1i))), vec3<i32>(-17023i | u_input.a.x, u_input.b, -_wgslsmith_div_i32(var_1.b, 0i) >> (arg_2.x % 32u)));
    var var_3 = _wgslsmith_mod_vec3_i32(select(vec3<i32>(-11762i, -u_input.b, var_2.x) & _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.b, -2147483647i, u_input.a.x), ~var_2, var_2 >> (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(58911u, 17u)], 20131u) % vec3<u32>(32u))), -(~var_2 | var_2), !(global2.x & true)), var_2);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 1465f)), arg_0)) + 1150f), arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(step(803f, arg_0))) - var_1.a.b.x)), var_1.d.b.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> vec3<bool> {
    var var_0 = reverseBits(-abs(vec4<i32>(-40505i, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.b), vec3<i32>(u_input.a.x, u_input.a.x, 33003i)), u_input.a.x)));
    global3 = 2500i;
    let var_1 = Struct_1(vec3<bool>(!(!all(arg_1.a)), false, true), vec4<f32>(arg_1.b.x, arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(339f, arg_2))) - -373f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-223f, -366f)))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1080f))), var_1.b.x))));
    return vec3<bool>(var_1.a.x, any(var_1.a.yx), global2.x);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: f32) -> Struct_2 {
    var var_0 = u_input.a;
    var var_1 = ~countOneBits(_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(arg_0, 56628u, 1u)) << ((vec3<u32>(global1[_wgslsmith_index_u32(41430u, 17u)], arg_0, 4294967295u) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(~7665u, 4294967295u, 1u)));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -691f, arg_2, arg_1)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_2, arg_1, -939f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(270f)), -437f, -966f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1386f, arg_2, arg_1, arg_2) - vec4<f32>(arg_2, arg_2, arg_1, arg_2))))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_2 - arg_1), _wgslsmith_f_op_f32(-arg_1), -1000f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, 288f, arg_2, arg_1))))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) * _wgslsmith_f_op_f32(-arg_2)) + _wgslsmith_f_op_f32(f32(-1f) * -717f)) * arg_1) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
    let var_4 = Struct_1(func_4(select(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.zx, vec2<u32>(13869u, var_1.x), var_1.xy), reverseBits(vec2<u32>(4294967295u, 1u))), var_1.xz, true), Struct_1(!(!vec3<bool>(global2.x, false, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(var_3, vec2<bool>(true, global2.x), var_1.xy, Struct_1(vec3<bool>(true, global2.x, true), vec4<f32>(arg_2, arg_2, 1000f, 182f))))))), var_3, reverseBits(20930u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -166f, arg_1, 623f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-158f, -1609f, var_2.x, -798f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -399f, -1659f, 453f)))))));
    return Struct_2(Struct_1(select(vec3<bool>(var_4.a.x, true, var_4.a.x), select(select(var_4.a, vec3<bool>(true, global2.x, var_4.a.x), var_4.a.x), func_4(vec2<u32>(21731u, 62654u), Struct_1(vec3<bool>(false, var_4.a.x, var_4.a.x), vec4<f32>(-191f, 2380f, var_3, -690f)), 2171f, global1[_wgslsmith_index_u32(18412u, 17u)]), true), vec3<bool>(func_3(vec4<u32>(4294967295u, 4294967295u, 14227u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)]), Struct_2(Struct_1(vec3<bool>(var_4.a.x, var_4.a.x, global2.x), vec4<f32>(1544f, -503f, var_4.b.x, 1000f)), 950i, var_4, Struct_1(vec3<bool>(global2.x, var_4.a.x, var_4.a.x), var_4.b), Struct_1(var_4.a, vec4<f32>(571f, 1210f, 1469f, var_2.x)))), all(var_4.a), !global2.x)), var_4.b), ~min(var_0.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(var_0.x, 2147483647i, var_0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, var_0.x, var_0.x), vec3<i32>(-32505i, var_0.x, u_input.a.x)))), Struct_1(select(func_4(~var_1.zx, Struct_1(var_4.a, vec4<f32>(arg_1, arg_1, var_3, arg_1)), _wgslsmith_f_op_f32(-var_2.x), ~global1[_wgslsmith_index_u32(21353u, 17u)]), select(var_4.a, var_4.a, select(vec3<bool>(false, false, true), var_4.a, false)), global2.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(var_2.x, vec2<bool>(global2.x, var_4.a.x), vec2<u32>(0u, var_1.x), var_4))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1048f, var_4.b.x, -300f, var_3), vec4<f32>(-1412f, var_3, 270f, -761f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, 284f, -1852f, var_3), var_4.b, vec4<bool>(false, true, global2.x, var_4.a.x)))))), var_4, Struct_1(select(select(vec3<bool>(false, global2.x, global2.x), var_4.a, true & global2.x), vec3<bool>(true | var_4.a.x, 1735f < arg_1, true), !(!var_4.a)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(734f, _wgslsmith_f_op_f32(108f - 653f), _wgslsmith_f_op_f32(ceil(1315f)), -333f)))));
}

fn func_5(arg_0: i32, arg_1: Struct_2) -> i32 {
    global1 = array<u32, 17>();
    let var_0 = arg_1;
    let var_1 = -401f;
    var var_2 = Struct_1(arg_1.c.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(var_0.a.b, vec4<f32>(723f, 215f, -1794f, var_1))))))));
    global3 = 1i;
    return -var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_sub_i32(u_input.b, func_5(1i, func_1(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], 17u)] >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)] % 32u), 17u)], _wgslsmith_f_op_f32(561f * -391f), -1000f))) ^ _wgslsmith_clamp_i32(abs(max(u_input.b, u_input.b)) >> (~min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], global1[_wgslsmith_index_u32(65082u, 17u)]) % 32u), min(u_input.a.x, ~(-1i) ^ u_input.a.x), firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-33814i, 0i, -30004i), vec3<i32>(u_input.a.x, u_input.b, -2147483647i)))));
    global1 = array<u32, 17>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1434f * 1331f), -769f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(596f, 775f), vec2<f32>(-530f, -105f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2299f, 328f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(587f, -187f)))), vec2<f32>(func_1(0u, _wgslsmith_f_op_f32(f32(-1f) * -219f), -1058f).a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -280f)), true || global2.x)));
    global3 = func_1((_wgslsmith_clamp_u32(15432u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28632u, 17u)], 17u)], 17u)], 17u)], 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(35254u, 17u)], 17u)]) >> (min(1u, 73488u) % 32u)) << (global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(2563u, 17u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37871u, 17u)], 17u)], 17u)], 17u)], 17u)]) & global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 17u)], 17u)], 17u)], 17u)], 17u)] % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + var_0.x), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_f_op_f32(ceil(var_0.x)), vec2<bool>(global2.x, global2.x), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 17u)], 24572u), vec2<u32>(55812u, 17963u)), Struct_1(vec3<bool>(true, true, global2.x), vec4<f32>(-998f, var_0.x, var_0.x, var_0.x)))).x)).b >> (_wgslsmith_sub_u32(abs(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(1u, 17u)], 0u)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(50984u, 17u)], 17u)], 17u)]), 17u)], 17u)] & global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(33429u, 17u)]), 17u)]) % 32u);
    let var_1 = false;
    var var_2 = min(vec2<u32>(~_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 8490u), ~0u >> (~4294967295u % 32u)) | ~(~select(vec2<u32>(global1[_wgslsmith_index_u32(51138u, 17u)], 1u), vec2<u32>(0u, 69876u), global2.x)), select(abs(~(vec2<u32>(5260u, global1[_wgslsmith_index_u32(4374u, 17u)]) ^ vec2<u32>(2619u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13567u, 17u)], 17u)]))), select(vec2<u32>(_wgslsmith_add_u32(0u, 1u), 1u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1936u, 17u)], 17u)]), _wgslsmith_clamp_vec2_u32(vec2<u32>(45048u, 14250u), vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 17u)]), vec2<u32>(0u, global1[_wgslsmith_index_u32(55733u, 17u)]))), (-2147483647i == u_input.b) || select(false, true, false)), (countOneBits(global1[_wgslsmith_index_u32(4294967295u, 17u)]) > 0u) != true));
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, vec3<u32>(79579u, 797u, max(firstTrailingBit(~var_2.x), 1u)), -u_input.b);
}

