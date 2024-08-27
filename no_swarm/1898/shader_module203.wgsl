struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, false, false, false, true);

var<private> global1: f32 = -1479f;

var<private> global2: array<vec4<i32>, 14>;

var<private> global3: vec2<i32> = vec2<i32>(-9771i, -43099i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = Struct_1(~(-global3.x) >= global3.x, u_input.e, ~max(~(~19462u), countOneBits(4294967295u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(368f, 571f), vec2<f32>(1913f, 347f))), vec2<f32>(1f, 1f), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.e, 5u)], true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1191f, -537f) - vec2<f32>(1392f, 685f))), !(global0[_wgslsmith_index_u32(u_input.e, 5u)] && arg_0)))), (select(vec2<u32>(4294967295u, u_input.e), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.e), vec2<u32>(u_input.c, u_input.c)), !vec2<bool>(global0[_wgslsmith_index_u32(58243u, 5u)], global0[_wgslsmith_index_u32(u_input.d, 5u)])) & vec2<u32>(4294967295u, u_input.c << (u_input.d % 32u))) ^ countOneBits(vec2<u32>(0u, 37337u) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 1u), vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u))));
    global2 = array<vec4<i32>, 14>();
    global3 = vec2<i32>(u_input.a, ~_wgslsmith_mod_i32(1i, abs(_wgslsmith_mult_i32(global3.x, -2147483647i))));
    global1 = -1253f;
    let var_1 = vec2<f32>(1f, 184f);
    return _wgslsmith_mod_u32(_wgslsmith_add_u32(17638u, 0u), ~var_0.c) & var_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = -select(_wgslsmith_div_vec3_i32(-vec3<i32>(global3.x, 56637i, global3.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-20216i, global3.x, 0i), vec3<i32>(u_input.b, u_input.a, global3.x), vec3<i32>(global3.x, global3.x, u_input.b)) ^ vec3<i32>(-2761i, u_input.b, 1i)), vec3<i32>(_wgslsmith_add_i32(~u_input.a, -global3.x), -47227i, max(u_input.a, u_input.b)), !all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 5u)], false, global0[_wgslsmith_index_u32(u_input.e, 5u)])) & true);
    let var_1 = Struct_1(!global0[_wgslsmith_index_u32(4294967295u, 5u)], func_3(!global0[_wgslsmith_index_u32(~u_input.e, 5u)]), ~u_input.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -744f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1083f), -763f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -178f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2243f, -408f))))), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(35939u << (u_input.c % 32u), u_input.c), 5u)], !(global0[_wgslsmith_index_u32(4294967295u, 5u)] & true)))), ~(~(abs(vec2<u32>(u_input.d, 152486u)) << (countOneBits(vec2<u32>(u_input.d, 4466u)) % vec2<u32>(32u)))));
    var var_2 = var_1.e;
    global2 = array<vec4<i32>, 14>();
    let var_3 = all(!select(select(select(vec4<bool>(var_1.a, false, true, false), vec4<bool>(false, true, var_1.a, global0[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(true, var_1.a, var_1.a, var_1.a)), !vec4<bool>(false, global0[_wgslsmith_index_u32(25603u, 5u)], var_1.a, false), !vec4<bool>(global0[_wgslsmith_index_u32(69304u, 5u)], global0[_wgslsmith_index_u32(11292u, 5u)], var_1.a, var_1.a)), vec4<bool>(select(false, false, var_1.a), any(vec3<bool>(var_1.a, global0[_wgslsmith_index_u32(0u, 5u)], false)), false, true), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(var_2.x, 5u)], global0[_wgslsmith_index_u32(var_2.x, 5u)], global0[_wgslsmith_index_u32(u_input.d, 5u)]), vec4<bool>(var_1.a, var_1.a, true, false), true)));
    return Struct_1(var_1.a, 1u, var_1.e.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, var_1.d.x))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(570f, var_1.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_1.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.x, 234f) * vec2<f32>(var_1.d.x, var_1.d.x))))), var_1.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    global3 = select(~_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, -42998i), vec2<i32>(-45666i, -1542i)), ~vec2<i32>(u_input.a, 1i)), vec2<i32>(-1i, firstLeadingBit(-11398i))), min(~abs(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-1i, -28601i))), reverseBits(select(vec2<i32>(u_input.b, -11105i), vec2<i32>(-37983i, u_input.a), global0[_wgslsmith_index_u32(2644u, 5u)])) & (vec2<i32>(global3.x, -501i) << (_wgslsmith_mod_vec2_u32(arg_0.e, arg_1.e) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(firstTrailingBit(arg_0.c) | arg_0.e.x, 5u)]);
    global3 = vec2<i32>(_wgslsmith_mult_i32(i32(-1i) * -12964i, u_input.a), global3.x);
    var var_0 = arg_0;
    var var_1 = func_2();
    var var_2 = func_2();
    return func_3(true);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> vec2<i32> {
    global1 = 831f;
    var var_0 = vec2<u32>(u_input.d, u_input.e);
    var var_1 = Struct_1(arg_1.x | any(!vec3<bool>(arg_1.x, false, arg_0)), func_4(func_2(), Struct_1(var_0.x != abs(u_input.c), ~(~var_0.x), abs(func_3(false)), vec2<f32>(-246f, 613f), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(103069u, u_input.c)), _wgslsmith_clamp_vec2_u32(vec2<u32>(21760u, 4294967295u), vec2<u32>(u_input.e, var_0.x), vec2<u32>(u_input.c, u_input.d))))), ~4294967295u, vec2<f32>(-167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -238f)))), min(abs(reverseBits(vec2<u32>(var_0.x, var_0.x)) ^ vec2<u32>(var_0.x, 0u)), reverseBits(~(~vec2<u32>(var_0.x, 11594u)))));
    var var_2 = func_2();
    var var_3 = func_2();
    return abs(select(-vec2<i32>(_wgslsmith_sub_i32(u_input.b, global3.x), _wgslsmith_add_i32(global3.x, 24954i)), ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, 2979i), vec2<i32>(global3.x, 1i), vec2<i32>(-1724i, global3.x)) << (vec2<u32>(var_3.e.x, 2689u) % vec2<u32>(32u))), !arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 14>();
    var var_0 = min(-func_1(!global0[_wgslsmith_index_u32(~u_input.d, 5u)], vec2<bool>(true, false)), vec2<i32>(_wgslsmith_mod_i32((-2147483647i | u_input.a) << (~1u % 32u), global3.x), global3.x));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-718f, _wgslsmith_f_op_f32(-1174f * -2294f))) - 235f), false)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(294f, 1004f))))), _wgslsmith_f_op_f32(-323f - 1856f))));
    global1 = 2008f;
    global3 = vec2<i32>(1i, 1i ^ (~(u_input.b & -2147483647i) ^ -13505i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1009f, 701f, -742f, -213f)), _wgslsmith_div_vec4_f32(vec4<f32>(-2483f, -590f, -371f, 1000f), vec4<f32>(966f, -1497f, -274f, 713f)))))), ~(~_wgslsmith_div_u32(~u_input.e, abs(u_input.c))), u_input.a, vec4<u32>(_wgslsmith_clamp_u32(u_input.d, u_input.d, ~9460u), abs(reverseBits(u_input.c)), ~(~_wgslsmith_add_u32(u_input.e, u_input.c)), u_input.d));
}

