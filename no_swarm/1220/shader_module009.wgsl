struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_3;

var<private> global2: array<vec3<i32>, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(firstTrailingBit(-vec4<i32>(u_input.b.x, -1i, global1.d.x, -8447i)), ~select(vec4<i32>(global1.e, global1.d.x, -16188i, u_input.b.x), vec4<i32>(u_input.b.x, -16071i, 59874i, global1.e), vec4<bool>(global1.b, global1.b, global1.b, false))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.c, ~global1.c, 6921u), ~(vec3<u32>(global1.c, global1.c, 22762u) ^ vec3<u32>(global1.c, global1.c, 66068u))) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(global1.a.x, global0.x)))), 1409f);
    let var_1 = Struct_2(~_wgslsmith_sub_u32(global1.c, ~39832u), ~(min(vec4<u32>(global1.c, global1.c, global1.c, 21567u), ~vec4<u32>(global1.c, 4294967295u, 0u, global1.c)) << (firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 34420u, 51027u, 27876u), vec4<u32>(0u, global1.c, 115385u, 0u), vec4<u32>(global1.c, global1.c, global1.c, 104561u))) % vec4<u32>(32u))), Struct_1(-17548i, _wgslsmith_f_op_f32(f32(-1f) * -412f), -1788f), firstTrailingBit(select(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.c, 4294967295u, 2120u), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.c, 1u, global1.c), vec3<u32>(global1.c, global1.c, 4294967295u))), countOneBits(vec3<u32>(4294967295u, global1.c, global1.c)), vec3<bool>(true, !global1.b, true & global1.b))));
    var var_2 = select(select(select(vec2<bool>(global1.b != false, global1.b), select(vec2<bool>(global1.b, global1.b), !vec2<bool>(global1.b, global1.b), select(vec2<bool>(false, global1.b), vec2<bool>(global1.b, global1.b), vec2<bool>(false, false))), any(vec3<bool>(global1.b, true, false))), vec2<bool>(false, select(true, var_1.c.b >= global0.x, false)), all(vec2<bool>(global1.b | false, all(vec2<bool>(global1.b, true))))), select(select(!vec2<bool>(false, global1.b), vec2<bool>(!global1.b, true), all(!vec2<bool>(false, global1.b))), select(select(vec2<bool>(true, false), !vec2<bool>(global1.b, global1.b), !vec2<bool>(global1.b, global1.b)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, global1.b), vec2<bool>(global1.b, global1.b)), select(vec2<bool>(global1.b, false), vec2<bool>(global1.b, false), vec2<bool>(global1.b, global1.b))), !select(vec2<bool>(false, global1.b), vec2<bool>(false, false), vec2<bool>(false, true))), true), any(select(vec3<bool>(true, true, true), vec3<bool>(true, !global1.b, global1.b), !(!vec3<bool>(global1.b, global1.b, true)))));
    var_2 = select(select(!select(vec2<bool>(false, false), select(vec2<bool>(false, global1.b), vec2<bool>(global1.b, global1.b), vec2<bool>(global1.b, true)), all(vec4<bool>(false, false, var_2.x, global1.b))), !select(select(vec2<bool>(true, global1.b), vec2<bool>(var_2.x, false), vec2<bool>(true, true)), !vec2<bool>(true, var_2.x), any(vec2<bool>(false, global1.b))), any(select(!vec4<bool>(true, var_2.x, global1.b, false), !vec4<bool>(false, true, false, var_2.x), select(vec4<bool>(true, var_2.x, global1.b, global1.b), vec4<bool>(false, var_2.x, true, true), vec4<bool>(true, global1.b, false, true))))), select(vec2<bool>(true, global1.b), !select(vec2<bool>(false, false), vec2<bool>(global1.b, global1.b), select(vec2<bool>(global1.b, true), vec2<bool>(false, true), vec2<bool>(true, false))), any(select(!vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(global1.b, global1.b, global1.b, true), vec4<bool>(false, false, var_2.x, var_2.x)))), !(!vec2<bool>(any(vec4<bool>(false, false, false, true)), global1.b)));
    var_0 = var_1.c;
    return var_1.b.wxy | (_wgslsmith_clamp_vec3_u32(~var_1.b.wyy, vec3<u32>(30801u, ~1u, ~1u), reverseBits(_wgslsmith_clamp_vec3_u32(var_1.d, var_1.d, vec3<u32>(var_1.b.x, 0u, var_1.b.x)))) & _wgslsmith_mod_vec3_u32(~(~var_1.d), vec3<u32>(~var_1.b.x, ~0u, _wgslsmith_clamp_u32(global1.c, 1u, 88689u))));
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> vec4<u32> {
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(276f, _wgslsmith_f_op_f32(f32(-1f) * -554f))), _wgslsmith_f_op_f32(-437f - 1139f), global0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-280f, -1717f) - -1000f))), global1.b, global1.c, global1.d, 1i);
    let var_0 = 3263u <= _wgslsmith_dot_vec3_u32(func_3(), arg_0.b.zxx);
    let var_1 = ~13832u > min(~8738u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global1.c, 12321u, arg_1) << (arg_0.d % vec3<u32>(32u)), firstLeadingBit(arg_0.b.yzz)));
    var var_2 = !var_1;
    global2 = array<vec3<i32>, 3>();
    return _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, 0u, 78402u, global1.c)), firstLeadingBit(~vec4<u32>(arg_0.a, 1u, 1u, 0u))), vec4<u32>(global1.c, ~(arg_1 << (global1.c % 32u)), countOneBits(1u), func_3().x)), select(arg_0.b, abs(vec4<u32>(global1.c, _wgslsmith_sub_u32(arg_1, 1u), ~76372u, abs(arg_1))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, var_1, var_1, var_1), !vec4<bool>(global1.b, var_1, var_1, true))));
}

