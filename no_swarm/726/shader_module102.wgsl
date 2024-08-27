struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 71692u, 655f);

var<private> global1: array<i32, 15> = array<i32, 15>(1i, -29965i, 2147483647i, 0i, -1i, 2147483647i, 38356i, 1i, 17915i, 1i, 63057i, 2147483647i, 0i, -1i, i32(-2147483648));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: Struct_3) -> vec3<f32> {
    let var_0 = global0.c;
    let var_1 = -2147483647i;
    let var_2 = select(select(select(vec3<bool>(true, true, true), !(!vec3<bool>(false, arg_1.a.a, arg_1.a.a)), vec3<bool>(arg_1.a.a, true, true)), vec3<bool>(!(!arg_1.a.a), all(select(vec4<bool>(arg_1.a.a, true, true, false), vec4<bool>(arg_1.a.a, true, false, false), arg_1.a.a)), true), arg_1.a.a), vec3<bool>(false, true, arg_1.a.a), !(!select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_1.a.a, true), select(vec3<bool>(arg_1.a.a, arg_1.a.a, true), vec3<bool>(arg_1.a.a, false, arg_1.a.a), vec3<bool>(arg_1.a.a, true, true)))));
    var var_3 = global0.c;
    var var_4 = arg_1.c.a;
    return arg_1.b;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: Struct_3) -> i32 {
    let var_0 = Struct_3(Struct_2(!all(select(vec3<bool>(arg_2.a.a, arg_2.a.a, true), vec3<bool>(true, arg_2.a.a, arg_2.a.a), arg_2.a.a)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, global0.b, arg_2.a.b.a) >> (vec3<u32>(4294967295u, 0u, 11191u) % vec3<u32>(32u)), vec3<u32>(arg_2.c.a, arg_1, u_input.c.x) ^ u_input.b.wxy), arg_2.c.b, -580f), arg_2.c, arg_2.a.c), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_2.b)))), vec3<f32>(global0.c, 2701f, _wgslsmith_f_op_f32(-global0.c)), all(vec2<bool>(true, global1[_wgslsmith_index_u32(global0.a, 15u)] <= global1[_wgslsmith_index_u32(10379u, 15u)])))), arg_2.c);
    var var_1 = select(vec3<bool>(!all(vec2<bool>(true, var_0.a.a)), var_0.a.a, true), vec3<bool>(all(vec3<bool>(arg_2.a.a, true, arg_2.b.x != -323f)), !any(select(vec4<bool>(true, arg_2.a.a, true, var_0.a.a), vec4<bool>(var_0.a.a, false, arg_2.a.a, arg_2.a.a), vec4<bool>(true, false, arg_2.a.a, true))), true), !(!select(select(vec3<bool>(true, arg_2.a.a, false), vec3<bool>(true, false, arg_2.a.a), vec3<bool>(true, true, arg_2.a.a)), !vec3<bool>(arg_2.a.a, var_0.a.a, var_0.a.a), !var_0.a.a)));
    global0 = arg_2.c;
    let var_2 = arg_2.c.b;
    var var_3 = ~vec3<i32>((reverseBits(global1[_wgslsmith_index_u32(0u, 15u)]) >> (firstLeadingBit(arg_1) % 32u)) << (~4294967295u % 32u), ~(i32(-1i) * -19321i), global1[_wgslsmith_index_u32(global0.a, 15u)]);
    return _wgslsmith_add_i32(_wgslsmith_mult_i32(var_3.x, -4417i & select(-33232i, max(0i, 12572i), var_0.b.x <= 1568f)), _wgslsmith_mod_i32(56666i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 15u)], var_3.x, global1[_wgslsmith_index_u32(26320u, 15u)], -15034i) & vec4<i32>(global1[_wgslsmith_index_u32(var_2, 15u)], var_3.x, -91442i, -457i), vec4<i32>(global1[_wgslsmith_index_u32(arg_1, 15u)], global1[_wgslsmith_index_u32(global0.a, 15u)], 0i, 3161i))) & 14926i);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_3(arg_1, arg_0, arg_1.c);
    var var_1 = Struct_3(Struct_2(true, arg_1.b, Struct_1(1u, max(u_input.b.x, var_0.c.a) << (~u_input.c.x % 32u), arg_1.c.c), arg_1.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-767f, -1231f, var_0.b.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1064f, 209f, global0.c)))))), Struct_1(~firstTrailingBit(_wgslsmith_mult_u32(global0.a, 0u)), 20383u, var_0.a.d.c));
    global0 = var_1.c;
    let var_2 = vec3<i32>(17250i, func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.c))), reverseBits(~var_1.c.b), Struct_3(Struct_2(global1[_wgslsmith_index_u32(var_0.c.a, 15u)] >= 1i, arg_1.c, Struct_1(var_1.c.b, arg_1.c.a, -891f), var_0.a.d), _wgslsmith_f_op_vec3_f32(func_3(19944i, Struct_3(Struct_2(false, var_0.a.b, Struct_1(var_1.a.d.a, arg_1.d.a, 973f), var_1.a.c), vec3<f32>(-388f, arg_1.c.c, arg_1.c.c), Struct_1(42554u, 41967u, var_0.a.b.c)))), Struct_1(firstTrailingBit(28570u), u_input.b.x, _wgslsmith_f_op_f32(global0.c + -535f)))), arg_2.x);
    var var_3 = vec2<bool>(true, true);
    return true;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_3 {
    global1 = array<i32, 15>();
    let var_0 = !select(!vec3<bool>(true, true, func_2(vec3<f32>(-136f, -1768f, -1941f), arg_2, vec3<i32>(global1[_wgslsmith_index_u32(arg_1.x, 15u)], -1i, -1i))), vec3<bool>(select(arg_2.a & arg_2.a, arg_2.a | arg_2.a, true), any(!vec2<bool>(false, arg_2.a)), all(select(vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(false, arg_2.a), arg_2.a))), !(!select(vec3<bool>(false, true, false), vec3<bool>(false, arg_2.a, true), vec3<bool>(arg_2.a, arg_2.a, arg_2.a))));
    global0 = arg_2.d;
    var var_1 = Struct_2(!select(arg_2.a, true, any(select(vec4<bool>(var_0.x, arg_2.a, var_0.x, var_0.x), vec4<bool>(true, var_0.x, arg_2.a, false), false))), arg_2.d, Struct_1(firstLeadingBit(~1u), reverseBits(14827u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))) * -759f)), arg_2.d);
    var var_2 = arg_2;
    return Struct_3(arg_2, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-889f, var_2.c.c, var_1.c.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, 892f, var_2.b.c), vec3<f32>(arg_2.b.c, global0.c, var_2.b.c), var_1.a))))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1216f + arg_2.d.c))), _wgslsmith_f_op_f32(-var_2.d.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.c.c))))), Struct_1(~_wgslsmith_clamp_u32(44496u, _wgslsmith_div_u32(1u, arg_2.b.b), ~108452u), _wgslsmith_div_u32(_wgslsmith_sub_u32(global0.a | arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.b, u_input.b.x), arg_1.xx)), ~(~4294967295u)), 200f));
}

