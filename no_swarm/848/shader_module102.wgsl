struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(598f, -736f, -1000f, -1000f, -1107f, -153f, 1395f, -195f, -437f, -131f, 785f, -251f, -444f, -1499f, 302f, 314f, -1993f, -2253f, 588f, 142f, 2365f, 228f, 406f);

var<private> global1: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> vec4<u32> {
    global1 = 4294967295u;
    var var_0 = -366f;
    var var_1 = arg_2.c;
    let var_2 = Struct_2(_wgslsmith_mod_vec2_u32(var_1.d & var_1.c.yy, _wgslsmith_div_vec2_u32(firstTrailingBit(arg_2.a ^ arg_0.yz), ~arg_2.e.c.zy & max(arg_2.c.c.xz, vec2<u32>(3425u, var_1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1 * vec4<f32>(global0[_wgslsmith_index_u32(33541u, 23u)], -1182f, arg_1.x, global0[_wgslsmith_index_u32(var_1.b, 23u)])))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -328f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(var_1.b, 23u)])))), -632f, -1610f)), Struct_1(~_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.a, arg_2.c.a), -arg_2.e.a, arg_2.e.a), firstTrailingBit(~abs(arg_0.x)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.e.b, 1u, var_1.c.x), var_1.c, vec3<u32>(arg_0.x, 0u, arg_2.a.x)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.a.x, arg_2.a.x, 0u), arg_2.e.c, vec3<u32>(46502u, 1u, 44760u))), arg_2.a), true, Struct_1(reverseBits(-var_1.a), arg_0.x, firstTrailingBit(abs(~arg_2.c.c)), countOneBits(select(_wgslsmith_mult_vec2_u32(arg_2.e.d, arg_2.c.d), arg_0.zz ^ vec2<u32>(0u, 14855u), vec2<bool>(true, true)))));
    var var_3 = Struct_1(vec2<i32>(~(i32(-1i) * -2147483647i) ^ (_wgslsmith_mult_i32(var_1.a.x, -2147483647i) >> (~0u % 32u)), -12479i), var_2.c.b, var_2.e.c, _wgslsmith_add_vec2_u32(var_2.a, _wgslsmith_div_vec2_u32(~(vec2<u32>(arg_2.c.c.x, arg_2.e.b) ^ vec2<u32>(arg_2.a.x, 4294967295u)), select(abs(var_1.c.yy), var_1.d, true))));
    return countOneBits(arg_0);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global1 = 11065u;
    let var_0 = global0[_wgslsmith_index_u32(22897u >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 1u), ~4294967295u), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), func_3(vec4<u32>(66811u, 44699u, 1u, 1975u), vec4<f32>(global0[_wgslsmith_index_u32(46672u, 23u)], global0[_wgslsmith_index_u32(87211u, 23u)], -1403f, global0[_wgslsmith_index_u32(75044u, 23u)]), Struct_2(vec2<u32>(23047u, 44896u), vec4<f32>(global0[_wgslsmith_index_u32(1489u, 23u)], 467f, global0[_wgslsmith_index_u32(1u, 23u)], 215f), Struct_1(u_input.c.yz, 20692u, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec2<u32>(0u, 77999u)), false, Struct_1(u_input.b, 41538u, vec3<u32>(37821u, 18219u, 1u), vec2<u32>(1u, 31510u))))))) % 32u), 23u)];
    let var_1 = ~(~countOneBits(46803u));
    var var_2 = !(!select(vec3<bool>(true, true, select(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), select(u_input.b.x > arg_0.x, true, any(vec4<bool>(true, true, false, false)))));
    let var_3 = Struct_2((~select(vec2<u32>(1u, var_1), vec2<u32>(22483u, 1u), var_2.zx) << (max(_wgslsmith_div_vec2_u32(vec2<u32>(var_1, 4294967295u), vec2<u32>(4294967295u, 81592u)), vec2<u32>(105305u, var_1)) % vec2<u32>(32u))) >> (vec2<u32>(1u, 30009u | ~var_1) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(var_1, 23u)], -1476f, 896f, global0[_wgslsmith_index_u32(var_1, 23u)]))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(var_1, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)], 725f, -108f) - vec4<f32>(1083f, global0[_wgslsmith_index_u32(var_1, 23u)], 502f, 1000f))))), vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-258f, global0[_wgslsmith_index_u32(4294967295u, 23u)]))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, var_1, var_1, var_1)), vec4<u32>(var_1, var_1, var_1, var_1)), 23u)], global0[_wgslsmith_index_u32(firstTrailingBit(var_1), 23u)]))), Struct_1(vec2<i32>(_wgslsmith_add_i32(u_input.a, 2147483647i) << (firstLeadingBit(4294967295u) % 32u), arg_0.x), 55251u, vec3<u32>(18791u << (1u % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_1, var_1, var_1), vec4<u32>(0u, 66503u, var_1, var_1)), ~firstTrailingBit(var_1)), vec2<u32>(var_1, ~_wgslsmith_div_u32(var_1, var_1))), var_2.x && !(!(var_1 != 1u)), Struct_1(arg_0, ~var_1, max(max(min(vec3<u32>(var_1, var_1, 1u), vec3<u32>(var_1, 1u, var_1)), vec3<u32>(var_1, var_1, 0u)), ~min(vec3<u32>(var_1, 30847u, 15633u), vec3<u32>(var_1, 39283u, var_1))), vec2<u32>(_wgslsmith_mult_u32(29852u, var_1), var_1 << (113621u % 32u)) ^ vec2<u32>(34121u, 52338u)));
    return Struct_2(~(~var_3.e.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(var_3.a.x, 23u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(77460u, 23u)]) - _wgslsmith_f_op_f32(round(-765f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.a.x, 23u)])))), var_3.c, var_2.x || any(select(vec3<bool>(true, var_3.d, var_2.x), vec3<bool>(var_2.x, true, var_3.d), vec3<bool>(true, false, var_3.d))), Struct_1(vec2<i32>(-1i, arg_0.x) | _wgslsmith_div_vec2_i32(countOneBits(u_input.b), select(arg_0, u_input.c.zy, false)), firstLeadingBit(10095u), vec3<u32>(var_3.a.x, ~1u, _wgslsmith_sub_u32(1u, select(24125u, var_1, true))), var_3.c.c.xz));
}

