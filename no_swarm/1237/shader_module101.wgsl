struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: array<bool, 10>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-252f, -573f, 224f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1243f, 622f, -1320f))))))), vec3<u32>(~_wgslsmith_mod_u32(4294967295u, arg_0), ~_wgslsmith_mod_u32(arg_0, arg_0), 0u) >> (~abs(select(vec3<u32>(46225u, 55275u, 18772u), vec3<u32>(arg_0, arg_0, 54732u), true)) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_mod_u32(arg_0, 61577u) | _wgslsmith_add_u32(arg_0, var_0.b.x), 0u), var_0.b.yz);
    let var_2 = 2147483647i;
    global1 = array<bool, 10>();
    return vec4<bool>(!global0.x, any(!select(global0.wwz, !vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b.x, 10u)], true), global0.zzx)), true, false);
}

fn func_2() -> i32 {
    global1 = array<bool, 10>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1707f, 845f, 705f, 1314f), vec4<f32>(-324f, 1000f, 598f, 1000f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, -1496f, -204f, -618f)))))));
    global1 = array<bool, 10>();
    global0 = select(vec4<bool>(false, false, !global0.x, true), select(!(!select(vec4<bool>(true, global0.x, global0.x, global1[_wgslsmith_index_u32(4007u, 10u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(18227u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(59805u, 10u)], true))), !(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 10u)], global0.x, false))), select(select(select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, global0.x, global1[_wgslsmith_index_u32(38837u, 10u)], false), true), !vec4<bool>(global1[_wgslsmith_index_u32(6634u, 10u)], false, false, global1[_wgslsmith_index_u32(4294967295u, 10u)]), select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(71648u, 10u)], global0.x), vec4<bool>(global0.x, true, global1[_wgslsmith_index_u32(48834u, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)]))), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 10u)], true), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true, global1[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(true, true, true, true), true), global0.x), vec4<bool>(-1002f > var_0.x, !global1[_wgslsmith_index_u32(26709u, 10u)], true, all(vec4<bool>(global0.x, global1[_wgslsmith_index_u32(1u, 10u)], true, global0.x))))), func_3(min(4294967295u >> (0u % 32u), 54005u) >> (1u % 32u), Struct_2((u_input.a.x ^ u_input.a.x) & u_input.a.x, abs(-u_input.a.x))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x + 181f)))), var_0.x, 470f), ~select(vec3<u32>(reverseBits(4294967295u), abs(1u), abs(0u)), vec3<u32>(1u, 1u, 1u), select(func_3(4294967295u, Struct_2(-2147483647i, 97970i)).xxw, !vec3<bool>(global0.x, false, global0.x), global0.xxw)));
    return 2147483647i;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = ~1i;
    var var_1 = Struct_2(_wgslsmith_add_i32(arg_0.a, i32(-1i) * -1i), -(~_wgslsmith_add_i32(0i, _wgslsmith_sub_i32(u_input.a.x, -1i))));
    global1 = array<bool, 10>();
    let var_2 = min(1u, ~_wgslsmith_div_u32(1u, 1u));
    global1 = array<bool, 10>();
    return arg_0;
}

