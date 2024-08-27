struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = !(!select(select(select(vec3<bool>(false, false, arg_1.a), vec3<bool>(false, false, arg_1.a), true), vec3<bool>(false, arg_1.a, arg_1.a), arg_1.a), !vec3<bool>(arg_1.a, arg_1.a, arg_1.a), any(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.a, true, arg_1.a), false))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.c.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c.b - arg_1.c.b) + arg_1.c.b)));
    var var_1 = !(~countOneBits(~11598u) == abs(0u & arg_2));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 386f, -127f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(global0.x - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-409f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -387f) * 1742f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(745f * 425f), _wgslsmith_f_op_f32(-392f + 2111f)))) + arg_1.d.b), vec4<bool>(arg_1.a, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-906f * 2291f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -305f))), all(!vec2<bool>(false, var_0.x)) != var_0.x)));
    let var_2 = arg_1.b;
    return _wgslsmith_sub_i32(select(_wgslsmith_div_i32(-_wgslsmith_sub_i32(arg_1.b, -1i), i32(-1i) * -10111i), 21624i, select(arg_1.a, !(!arg_1.a), false | all(vec4<bool>(var_0.x, false, true, false)))), 1i);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> Struct_3 {
    let var_0 = ~(_wgslsmith_mult_i32(abs(1i), 1i) | -firstTrailingBit(func_3(-468f, Struct_3(arg_2, 0i, arg_1.a, Struct_1(4294967295u, vec4<f32>(-716f, -1139f, global0.x, 1000f), u_input.a, arg_1.a.d)), arg_1.a.a)));
    let var_1 = arg_1.b.x;
    var var_2 = Struct_2(arg_1.a, arg_1.b);
    var var_3 = 0u;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1269f), 210f));
    return Struct_3(all(vec2<bool>(arg_0, arg_0)), var_0, Struct_1(_wgslsmith_sub_u32(53346u, var_2.b.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-403f, global0.x, 1304f, global0.x), vec4<f32>(-2413f, -1360f, -666f, -712f))))), _wgslsmith_mod_u32(abs(~var_2.a.a), 4294967295u), arg_1.a.b.xw), arg_1.a);
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-arg_0.d.b.x), 1358f, _wgslsmith_f_op_f32(round(1324f))) + arg_0.c.b);
    let var_0 = arg_0.b;
    let var_1 = arg_0.c.a;
    let var_2 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(81855u, var_1)), ~(~vec2<u32>(1u, arg_0.c.c)), firstTrailingBit(reverseBits(vec2<u32>(arg_0.d.a & 1u, ~4294967295u))));
    var var_3 = true;
    return ~arg_0.d.c;
}

fn func_1() -> vec2<u32> {
    var var_0 = ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(~u_input.a), func_4(func_2(false, Struct_2(Struct_1(u_input.a, vec4<f32>(global0.x, global0.x, global0.x, global0.x), 4294967295u, global0.zy), vec4<u32>(26326u, 31475u, u_input.a, 4294967295u)), false))), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, 1u), _wgslsmith_add_u32(u_input.a, u_input.a)));
    var var_1 = false;
    let var_2 = Struct_2(func_2(all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_2(Struct_1(_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(-387f, global0.x, global0.x, global0.x) - vec4<f32>(-1000f, 526f, -1223f, global0.x)), ~u_input.a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, 944f), vec2<f32>(global0.x, global0.x)))), ~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 43080u))), any(vec4<bool>(true, true, true, true))).c, vec4<u32>(u_input.a, ~(~35198u), _wgslsmith_add_u32(85553u, _wgslsmith_div_u32(u_input.a, 1u)), max(u_input.a, u_input.a) << (17185u % 32u)));
    let var_3 = ~(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, -23051i, -18311i, 0i), vec4<i32>(1i, 1i, 1i, 1i))) & vec2<i32>(_wgslsmith_mod_i32(9115i, ~(-2147483647i)), abs(1i)));
    var var_4 = 0i;
    return var_2.b.xz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~func_1(), vec2<u32>(15524u, ~u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(550f, -1000f, global0.x, global0.x))), 12158u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.wx) * vec2<f32>(global0.x, global0.x)))), ~_wgslsmith_sub_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 35156u, 0u, 25479u), vec4<u32>(19072u, u_input.a, 4294967295u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(17891u, u_input.a, u_input.a, 1u)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.a, 110571u, 61296u, 4294967295u)), max(vec4<u32>(u_input.a, u_input.a, u_input.a, 396u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, min(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1i, -17110i, 2147483647i, 18300i), firstTrailingBit(vec4<i32>(-2147483647i, 1i, 0i, 13175i))), vec4<i32>(firstTrailingBit(2147483647i), abs(17771i), i32(-1i) * -2147483647i, 0i)), -(vec4<i32>(-16023i, 12546i, 1i, -53994i) >> (_wgslsmith_sub_vec4_u32(var_0.b, vec4<u32>(86481u, 0u, var_0.a.c, 34242u)) % vec4<u32>(32u)))), -1i);
}