fn func_1() -> i32 {
    let var_0 = 1i;
    let var_1 = firstTrailingBit(5126u) > global0.b;
    var var_2 = func_5(~countOneBits(select(u_input.b.yyw << (u_input.b.xyw % vec3<u32>(32u)), u_input.b.yxx, func_2(vec3<f32>(-260f, 338f, global0.c), Struct_2(var_1, Struct_1(47u, u_input.d.x, global0.c), Struct_1(global0.b, 79927u, -506f), Struct_1(global0.b, 0u, global0.c)), vec3<i32>(-2220i, -1i, u_input.e)))), ~vec3<u32>(u_input.d.x, 0u, global0.a), Struct_2(var_1, Struct_1(global0.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b, u_input.c.x, global0.b, 4294967295u), vec4<u32>(9531u, global0.b, 0u, 1u)), global0.c), Struct_1(abs(_wgslsmith_clamp_u32(global0.a, global0.a, 1072u)), global0.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0.c))))), Struct_1(52529u, ~(global0.a << (u_input.d.x % 32u)), -437f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, 308f) + vec2<f32>(_wgslsmith_f_op_f32(abs(global0.c)), _wgslsmith_f_op_f32(floor(global0.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.c, 1000f) + vec2<f32>(469f, 770f))))))));
    global1 = array<i32, 15>();
    global0 = Struct_1(var_2.a.d.b, 69832u & _wgslsmith_dot_vec2_u32(select(u_input.d, u_input.d, vec2<bool>(var_1, var_2.a.a)) & u_input.b.zy, ~abs(vec2<u32>(53677u, 83380u))), var_2.a.c.c);
    return min(i32(-1i) * -(~24701i), global1[_wgslsmith_index_u32(func_5(reverseBits(u_input.b.yzw), select(firstLeadingBit(select(vec3<u32>(33447u, 0u, 44631u), vec3<u32>(4294967295u, global0.b, 53828u), vec3<bool>(false, var_1, var_2.a.a))), reverseBits(u_input.b.yww), var_1), var_2.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(281f, -544f) - vec2<f32>(-410f, var_2.a.d.c)) * vec2<f32>(-1046f, -1312f)), var_2.b.xz)).c.b, 15u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(countOneBits(u_input.d.x), reverseBits(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(global0.b, 7146u, 1u, global0.b), vec4<u32>(global0.b, u_input.b.x, 0u, 4294967295u) << (u_input.b % vec4<u32>(32u)), true), firstLeadingBit(select(u_input.b, u_input.b, vec4<bool>(false, true, false, false))))), -1122f);
    let var_0 = _wgslsmith_sub_i32(-func_1(), _wgslsmith_mult_i32(_wgslsmith_sub_i32(max(reverseBits(u_input.a), global1[_wgslsmith_index_u32(u_input.d.x, 15u)] << (4294967295u % 32u)), -global1[_wgslsmith_index_u32(8627u ^ u_input.d.x, 15u)]), -2147483647i));
    var var_1 = _wgslsmith_f_op_f32(min(722f, _wgslsmith_f_op_f32(step(974f, -1394f))));
    let var_2 = global0.c;
    let var_3 = -countOneBits((1i & u_input.a) << (min(u_input.b.x, u_input.c.x) % 32u)) | _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(-9549i, -42007i, global1[_wgslsmith_index_u32(global0.b, 15u)])), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 1i, 9635i), vec3<i32>(59952i, u_input.a, 1i))), select(countOneBits(reverseBits(vec3<i32>(23385i, var_0, 24474i))), vec3<i32>(_wgslsmith_div_i32(var_0, 28484i), firstLeadingBit(23985i), _wgslsmith_add_i32(-16716i, global1[_wgslsmith_index_u32(global0.b, 15u)])), true));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(func_1()), countOneBits(min(_wgslsmith_mod_u32(~62069u, u_input.b.x), ~(~global0.a))), _wgslsmith_div_i32(u_input.e, -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(664f, 1058f), vec2<f32>(-325f, global0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c)), vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c)))))));
}

