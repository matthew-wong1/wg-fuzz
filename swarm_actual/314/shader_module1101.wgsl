struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true)), vec2<bool>(true, false)), false, Struct_2(Struct_1(vec3<bool>(true, true, false)), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(true, false)), vec4<f32>(-510f, -1798f, -988f, -1418f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(false, true)), true, Struct_2(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(true, false)), Struct_2(Struct_1(vec3<bool>(true, true, false)), vec2<bool>(true, false)), vec4<f32>(766f, 1761f, 1000f, -172f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true)), vec2<bool>(false, false)), true, Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(true, true)), vec4<f32>(1193f, 354f, -409f, -1366f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(false, true)), false, Struct_2(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(false, false)), vec4<f32>(-182f, -1000f, -141f, 953f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true)), vec2<bool>(false, false)), false, Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<bool>(true, true, true)), vec2<bool>(true, false)), vec4<f32>(1317f, -1174f, -282f, -197f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(true, true)), false, Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(true, false)), Struct_2(Struct_1(vec3<bool>(false, false, true)), vec2<bool>(false, false)), vec4<f32>(-247f, -1301f, 483f, -514f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true)), vec2<bool>(false, true)), true, Struct_2(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<bool>(true, true, true)), vec2<bool>(false, false)), vec4<f32>(1391f, -265f, 1000f, -383f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(true, true)), true, Struct_2(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(true, true, true)), vec2<bool>(true, true)), vec4<f32>(209f, -1409f, 902f, 659f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(true, false)), false, Struct_2(Struct_1(vec3<bool>(false, false, true)), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(false, false, true)), vec2<bool>(true, true)), vec4<f32>(1342f, 340f, -110f, 470f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(false, true)), true, Struct_2(Struct_1(vec3<bool>(true, false, true)), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(true, true)), vec4<f32>(1629f, 513f, -828f, 559f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(false, true)), true, Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(false, false)), vec4<f32>(1470f, -1000f, 253f, -415f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(true, false)), true, Struct_2(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(true, false, true)), vec2<bool>(false, false)), vec4<f32>(817f, 416f, 179f, 923f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(true, false)), true, Struct_2(Struct_1(vec3<bool>(false, true, false)), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(true, false, true)), vec2<bool>(false, true)), vec4<f32>(-2392f, -2329f, 533f, 822f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, false)), vec2<bool>(false, true)), false, Struct_2(Struct_1(vec3<bool>(true, false, false)), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(false, false)), vec4<f32>(-872f, 1000f, -746f, -1000f)), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true)), vec2<bool>(false, false)), false, Struct_2(Struct_1(vec3<bool>(true, false, true)), vec2<bool>(false, true)), Struct_2(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(true, false)), vec4<f32>(624f, -1091f, -1000f, -504f)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true)), vec2<bool>(false, true)), true, Struct_2(Struct_1(vec3<bool>(false, false, false)), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(false, false, true)), vec2<bool>(false, true)), vec4<f32>(896f, 2320f, 1321f, 1014f)));

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)));

var<private> global2: bool = true;

