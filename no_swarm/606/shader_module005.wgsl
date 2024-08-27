struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-3719i, 61773i, i32(-2147483648));

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-2147f, -769f, -2734f), 1u);

var<private> global2: vec3<f32> = vec3<f32>(464f, -140f, 456f);

var<private> global3: array<vec3<u32>, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    let var_0 = 1570f;
    global3 = array<vec3<u32>, 21>();
    var var_1 = Struct_2(884f, arg_3, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(421f, global2.x, global1.a.x))))), _wgslsmith_div_vec3_f32(arg_3.a, global1.a), true)), global1.b), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1585f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x - 1952f)), arg_3.a.x), ~46192u));
    let var_2 = ~(~0i >> (~arg_3.b % 32u));
    return _wgslsmith_f_op_f32(round(231f)) == var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_3.a)) + _wgslsmith_f_op_f32(sign(global2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1628f)) + _wgslsmith_f_op_f32(abs(478f))))))), Struct_1(vec3<f32>(arg_3.a, -1526f, _wgslsmith_f_op_f32(-global2.x)), arg_3.d.b >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.b.b), vec2<u32>(1u, global1.b)) % 32u)), arg_3.d, arg_3.b);
    let var_1 = Struct_1(arg_1.d.a, ~arg_2.d.b);
    global1 = var_0.d;
    let var_2 = arg_1;
    let var_3 = -_wgslsmith_dot_vec3_i32(max(-_wgslsmith_div_vec3_i32(vec3<i32>(-32967i, 11018i, global0.x), u_input.d), u_input.d), vec3<i32>(2147483647i, _wgslsmith_div_i32(~(-2147483647i), -global0.x), ~u_input.d.x & _wgslsmith_div_i32(u_input.c, 1i)));
    return ~arg_3.b.b;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> bool {
    var var_0 = vec2<f32>(-688f, _wgslsmith_f_op_f32(f32(-1f) * -469f));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(func_4(func_3(false, Struct_1(global1.a, 1982u), vec2<u32>(global1.b, global1.b), Struct_1(global1.a, global1.b)), Struct_2(global2.x, Struct_1(vec3<f32>(-771f, 1000f, 558f), global1.b), Struct_1(global1.a, global1.b), Struct_1(global1.a, global1.b)), Struct_2(1000f, Struct_1(global1.a, 53561u), Struct_1(vec3<f32>(-1939f, arg_0.x, arg_0.x), global1.b), Struct_1(global1.a, global1.b)), Struct_2(global1.a.x, Struct_1(vec3<f32>(-1058f, global2.x, -782f), global1.b), Struct_1(vec3<f32>(-454f, -401f, 2710f), global1.b), Struct_1(global1.a, 0u))), global1.b)), global1.b | 1u);
    global3 = array<vec3<u32>, 21>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, global1.a.x)) + _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-1065f + 1442f))) + _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(select(-109f, global1.a.x, true))), _wgslsmith_f_op_f32(max(-132f, _wgslsmith_f_op_f32(var_0.x - global1.a.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1030f, global1.a.x, global1.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x, -169f))), global1.b), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(794f, _wgslsmith_f_op_f32(select(-2096f, arg_0.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -1895f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -827f))), 1u), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(global2.x * -958f), _wgslsmith_f_op_f32(-1000f - -316f))), ~(~55159u)));
    var var_3 = u_input.d;
    return true;
}