fn func_1() -> Struct_3 {
    var var_0 = !vec4<bool>(min(countOneBits(global1.d.x), ~u_input.b.x) != firstTrailingBit(-2147483647i), global1.b, true, true);
    var var_1 = -270f;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1015f - global0.x)))), _wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(global0.x * global1.a.x)), -1358f, -798f);
    var var_2 = -3662i;
    var var_3 = Struct_2(~(~_wgslsmith_dot_vec4_u32(func_2(Struct_2(global1.c, vec4<u32>(global1.c, global1.c, global1.c, global1.c), Struct_1(global1.d.x, global1.a.x, global0.x), vec3<u32>(global1.c, 19833u, global1.c)), 0u), vec4<u32>(0u, 0u, 48219u, 67422u))), abs(~vec4<u32>(1u, 1u, 1u, 1u)) << (~(~(~vec4<u32>(37921u, 4294967295u, global1.c, 1u))) % vec4<u32>(32u)), Struct_1(max(-2147483647i, u_input.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, -585f)), _wgslsmith_f_op_f32(global1.a.x - global0.x))), -254f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, var_0.x))))), ~_wgslsmith_sub_vec3_u32(firstTrailingBit(firstLeadingBit(vec3<u32>(global1.c, 4294967295u, global1.c))), vec3<u32>(global1.c, global1.c, global1.c)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2029f, 783f, -861f, -712f))) + vec4<f32>(global0.x, _wgslsmith_f_op_f32(1000f - 1308f), _wgslsmith_f_op_f32(f32(-1f) * -273f), _wgslsmith_f_op_f32(f32(-1f) * -492f)))), false, var_3.d.x, _wgslsmith_clamp_vec2_i32(global1.d, max(vec2<i32>(~(-1i), -19329i & global1.d.x), global1.d), _wgslsmith_div_vec2_i32(-vec2<i32>(-26243i, u_input.b.x), -_wgslsmith_mult_vec2_i32(u_input.b.yy, u_input.b.yz))), 4779i);
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> f32 {
    var var_0 = arg_1;
    let var_1 = func_1().b;
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(-516f, global1.a.x), _wgslsmith_f_op_f32(global0.x * -1000f)), _wgslsmith_div_vec2_f32(arg_0.a.zw, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, 373f) * global1.a.xz)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.ww)))));
    let var_3 = Struct_1((i32(-1i) * -11122i) << (global1.c % 32u), var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -199f));
    let var_4 = Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(global1.c), _wgslsmith_add_u32(4294967295u, 0u)), _wgslsmith_sub_u32(arg_0.c, arg_0.c) & arg_0.c, ~(arg_0.c | 9097u)), min(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 57593u, 4294967295u), select(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(46871u, 24357u, global1.c), arg_0.b)), vec3<u32>(global1.c ^ 10354u, 126415u, global1.c << (29350u % 32u)))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(global1.c, 15633u, 80233u, 31319u), vec4<u32>(global1.c, global1.c, 1216u, 35748u)), vec4<u32>(102656u, 33069u, arg_0.c, arg_0.c)), vec4<u32>(60125u, 14545u, max(arg_0.c, 1u), arg_0.c)) | _wgslsmith_clamp_vec4_u32((vec4<u32>(18768u, arg_0.c, arg_0.c, global1.c) << (vec4<u32>(global1.c, 1u, arg_0.c, 1u) % vec4<u32>(32u))) | ~vec4<u32>(50458u, arg_0.c, 4294967295u, global1.c), reverseBits(vec4<u32>(arg_0.c, 21778u, arg_0.c, global1.c)) & vec4<u32>(87837u, arg_0.c, global1.c, arg_0.c), vec4<u32>(~26434u, 35470u, arg_0.c, global1.c)), Struct_1(-_wgslsmith_div_i32(arg_0.e & u_input.a, 2147483647i), 1000f, _wgslsmith_f_op_f32(abs(arg_0.a.x))), select(abs(vec3<u32>(global1.c, 1u, 1u) ^ (vec3<u32>(4294967295u, arg_0.c, 4294967295u) | vec3<u32>(global1.c, 0u, arg_0.c))), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(min(vec3<u32>(arg_0.c, 1u, arg_0.c), vec3<u32>(889u, 4294967295u, 0u)), ~vec3<u32>(arg_0.c, 4294967295u, global1.c)), ~(vec3<u32>(5765u, global1.c, 35038u) & vec3<u32>(82967u, 19369u, arg_0.c))), arg_0.b == !any(vec4<bool>(true, false, false, false))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(780f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_div_i32(14192i, global1.e))), -1810f), global1.a), any(select(!select(vec2<bool>(global1.b, global1.b), vec2<bool>(global1.b, false), vec2<bool>(global1.b, global1.b)), !vec2<bool>(true, global1.b), select(!vec2<bool>(global1.b, global1.b), vec2<bool>(true, true), all(vec2<bool>(false, global1.b))))), global1.c, vec2<i32>(~func_1().d.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(global1.c, global1.c), _wgslsmith_add_vec2_u32(vec2<u32>(49400u, global1.c), vec2<u32>(0u, global1.c))) % 32u), global1.e), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), abs(vec2<i32>(5917i, u_input.b.x))), 21114i, reverseBits(func_1().e)));
    var var_0 = vec3<i32>(countOneBits(global1.d.x), _wgslsmith_mult_i32(u_input.b.x, global1.e), (i32(-1i) * -1i) | global1.e);
    var var_1 = Struct_1(~_wgslsmith_dot_vec4_i32(-firstLeadingBit(vec4<i32>(3980i, 0i, -23285i, var_0.x)), vec4<i32>(-1i, abs(u_input.a), _wgslsmith_mult_i32(u_input.a, var_0.x), 1i)), global1.a.x, 597f);
    let var_2 = Struct_1(0i, global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1087f)), global1.a.x)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(func_1().a.x, 2173f, _wgslsmith_f_op_f32(-global1.a.x))) - global0.yzx)));
    let x = u_input.a;
    s_output = StorageBuffer(max(30444u, ~countOneBits(4294967295u)) << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, global1.c, global1.c, global1.c) & vec4<u32>(global1.c, global1.c, 4294967295u, 1329u), ~vec4<u32>(global1.c, global1.c, 1u, 26794u)), ~(~global1.c), 15180u) % 32u), global0.x, countOneBits(vec2<u32>(min(4294967295u & global1.c, global1.c), (global1.c & global1.c) >> (_wgslsmith_mod_u32(global1.c, 11837u) % 32u))));
}

