struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 6> = array<bool, 6>(true, true, false, false, true, false);

var<private> global2: array<f32, 11> = array<f32, 11>(188f, -524f, 1523f, 1337f, 390f, 756f, 239f, -300f, 617f, 653f, -204f);

var<private> global3: u32;

var<private> global4: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec2<i32>(i32(-2147483648), 2147483647i), Struct_1(12482i, -1i)), Struct_2(vec2<i32>(12427i, 1i), Struct_1(34273i, 2147483647i)), Struct_2(vec2<i32>(25935i, 1i), Struct_1(-1i, -1i)), Struct_2(vec2<i32>(9388i, i32(-2147483648)), Struct_1(0i, -68976i)), Struct_2(vec2<i32>(2147483647i, -558i), Struct_1(-554i, 600i)), Struct_2(vec2<i32>(0i, -32056i), Struct_1(-68906i, -12139i)), Struct_2(vec2<i32>(-22030i, 18963i), Struct_1(-813i, 2147483647i)), Struct_2(vec2<i32>(-5245i, 7368i), Struct_1(2147483647i, 32518i)), Struct_2(vec2<i32>(-9763i, i32(-2147483648)), Struct_1(-48494i, -17857i)), Struct_2(vec2<i32>(50006i, 1i), Struct_1(24298i, -32393i)), Struct_2(vec2<i32>(15497i, 0i), Struct_1(i32(-2147483648), -1i)), Struct_2(vec2<i32>(-1i, 2147483647i), Struct_1(30001i, 0i)), Struct_2(vec2<i32>(-1i, -42170i), Struct_1(15131i, -17917i)), Struct_2(vec2<i32>(1i, -15803i), Struct_1(-1i, i32(-2147483648))), Struct_2(vec2<i32>(-6296i, 2855i), Struct_1(-1i, 2147483647i)), Struct_2(vec2<i32>(0i, 44504i), Struct_1(49732i, -21309i)), Struct_2(vec2<i32>(1i, i32(-2147483648)), Struct_1(i32(-2147483648), 0i)), Struct_2(vec2<i32>(2147483647i, 44685i), Struct_1(2147483647i, -15495i)), Struct_2(vec2<i32>(48334i, 2147483647i), Struct_1(35747i, 0i)), Struct_2(vec2<i32>(-1i, 2147483647i), Struct_1(-1i, i32(-2147483648))), Struct_2(vec2<i32>(44469i, -35500i), Struct_1(-1i, -44090i)), Struct_2(vec2<i32>(0i, -14562i), Struct_1(i32(-2147483648), i32(-2147483648))), Struct_2(vec2<i32>(1i, 86897i), Struct_1(i32(-2147483648), -1i)), Struct_2(vec2<i32>(15765i, -17733i), Struct_1(2147483647i, 2147483647i)), Struct_2(vec2<i32>(37893i, -58187i), Struct_1(-54182i, 41719i)), Struct_2(vec2<i32>(80943i, -9843i), Struct_1(-15864i, 1i)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_4(u_input.c, vec3<i32>(_wgslsmith_dot_vec2_i32(global0.b.xx, ~(-vec2<i32>(45824i, global0.b.x))), min(u_input.d, u_input.c), u_input.c));
    let var_1 = select(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(reverseBits(u_input.b.x), 6u)]), select(!vec4<bool>(select(global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(20109u, 6u)], false), true, true, !global1[_wgslsmith_index_u32(u_input.b.x, 6u)]), vec4<bool>(true, true, true, true), vec4<bool>(any(!vec3<bool>(true, global1[_wgslsmith_index_u32(32782u, 6u)], global1[_wgslsmith_index_u32(24756u, 6u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 11u)] + 222f) < global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global1[_wgslsmith_index_u32(u_input.b.x, 6u)], true)), vec4<bool>((~77944u << (max(u_input.b.x, 67289u) % 32u)) <= _wgslsmith_div_u32(~4294967295u, u_input.b.x), !all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 6u)], true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(abs(4294967295u), ~u_input.b.x, 1u), vec3<u32>(~41342u, 1u | u_input.b.x, 6733u)), 6u)], false));
    let var_2 = global4[_wgslsmith_index_u32(0u, 26u)];
    let var_3 = abs(u_input.b.wzy << (~_wgslsmith_mod_vec3_u32(u_input.b.xzy, u_input.b.www) % vec3<u32>(32u))) >> (firstLeadingBit(firstLeadingBit(u_input.b.wzz)) % vec3<u32>(32u));
    var var_4 = Struct_3(var_2.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(436f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(161f, 136f))) + -1717f), -617f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(151f, global2[_wgslsmith_index_u32(var_3.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(16208u, 11u)]))) * vec4<f32>(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(max(var_3.x, 1u), 11u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, var_3.x), 11u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1525f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-539f * -995f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 11u)]))), all(!vec2<bool>(all(var_1.zwz), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(24721u, 11u)])));
    return _wgslsmith_div_vec3_i32(var_0.b, _wgslsmith_add_vec3_i32(~(-min(global0.b, vec3<i32>(u_input.d, 126931i, global0.a))), vec3<i32>(min(18093i, ~(-2147483647i)), -global0.a, ~(var_0.b.x & var_4.a.b))));
}