fn func_1() -> Struct_2 {
    global0 = select(!(!(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 10u)], global1[_wgslsmith_index_u32(47001u, 10u)], global1[_wgslsmith_index_u32(9012u, 10u)])))), select(vec4<bool>(true, true, true, select(4294967295u, 32513u, false) == ~63445u), select(vec4<bool>(global1[_wgslsmith_index_u32(~75435u, 10u)], true, global0.x, all(vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 10u)], true))), select(select(vec4<bool>(false, true, global0.x, false), vec4<bool>(false, global1[_wgslsmith_index_u32(83141u, 10u)], global1[_wgslsmith_index_u32(1u, 10u)], global0.x), global0.x), select(vec4<bool>(true, global0.x, false, global1[_wgslsmith_index_u32(88509u, 10u)]), vec4<bool>(global0.x, global0.x, true, global1[_wgslsmith_index_u32(51701u, 10u)]), true), global0.x), false), select(!(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global0.x, global0.x, global0.x)), !select(vec4<bool>(true, false, global0.x, false), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 10u)], true, global1[_wgslsmith_index_u32(1u, 10u)]), true), false)), !select(!(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 10u)], global1[_wgslsmith_index_u32(38855u, 10u)], global0.x, global0.x)), select(!vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], false, global1[_wgslsmith_index_u32(1u, 10u)], false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 10u)], false)), (u_input.a.x < -19880i) | (global1[_wgslsmith_index_u32(0u, 10u)] != global1[_wgslsmith_index_u32(0u, 10u)])));
    var var_0 = func_4(Struct_2(u_input.a.x, ~func_2()));
    let var_1 = func_4(func_4(Struct_2(~(-40703i), -22098i)));
    var_0 = var_1;
    let var_2 = ~vec3<i32>(-31113i, var_1.a, 6485i);
    return var_1;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = select(vec4<bool>(true, true, !select(!global0.x, !global0.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 62968u), 10u)]), any(!global0.zx)), select(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 10u)], global1[_wgslsmith_index_u32(arg_0, 10u)], global1[_wgslsmith_index_u32(42646u, 10u)]), vec4<bool>(global0.x, false, false, global1[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(global0.x, false, true, global1[_wgslsmith_index_u32(53121u, 10u)]))), select(select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global0.x, global1[_wgslsmith_index_u32(76733u, 10u)], global0.x), !vec4<bool>(false, global0.x, true, global0.x), !global1[_wgslsmith_index_u32(arg_0, 10u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(29038u, 10u)], false, false), select(global0.x, !global0.x, all(vec2<bool>(true, global0.x)))), !global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 59635u, arg_0, arg_0), vec4<u32>(1u, arg_0, arg_0, 32224u))), 10u)]), func_3(~_wgslsmith_mult_u32(max(arg_0, 56326u), 4294967295u), arg_1));
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(-672f)), _wgslsmith_f_op_f32(floor(-1241f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(840f * -784f))))), ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0, 1u, arg_0), vec3<u32>(0u, 17304u, 109093u)), vec3<u32>(1u, arg_0, _wgslsmith_mod_u32(36800u, arg_0))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), _wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, arg_0, arg_0)), ~vec3<u32>(1u, arg_0, var_0.b.x)), vec3<u32>(_wgslsmith_mod_u32(select(1u, 1u, true), ~arg_0), ~(arg_0 << (127u % 32u)), 4294967295u), var_0.b));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.a - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 897f, var_0.a.x))))), select(~select(vec3<u32>(4294967295u, 14222u, var_1.b.x), ~var_0.b, global0.x), reverseBits(~reverseBits(vec3<u32>(62742u, var_0.b.x, var_1.b.x))), true));
    return Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 193f, 221f))))))), ~reverseBits(var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(4294967295u, func_1());
    global1 = array<bool, 10>();
    let var_1 = func_4(func_1());
    var var_2 = vec4<i32>(~(4494i >> (select(10941u >> (var_0.b.x % 32u), select(var_0.b.x, var_0.b.x, true), true) % 32u)), u_input.a.x, -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), -u_input.a), select(_wgslsmith_sub_i32(2147483647i, var_1.a), u_input.a.x << (14421u % 32u), any(vec3<bool>(true, global0.x, global0.x)))), i32(-1i) * -u_input.a.x);
    let var_3 = vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(select(-var_2.xzw, _wgslsmith_add_vec3_i32(var_2.xwz, var_2.zxx), global0.xwx), vec3<i32>(-1i) * -vec3<i32>(var_1.b, -5370i, u_input.a.x));
    let var_4 = select(vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 10u)], all(vec4<bool>(false, false, global0.x, global1[_wgslsmith_index_u32(var_0.b.x, 10u)])), !global0.x, global1[_wgslsmith_index_u32(var_0.b.x, 10u)])), select(false, var_2.x != reverseBits(0i), true)), vec2<bool>(!all(!global0.xyw), !(!(false & global1[_wgslsmith_index_u32(23389u, 10u)]))), 1u <= var_0.b.x);
    global0 = select(!vec4<bool>(true, !any(global0.ywy), select(true, false, true), !func_3(31533u, var_1).x), vec4<bool>(global1[_wgslsmith_index_u32(1u, 10u)], (~(-2147483647i) == var_1.b) & any(select(vec4<bool>(true, false, global0.x, false), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.b.x, 10u)], var_4.x, false), false)), any(func_3(var_0.b.x, Struct_2(var_3.x, var_1.b)).xxy) && var_4.x, global1[_wgslsmith_index_u32(abs(~15303u), 10u)]), vec4<bool>(true || (global0.x != true), all(func_3(779u, Struct_2(-2147483647i, var_1.a)).wzx), var_4.x, global0.x));
    var_2 = vec4<i32>(i32(-1i) * -1i, var_1.b, -25272i, -u_input.a.x);
    var_2 = vec4<i32>(u_input.a.x, select(abs(_wgslsmith_div_i32(-1139i, ~31360i)), select(64268i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-43811i, -27010i, var_1.a), reverseBits(49104i)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_0.b, vec3<u32>(1u, var_0.b.x, 0u), vec3<u32>(var_0.b.x, var_0.b.x, 1u)), var_0.b), 10u)]), false), ~_wgslsmith_sub_i32(firstTrailingBit(select(-2147483647i, -45481i, global0.x)), 1i), i32(-1i) * -firstTrailingBit(_wgslsmith_mult_i32(var_3.x, var_2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.a.x, _wgslsmith_f_op_f32(var_0.a.x + 966f), _wgslsmith_add_vec2_i32(select(_wgslsmith_sub_vec2_i32(u_input.a, abs(u_input.a)), ~vec2<i32>(-1i, 2147483647i), true & all(vec4<bool>(var_4.x, false, var_4.x, global0.x))), var_2.yw), ~func_2(), var_0.b.x);
}

