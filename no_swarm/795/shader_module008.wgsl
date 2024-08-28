struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-1000f, -542f, 1000f, -444f, -1173f, -633f, 177f, 297f, -1464f, -1000f, 644f, -1000f, 1418f, -319f, -452f, 263f, 796f, 295f, -1230f, -437f, -1820f, 453f, 445f, -582f, 687f, 1325f, -830f, 373f, -166f);

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool) -> i32 {
    return _wgslsmith_dot_vec3_i32(~(-select(max(vec3<i32>(1i, 23787i, global1.x), vec3<i32>(u_input.c, global1.x, -7754i)), vec3<i32>(global1.x, u_input.d, global1.x), any(vec2<bool>(true, arg_0)))), _wgslsmith_mod_vec3_i32(vec3<i32>((0i << (u_input.a.x % 32u)) & abs(global1.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global1.x, 729i, 51585i), u_input.b ^ 19653i), _wgslsmith_mult_i32(-2147483647i, u_input.e)), ~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-20084i, 1i, u_input.c)), vec3<i32>(global1.x, global1.x, 1i))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(func_3(true | arg_0.x), -1i, 42412i), vec3<i32>(-1i, 1i, -2147483647i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(arg_2.a - arg_2.a), vec3<f32>(arg_2.a.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x), 29u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.x, global0[_wgslsmith_index_u32(2402u, 29u)], arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1466f))))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1412f)) * arg_1.a.x);
    var var_3 = vec3<i32>(select(u_input.b, ~(-(global1.x ^ arg_3)), !select(arg_0.x, true, arg_0.x) & (all(vec3<bool>(arg_0.x, arg_0.x, false)) && any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))), -2147483647i, _wgslsmith_dot_vec3_i32(abs(countOneBits(select(vec3<i32>(-9012i, 2147483647i, -2147483647i), vec3<i32>(global1.x, u_input.b, u_input.b), vec3<bool>(arg_0.x, false, false)))), vec3<i32>(-(var_0.a & u_input.d), var_0.a, -arg_3)));
    let var_4 = Struct_1(arg_3);
    return any(!vec2<bool>(any(vec4<bool>(arg_0.x, true, true, false)), arg_0.x));
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    var var_0 = firstTrailingBit(4294967295u);
    let var_1 = vec2<u32>(abs(_wgslsmith_sub_u32(reverseBits(arg_0.x), 89111u)), _wgslsmith_mult_u32(~arg_0.x, abs(63598u)));
    var var_2 = select(vec4<bool>(true, false, any(vec3<bool>(func_2(vec2<bool>(false, false), Struct_2(vec3<f32>(923f, global0[_wgslsmith_index_u32(var_1.x, 29u)], -729f)), Struct_2(vec3<f32>(905f, 675f, -687f)), u_input.e), true, func_2(vec2<bool>(true, false), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 29u)], global0[_wgslsmith_index_u32(65674u, 29u)], global0[_wgslsmith_index_u32(2776u, 29u)])), Struct_2(vec3<f32>(1774f, global0[_wgslsmith_index_u32(arg_0.x, 29u)], global0[_wgslsmith_index_u32(0u, 29u)])), 2147483647i))), ~_wgslsmith_div_u32(1u, 4294967295u) >= ~arg_0.x), select(!vec4<bool>(false, arg_0.x == var_1.x, false, true), vec4<bool>(1u < arg_0.x, true, true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))), true);
    var_2 = select(vec4<bool>(!select(var_2.x, true, var_2.x) & any(select(vec4<bool>(false, var_2.x, false, var_2.x), vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(false, var_2.x, false, var_2.x))), var_2.x, var_2.x, true), select(select(vec4<bool>(!var_2.x, select(false, var_2.x, var_2.x), true, 30723u > arg_0.x), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), select(vec4<bool>(var_2.x, var_2.x, true, true), !vec4<bool>(false, false, false, var_2.x), !var_2.x)), vec4<bool>(false || func_2(vec2<bool>(var_2.x, true), Struct_2(vec3<f32>(-741f, global0[_wgslsmith_index_u32(arg_0.x, 29u)], 2132f)), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 29u)], -791f, global0[_wgslsmith_index_u32(1u, 29u)])), global1.x), var_2.x, true, true), !(_wgslsmith_add_u32(var_1.x, 0u) < arg_0.x)), vec4<bool>(var_2.x, true, var_2.x, true));
    global1 = -(~max(-vec2<i32>(0i, 22648i), vec2<i32>(-1i) * -vec2<i32>(-23227i, 2147483647i)));
    return Struct_4(Struct_1(~(~(-u_input.b))), arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 29u)]) - -932f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 29u)]) + -810f)), global0[_wgslsmith_index_u32(var_1.x, 29u)])), !(!(!var_2.x & (false | var_2.x))), -min(min(global1.x, u_input.e) << (arg_0.x % 32u), func_3(!var_2.x)));
}