fn func_2() -> Struct_1 {
    global4 = array<Struct_2, 26>();
    var var_0 = Struct_1(-countOneBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, u_input.a.x), u_input.c)), 15794i);
    global4 = array<Struct_2, 26>();
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], 166f, global2[_wgslsmith_index_u32(u_input.b.x, 11u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(921f, global2[_wgslsmith_index_u32(62604u, 11u)], global2[_wgslsmith_index_u32(u_input.b.x, 11u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(464f, 343f, global2[_wgslsmith_index_u32(0u, 11u)])) + vec3<f32>(106f, 1756f, 887f))))));
    let var_2 = _wgslsmith_dot_vec3_i32(global0.b, func_3());
    return Struct_1(_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -1i, 0i) ^ ~global0.b, global0.b), _wgslsmith_sub_i32(-3642i, var_0.b));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_4 {
    global3 = u_input.b.x;
    var var_0 = arg_1;
    var var_1 = Struct_4(8276i, _wgslsmith_mod_vec3_i32(-(arg_0.ywy & vec3<i32>(arg_0.x, var_0.a, 2147483647i)) & -_wgslsmith_mult_vec3_i32(global0.b, vec3<i32>(arg_0.x, arg_0.x, 1i)), global0.b));
    var var_2 = 304f;
    var var_3 = Struct_2(min(arg_0.wx << (vec2<u32>(~0u, 81541u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(countOneBits(u_input.a), -(~vec2<i32>(global0.b.x, -1i)))), func_2());
    return Struct_4(~(-12722i), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~global0.b, arg_0.xzy ^ vec3<i32>(1i, -1i, var_3.b.b)), vec3<i32>(34615i << (u_input.b.x % 32u), u_input.c, -1i & global0.b.x)), firstLeadingBit(-vec3<i32>(var_1.b.x, 1i, var_0.a))));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = Struct_1(abs(firstLeadingBit(-2147483647i)), reverseBits(_wgslsmith_sub_i32(0i, 6917i)));
    global4 = array<Struct_2, 26>();
    let var_1 = vec2<i32>(-arg_2.x, global0.b.x);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 11u)], 1610f, global2[_wgslsmith_index_u32(14120u, 11u)], -1214f) - vec4<f32>(global2[_wgslsmith_index_u32(arg_3.x, 11u)], -708f, global2[_wgslsmith_index_u32(arg_1.x, 11u)], -454f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1691f, _wgslsmith_f_op_f32(sign(158f)), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(1u, 11u)])), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(arg_3.x, 11u)], 169f, global1[_wgslsmith_index_u32(arg_3.x, 6u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1098f, global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(34293u, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)])))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1611f, 1984f, 1025f, global2[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(1u, 11u)], -685f, 995f, global2[_wgslsmith_index_u32(4294967295u, 11u)]))))))))), vec4<bool>(!(-1351f >= global2[_wgslsmith_index_u32(abs(arg_3.x), 11u)]), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 6u)] | global1[_wgslsmith_index_u32(29021u, 6u)], -996f > global2[_wgslsmith_index_u32(55477u, 11u)], false, true)), (2147483647i >> (~arg_3.x % 32u)) != arg_0.b.x, true | global1[_wgslsmith_index_u32(~0u, 6u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(135077u, firstLeadingBit(4294967295u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(74400u, 11u)], -1103f) - vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(4294967295u, 11u)], 350f, -187f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(39608u, 11u)], global2[_wgslsmith_index_u32(19911u, 11u)], 1494f, -1225f)), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(1u, 6u)], true)))) * _wgslsmith_f_op_vec4_f32(func_4(func_1(~vec4<i32>(0i, u_input.c, global0.b.x, 69847i), Struct_1(-6988i, -80192i)), u_input.b.xxy & ~u_input.b.yyy, -global0.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 1u), max(u_input.b.zz, u_input.b.wy), u_input.b.xy)))), i32(-1i) * -2147483647i);
}