fn func_1() -> Struct_1 {
    global0 = select(reverseBits(vec3<i32>((global0.x | u_input.b) << (global1.b % 32u), _wgslsmith_mult_i32(countOneBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, global0.x, 29689i), u_input.d)), global0.x)), select(~(-vec3<i32>(-28168i, u_input.d.x, 1i)), -vec3<i32>(_wgslsmith_add_i32(62893i, -44031i), 0i, u_input.a), !func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global2.x)), ~global0.x)), vec3<bool>(true, false, true));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.a, _wgslsmith_f_op_vec3_f32(abs(global1.a)), select(vec3<bool>(true, true, func_2(vec2<f32>(-124f, global2.x), u_input.b)), vec3<bool>(true, global1.a.x > global1.a.x, true), vec3<bool>(global0.x == 21014i, all(vec2<bool>(false, false)), all(vec2<bool>(false, true)))))));
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1869f - _wgslsmith_f_op_f32(f32(-1f) * -767f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1353f))), global1.a.x), _wgslsmith_mult_u32(~global1.b, ~_wgslsmith_mod_u32(global1.b, 44433u)) << (max(1u, 4294967295u) % 32u));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))), Struct_1(global1.a, _wgslsmith_dot_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(58204u, 51126u, global1.b))), vec3<u32>(0u, _wgslsmith_mult_u32(global1.b, global1.b), global1.b))), Struct_1(global1.a, _wgslsmith_div_u32(global1.b, _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(global1.b, 0u)))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a), global1.a), global1.a), firstLeadingBit(52419u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x)))), global2.xy));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1027f, _wgslsmith_f_op_f32(floor(-1030f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-442f, var_0.b.a.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.x, -817f, 1982f) * _wgslsmith_f_op_vec3_f32(global1.a + vec3<f32>(-3608f, global1.a.x, global2.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(729f, global2.x, global2.x), var_0.d.a)))), var_0.c.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = countOneBits(countOneBits(~(~global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.b), vec2<u32>(65375u, 4294967295u)), 21u)])));
    global2 = global1.a;
    global0 = arg_2.yzx;
    var var_1 = select(min(firstLeadingBit(firstTrailingBit(vec4<u32>(var_0.x, 4294967295u, 0u, arg_0.b.b))), vec4<u32>(~arg_0.d.b, 52055u, 13806u, var_0.x)), abs(vec4<u32>(~(~global1.b), abs(_wgslsmith_mod_u32(arg_1.c.b, 1u)), ~23255u & arg_1.d.b, _wgslsmith_sub_u32(59847u, func_4(true, Struct_2(global1.a.x, Struct_1(vec3<f32>(global2.x, 559f, arg_0.d.a.x), global1.b), Struct_1(arg_0.d.a, 61404u), Struct_1(vec3<f32>(414f, arg_0.d.a.x, 1885f), 54113u)), arg_0, Struct_2(arg_1.b.a.x, arg_0.c, arg_0.b, Struct_1(global1.a, 12315u)))))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    var_1 = firstTrailingBit(vec4<u32>(~arg_0.b.b >> (countOneBits(27648u) % 32u), func_1().b, 1u, firstTrailingBit(arg_0.d.b)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(global1.a.x, func_1(), func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global1.a * vec3<f32>(-2113f, -1572f, global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1399f, global1.a.x, global1.a.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), ~0u)), Struct_2(global1.a.x, func_1(), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global2.x - 240f), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_f32(714f, global2.x)), 0u), Struct_1(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1506f), _wgslsmith_f_op_f32(exp2(global2.x))), _wgslsmith_mod_u32(~80136u, global1.b))), firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(64463i, global0.x, u_input.d.x, u_input.c), vec4<i32>(0i, 0i, 2289i, u_input.a)), max(vec4<i32>(62884i, 29147i, u_input.d.x, u_input.b), vec4<i32>(global0.x, 56200i, u_input.c, global0.x))))));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + -439f), Struct_1(global1.a, select(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.b, global1.b), var_0.b.b), 0u, all(vec4<bool>(true, false, true, false)))), func_5(func_5(Struct_2(func_1().a.x, var_0.d, Struct_1(vec3<f32>(var_0.c.a.x, var_0.a, global2.x), var_0.b.b), Struct_1(var_0.c.a, 100143u)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1070f), func_5(Struct_2(1092f, var_0.b, Struct_1(var_0.b.a, var_0.d.b), Struct_1(global1.a, 6090u)), Struct_2(1565f, Struct_1(vec3<f32>(global2.x, global1.a.x, 272f), var_0.c.b), var_0.d, Struct_1(vec3<f32>(global2.x, -533f, -200f), global1.b)), vec4<i32>(0i, u_input.b, 1i, -36705i)).b, Struct_1(var_0.d.a, 1u), func_5(Struct_2(1000f, Struct_1(global1.a, global1.b), Struct_1(vec3<f32>(-689f, global2.x, global1.a.x), 43570u), Struct_1(vec3<f32>(global2.x, global1.a.x, -879f), var_0.c.b)), Struct_2(484f, var_0.c, var_0.b, Struct_1(var_0.d.a, global1.b)), vec4<i32>(1i, u_input.c, 0i, u_input.b)).d), -_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, -2147483647i, -2147483647i, 0i), vec4<i32>(global0.x, 44803i, -2147483647i, global0.x))), Struct_2(_wgslsmith_f_op_f32(-func_5(Struct_2(1061f, Struct_1(vec3<f32>(var_0.a, var_0.d.a.x, -274f), global1.b), var_0.b, Struct_1(vec3<f32>(-264f, -202f, global1.a.x), global1.b)), Struct_2(global1.a.x, var_0.c, Struct_1(vec3<f32>(var_0.b.a.x, global2.x, 1067f), 0u), var_0.d), vec4<i32>(global0.x, -1i, global0.x, u_input.d.x)).d.a.x), var_0.b, func_1(), func_1()), ~abs(firstTrailingBit(vec4<i32>(0i, -16461i, u_input.b, -36951i)))).b, func_5(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(global2.x - var_0.b.a.x))), func_1(), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b.a), 0u), var_0.c), func_5(func_5(Struct_2(global2.x, Struct_1(vec3<f32>(global1.a.x, 1540f, global2.x), var_0.b.b), var_0.b, Struct_1(vec3<f32>(-354f, var_0.a, -499f), 17752u)), Struct_2(566f, var_0.d, var_0.d, Struct_1(var_0.b.a, var_0.b.b)), -vec4<i32>(u_input.d.x, 0i, -2147483647i, 1i)), func_5(func_5(Struct_2(689f, var_0.b, var_0.c, var_0.d), Struct_2(-481f, Struct_1(vec3<f32>(global2.x, var_0.d.a.x, var_0.d.a.x), 1013u), var_0.d, Struct_1(vec3<f32>(258f, global1.a.x, global1.a.x), 4294967295u)), vec4<i32>(63091i, u_input.c, global0.x, u_input.a)), func_5(Struct_2(892f, Struct_1(var_0.b.a, var_0.d.b), var_0.d, var_0.c), Struct_2(global1.a.x, Struct_1(vec3<f32>(var_0.d.a.x, global2.x, 650f), var_0.c.b), var_0.d, var_0.c), vec4<i32>(u_input.b, -3204i, -2147483647i, global0.x)), ~vec4<i32>(-1i, 0i, u_input.d.x, -1i)), ~(~vec4<i32>(u_input.c, global0.x, global0.x, 28637i))), vec4<i32>(_wgslsmith_mod_i32(11698i | u_input.a, _wgslsmith_mod_i32(global0.x, 12803i)), abs(_wgslsmith_add_i32(u_input.a, global0.x)), global0.x, firstLeadingBit(-76581i))).c);
    let var_1 = select(!vec3<bool>(!(global2.x <= var_0.a), any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), true), vec3<bool>(false, !(global2.x > _wgslsmith_f_op_f32(f32(-1f) * -1022f)), true), vec3<bool>(func_3(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false))), func_1(), firstTrailingBit(vec2<u32>(39747u, global1.b)) ^ ~vec2<u32>(0u, var_0.b.b), var_0.d), true, any(vec2<bool>(true, true))));
    var var_2 = var_0.b;
    var var_3 = !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), select(vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, var_1.x, var_1.x)), !var_1.x), select(!vec4<bool>(var_1.x, false, var_1.x, true), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, true, var_1.x, true))));
    let var_4 = vec2<bool>((!select(var_1.x, false, false) & true) && true, true);
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.d >> (firstLeadingBit(select(global3[_wgslsmith_index_u32(var_2.b, 21u)], vec3<u32>(var_0.c.b, 4294967295u, global1.b), var_1.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~_wgslsmith_div_vec3_i32(u_input.d, u_input.d), _wgslsmith_div_vec3_i32(-u_input.d, vec3<i32>(-2147483647i, u_input.a, -1489i)))), u_input.d.zx);
}

