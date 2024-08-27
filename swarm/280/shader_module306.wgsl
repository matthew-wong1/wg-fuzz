struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(Struct_1(2147483647i, true, -413f, 14877i, vec2<f32>(-1208f, -1233f))), Struct_2(Struct_1(11826i, true, -505f, 2147483647i, vec2<f32>(1000f, -1071f))), Struct_2(Struct_1(-8868i, false, 1013f, -1i, vec2<f32>(-287f, 1638f))), Struct_2(Struct_1(2147483647i, false, -406f, 19859i, vec2<f32>(844f, -285f))), Struct_2(Struct_1(2147483647i, true, 2149f, 0i, vec2<f32>(-1725f, 776f))), Struct_2(Struct_1(-51410i, false, -2314f, -1i, vec2<f32>(732f, -785f))), Struct_2(Struct_1(29248i, false, 1588f, -1i, vec2<f32>(-703f, 379f))), Struct_2(Struct_1(0i, false, -1000f, 46548i, vec2<f32>(-1000f, 769f))), Struct_2(Struct_1(6937i, false, 2132f, -11359i, vec2<f32>(476f, 788f))), Struct_2(Struct_1(-1i, true, 2114f, 14211i, vec2<f32>(-545f, -763f))), Struct_2(Struct_1(-38472i, true, 1730f, -9408i, vec2<f32>(-1480f, 821f))), Struct_2(Struct_1(-1i, false, -1000f, 0i, vec2<f32>(831f, -1468f))), Struct_2(Struct_1(1i, true, -463f, i32(-2147483648), vec2<f32>(3072f, -834f))), Struct_2(Struct_1(0i, false, -197f, i32(-2147483648), vec2<f32>(-1944f, 532f))), Struct_2(Struct_1(10211i, true, 374f, 2147483647i, vec2<f32>(233f, -1000f))), Struct_2(Struct_1(11023i, false, -811f, -24904i, vec2<f32>(288f, 340f))), Struct_2(Struct_1(i32(-2147483648), false, -240f, -1i, vec2<f32>(-1379f, -883f))), Struct_2(Struct_1(-16659i, true, -343f, 0i, vec2<f32>(1000f, -691f))), Struct_2(Struct_1(-37090i, false, -635f, -1i, vec2<f32>(-1261f, 329f))), Struct_2(Struct_1(1i, false, 2129f, -21860i, vec2<f32>(470f, -502f))), Struct_2(Struct_1(16980i, true, 575f, 24656i, vec2<f32>(-1597f, -898f))), Struct_2(Struct_1(36055i, false, 622f, -31901i, vec2<f32>(-1496f, -201f))), Struct_2(Struct_1(-13287i, false, -916f, -1i, vec2<f32>(520f, 273f))));

