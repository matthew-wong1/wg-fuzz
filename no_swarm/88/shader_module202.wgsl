struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(636u, 1u, 4294967295u, 27748u, 34913u, 71537u, 43734u, 0u, 4294967295u, 121947u, 17393u, 1u, 0u, 5906u, 121625u, 23237u, 1u, 4294967295u, 24229u);

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 1i, 1i, 2147483647i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = arg_1;
    let var_1 = 1706f;
    global1 = -_wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(arg_0, -10730i, -25295i, -39734i)), (vec4<i32>(-3491i, global1.x, -1123i, 38952i) & vec4<i32>(-11061i, 0i, arg_1.a, var_0.b)) << (vec4<u32>(1u, u_input.a.x, 1u, global0[_wgslsmith_index_u32(u_input.b, 19u)]) % vec4<u32>(32u))) ^ vec4<i32>(max(_wgslsmith_mult_i32(max(var_0.d.x, 0i), 1i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-36537i, arg_0, var_0.b, global1.x), vec4<i32>(var_0.b, -67486i, global1.x, 2147483647i))), _wgslsmith_mod_i32(-global1.x | countOneBits(0i), countOneBits(abs(arg_1.a))), arg_0, arg_1.d.x);
    global1 = -vec4<i32>(~(-49920i), ~abs(var_0.d.x), ~arg_1.a, min(_wgslsmith_add_i32(0i, 34556i | arg_0), _wgslsmith_div_i32(-2147483647i ^ global1.x, -16464i << (1u % 32u))));
    global1 = ~select(countOneBits(~vec4<i32>(-2147483647i, var_0.d.x, arg_0, 40489i)), vec4<i32>(max(var_0.d.x, 2147483647i), 1i, _wgslsmith_mult_i32(var_0.a, var_0.a), _wgslsmith_dot_vec3_i32(global1.zzz, global1.zyy)), any(vec4<bool>(true, true, false, false))) | _wgslsmith_div_vec4_i32(abs(~(-vec4<i32>(-1i, 33154i, arg_0, 1i))), ~(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0.b, var_0.a, arg_0), vec4<i32>(-30379i, global1.x, arg_0, 6557i))));
    return u_input.b & 76628u;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    var var_0 = 48105i;
    let var_1 = Struct_1(-global1.x & _wgslsmith_dot_vec3_i32(countOneBits(global1.wzx), vec3<i32>(global1.x, max(-2147483647i, 8262i), 1i)), -35447i, _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(round(447f))) + _wgslsmith_f_op_vec3_f32(-arg_1.c)), -(vec2<i32>(~13679i, global1.x) << (_wgslsmith_add_vec2_u32(~arg_0.wz, u_input.a) % vec2<u32>(32u))));
    let var_2 = var_1;
    var var_3 = 0u;
    var var_4 = _wgslsmith_f_op_f32(2507f - _wgslsmith_f_op_f32(abs(-1154f)));
    return _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 0u, 27249u, 24556u), abs(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], 4294967295u, 0u, arg_0.x))), arg_0)), _wgslsmith_add_vec4_u32(vec4<u32>(~arg_0.x, ~func_3(1i, var_1), 43388u, 1u | (u_input.b >> (global0[_wgslsmith_index_u32(arg_0.x, 19u)] % 32u))), ~_wgslsmith_sub_vec4_u32(abs(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 19u)], arg_0.x, 1u, u_input.b)), arg_0 | arg_0)));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> i32 {
    let var_0 = arg_0.b;
    let var_1 = arg_0;
    global0 = array<u32, 19>();
    return _wgslsmith_dot_vec2_i32(select(~_wgslsmith_sub_vec2_i32(var_1.d, arg_0.d), _wgslsmith_mod_vec2_i32(var_1.d & vec2<i32>(arg_0.b, 16899i), vec2<i32>(global1.x, 18292i)), all(vec2<bool>(true, false))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.yy, vec2<i32>(11453i, var_1.a)), ~var_1.a), global1.wy)) >> (~1u % 32u);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> i32 {
    global1 = -abs(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(17477i, arg_0, global1.x, -34293i), vec4<i32>(global1.x, arg_0, arg_0, 2147483647i), vec4<i32>(arg_1.d.x, arg_0, arg_1.b, -37670i)));
    var var_0 = 851f == _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c.x)))), arg_1.c.x));
    var var_1 = Struct_1(_wgslsmith_add_i32(reverseBits(0i), ~(global1.x << (u_input.a.x % 32u))) >> (1870u % 32u), _wgslsmith_sub_i32(func_4(arg_1, ~func_2(vec4<u32>(1u, 0u, global0[_wgslsmith_index_u32(1u, 19u)], 72773u), arg_1, -555f)), _wgslsmith_dot_vec4_i32((vec4<i32>(global1.x, arg_0, arg_0, global1.x) ^ vec4<i32>(arg_0, global1.x, arg_0, global1.x)) << (vec4<u32>(50704u, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 19u)], 19u)], u_input.b) % vec4<u32>(32u)), min(-vec4<i32>(arg_0, arg_1.d.x, global1.x, global1.x), -vec4<i32>(-54484i, 1i, arg_0, 51759i)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.c.x), arg_1.c.x, arg_1.c.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(563f, 580f, arg_1.c.x))) * _wgslsmith_f_op_vec3_f32(-arg_1.c)), firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.a, -2147483647i), ~0i), func_4(arg_1, vec4<u32>(u_input.b, 0u, u_input.b, 45198u)) & global1.x)));
    let var_2 = select(select(vec2<bool>(any(!vec4<bool>(arg_2, true, arg_2, arg_2)), false), select(select(!vec2<bool>(true, arg_2), !vec2<bool>(arg_2, false), arg_2), vec2<bool>(true, !arg_2), select(arg_2, arg_2, true)), true), !select(!(!vec2<bool>(arg_2, true)), !(!vec2<bool>(arg_2, arg_2)), !select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, false), true)), select(select(select(vec2<bool>(true, true), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2), arg_2), !arg_2), select(select(vec2<bool>(true, false), vec2<bool>(false, arg_2), vec2<bool>(false, false)), select(vec2<bool>(arg_2, false), vec2<bool>(false, false), vec2<bool>(arg_2, arg_2)), any(vec3<bool>(arg_2, arg_2, true))), arg_2), vec2<bool>(true, true), true));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(ceil(var_1.c.x))))), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(782f - -869f) + _wgslsmith_f_op_f32(trunc(667f)))))));
    return _wgslsmith_dot_vec4_i32(select(select(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, arg_0, 0i, arg_0), vec4<i32>(59597i, 0i, 0i, arg_1.d.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, 21122i, global1.x), vec4<i32>(global1.x, 2147483647i, 41354i, 3324i), vec4<i32>(-1i, 2147483647i, arg_0, -1i)), arg_2) & select(vec4<i32>(-2147483647i, arg_0, arg_0, arg_0), select(vec4<i32>(arg_1.b, var_1.a, 1i, var_1.b), vec4<i32>(-2147483647i, 1i, -1i, global1.x), var_2.x), 6446i >= arg_0), -_wgslsmith_add_vec4_i32(min(vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i), vec4<i32>(-29433i, -15450i, var_1.a, -2147483647i)), vec4<i32>(global1.x, 2147483647i, -21869i, 0i)), !vec4<bool>(false, var_2.x, !var_2.x, var_2.x)), _wgslsmith_clamp_vec4_i32(~firstLeadingBit(vec4<i32>(var_1.b, -866i, -3398i, arg_1.d.x)), select(~vec4<i32>(global1.x, global1.x, -12086i, global1.x), ~vec4<i32>(2270i, arg_1.d.x, -2147483647i, global1.x), var_2.x | true) >> (vec4<u32>(func_3(1i, Struct_1(arg_0, var_1.a, vec3<f32>(-1340f, var_3.x, -1057f), arg_1.d)), _wgslsmith_add_u32(24u, 1u), 53290u, 90127u) % vec4<u32>(32u)), ~vec4<i32>(-1i, i32(-1i) * -23818i, arg_0, ~arg_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global1.x, -2147483647i), global1.zxy)), global1.zwx), vec3<i32>(global1.x, 22695i, ~18201i)), _wgslsmith_sub_i32(~max(-global1.x, global1.x), ~(-func_1(7948i, Struct_1(-6404i, -48938i, vec3<f32>(-445f, 236f, -191f), global1.yw), false))), global1.x, ~(~global1.x));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1254f) * _wgslsmith_f_op_f32(767f + -1045f))), _wgslsmith_f_op_f32(568f * 2018f)));
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10927u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5971u, 19u)], 19u)], 5848u), vec3<u32>(11095u, 4294967295u, global0[_wgslsmith_index_u32(77211u, 19u)])), select(u_input.a.x, 4294967295u, true), reverseBits(0u), 24402u), firstLeadingBit(vec4<u32>(43694u, u_input.b, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 19u)])) | ~vec4<u32>(u_input.b, 0u, 1u, u_input.b)) != _wgslsmith_mult_u32(firstLeadingBit(40477u), 1u | global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(u_input.a.x, 19u)] ^ 4294967295u), 19u)]);
    let var_2 = vec4<f32>(-1256f, var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -917f)), any(vec3<bool>(true, true, true))))), var_0);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_2.x)), var_2.x, u_input.b == u_input.b))), var_0)));
    global0 = array<u32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(~(vec2<i32>(1i, global1.x) << (min(u_input.a, u_input.a) % vec2<u32>(32u))), vec2<i32>(1i, _wgslsmith_mod_i32(global1.x, func_1(global1.x, Struct_1(20929i, global1.x, var_2.xxy, global1.xy), true)))), vec2<i32>(min(0i, _wgslsmith_dot_vec3_i32(firstTrailingBit(global1.zxx), global1.wxz)), firstLeadingBit(~_wgslsmith_sub_i32(-7675i, 0i))), ~firstLeadingBit(vec3<i32>(8057i, min(global1.x, global1.x), _wgslsmith_dot_vec3_i32(global1.xzw, vec3<i32>(global1.x, global1.x, -2147483647i)))));
}

