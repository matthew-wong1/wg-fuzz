struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<f32, 22>;

var<private> global2: u32;

var<private> global3: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    global3 = 1f;
    global2 = ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 33677u)), reverseBits(vec2<u32>(0u, 44766u))) >> (~11494u % 32u), ~20808u);
    var var_0 = countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(58786u, 56472u, 41246u, 1u), ~vec4<u32>(22996u, 49292u, 36799u, 1u)), ~(~4372u), 1u)) << (_wgslsmith_mult_u32(1u, ~firstLeadingBit(110635u)) % 32u);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1089f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(0u), 22u)] * global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(8764u, 21125u), 22u)]), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 22u)]))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-880f, -776f, -837f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(566f, 529f, 914f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(746f, global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(52717u, 22u)])) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1115f, 512f, global1[_wgslsmith_index_u32(65227u, 22u)])))), vec3<f32>(599f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1667f))), _wgslsmith_div_f32(-1661f, _wgslsmith_f_op_f32(479f * global1[_wgslsmith_index_u32(53915u, 22u)]))), vec3<bool>(!select(true, false, true), false, all(vec4<bool>(true, true, true, true))))));
    global2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~72572u, ~(~0u), 1u), vec3<u32>(1u, _wgslsmith_sub_u32(4294967295u, countOneBits(1u)), ~_wgslsmith_div_u32(417u, 4294967295u))), 4294967295u);
    return _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(58509i, u_input.a.x, -50504i)), vec3<i32>(-41649i, u_input.a.x, u_input.a.x)), ~arg_0) << (1u % 32u), _wgslsmith_add_i32(select(1i, firstLeadingBit(reverseBits(54895i)), any(vec2<bool>(true, true))), 2147483647i));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global1 = array<f32, 22>();
    var var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1954f), min(abs(~vec2<u32>(44069u, arg_2.b.x)), _wgslsmith_div_vec2_u32(select(var_0.b, vec2<u32>(1u, var_0.b.x), false) ^ arg_2.b, vec2<u32>(1u, firstLeadingBit(36982u)))), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -579f) + _wgslsmith_f_op_f32(-1556f + 1497f))), (i32(-1i) * -arg_2.e) >> (~arg_2.b.x % 32u), func_3(vec3<i32>(arg_2.d, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d, arg_2.d, -1i, 12257i), vec4<i32>(arg_1.d, -17179i, 13950i, arg_2.e)), -1i) ^ (_wgslsmith_clamp_vec3_i32(vec3<i32>(-61732i, -971i, 2147483647i), vec3<i32>(u_input.a.x, 1i, arg_2.d), vec3<i32>(2147483647i, 19565i, 6697i)) ^ -vec3<i32>(var_0.e, 17969i, u_input.a.x))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1035f)), _wgslsmith_f_op_f32(floor(-628f))));
    let var_3 = var_1.b.x;
    return arg_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(0u, 22u)])) + _wgslsmith_f_op_f32(func_2(false, Struct_1(global1[_wgslsmith_index_u32(40644u, 22u)], vec2<u32>(1u, 1u), global1[_wgslsmith_index_u32(55033u, 22u)], 1i, global0.x), Struct_1(global1[_wgslsmith_index_u32(9488u, 22u)], vec2<u32>(35211u, 0u), global1[_wgslsmith_index_u32(1u, 22u)], global0.x, global0.x)))), _wgslsmith_f_op_f32(step(-536f, _wgslsmith_f_op_f32(func_2(true, Struct_1(1071f, vec2<u32>(4294967295u, 1u), -1043f, u_input.a.x, u_input.a.x), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 22u)], vec2<u32>(0u, 1599u), global1[_wgslsmith_index_u32(1u, 22u)], -13899i, -2147483647i)))))) + global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 22u)]), vec2<u32>(1u, ~1u), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(35619u, 22u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_dot_vec2_i32(vec2<i32>(min(i32(-1i) * -1i, 1i), ~_wgslsmith_mod_i32(global0.x, global0.x)), ~global0.yx), _wgslsmith_mod_i32(-global0.x, -2147483647i & global0.x) | u_input.a.x);
    var var_1 = !vec2<bool>(true, !(reverseBits(var_0.b.x) == var_0.b.x));
    global1 = array<f32, 22>();
    let var_2 = vec3<u32>(firstLeadingBit(_wgslsmith_mod_u32(~9896u, firstLeadingBit(var_0.b.x))), _wgslsmith_mod_u32(~(~1u), ~var_0.b.x), _wgslsmith_mult_u32(0u, ~var_0.b.x | 73532u)) & (vec3<u32>(~0u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(var_0.b.x, var_0.b.x), var_0.b.x, ~27691u), max(_wgslsmith_div_u32(97324u, 7513u), var_0.b.x ^ 0u)) | countOneBits(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b.x, 51625u, var_0.b.x), vec3<u32>(45990u, var_0.b.x, var_0.b.x))));
    global0 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 25371i, u_input.a.x) & vec3<i32>(global0.x, 0i, global0.x)) << (_wgslsmith_mod_vec3_u32(~var_2, max(var_2, vec3<u32>(21154u, var_2.x, 0u))) % vec3<u32>(32u)), -vec3<i32>(-1i, -u_input.a.x, u_input.a.x), min(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, u_input.a.x, global0.x), vec3<i32>(31763i, global0.x, 2147483647i)), vec3<i32>(var_0.e, 28487i, -1i) << (var_2 % vec3<u32>(32u))) & _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(global0.x, global0.x, var_0.e)), vec3<i32>(global0.x, global0.x, u_input.a.x) | vec3<i32>(-13198i, global0.x, global0.x))));
    return Struct_1(var_0.a, select(var_2.xy, vec2<u32>(_wgslsmith_mod_u32(var_0.b.x ^ var_2.x, 1u << (1u % 32u)), 47675u), false), -1708f, i32(-1i) * -2147483647i, firstLeadingBit(global0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_1();
    var var_1 = var_0;
    var var_2 = select(select(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, any(vec4<bool>(false, true, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), vec2<bool>(select(768f < arg_1.c, false, true), false)), vec2<bool>(!(!(0u <= arg_3.b.x)), -1094f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * -921f))), true);
    var_2 = !select(vec2<bool>(true, var_2.x), !(!select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, false), var_2.x)), vec2<bool>(true, all(vec2<bool>(var_2.x, var_2.x))));
    let var_3 = arg_0;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), Struct_1(1219f, ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, 88492u)), select(vec2<u32>(0u, 2061u), vec2<u32>(1u, 34946u), false)), 777f, _wgslsmith_mult_i32(-1i, global0.x), ~_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, global0.x), ~u_input.a)), u_input.a.x, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-244f, global1[_wgslsmith_index_u32(1u, 22u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f))), vec2<u32>(26789u, ~_wgslsmith_clamp_u32(4294967295u, 4294967295u, 1u)), -2034f, 41125i, -firstTrailingBit(2147483647i)));
    var var_1 = u_input.a.x;
    let var_2 = select(!vec3<bool>(true, all(vec2<bool>(false, true)), false), vec3<bool>(true, true, true), !vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), false, true));
    var var_3 = var_0;
    let var_4 = func_4(var_0, func_1(), abs(~(-13081i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(var_0.b.x, 22u)]))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a, var_3.c, var_2.x)) - _wgslsmith_f_op_f32(875f + var_3.a))), var_3.b, var_0.a, global0.x, func_1().d));
    let var_5 = var_0.b.x;
    let var_6 = !(!(!(!select(vec4<bool>(false, true, var_2.x, var_2.x), vec4<bool>(var_2.x, false, true, var_2.x), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c)))))));
}