var<private> global3: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = 1i;
    var var_1 = ~(~34291u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(927f)));
    return -_wgslsmith_mult_i32(~36054i, ~abs(~(-7556i)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: bool) -> Struct_2 {
    global1 = array<Struct_1, 17>();
    global2 = ~16091i < _wgslsmith_clamp_i32(func_3(Struct_1(vec3<bool>(false, arg_2, false))), _wgslsmith_div_i32(-(~(-20012i)), -(~68483i)), firstTrailingBit(~(i32(-1i) * -1i)));
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f - -1235f) + _wgslsmith_f_op_f32(f32(-1f) * -1171f)), _wgslsmith_f_op_f32(-503f * _wgslsmith_f_op_f32(floor(1697f)))))))));
    let var_1 = Struct_2(Struct_1(vec3<bool>(arg_2, !arg_2, true && arg_2)), vec2<bool>(select(false, any(arg_1.zx), true), (!arg_2 | arg_2) | select(all(vec2<bool>(true, false)), true, select(false, arg_2, arg_2))));
    global2 = !all(var_1.b);
    return Struct_2(Struct_1(var_1.a.a), arg_1.xy);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-644f, 1900f, -620f, 1000f), vec4<f32>(-932f, -1000f, 1411f, -1000f))))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-407f + 661f), -1397f), -610f, 431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1687f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(114f, 1000f, -489f, -906f))))))), !select(true, true, !(arg_1.a.a.x && false))));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    var var_0 = _wgslsmith_div_i32(~(-1i) | _wgslsmith_add_i32(~3716i, _wgslsmith_sub_i32(select(-34824i, -24992i, false), 12627i)), _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(21110i, -1i)), ~(~vec2<i32>(11064i, 10103i))));
    global1 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(exp2(arg_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -201f, arg_0.x)), arg_1)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, -178f) - arg_0.zzx), _wgslsmith_f_op_vec3_f32(step(arg_0.xzy, arg_0.www)), all(vec4<bool>(arg_1, arg_1, arg_1, arg_1))))))));
    global0 = array<Struct_3, 16>();
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(1u, 17u)], select(!vec2<bool>(arg_1, true & arg_1), func_2(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(14922u, u_input.b.x, u_input.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 14027u, u_input.a), vec3<u32>(28890u, u_input.a, 1u), u_input.b.wxy)), select(select(vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, false, arg_1), true), vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(arg_1, true, false), vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, true, arg_1))), arg_1).b, select(false, false, var_1.x >= -759f)));
    return Struct_2(func_2(firstTrailingBit(~0u), func_2(u_input.b.x, vec3<bool>(var_2.a.a.x, any(vec4<bool>(var_2.b.x, true, arg_1, var_2.a.a.x)), true), true).a.a, true).a, var_2.a.a.xz);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> bool {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(~(2908u | u_input.b.x), func_2(~u_input.a, select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), true), vec4<i32>(0i, ~arg_0.x, select(2147483647i, -2147483647i, true), firstLeadingBit(1i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1783f, 1000f, 1364f, 1509f) - vec4<f32>(-176f, -1105f, 231f, 948f))))), !vec4<bool>(any(vec4<bool>(false, true, false, false)), true, true, true))), false);
    let var_1 = -vec3<i32>(_wgslsmith_div_i32(-33351i, _wgslsmith_mod_i32(arg_0.x, arg_0.x)) | 1i, arg_0.x, arg_0.x);
    var_0 = Struct_2(func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(918f, -496f, -1026f, -912f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1594f, -495f, -561f, -1000f))))), ~u_input.b.x >= countOneBits(_wgslsmith_div_u32(20616u, 4294967295u))).a, vec2<bool>(true, true));
    let var_2 = vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(0i), arg_0.x), 2147483647i);
    global0 = array<Struct_3, 16>();
    return all(func_2(13291u, vec3<bool>(true, (false != var_0.a.a.x) && var_0.b.x, var_0.a.a.x), var_0.b.x).a.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.b.wz, u_input.b.xx, select(any(vec4<bool>(true, true, true, true)) || true, any(vec4<bool>(true, true, true, true)), func_1(countOneBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1i, 1i), vec3<i32>(10512i, -2147483647i, 0i))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, 45404u, 0u)), u_input.b.x))));
    global3 = reverseBits(_wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(12206u, u_input.a) ^ u_input.b.wy)));
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(select(i32(-1i) * -53740i, -2147483647i >> (1u % 32u), true), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i))), ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-28157i, 29680i))), 1i), (vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(23297i, 2147483647i, -25413i, 2147483647i), vec4<i32>(-1i, 23108i, -1i, 1i)), _wgslsmith_div_i32(0i, 1i)) << (~vec3<u32>(19247u, var_0.x, var_0.x) % vec3<u32>(32u))) << (u_input.b.wyx % vec3<u32>(32u)));
    let var_2 = func_2(_wgslsmith_mod_u32(~var_0.x | u_input.b.x, 54096u), !vec3<bool>(true, false, any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true))), !any(vec4<bool>(true, true, select(false, false, false), true))).a;
    let var_3 = _wgslsmith_f_op_f32(1457f - _wgslsmith_f_op_vec4_f32(func_4(34792u, func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-760f, -258f, 1035f, 1486f))), true), vec4<i32>(-1i) * -(~vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)))).x);
    global0 = array<Struct_3, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 23022u) >> (u_input.b.wwx % vec3<u32>(32u)), ~u_input.b.zzz)) >> (_wgslsmith_add_vec3_u32(abs(~u_input.b.zxz), _wgslsmith_mult_vec3_u32(vec3<u32>(4544u, var_0.x, u_input.a) | u_input.b.yzy, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 3404u, var_0.x), vec3<u32>(0u, 0u, 81729u)))) % vec3<u32>(32u)), -(~(-vec2<i32>(var_1.x, -5478i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_4(50226u, Struct_2(Struct_1(var_2.a), var_2.a.zz), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -1i, var_1.x), vec4<i32>(-2147483647i, -30762i, 3134i, -42034i)), 31828i, -var_1.x, -var_1.x))).wx * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec4_f32(func_4(0u, Struct_2(Struct_1(var_2.a), vec2<bool>(false, false)), vec4<i32>(var_1.x, 0i, 17373i, -2147483647i))).x, 312f))));
}

