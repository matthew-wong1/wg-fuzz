struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, false, true, false, false);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    global0 = array<bool, 5>();
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, max(select(vec2<i32>(49268i, 1i), vec2<i32>(u_input.c, -22762i), global0[_wgslsmith_index_u32(62466u, 5u)]), select(arg_2.b.yz, u_input.b, global0[_wgslsmith_index_u32(0u, 5u)])) >> (arg_0.yz % vec2<u32>(32u))), u_input.b);
    let var_1 = Struct_2(arg_2, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1, 2888i), -63175i), 1i), min(select(u_input.b, vec2<i32>(26840i, arg_1), false), _wgslsmith_mod_vec2_i32(max(vec2<i32>(57800i, -15370i), vec2<i32>(arg_2.d, arg_1)), vec2<i32>(u_input.b.x, 2984i))), select(max(arg_2.b.zy, -u_input.b), select(-u_input.b, vec2<i32>(21144i, var_0.x) | u_input.b, any(vec2<bool>(global0[_wgslsmith_index_u32(16645u, 5u)], true))), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], any(vec4<bool>(global0[_wgslsmith_index_u32(1u, 5u)], true, false, global0[_wgslsmith_index_u32(4294967295u, 5u)]))))), !(!(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, arg_2.c), 5u)])), !select(vec4<bool>(global0[_wgslsmith_index_u32(~u_input.a, 5u)], true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.a, 5u)], true, true, global0[_wgslsmith_index_u32(u_input.a, 5u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(arg_0.x, 5u)], true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], true, true), false), true), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 5u)], global0[_wgslsmith_index_u32(1u, 5u)], false, global0[_wgslsmith_index_u32(6716u, 5u)])), Struct_1(_wgslsmith_clamp_u32(~(~1u), firstLeadingBit(0u), ~(~arg_2.c)), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 15453i, 2147483647i, 36397i), vec4<i32>(var_0.x, arg_1, -2147483647i, var_0.x)), ~arg_2.b, arg_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, _wgslsmith_add_u32(arg_2.a, arg_0.x)), select(firstLeadingBit(arg_0.yz), ~vec2<u32>(u_input.a, arg_0.x), true)), _wgslsmith_dot_vec3_i32(arg_2.b.xyy, arg_2.b.xxw)));
    var var_2 = arg_2;
    let var_3 = ~firstLeadingBit(vec2<u32>(19854u | ~var_1.e.c, _wgslsmith_mult_u32(firstTrailingBit(arg_0.x), ~0u)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-572f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1102f - 436f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(808f)), 1f))), all(vec3<bool>(true, true, var_1.c)))), 1599f));
}

