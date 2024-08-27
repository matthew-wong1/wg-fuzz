struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(1u, vec3<i32>(2147483647i, -3436i, -34258i), vec2<u32>(35127u, 4294967295u)), Struct_1(93170u, vec3<i32>(-32527i, 0i, -36047i), vec2<u32>(1u, 34292u)), Struct_1(0u, vec3<i32>(-41909i, 0i, i32(-2147483648)), vec2<u32>(1u, 14543u)), Struct_1(1u, vec3<i32>(1i, 40009i, 1i), vec2<u32>(0u, 1u)), Struct_1(4294967295u, vec3<i32>(-45909i, 1i, 13426i), vec2<u32>(1u, 4294967295u)), Struct_1(16265u, vec3<i32>(37022i, i32(-2147483648), 77029i), vec2<u32>(8948u, 51302u)), Struct_1(98393u, vec3<i32>(i32(-2147483648), -1743i, 8258i), vec2<u32>(41731u, 37275u)), Struct_1(32528u, vec3<i32>(i32(-2147483648), 1i, 1i), vec2<u32>(1u, 4294967295u)), Struct_1(115680u, vec3<i32>(-32722i, 2147483647i, 47276i), vec2<u32>(4294967295u, 0u)), Struct_1(98572u, vec3<i32>(1i, 53346i, 0i), vec2<u32>(1u, 81753u)), Struct_1(20590u, vec3<i32>(i32(-2147483648), 2147483647i, 17023i), vec2<u32>(4294967295u, 1u)), Struct_1(32174u, vec3<i32>(0i, i32(-2147483648), 2147483647i), vec2<u32>(6899u, 23688u)), Struct_1(1928u, vec3<i32>(-42255i, 0i, -30509i), vec2<u32>(0u, 1u)), Struct_1(64475u, vec3<i32>(0i, 31104i, 1i), vec2<u32>(1u, 4294967295u)));

