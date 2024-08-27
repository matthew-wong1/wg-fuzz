struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: u32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(26155u, 57174u);

var<private> global1: array<vec2<f32>, 31>;

var<private> global2: i32;

var<private> global3: i32 = -15224i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global0 = vec2<u32>(1u, 1u);
    let var_0 = vec4<u32>(reverseBits(67212u), ~(~u_input.e) << (~global0.x % 32u), _wgslsmith_mod_u32(arg_0.x, reverseBits(abs(u_input.e))), 1u);
    let var_1 = u_input.e;
    var var_2 = !(!select(vec4<bool>(select(true, false, true), true, false, false), vec4<bool>(true, true, true, true), (4294967295u << (arg_0.x % 32u)) > 1u));
    var var_3 = var_2.xy;
    return 312f;
}

fn func_2() -> vec3<bool> {
    var var_0 = ~abs(max(vec3<u32>(4294967295u, 0u, u_input.e) | vec3<u32>(1u, global0.x, u_input.e), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(u_input.e, 1u, u_input.e)), vec3<u32>(global0.x, 6566u, global0.x))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-317f * -630f), -715f)) + _wgslsmith_f_op_f32(func_3(min(vec3<u32>(60605u, var_0.x, 0u), vec3<u32>(var_0.x, 4294967295u, u_input.e)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-562f)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-699f, 1000f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-227f, -797f)) + _wgslsmith_f_op_f32(-737f - 210f)))));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1517f, -1729f, _wgslsmith_f_op_f32(abs(-1339f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, -148f, var_1.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-342f, var_1.x, 195f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, var_1.x, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(-958f * var_1.x), 1000f))));
    var var_2 = false;
    global0 = ~select(vec2<u32>(~abs(u_input.e), var_0.x), var_0.xx, all(vec3<bool>(true, true, any(vec2<bool>(false, true)))));
    return !select(vec3<bool>((u_input.d.x & u_input.a.x) != -8928i, true, false), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), vec3<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true))), (u_input.b.x | -39i) == _wgslsmith_sub_i32(-10213i, u_input.b.x), true));
}

fn func_1(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = min(~(~(~global0.x)), select(~global0.x, max(u_input.e, global0.x), all(vec4<bool>(all(vec2<bool>(true, false)), true, all(vec3<bool>(false, true, true)), true))));
    let var_1 = 4294967295u;
    var var_2 = all(!vec2<bool>(select(true, true, true), true));
    global1 = array<vec2<f32>, 31>();
    let var_3 = Struct_2(421f);
    return Struct_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(~23599u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(6892u, 0u, global0.x)), var_1), vec3<u32>(u_input.e, ~47277u, global0.x), vec3<u32>(0u, min(4294967295u, var_0), var_1) & vec3<u32>(4294967295u, var_1, abs(var_1))), Struct_3(false, Struct_2(_wgslsmith_f_op_f32(-var_3.a)), !(!func_2())), ~_wgslsmith_mult_u32(4294967295u, 1u), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.d.x, countOneBits(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 31525i), vec2<i32>(arg_0.x, 58861i)), arg_0.x), u_input.b));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = all(!vec4<bool>(arg_2.b.c.x != false, arg_2.b.c.x, arg_2.b.a, true));
    var var_1 = arg_2.c;
    global3 = u_input.b.x;
    global1 = array<vec2<f32>, 31>();
    global0 = arg_2.a.zx;
    return arg_2;
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: i32, arg_3: u32) -> Struct_5 {
    global1 = array<vec2<f32>, 31>();
    global3 = -65981i | _wgslsmith_sub_i32(-2147483647i, ~arg_2 ^ arg_2);
    var var_0 = func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a.x, 1u, 86164u, arg_0.c), min(vec4<u32>(arg_3, global0.x, 0u, 30175u), vec4<u32>(4294967295u, arg_0.c, global0.x, global0.x))), arg_3, min(1u, _wgslsmith_mod_u32(arg_3, 4294967295u)), max(global0.x, global0.x & arg_0.c)), min(vec4<u32>(u_input.e << (u_input.e % 32u), 41214u & global0.x, arg_3 << (arg_3 % 32u), _wgslsmith_mod_u32(global0.x, arg_3)), max(~vec4<u32>(1u, u_input.e, 4294967295u, u_input.e), ~vec4<u32>(39994u, arg_3, u_input.e, u_input.e)))), select(4294967295u, select(firstTrailingBit(u_input.e) << (u_input.e % 32u), u_input.e, any(vec3<bool>(true, arg_0.b.c.x, false))), arg_0.b.c.x), func_1(vec4<i32>(-2102i, abs(abs(u_input.d.x)), _wgslsmith_dot_vec4_i32(arg_0.d, u_input.b), ~(-39017i) << (0u % 32u))));
    let var_1 = func_1(u_input.b);
    global1 = array<vec2<f32>, 31>();
    return Struct_5(vec3<bool>(var_1.b.c.x, true, select(var_0.b.a, var_1.b.a == true, var_1.b.c.x)), var_1.b.c, 667f, vec2<u32>(countOneBits(~firstTrailingBit(0u)), reverseBits(global0.x) | global0.x));
}