fn func_1() -> vec3<u32> {
    global0 = array<f32, 23>();
    let var_0 = func_2(-u_input.c.yy);
    let var_1 = true;
    global0 = array<f32, 23>();
    global1 = 48015u;
    return vec3<u32>(var_0.a.x, var_0.c.b, var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(reverseBits(vec2<i32>(firstTrailingBit(2147483647i), min(u_input.b.x, u_input.a))), ~_wgslsmith_sub_u32(0u, min(0u, reverseBits(1u))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(~func_1(), _wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, 77475u), vec3<u32>(47450u, 4294967295u, 10983u), false), select(vec3<u32>(5145u, 53099u, 1u), vec3<u32>(20302u, 4693u, 1u), false)))), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mult_u32(func_3(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(23572u, 23u)], -372f, 739f, 493f)), Struct_2(vec2<u32>(79298u, 19964u), vec4<f32>(-119f, 2193f, 242f, 1688f), Struct_1(u_input.c.xy, 0u, vec3<u32>(4294967295u, 4294967295u, 0u), vec2<u32>(19744u, 4294967295u)), false, Struct_1(u_input.c.xy, 26029u, vec3<u32>(0u, 11354u, 6504u), vec2<u32>(0u, 70091u)))).x, 54085u)));
    let var_1 = countOneBits(func_1().xy);
    var var_2 = _wgslsmith_div_u32(0u, 1u);
    let var_3 = vec4<u32>(1u, var_1.x, 11643u, firstLeadingBit(~(var_0.b ^ countOneBits(4294967295u))));
    var var_4 = -min(select(-(~vec2<i32>(1i, u_input.b.x)), vec2<i32>(22473i, -1i), (var_0.a.x >= u_input.a) | true), select(u_input.b, vec2<i32>(u_input.a, -2147483647i), vec2<bool>(var_3.x < 8892u, any(vec4<bool>(true, false, false, false)))));
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], -360f, 222f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(57318u, 23u)], 458f))), vec3<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(var_0.d.x, 23u)], -643f)), _wgslsmith_f_op_f32(sign(-1305f)), 1134f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0[_wgslsmith_index_u32(27826u, 23u)], global0[_wgslsmith_index_u32(var_1.x, 23u)], 615f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(609f, global0[_wgslsmith_index_u32(var_1.x, 23u)], -561f))) * vec3<f32>(global0[_wgslsmith_index_u32(var_1.x, 23u)], 692f, _wgslsmith_f_op_f32(floor(1156f))))));
    var_2 = 8306u;
    let var_6 = !select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, false)), any(vec4<bool>(false, true, false, true)), true | all(vec2<bool>(false, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)))));
    var var_7 = vec3<i32>(_wgslsmith_clamp_i32(2147483647i, var_0.a.x, _wgslsmith_div_i32(~var_0.a.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), abs(u_input.c)))), max(firstLeadingBit(_wgslsmith_add_i32(var_4.x, var_0.a.x)), u_input.c.x) ^ -_wgslsmith_mult_i32(var_0.a.x, ~u_input.b.x), _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, 1i), 2147483647i << (var_3.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(-139i ^ var_0.a.x), 7699i, _wgslsmith_dot_vec2_i32(var_7.xz, var_0.a), var_7.x), ~(-vec4<i32>(var_7.x, -1i, 0i, var_0.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(2454u, 23u)], -1359f, 995f, -615f), vec4<f32>(var_5.x, -833f, 680f, global0[_wgslsmith_index_u32(var_0.d.x, 23u)])), vec4<f32>(global0[_wgslsmith_index_u32(var_0.b, 23u)], -1273f, var_5.x, global0[_wgslsmith_index_u32(var_0.b, 23u)])))), _wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_3.x, 28297u), 23u)], _wgslsmith_f_op_f32(-1000f * 636f), _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(var_1.x, 23u)], 1280f, var_6.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_3.x, 23u)] - -839f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 1596f, var_5.x, global0[_wgslsmith_index_u32(var_0.d.x, 23u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_5.x, global0[_wgslsmith_index_u32(var_1.x, 23u)], -913f, global0[_wgslsmith_index_u32(0u, 23u)]) + vec4<f32>(-176f, global0[_wgslsmith_index_u32(15218u, 23u)], var_5.x, global0[_wgslsmith_index_u32(4294967295u, 23u)])))))), _wgslsmith_mod_u32(_wgslsmith_add_u32(min(var_1.x, var_1.x) & 1u, ~_wgslsmith_mod_u32(var_3.x, 21298u)), min(var_0.d.x, var_0.d.x)));
}

