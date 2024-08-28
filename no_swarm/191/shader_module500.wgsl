struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 30> = array<u32, 30>(0u, 945u, 0u, 1u, 4294967295u, 4294967295u, 1u, 7837u, 0u, 52449u, 41790u, 57562u, 91718u, 0u, 1u, 1u, 3761u, 23081u, 46698u, 77274u, 1u, 52600u, 4294967295u, 0u, 6120u, 2450u, 4294967295u, 4294967295u, 58661u, 56361u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    let var_0 = vec3<bool>(true, true, any(vec3<bool>(true, arg_0.a.b <= _wgslsmith_f_op_f32(-1442f + 942f), arg_0.a.c && arg_0.a.c)));
    global0 = array<u32, 30>();
    var var_1 = arg_0;
    let var_2 = Struct_1(~68201u, -771f, false, vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_1.b.d.x, 1i, 0i), 1i), 1i), 2147483647i, u_input.a.x), ~reverseBits(3255u));
    var var_3 = select(select(var_0, select(vec3<bool>(!var_2.c, false, any(vec4<bool>(arg_0.a.c, arg_0.b.c, arg_0.b.c, var_0.x))), vec3<bool>(!var_1.a.c, var_1.b.b > arg_0.a.b, arg_1.x >= var_1.a.d.x), vec3<bool>(select(false, false, true), var_1.b.c, true && var_2.c)), !vec3<bool>(true, any(vec4<bool>(true, true, false, var_0.x)), !var_0.x)), var_0, select(var_0, !(!var_0), var_0));
    return ~(~_wgslsmith_add_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_2.a, 30u)], 1u), 3710u)) != 41u;
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)], 30u)], 30u)] & 1u, 22943u), global0[_wgslsmith_index_u32(4294967295u, 30u)]), 30u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -320f))), 465f)), func_3(Struct_2(Struct_1(abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)]), _wgslsmith_f_op_f32(max(553f, -235f)), any(vec2<bool>(true, false)), vec3<i32>(arg_0, 0i, arg_0), 0u), Struct_1(1u, _wgslsmith_f_op_f32(657f - 326f), true, vec3<i32>(arg_0, -17274i, arg_0), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15746u, 30u)], 30u)]))), u_input.a), u_input.a << (~(~firstTrailingBit(vec3<u32>(68629u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)], 1u))) % vec3<u32>(32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 30u)]), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 4294967295u), 30u)], global0[_wgslsmith_index_u32(43758u, 30u)] & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 30u)], 30u)], 30u)]), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], 49675u, 0u) ^ ~vec3<u32>(32501u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)])));
    var var_1 = Struct_1(1u, _wgslsmith_f_op_f32(max(var_0.b, _wgslsmith_f_op_f32(-var_0.b))), false, ~vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 77138i), u_input.a.yx), ~var_0.d.x) | ~reverseBits(_wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(var_0.d.x, -47514i, -24693i))), 4294967295u);
    let var_2 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(~0u), _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(var_1.e, 30u)], select(var_1.e, var_1.e, var_0.c))), var_1.e, reverseBits(_wgslsmith_dot_vec2_u32(min(vec2<u32>(var_1.e, var_0.a), vec2<u32>(var_1.e, var_1.e)), ~vec2<u32>(global0[_wgslsmith_index_u32(91315u, 30u)], var_0.e)))), -888f, var_0.c, vec3<i32>(var_1.d.x, ~select(var_0.d.x, 76746i << (var_0.e % 32u), var_0.c), countOneBits(abs(34170i ^ var_0.d.x))), _wgslsmith_sub_u32(firstLeadingBit(4294967295u) & global0[_wgslsmith_index_u32(var_1.a, 30u)], global0[_wgslsmith_index_u32(max(_wgslsmith_add_u32(~0u, reverseBits(global0[_wgslsmith_index_u32(3318u, 30u)])), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.a, var_1.a, global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(var_1.a, 30u)]), vec4<u32>(18615u, 31484u, 1843u, var_0.e), var_1.c), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 30u)], 30u)], var_1.e, 298u, global0[_wgslsmith_index_u32(var_1.a, 30u)]))), 30u)]));
    var_0 = var_2;
    var var_3 = 4294967295u;
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = arg_1.a;
    global0 = array<u32, 30>();
    var_0 = arg_1.b;
    var var_1 = select(!(!arg_0.yy), !(!select(vec2<bool>(var_0.c, false), !arg_0.yw, select(arg_0.wz, arg_0.yw, arg_0.x))), !arg_0.x);
    global0 = array<u32, 30>();
    return vec2<u32>(0u, 0u);
}