var<private> global3: bool;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(319f)))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-288f - _wgslsmith_f_op_f32(f32(-1f) * -1224f))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-3071f)) + -1000f))));
    let var_1 = Struct_1(~(~(~reverseBits(0u))), global1.b, global1.c);
    global2 = array<Struct_1, 14>();
    let var_2 = 1000f;
    var var_3 = any(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(55942u, _wgslsmith_sub_u32(1u, abs(1u))), ~var_1.c), 3u)]);
    return ~var_1.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_1(5919u, func_3(1u >= _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 16963u), abs(global1.c)), vec4<bool>(true, true, true, true)), vec2<u32>(19716u, 1u));
    var var_1 = _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c.x >> (~arg_0.a % 32u), min(~1i, 1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x, u_input.d, -39497i), vec4<i32>(global1.b.x, var_0.b.x, 41934i, 41739i)), global1.b.x), abs(vec4<i32>(25903i, -abs(-15317i), _wgslsmith_add_i32(~(-56805i), -65495i | var_0.b.x), abs(-3593i))));
    let var_2 = Struct_1(~(~global1.a), vec3<i32>(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, arg_1.x, arg_0.b.x), global1.b), -_wgslsmith_sub_vec3_i32(var_0.b, var_1.zzz)), -18948i), _wgslsmith_div_vec2_u32(~countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a), global1.c)), countOneBits(vec2<u32>(var_0.c.x, 4294967295u))));
    var_1 = vec4<i32>(~firstTrailingBit(-2148i) >> (~arg_0.a % 32u), _wgslsmith_clamp_i32(0i, 1i, ~1i), -(arg_0.b.x | _wgslsmith_dot_vec3_i32(select(arg_0.b, var_2.b, false), global1.b)), -_wgslsmith_add_i32(1i, var_0.b.x));
    var var_3 = !(1i <= arg_1.x);
    return firstLeadingBit(global1.a);
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 14>();
    global3 = false;
    let var_0 = Struct_1(func_2(Struct_1(~(~7676u), vec3<i32>(select(1i, -4092i, false), u_input.d, -26803i), vec2<u32>(109068u, _wgslsmith_dot_vec3_u32(vec3<u32>(11544u, 22949u, 28420u), vec3<u32>(u_input.b, global1.a, 1u)))), reverseBits(select(global1.b, vec3<i32>(u_input.c.x, global1.b.x, global1.b.x) >> (vec3<u32>(4294967295u, 77630u, 42655u) % vec3<u32>(32u)), true))), _wgslsmith_div_vec3_i32(~global1.b, global1.b), vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b), countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, global1.c.x, global1.a, 1u), ~vec4<u32>(68802u, 41196u, u_input.a, 1u)))));
    var var_1 = Struct_1(0u, select(vec3<i32>(global1.b.x, -2147483647i, abs(~var_0.b.x)), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, u_input.d, 55056i, 0i)), ~vec4<i32>(1i, global1.b.x, -12435i, var_0.b.x)), var_0.b.x), _wgslsmith_f_op_f32(-684f - -426f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(402f, -1000f)))), _wgslsmith_sub_vec2_u32(countOneBits(var_0.c), ~(~var_0.c) << (~(global1.c & vec2<u32>(var_0.c.x, u_input.b)) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(335f + 1000f), -264f, 1000f)) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-651f, -1000f, 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(554f, -136f, -519f))) * vec3<f32>(1065f, -1573f, -526f)))))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    global1 = Struct_1(122159u, firstTrailingBit(max(~(-vec3<i32>(23714i, arg_1.b.x, global1.b.x)), select(arg_0.b, max(arg_1.b, arg_1.b), !global0[_wgslsmith_index_u32(u_input.b, 3u)]))), ~firstTrailingBit(~arg_1.c << (global1.c % vec2<u32>(32u))));
    var var_0 = all(vec2<bool>(!arg_2.x, arg_2.x));
    var var_1 = global2[_wgslsmith_index_u32(countOneBits(~1u), 14u)];
    let var_2 = select(!global0[_wgslsmith_index_u32(abs(arg_1.c.x), 3u)], select(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~arg_1.c.x, ~53487u), 3u)], vec3<bool>(false, any(arg_2), true), true), select(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1.c.x, u_input.a), 3u)], !vec3<bool>(true, true, arg_2.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, abs(14701u)), 3u)]), global0[_wgslsmith_index_u32(1u, 3u)]), false & all(vec4<bool>(any(vec4<bool>(arg_2.x, false, arg_2.x, false)), any(arg_2), arg_2.x | false, any(vec4<bool>(false, arg_2.x, false, false)))));
    var var_3 = func_1();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(488f - 1073f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(530f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2346f, -109f)) + _wgslsmith_f_op_f32(max(1417f, 419f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f))))));
    let var_1 = Struct_1(func_4(global2[_wgslsmith_index_u32(4294967295u, 14u)], func_1(), vec2<bool>(u_input.a > u_input.b, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))))), vec3<i32>((func_3(false, vec4<bool>(true, true, true, false)).x ^ 82653i) & -2147483647i, ~global1.b.x, 12316i), global1.c);
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(28384u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(9874u, global1.c.x), 1u)) & _wgslsmith_mult_u32((23029u ^ global1.a) ^ var_1.a, 27530u), 13970u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(global1.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, var_1.a, var_1.a), vec3<u32>(var_1.c.x, 6694u, global1.a))), u_input.a, firstTrailingBit(21136u)), vec3<u32>(global1.a, ~countOneBits(var_1.a), 4107u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4837u, 56502u, u_input.b, 25992u) >> (vec4<u32>(61962u, var_1.a, u_input.a, var_1.c.x) % vec4<u32>(32u)), countOneBits(vec4<u32>(var_1.c.x, 60220u, 1u, 27638u))) & ~var_1.a);
    let var_3 = func_1();
    let var_4 = func_1();
    global0 = array<vec3<bool>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(21103u, u_input.c.x);
}