fn func_2(arg_0: i32) -> i32 {
    var var_0 = Struct_1(12514u, ~(~(-vec4<i32>(arg_0, 27327i, -30422i, u_input.b.x))), (select(_wgslsmith_sub_u32(25607u, u_input.a), 1u, true) << (~(~4294967295u) % 32u)) >> (min(u_input.a, ~u_input.a) % 32u), _wgslsmith_mod_i32(u_input.c, _wgslsmith_sub_i32(0i, -2147483647i)));
    let var_1 = -(~arg_0 << (63902u % 32u));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(min(firstTrailingBit(vec3<u32>(var_0.c, var_0.c, 1u)), firstLeadingBit(vec3<u32>(u_input.a, 4294967295u, u_input.a))), -(u_input.c << (var_0.c % 32u)), Struct_1(var_0.a, select(var_0.b, vec4<i32>(-1243i, 2147483647i, 0i, -2147483647i), vec4<bool>(false, global0[_wgslsmith_index_u32(27585u, 5u)], global0[_wgslsmith_index_u32(var_0.a, 5u)], false)), 98612u, -61247i << (u_input.a % 32u)))) + 1283f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(428f, _wgslsmith_f_op_f32(143f * -275f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-547f)))))));
    var var_3 = Struct_3(Struct_2(Struct_1(countOneBits(~u_input.a), ~abs(vec4<i32>(26179i, 1i, arg_0, var_0.b.x)), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u), 27977u), -22539i), vec2<i32>(-2147483647i, i32(-1i) * -arg_0), !(global0[_wgslsmith_index_u32(~u_input.a, 5u)] && (false & global0[_wgslsmith_index_u32(u_input.a, 5u)])), !select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], false, true, global0[_wgslsmith_index_u32(u_input.a, 5u)]), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(8977u, 5u)], global0[_wgslsmith_index_u32(var_0.c, 5u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(67462u, 5u)]), global0[_wgslsmith_index_u32(u_input.a, 5u)]), global0[_wgslsmith_index_u32(2455u, 5u)]), Struct_1(~9698u, ~(~vec4<i32>(var_1, -12597i, arg_0, var_1)), abs(var_0.c) & firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(22009i, 1i), u_input.b), vec2<i32>(var_1, 2147483647i)))), -(~(~u_input.c) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.a, u_input.a)) & 1u) % 32u)), firstLeadingBit(_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0, var_0.d, u_input.c), var_0.b.zzw | var_0.b.yyy)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.d, var_0.d, 33510i) << (~vec3<u32>(9081u, 0u, 48020u) % vec3<u32>(32u)), vec3<i32>(u_input.c & u_input.b.x, _wgslsmith_mod_i32(-1i, u_input.b.x), countOneBits(4572i)), var_0.b.ywy), vec2<bool>(!(!(!global0[_wgslsmith_index_u32(4294967295u, 5u)])), all(vec4<bool>(arg_0 >= -2147483647i, all(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(u_input.a, 5u)])), global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(~1u, 5u)]))));
    var var_4 = var_3.a;
    return var_1;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    var var_0 = !select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(55800u, 5u)], true, global0[_wgslsmith_index_u32(u_input.a, 5u)], false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], true, false, global0[_wgslsmith_index_u32(u_input.a, 5u)]), global0[_wgslsmith_index_u32(u_input.a, 5u)])), vec4<bool>(!global0[_wgslsmith_index_u32(arg_2, 5u)], global0[_wgslsmith_index_u32(arg_1, 5u)], !(!global0[_wgslsmith_index_u32(u_input.a, 5u)]), true), select(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(arg_2, 5u)], global0[_wgslsmith_index_u32(arg_1, 5u)]), !vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 5u)], false, true, true)), !select(vec4<bool>(true, global0[_wgslsmith_index_u32(57773u, 5u)], true, global0[_wgslsmith_index_u32(arg_2, 5u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 5u)], false, global0[_wgslsmith_index_u32(arg_1, 5u)]), true), true));
    let var_1 = ~_wgslsmith_div_vec3_i32(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 51587i, u_input.c)) & abs(vec3<i32>(u_input.c, u_input.c, 53403i))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(u_input.c, -2147483647i, u_input.b.x)) & vec3<i32>(u_input.c, 38376i, -33904i), vec3<i32>(~9823i, select(12767i, u_input.b.x, false), -1i), vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, 1i)));
    let var_2 = min(_wgslsmith_add_i32(_wgslsmith_div_i32(var_1.x, 1i), -10968i), u_input.b.x);
    var var_3 = true;
    let var_4 = vec2<i32>(abs(var_2), -func_2(reverseBits(u_input.b.x)));
    return Struct_1(max(_wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, ~9218u), 4294967295u), ~(arg_1 << (72900u % 32u)) | _wgslsmith_sub_u32(54724u, _wgslsmith_clamp_u32(arg_1, 34275u, arg_2))), vec4<i32>(reverseBits(196i), 32581i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(1i, -39672i), 0i, -var_1.x), -firstTrailingBit(var_1)), 45412i), u_input.a, ~min(var_1.x >> (u_input.a % 32u), _wgslsmith_mult_i32(-10479i, select(var_1.x, u_input.c, global0[_wgslsmith_index_u32(u_input.a, 5u)]))));
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = ~vec2<u32>(1u, ~(~u_input.a)) & vec2<u32>(select(~arg_0.a, u_input.a, select(false, global0[_wgslsmith_index_u32(0u, 5u)], true)) << (4294967295u % 32u), 0u);
    global0 = array<bool, 5>();
    global0 = array<bool, 5>();
    let var_1 = _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(130f - -1000f)), _wgslsmith_f_op_f32(max(-892f, _wgslsmith_f_op_f32(1000f * -824f))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(459f, -1000f))))))));
    let var_2 = ~abs(abs(vec2<u32>(var_0.x, 12657u) ^ vec2<u32>(27949u, 0u))) | ~(var_0 | ((var_0 >> (vec2<u32>(4294967295u, 57844u) % vec2<u32>(32u))) | min(var_0, vec2<u32>(u_input.a, 4294967295u))));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_1), 360f, _wgslsmith_f_op_f32(579f * var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(func_1(min(~min(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), vec3<u32>(~u_input.a, ~u_input.a, max(22799u, 0u))), u_input.a, ~((12997u >> (1u % 32u)) >> (0u % 32u)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), -555f)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), var_1));
    var var_3 = Struct_3(Struct_2(func_1(~(vec3<u32>(u_input.a, u_input.a, 34767u) >> (vec3<u32>(u_input.a, u_input.a, 0u) % vec3<u32>(32u))), _wgslsmith_mult_u32(u_input.a >> (38567u % 32u), firstLeadingBit(u_input.a)), u_input.a), max(vec2<i32>(u_input.b.x, _wgslsmith_sub_i32(-44379i, u_input.c)), vec2<i32>(~u_input.c, -1i)), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19364u, 20609u), vec2<u32>(40097u, u_input.a)), u_input.a)), 5u)], vec4<bool>(all(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 5u)])), !global0[_wgslsmith_index_u32(u_input.a, 5u)] | !global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 5u)], true), Struct_1(4294967295u, firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x))), u_input.a, u_input.c)), abs(~u_input.b.x) | u_input.c, ~vec3<i32>(-(u_input.c >> (u_input.a % 32u)), _wgslsmith_sub_i32(-66686i, 7955i) | ~u_input.b.x, _wgslsmith_div_i32(~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.b.x), u_input.b))), !vec2<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a), 5u)]));
    let var_4 = ~select(vec2<u32>(1u, abs(4294967295u)), countOneBits(~select(vec2<u32>(64724u, 4294967295u), vec2<u32>(var_3.a.e.c, u_input.a), var_3.a.d.yw)), vec2<bool>(!global0[_wgslsmith_index_u32(abs(0u), 5u)], any(!var_3.a.d.xyz)));
    var var_5 = select(select(vec4<bool>(all(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], var_3.d.x, true, false), vec4<bool>(global0[_wgslsmith_index_u32(var_4.x, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], false), global0[_wgslsmith_index_u32(var_4.x, 5u)])), !(var_3.c.x > var_3.b), !all(var_3.d), var_3.d.x && (var_3.a.c != var_3.a.c)), vec4<bool>(any(var_3.a.d.zyx), var_3.a.c | !var_3.a.c, true, global0[_wgslsmith_index_u32(var_4.x, 5u)]), !(!any(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a, 5u)])))), var_3.a.d, true);
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -2515f);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -612f, 786f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_6, -148f, 103f))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-696f, -235f, var_1)))))), countOneBits(-max(var_3.a.b.x | u_input.c, -25709i)), abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_3.a.a.c, u_input.a), vec2<u32>(u_input.a, u_input.a)), var_4)));
}