fn func_4(arg_0: Struct_4) -> vec4<f32> {
    global0 = array<f32, 29>();
    global1 = -_wgslsmith_mod_vec2_i32(min(-(vec2<i32>(arg_0.e, 1i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), ~select(vec2<i32>(1i, global1.x), vec2<i32>(-1i, 62996i), vec2<bool>(false, true))), reverseBits(select(vec2<i32>(arg_0.a.a, global1.x), -vec2<i32>(-2147483647i, 53943i), true != arg_0.d)));
    var var_0 = vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_sub_i32(1i, arg_0.a.a), ~arg_0.e), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(-1i, global1.x)), abs(vec2<i32>(u_input.b, arg_0.e)))), func_1(firstLeadingBit(min(~arg_0.b, ~arg_0.b))).e);
    global1 = max(vec2<i32>(-arg_0.a.a, ~select(arg_0.a.a, -1i, true)), vec2<i32>(2147483647i, abs(27422i)));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2243f), arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -108f)) * vec3<f32>(-863f, _wgslsmith_f_op_f32(f32(-1f) * -652f), _wgslsmith_f_op_f32(-arg_0.c))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.c)), var_1.a.x, 1011f, _wgslsmith_f_op_f32(f32(-1f) * -290f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(400f, 502f, global0[_wgslsmith_index_u32(53591u, 29u)], 513f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_0.c, var_1.a.x, 1000f) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.c, arg_0.c, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 1101f), vec4<f32>(var_1.a.x, var_1.a.x, global0[_wgslsmith_index_u32(arg_0.b.x, 29u)], arg_0.c)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-276f, -1421f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(22968u, 29u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_1(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1873f, -1000f, -514f, global0[_wgslsmith_index_u32(4294967295u, 29u)]) - vec4<f32>(global0[_wgslsmith_index_u32(0u, 29u)], 1138f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)]))))), select(vec4<bool>(!all(vec4<bool>(true, true, false, true)), false, select(any(vec4<bool>(true, false, false, false)), true, true), func_1(~vec4<u32>(23836u, 4294967295u, 0u, 26796u)).d), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, false)), true | all(vec4<bool>(true, true, false, true))), any(vec4<bool>(true, true, func_2(vec2<bool>(false, false), Struct_2(vec3<f32>(-561f, -830f, global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), Struct_2(vec3<f32>(global0[_wgslsmith_index_u32(96871u, 29u)], global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 698f)), global1.x), true)))));
    global1 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e | global1.x, _wgslsmith_clamp_i32(-4272i, 2147483647i, -1i)) << (_wgslsmith_add_vec2_u32(~u_input.a.xx, vec2<u32>(77193u, u_input.a.x) << (u_input.a.zz % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(~max(u_input.d, 474i), _wgslsmith_div_i32(_wgslsmith_mult_i32(global1.x, -18669i), -6359i)), vec2<i32>(-min(-1i, 1i), u_input.d)), vec2<i32>(-1i) * -vec2<i32>(global1.x, _wgslsmith_mod_i32(u_input.c, u_input.c)));
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    global1 = select(vec2<i32>(-max(68565i, -2147483647i), 0i) >> ((u_input.a.xz | vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), vec2<i32>(-1i, i32(-1i) * -36798i), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), vec2<bool>(u_input.d == 14968i, true)), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), -1066f < var_0.x), func_1(vec4<u32>(u_input.a.x, ~104596u, u_input.a.x, func_1(vec4<u32>(1u, u_input.a.x, u_input.a.x, 0u)).b.x)).d));
    let var_1 = min(u_input.a.x, 4294967295u << (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(357f, -476f, global0[_wgslsmith_index_u32(4294967295u, 29u)]) * vec3<f32>(var_0.x, 738f, global0[_wgslsmith_index_u32(71217u, 29u)])), var_0.ywz)) + vec3<f32>(-426f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 29u)])), 359f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 29u)] * global0[_wgslsmith_index_u32(u_input.a.x, 29u)]) + 731f), -1876f)))), u_input.a.x | _wgslsmith_sub_u32(_wgslsmith_add_u32(var_1 << (u_input.a.x % 32u), 58218u), (u_input.a.x << (77655u % 32u)) & 0u), ~abs(_wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(1u, u_input.a.x)) >> (reverseBits(4294967295u) % 32u)), reverseBits(abs(vec2<i32>(~u_input.b, _wgslsmith_mult_i32(global1.x, 41217i)))));
}