fn func_1(arg_0: u32, arg_1: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_add_vec2_u32(func_4(vec4<bool>(arg_1 < arg_1, !(global0[_wgslsmith_index_u32(0u, 30u)] == global0[_wgslsmith_index_u32(arg_0, 30u)]), true, func_2(u_input.a.x) & true), Struct_2(Struct_1(arg_0, -1823f, false, u_input.a, 1u), Struct_1(firstTrailingBit(0u), _wgslsmith_f_op_f32(ceil(694f)), true, u_input.a, arg_0))), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~(~func_4(vec4<bool>(true, true, false, true), Struct_2(Struct_1(33757u, 333f, true, vec3<i32>(u_input.a.x, arg_1, u_input.a.x), arg_0), Struct_1(global0[_wgslsmith_index_u32(2345u, 30u)], -1678f, true, u_input.a, global0[_wgslsmith_index_u32(0u, 30u)]))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1680f - _wgslsmith_div_f32(-169f, 312f))))));
    var var_2 = (vec4<i32>(2056i, 1i, arg_1, 74784i) ^ -min(countOneBits(vec4<i32>(arg_1, u_input.a.x, 1i, u_input.a.x)), countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))) << (vec4<u32>(arg_0, 0u, _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(abs(var_0.x), reverseBits(1u))), func_4(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), func_3(Struct_2(Struct_1(4294967295u, -1053f, true, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 30u)], 30u)]), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 30u)], 30u)], 671f, false, vec3<i32>(1i, 0i, -63003i), global0[_wgslsmith_index_u32(4294967295u, 30u)])), u_input.a)), Struct_2(Struct_1(var_0.x, 1236f, true, vec3<i32>(-35154i, u_input.a.x, -3197i), 4294967295u), Struct_1(var_0.x, -462f, false, vec3<i32>(u_input.a.x, 163i, arg_1), 1u))).x) % vec4<u32>(32u));
    let var_3 = Struct_2(Struct_1(0u, _wgslsmith_f_op_f32(ceil(783f)), true, vec3<i32>(arg_1, ~(~(-27222i)), firstLeadingBit(var_2.x)), firstLeadingBit(arg_0)), Struct_1(58674u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1 + -587f))), true, -_wgslsmith_clamp_vec3_i32(-u_input.a, _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, var_2.x, arg_1), vec3<i32>(var_2.x, 0i, var_2.x)), -vec3<i32>(-9011i, arg_1, 33796i)), ~var_0.x));
    var var_4 = var_3.b;
    return vec4<i32>(-3541i, i32(-1i) * -1i, var_2.x, -var_2.x & _wgslsmith_dot_vec4_i32(~reverseBits(vec4<i32>(2147483647i, 39814i, var_2.x, 2192i)), -vec4<i32>(0i, 15226i, 2147483647i, 2147483647i)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = select(reverseBits(vec4<i32>(~u_input.a.x, 26848i, ~(i32(-1i) * -10757i), -2147483647i)), vec4<i32>(arg_0.x >> (~1u % 32u), _wgslsmith_mod_i32(arg_0.x, ~(-u_input.a.x)), _wgslsmith_add_i32(-1i, u_input.a.x), -32482i), vec4<bool>(all(!vec3<bool>(var_0.x, false, false)), false, true, !(!(!var_0.x))));
    var_0 = !vec2<bool>(true, !var_0.x);
    var_0 = vec2<bool>(true | var_0.x, all(!(!(!vec4<bool>(false, false, var_0.x, true)))));
    return Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 30u)], 30u)] ^ max(~global0[_wgslsmith_index_u32(1u << (1u % 32u), 30u)], 1u), _wgslsmith_f_op_f32(select(565f, -825f, !var_0.x)), var_0.x, reverseBits(abs(firstLeadingBit(vec3<i32>(-15449i, 76371i, -14515i)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 30>();
    var var_0 = Struct_2(func_5(func_1(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_mult_u32(6389u, 21901u)), -1i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(223f * 624f), 1035f), vec2<f32>(_wgslsmith_div_f32(601f, -1509f), -386f)))), func_5(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(-34164i, 1i, -54734i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-202f, 1000f) + vec2<f32>(1f, 1f))))));
    let var_1 = vec2<u32>(1u, abs(~(~1u) >> (~_wgslsmith_sub_u32(var_0.b.a, global0[_wgslsmith_index_u32(var_0.b.a, 30u)]) % 32u)));
    global0 = array<u32, 30>();
    var var_2 = -u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_5(vec4<i32>(var_0.a.d.x, 2147483647i, var_0.b.d.x, u_input.a.x), vec2<f32>(1659f, var_0.b.b)).b, _wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(var_0.b.b + 914f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, _wgslsmith_mult_u32(firstTrailingBit(var_0.a.e), ~reverseBits(var_0.b.a))));
}

