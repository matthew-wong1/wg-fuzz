struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-1616f, 1086f, 1000f, 213f, -1000f, 1235f, -514f, -1306f, -393f, 374f, 1621f, -892f, -441f, 758f, 229f, 850f, -2422f, 480f, 1554f, -855f, -2025f, -993f);

var<private> global1: array<bool, 20> = array<bool, 20>(false, false, false, false, true, false, false, true, true, false, true, false, true, false, true, false, true, false, true, true);

var<private> global2: array<bool, 4>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> vec3<u32> {
    let var_0 = ~((countOneBits(vec4<u32>(39167u, u_input.a, 4294967295u, u_input.a)) << (_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, 1u, 6299u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), max(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), vec4<u32>(51696u, 72344u, 71007u, u_input.a))) % vec4<u32>(32u))) & ~select(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), max(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)), true));
    global0 = array<f32, 22>();
    global1 = array<bool, 20>();
    global2 = array<bool, 4>();
    global0 = array<f32, 22>();
    return ~(~var_0.xwy);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0.x, 22u)])), global0[_wgslsmith_index_u32(~1u, 22u)], global0[_wgslsmith_index_u32(~(28837u >> (arg_0.x % 32u)), 22u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)))), _wgslsmith_div_f32(-707f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), arg_0.xy)), 22u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(28743u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)], -1587f) + vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 22u)], -459f, -435f, global0[_wgslsmith_index_u32(arg_0.x, 22u)])) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1487f, global0[_wgslsmith_index_u32(arg_0.x, 22u)], global0[_wgslsmith_index_u32(57213u, 22u)], -180f))))));
    var var_1 = Struct_1(var_0.c.a);
    var var_2 = var_0.b;
    global0 = array<f32, 22>();
    let var_3 = min(1u, ~_wgslsmith_mod_u32(arg_0.x & arg_0.x, ~(~17770u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    global0 = array<f32, 22>();
    global2 = array<bool, 4>();
    global2 = array<bool, 4>();
    var var_0 = arg_2;
    var_0 = Struct_2(Struct_1(vec4<f32>(1000f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(arg_1.x, u_input.a, u_input.a, 42931u), vec3<i32>(u_input.b, arg_0.x, 20331i)))), -296f)), _wgslsmith_f_op_f32(sign(arg_2.a.a.x)), var_0.a);
    return Struct_1(_wgslsmith_f_op_vec4_f32(step(var_0.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.a.a))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(arg_2.a.a))))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> i32 {
    let var_0 = func_4(~(~_wgslsmith_sub_vec2_i32(vec2<i32>(-8285i, arg_1), vec2<i32>(arg_1, -1i)) << ((vec2<u32>(11070u, arg_0.x) ^ ~vec2<u32>(42332u, arg_0.x)) % vec2<u32>(32u))), func_2(global0[_wgslsmith_index_u32(reverseBits(~(~36859u)), 22u)], _wgslsmith_mod_vec3_i32(vec3<i32>(~arg_1, _wgslsmith_mod_i32(-29970i, 1i), -4974i), reverseBits(vec3<i32>(arg_1, -6166i, arg_1)))), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(func_3(vec4<u32>(arg_0.x, 2317u, 1u, u_input.a), vec3<i32>(u_input.b, u_input.b, 1i))), global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 12726u, u_input.a, arg_0.x), vec4<u32>(arg_0.x, u_input.a, arg_0.x, 0u)), 22u)], global0[_wgslsmith_index_u32(1u, 22u)])), -863f, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 22u)]), -881f, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(158386u, 1u), 22u)], -956f))), global0[_wgslsmith_index_u32(u_input.a, 22u)]);
    let var_1 = select(select(!vec2<bool>(true, global2[_wgslsmith_index_u32(~u_input.a, 4u)]), vec2<bool>(!global2[_wgslsmith_index_u32(4294967295u, 4u)] || global1[_wgslsmith_index_u32(~0u, 20u)], true), !global1[_wgslsmith_index_u32(reverseBits(~17245u), 20u)]), vec2<bool>(false, !any(vec3<bool>(true, true, false))), all(select(select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], global1[_wgslsmith_index_u32(u_input.a, 20u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(40445u, 4u)], global2[_wgslsmith_index_u32(arg_0.x, 4u)], true), vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 20u)], false), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 4u)], global1[_wgslsmith_index_u32(u_input.a, 20u)])), arg_0.x > 67621u), vec3<bool>(!global1[_wgslsmith_index_u32(arg_0.x, 20u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(31461u, 1u), 4u)], false), false)));
    global2 = array<bool, 4>();
    var var_2 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * _wgslsmith_f_op_f32(-1792f * -1846f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 22u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(35991u, 22u)])), var_0.a.x, 1854f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(0u, 22u)], -2200f))))))), func_4(-firstLeadingBit(-vec2<i32>(arg_1, -2147483647i)), countOneBits(~_wgslsmith_add_vec3_u32(vec3<u32>(15159u, u_input.a, 3072u), vec3<u32>(u_input.a, 1u, 79908u))), Struct_2(func_4(~vec2<i32>(u_input.b, 33154i), abs(vec3<u32>(arg_0.x, 1u, arg_0.x)), Struct_2(Struct_1(var_0.a), var_0.a.x, Struct_1(var_0.a)), var_0.a.x), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(12656u, 22u)] - _wgslsmith_f_op_f32(max(982f, global0[_wgslsmith_index_u32(arg_0.x, 22u)]))), var_0), 395f));
    var var_3 = Struct_1(func_4(abs(max(vec2<i32>(27209i, u_input.b), -vec2<i32>(55607i, u_input.b))), vec3<u32>(arg_0.x, _wgslsmith_add_u32(32777u, u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 6716u, u_input.a), vec3<u32>(4294967295u, u_input.a, 108626u))) ^ ~(~vec3<u32>(9209u, 73182u, u_input.a)), Struct_2(func_4(vec2<i32>(-1i, 58253i), ~vec3<u32>(arg_0.x, arg_0.x, 4294967295u), Struct_2(var_2.c, var_2.b, Struct_1(var_0.a)), _wgslsmith_f_op_f32(-151f * 440f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(62671u, 22u)] - -1000f)), Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_0.a.x)))) * global0[_wgslsmith_index_u32(firstTrailingBit(select(0u, 4294967295u, global1[_wgslsmith_index_u32(46548u, 20u)])), 22u)])).a);
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: bool) -> f32 {
    global0 = array<f32, 22>();
    var var_0 = func_4(-select(firstLeadingBit(vec2<i32>(arg_0, u_input.b)), -(~vec2<i32>(arg_0, 0i)), false), vec3<u32>(~(~reverseBits(4294967295u)), firstLeadingBit(~max(67684u, 15027u)), u_input.a), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], 1015f, -143f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a, 22u)]))))), func_4(~_wgslsmith_add_vec2_i32(vec2<i32>(-11475i, arg_0), vec2<i32>(u_input.b, arg_0)), vec3<u32>(1u, 45413u << (u_input.a % 32u), 67819u), Struct_2(func_4(vec2<i32>(u_input.b, u_input.b), vec3<u32>(0u, 0u, 4294967295u), Struct_2(Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(54684u, 22u)], -1000f, global0[_wgslsmith_index_u32(u_input.a, 22u)], 1000f)), 481f, Struct_1(vec4<f32>(1807f, 594f, 481f, global0[_wgslsmith_index_u32(4294967295u, 22u)]))), 1844f), func_4(vec2<i32>(-9415i, arg_0), vec3<u32>(105057u, 13810u, 4294967295u), Struct_2(Struct_1(vec4<f32>(-1475f, global0[_wgslsmith_index_u32(u_input.a, 22u)], global0[_wgslsmith_index_u32(u_input.a, 22u)], -1294f)), 631f, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(6806u, 22u)], global0[_wgslsmith_index_u32(32966u, 22u)], 216f, -398f))), -1000f).a.x, Struct_1(vec4<f32>(global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(33647u, 22u)], 295f, global0[_wgslsmith_index_u32(u_input.a, 22u)]))), _wgslsmith_f_op_f32(-234f + -664f))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 22u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u, 22u)])))));
    var var_1 = func_4(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b, -41425i), countOneBits(~u_input.b)), vec2<i32>(countOneBits(~arg_0), u_input.b)), vec3<u32>(max(u_input.a, max(39209u, ~u_input.a)), firstTrailingBit(~u_input.a) << (62053u % 32u), max(u_input.a, func_2(var_0.a.x, vec3<i32>(0i, -27694i, -2147483647i)).x)), Struct_2(Struct_1(var_0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(1018f, var_0.a.x, -820f, 1357f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(213f))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(2063f + -142f), global0[_wgslsmith_index_u32(45633u << (u_input.a % 32u), 22u)], _wgslsmith_f_op_f32(max(-197f, var_1.a.x))), _wgslsmith_f_op_vec4_f32(-var_1.a), !vec4<bool>(false, arg_1, global2[_wgslsmith_index_u32(u_input.a, 4u)], global2[_wgslsmith_index_u32(4294967295u, 4u)])))) * var_0.a);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(var_1.a + var_0.a))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * 1252f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(vec2<i32>(u_input.b, _wgslsmith_mod_i32(2147483647i, u_input.b) ^ u_input.b) << (abs(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(26482u, u_input.a)))) % vec2<u32>(32u)));
    var var_1 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(28311u, 22u)] - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(239f)) - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a, 22u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.a, 22u)], -441f)) + 713f), -1000f)), _wgslsmith_f_op_f32(func_5(_wgslsmith_sub_i32(1i, func_1(vec2<u32>(237u, 4294967295u), 12924i) & abs(var_0.x)), false)), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(0u, 22u)], -225f, 323f, global0[_wgslsmith_index_u32(70516u, 22u)]))))));
    var var_2 = u_input.a ^ _wgslsmith_mod_u32(u_input.a, ~firstLeadingBit(41447u));
    let var_3 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a.x, 1017f, global0[_wgslsmith_index_u32(u_input.a, 22u)]), _wgslsmith_f_op_vec3_f32(min(var_1.c.a.xwx, vec3<f32>(-1218f, -822f, 344f))), global1[_wgslsmith_index_u32(u_input.a, 20u)])) + vec3<f32>(var_3.a.x, global0[_wgslsmith_index_u32(u_input.a, 22u)], _wgslsmith_f_op_f32(var_1.c.a.x - 1944f)))));
}

