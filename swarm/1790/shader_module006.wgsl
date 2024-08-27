struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19>;

var<private> global1: Struct_1 = Struct_1(0u, true, vec2<f32>(-851f, -167f), true);

var<private> global2: vec2<u32>;

var<private> global3: vec4<f32>;

var<private> global4: Struct_1 = Struct_1(0u, false, vec2<f32>(-795f, 545f), false);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = vec2<u32>(u_input.a, global4.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1281f, -1354f)) * -1263f) - -1364f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1137f, arg_1.c.x, true)) + -1569f)))));
    var var_2 = Struct_1(min(global2.x, ~var_0.x), arg_2.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, global1.c.x))))), false);
    var var_3 = select(arg_1.a, var_2.a, true);
    global1 = Struct_1(4294967295u, all(!select(select(vec3<bool>(arg_2.x, false, false), vec3<bool>(var_2.b, true, false), global1.b), select(vec3<bool>(arg_1.b, global1.b, false), vec3<bool>(false, arg_1.d, true), false), false)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.x, arg_1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.c.x), 1594f, arg_0 > 2147483647i)), _wgslsmith_f_op_f32(-global1.c.x))), select(select(!global1.b, !(!global4.b), true), !all(!vec2<bool>(global1.b, global1.b)), !(any(vec2<bool>(global1.b, global1.b)) | global1.b)));
    return select(vec3<bool>(true, false, false), vec3<bool>(any(!(!vec4<bool>(arg_1.d, true, arg_1.d, true))), true, all(arg_2)), (-321f <= _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x))) && var_2.b);
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = Struct_1(~(~(~29782u)), true, _wgslsmith_f_op_vec2_f32(-global3.zw), any(vec2<bool>(arg_0, any(vec2<bool>(false, true)))) | (arg_0 | any(func_3(2147483647i, Struct_1(1u, arg_0, vec2<f32>(global1.c.x, -134f), false), vec2<bool>(arg_0, true)))));
    var_0 = Struct_1(global2.x, func_3(_wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -1i, -2594i, 1i), vec4<i32>(-1i, 19317i, -13750i, 21046i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, -1i, 27952i), vec4<i32>(9644i, 14211i, -6274i, 2147483647i))), Struct_1(_wgslsmith_sub_u32(var_0.a | var_0.a, _wgslsmith_add_u32(u_input.a, global0[_wgslsmith_index_u32(global4.a, 19u)])), arg_0, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.c.x, var_0.c.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(280f, global3.x)))), false), func_3(6397i, Struct_1(select(global0[_wgslsmith_index_u32(1u, 19u)], u_input.a, var_0.d), true, global1.c, -2025f < global4.c.x), !(!vec2<bool>(global1.d, global1.d))).yy).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.c.x), -995f), _wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(global3.x, var_0.c.x)), true))), any(vec2<bool>(arg_0, global1.b)));
    global3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.c.x, _wgslsmith_div_f32(796f, global4.c.x), -217f, -289f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c.x, -948f, -2112f, global4.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global1.c.x, 1000f, 541f)))) * vec4<f32>(global1.c.x, -200f, _wgslsmith_f_op_f32(floor(-347f)), -344f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_div_f32(global3.x, 340f)), _wgslsmith_f_op_f32(max(global3.x, -364f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(336f + 586f), -641f)), global3.x)));
    let var_1 = vec2<i32>(0i, 0i >> (~global0[_wgslsmith_index_u32(select(0u, u_input.a, false), 19u)] % 32u)) | firstTrailingBit(vec2<i32>(1i, 1i));
    let var_2 = abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a, global4.a, ~(~var_0.a)), (~vec3<u32>(4294967295u, 14790u, global1.a) << (abs(vec3<u32>(global2.x, 28370u, 43893u)) % vec3<u32>(32u))) ^ (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global4.a, 44802u), vec3<u32>(23942u, 58768u, u_input.a)) | ~vec3<u32>(u_input.a, global2.x, 1u)), _wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(var_0.a, 4294967295u, global2.x)), ~(vec3<u32>(0u, 4294967295u, 28944u) >> (vec3<u32>(global2.x, 125u, var_0.a) % vec3<u32>(32u))))));
    return global3.xxy;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec4<i32> {
    var var_0 = 1u;
    return _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-33279i, -2147483647i, -17247i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), 2147483647i, _wgslsmith_div_i32(-1i, reverseBits(select(39956i, -53i, global1.b)))), max(-(vec4<i32>(1i, 1i, 1i, 1i) & (vec4<i32>(2147483647i, -8123i, 3965i, 2147483647i) << (vec4<u32>(40123u, 1u, u_input.a, global2.x) % vec4<u32>(32u)))), ~vec4<i32>(1i, 1i, reverseBits(1i), _wgslsmith_div_i32(1i, -2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> vec2<u32> {
    let var_0 = -_wgslsmith_mod_vec4_i32(abs(vec4<i32>(1i, 1i, 1i, 1i) << (vec4<u32>(1u, 1u, 9024u, global0[_wgslsmith_index_u32(1u, 19u)]) % vec4<u32>(32u))), func_4(arg_0, max(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 19u)], u_input.a, u_input.a), vec3<u32>(global4.a, 114457u, arg_2.a) | vec3<u32>(arg_2.a, arg_1.a, global2.x)), _wgslsmith_f_op_vec3_f32(func_2(true))));
    global1 = arg_2;
    let var_1 = Struct_1(arg_2.a, any(vec3<bool>(false, false, arg_2.d)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.c - arg_0.c) * vec2<f32>(global4.c.x, arg_2.c.x)), vec2<f32>(_wgslsmith_f_op_f32(-global4.c.x), global4.c.x)))), true);
    var var_2 = Struct_1(~(104688u ^ _wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.a, global0[_wgslsmith_index_u32(0u, 19u)]), min(2010u, global2.x))), !any(select(!vec4<bool>(arg_2.d, true, arg_1.b, true), vec4<bool>(arg_1.b, true, false, arg_1.d), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.c.x, _wgslsmith_f_op_f32(1000f - global3.x))), _wgslsmith_f_op_f32(min(-846f, arg_2.c.x)))), !(!all(select(vec4<bool>(false, false, global4.d, var_1.b), vec4<bool>(arg_0.b, false, true, arg_1.d), arg_2.d))));
    var var_3 = arg_0;
    return select(vec2<u32>(countOneBits(0u), arg_0.a) | _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.a, 43476u)), ~vec2<u32>(var_2.a, global2.x), vec2<u32>(var_1.a, _wgslsmith_mod_u32(u_input.a, 82147u))), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_0.a), _wgslsmith_sub_vec2_u32(select(vec2<u32>(arg_1.a, 15673u), vec2<u32>(var_3.a, 68071u), vec2<bool>(true, var_1.b)) ^ vec2<u32>(16579u, global4.a), firstLeadingBit(~vec2<u32>(arg_2.a, arg_3)))), vec2<bool>(all(vec2<bool>(var_0.x >= -2147483647i, select(arg_2.b, arg_1.b, false))), !(!(arg_1.a > arg_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.a, global4.b, global3.yw, false);
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1104f * _wgslsmith_f_op_f32(sign(-1268f))), var_0.c.x, any(select(select(vec2<bool>(true, true), vec2<bool>(var_0.d, var_0.d), vec2<bool>(global1.d, var_0.d)), vec2<bool>(global1.d, global4.b), global4.b))))));
    global2 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(23341u, global2.x) | vec2<u32>(global2.x, var_0.a), ~vec2<u32>(4294967295u, 73347u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 19u)], 19u)], global2.x) ^ vec2<u32>(global2.x, global1.a)) ^ _wgslsmith_clamp_vec2_u32(func_1(Struct_1(u_input.a, var_0.b, vec2<f32>(global1.c.x, global3.x), global4.d), Struct_1(global0[_wgslsmith_index_u32(global1.a, 19u)], global4.b, vec2<f32>(global3.x, global4.c.x), true), Struct_1(4294967295u, true, global3.xy, var_0.d), global2.x), ~vec2<u32>(global1.a, 27171u), vec2<u32>(global1.a, 22994u))) & _wgslsmith_mod_vec2_u32(~firstLeadingBit(abs(vec2<u32>(75518u, 4294967295u))), vec2<u32>(~u_input.a, ~countOneBits(global1.a)));
    var_0 = Struct_1(_wgslsmith_mod_u32(34442u, firstTrailingBit(~(~var_0.a))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.c)) + var_0.c)), global4.b);
    var var_2 = max(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~66711u, _wgslsmith_mod_u32(global4.a, u_input.a), ~0u), ~vec3<u32>(global1.a, global2.x, 0u), vec3<u32>(34805u, _wgslsmith_mult_u32(40607u, 1u), min(46711u, global4.a))), vec3<u32>(~11748u, min(global1.a, 22382u), ~global2.x) >> (select(~vec3<u32>(global4.a, 49632u, 4294967295u), ~vec3<u32>(34029u, var_0.a, 17442u), vec3<bool>(true, true, true)) % vec3<u32>(32u))), reverseBits(~_wgslsmith_mod_vec3_u32(~vec3<u32>(18724u, 53440u, u_input.a), ~vec3<u32>(global2.x, 20562u, 44965u))));
    var var_3 = 0i;
    let var_4 = min(~(~global4.a), ~(~(~3193u))) | abs(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(-firstLeadingBit(~(-1i << (var_2.x % 32u))), ~(_wgslsmith_dot_vec2_u32(var_2.xy, vec2<u32>(global1.a, var_4)) << (~0u % 32u)) & ~abs(~global4.a), select(vec2<i32>(-2147483647i, -(i32(-1i) * -2147483647i)), vec2<i32>(_wgslsmith_mod_i32(-2903i, -1i) << (_wgslsmith_mod_u32(global2.x, 4294967295u) % 32u), ~max(-2147483647i, 1i)), func_3(1i, Struct_1(~4294967295u, var_0.b, global3.yw, 1u == global2.x), select(select(vec2<bool>(false, var_0.d), vec2<bool>(global1.b, true), var_0.b), vec2<bool>(false, global4.b), !vec2<bool>(global4.b, global1.b))).yy), reverseBits(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, 22869i), vec3<i32>(30456i, 2147483647i, -47924i)), ~1i), -45884i << ((var_4 >> (u_input.a % 32u)) % 32u), -29175i, max(2147483647i, ~(-2147483647i)))));
}