fn func_6(arg_0: i32, arg_1: Struct_5, arg_2: bool) -> i32 {
    let var_0 = func_1(-(vec4<i32>(firstLeadingBit(arg_0), arg_0, 11170i, arg_0) & vec4<i32>(-arg_0, u_input.c, countOneBits(5043i), -55192i))).b.b;
    let var_1 = firstTrailingBit(732u);
    global0 = arg_1.d;
    global1 = array<vec2<f32>, 31>();
    let var_2 = ~vec3<u32>(var_1, func_1(~_wgslsmith_mult_vec4_i32(vec4<i32>(48646i, u_input.a.x, -17039i, arg_0), u_input.b)).a.x, 0u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(67303i, -_wgslsmith_add_i32((i32(-1i) * -50084i) & u_input.a.x, _wgslsmith_mult_i32(reverseBits(u_input.d.x), _wgslsmith_mod_i32(0i, u_input.d.x))), ~u_input.c);
    global0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(select(60879u, 10868u, false), 20687u ^ global0.x), ~13799u), ~(~(~vec2<u32>(31606u, 23845u))), vec2<u32>(1u, 1u)) | countOneBits(min(~(~vec2<u32>(u_input.e, 6696u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.e, 4294967295u), countOneBits(vec2<u32>(0u, u_input.e)))));
    global2 = func_6(abs(_wgslsmith_sub_i32(-2147483647i, -u_input.d.x)), func_5(func_4(vec4<u32>(~1u, ~u_input.e, ~1u, countOneBits(0u)), 57857u, func_1(u_input.b & vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.c))), -1176f, firstTrailingBit(select(~u_input.d.x, 0i, true)), _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(u_input.e, 0u, global0.x, global0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 10342u, 4294967295u, global0.x) | vec4<u32>(global0.x, 9800u, 1u, 49252u), ~vec4<u32>(global0.x, u_input.e, u_input.e, global0.x)))), true);
    global2 = ~_wgslsmith_clamp_i32(~(-2147483647i), -37342i, var_0.x);
    global0 = select(~(~select(~vec2<u32>(u_input.e, 3611u), vec2<u32>(109586u, global0.x), vec2<bool>(true, true))), vec2<u32>(~_wgslsmith_div_u32(~u_input.e, ~u_input.e), ~u_input.e), select(vec2<bool>(!func_5(Struct_4(vec3<u32>(13112u, global0.x, global0.x), Struct_3(false, Struct_2(-1299f), vec3<bool>(true, false, false)), 17245u, vec4<i32>(14622i, -25623i, 1i, var_0.x)), -289f, 4100i, 0u).a.x, any(vec3<bool>(false, true, false))), select(vec2<bool>(true, select(false, true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), true));
    global3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~u_input.e) >> (reverseBits(1u) % 32u), u_input.e, ~10277u << (u_input.e % 32u), 26237u));
}