var<private> global1: f32 = 178f;

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(61281u, false, 1u, Struct_1(0i, false, -126f, i32(-2147483648), vec2<f32>(1923f, 272f))), Struct_3(72798u, false, 20322u, Struct_1(-11677i, false, 303f, -18249i, vec2<f32>(593f, -1000f))), Struct_3(4294967295u, true, 20331u, Struct_1(1i, true, 1109f, -37241i, vec2<f32>(419f, 109f))), Struct_3(10242u, true, 40190u, Struct_1(1i, true, 1218f, 2147483647i, vec2<f32>(-1000f, 297f))), Struct_3(4294967295u, true, 4294967295u, Struct_1(12699i, false, -2147f, i32(-2147483648), vec2<f32>(-1847f, -1080f))), Struct_3(0u, true, 4294967295u, Struct_1(-44241i, true, 148f, 7687i, vec2<f32>(196f, 1038f))), Struct_3(1u, true, 4294967295u, Struct_1(-29361i, false, -450f, 2147483647i, vec2<f32>(-434f, -227f))), Struct_3(103252u, false, 65942u, Struct_1(-6908i, false, -197f, -1i, vec2<f32>(656f, 1287f))), Struct_3(13220u, true, 1u, Struct_1(-40459i, true, -1057f, 2147483647i, vec2<f32>(514f, 1220f))));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.c), u_input.d.x), 23u)];
    let var_1 = !(!select(select(vec3<bool>(false, true, var_0.a.b), !vec3<bool>(var_0.a.b, var_0.a.b, true), true), !select(vec3<bool>(var_0.a.b, var_0.a.b, false), vec3<bool>(true, false, var_0.a.b), var_0.a.b), select(vec3<bool>(var_0.a.b, var_0.a.b, var_0.a.b), vec3<bool>(false, var_0.a.b, false), true)));
    global0 = array<Struct_2, 23>();
    let var_2 = u_input.d;
    global2 = array<Struct_3, 9>();
    return countOneBits(0u);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_1(~(~countOneBits(_wgslsmith_mod_i32(37378i, 47283i))), all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-372f))))), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f) * -1321f)), false)), abs(_wgslsmith_sub_i32(countOneBits(-9414i), 37842i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-746f, arg_0)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, -564f), vec2<f32>(653f, -200f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-425f, arg_0), vec2<f32>(arg_0, arg_0)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1259f, arg_0))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(-455f, 562f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 896f))))));
    global1 = _wgslsmith_f_op_f32(-arg_0);
    global1 = 713f;
    let var_1 = Struct_1(select(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(var_0.d, -10164i, -2147483647i)), (vec3<i32>(-32010i, var_0.d, var_0.a) | vec3<i32>(2147483647i, var_0.a, -1i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d.x, 45836u, u_input.a), u_input.d.zyz) % vec3<u32>(32u))), -1i, any(select(vec2<bool>(var_0.b, true), vec2<bool>(var_0.b, false), vec2<bool>(true, var_0.b))) & !all(vec4<bool>(false, var_0.b, var_0.b, false))), false, arg_0, var_0.a, vec2<f32>(-260f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.e.x))) * _wgslsmith_f_op_f32(trunc(arg_0)))));
    let var_2 = Struct_2(Struct_1(_wgslsmith_add_i32(firstLeadingBit(var_0.d), -22114i), true, _wgslsmith_f_op_f32(-var_1.c), -12817i, vec2<f32>(-773f, var_0.e.x)));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(arg_0 * var_0.e.x)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(arg_1);
    var var_1 = _wgslsmith_mult_u32(~2617u & _wgslsmith_mod_u32(1u, ~func_2()), ~u_input.a << (u_input.a % 32u));
    global2 = array<Struct_3, 9>();
    var var_2 = Struct_3(u_input.d.x, arg_1.b, ~firstLeadingBit(~0u), Struct_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.a.a, -1i, var_0.a.d), vec4<i32>(1i, 46069i, var_0.a.d, 0i)), _wgslsmith_mod_vec4_i32(vec4<i32>(14586i, -1i, var_0.a.a, -9321i), vec4<i32>(1i, var_0.a.d, arg_1.d, arg_0.x))), !all(vec3<bool>(arg_1.b, false, false)), _wgslsmith_f_op_f32(select(var_0.a.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(826f)), 140f, true)), u_input.a <= ~44871u)), -2147483647i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.c, var_0.a.c), var_0.a.e)), vec2<f32>(236f, 502f))))));
    global0 = array<Struct_2, 23>();
    return ~_wgslsmith_mult_u32(70113u, var_2.a) | ~(var_2.c << ((_wgslsmith_dot_vec2_u32(u_input.b.yz, vec2<u32>(var_2.c, 1u)) | _wgslsmith_mult_u32(4294967295u, var_2.c)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = 24642u;
    global0 = array<Struct_2, 23>();
    var var_2 = -firstLeadingBit(_wgslsmith_div_vec4_i32(reverseBits(abs(vec4<i32>(-6456i, 15424i, 31253i, 0i))), vec4<i32>(40373i, 1i, -17706i, -1i)));
    var var_3 = vec3<u32>(abs(func_1(_wgslsmith_mult_vec3_i32(min(vec3<i32>(var_2.x, -1i, -21373i), var_2.xxw), var_2.yyy), Struct_1(reverseBits(var_2.x), select(true, false, false), -797f, abs(var_2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2081f) + vec2<f32>(913f, 1244f))))), (select(1482u, 0u, false) & _wgslsmith_mult_u32(u_input.c ^ 0u, _wgslsmith_sub_u32(82447u, u_input.d.x))) ^ ~u_input.c, _wgslsmith_dot_vec3_u32(select(select(~u_input.d.zyx, vec3<u32>(28314u, u_input.b.x, u_input.d.x), true), ~firstLeadingBit(u_input.b.zyx), _wgslsmith_f_op_f32(floor(-367f)) <= -1481f), u_input.d.xwy));
    var_0 = !(!select(!any(vec3<bool>(true, true, false)), false, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1099f), 190f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(294f, 462f) * vec2<f32>(775f, -603f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1667f, -1013f)) + vec2<f32>(-347f, -1000f)))));
}

