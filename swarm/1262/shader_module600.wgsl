struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> vec4<f32> {
    var var_0 = -u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-global0.b);
    let var_2 = ~arg_1.e.a.c.a;
    var var_3 = select(!select(!arg_1.e.b, select(arg_1.e.b, select(arg_1.e.b, arg_1.e.b, arg_1.e.b), global0.d | global0.d), global0.d), vec4<bool>(_wgslsmith_dot_vec3_u32(firstLeadingBit(arg_1.a), min(arg_1.a, arg_1.a)) <= (arg_1.d.c.c >> (~arg_1.b.c.a % 32u)), arg_0 >= 2147483647i, true, arg_1.e.b.x), select(!vec4<bool>(arg_1.b.a, false, any(arg_1.e.b.zx), false), vec4<bool>((38894u << (global0.c % 32u)) >= 1u, true, global0.d | all(vec4<bool>(true, true, false, true)), all(arg_1.e.b)), !vec4<bool>(global0.d, any(vec4<bool>(false, global0.d, global0.d, false)), arg_1.b.a, !arg_1.b.a)));
    let var_4 = Struct_1(firstLeadingBit(~var_2), 369f, var_2, false, u_input.a);
    return vec4<f32>(956f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1692f, var_1)))) - _wgslsmith_div_f32(-710f, -1000f)), 396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-291f + -1000f)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(global0.e, Struct_4(vec3<u32>(global0.c, global0.a, global0.a), Struct_2(true, vec4<f32>(681f, 1407f, global0.b, 1162f), Struct_1(global0.a, global0.b, 34546u, global0.d, -2147483647i)), Struct_1(1u, global0.b, global0.c, false, global0.e), Struct_2(global0.d, vec4<f32>(-1194f, 1000f, global0.b, global0.b), Struct_1(4294967295u, global0.b, global0.c, false, u_input.a)), Struct_3(Struct_2(global0.d, vec4<f32>(2522f, -221f, 1609f, -1376f), Struct_1(global0.c, 1002f, 19352u, true, u_input.a)), vec4<bool>(global0.d, false, true, global0.d), Struct_2(true, vec4<f32>(2174f, global0.b, global0.b, 259f), Struct_1(global0.a, global0.b, global0.c, true, -2147483647i)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1666f, global0.b, global0.b, 958f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-855f, global0.b, 301f, global0.b) - vec4<f32>(1875f, global0.b, 756f, global0.b)))))), Struct_1(~(~7785u), _wgslsmith_f_op_f32(767f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.b, global0.b, true)) - 1673f)), abs(~global0.a) << (69087u % 32u), global0.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-12774i, ~(-2147483647i), 0i), vec3<i32>(global0.e, -58355i, u_input.a))));
    global0 = Struct_1(~var_0.c.c, -301f, var_0.c.a, var_0.c.d, 1i);
    global0 = var_0.c;
    var_0 = Struct_2(any(!select(vec3<bool>(false, global0.d, var_0.a), vec3<bool>(true, false, true), vec3<bool>(false, global0.d, true))) & var_0.c.d, var_0.b, Struct_1(~1u, 1911f, 31716u, !var_0.c.d, ~11354i));
    var var_1 = firstTrailingBit(var_0.c.c & 1u);
    return 1u;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_1(global0.a, global0.b, _wgslsmith_mult_u32(global0.c ^ 37281u, ~func_2()), any(select(!(!vec2<bool>(global0.d, global0.d)), vec2<bool>(true, true), global0.d)), _wgslsmith_add_i32(-2147483647i, global0.e));
    var var_1 = global0.c & arg_0;
    global0 = Struct_1(abs(1u), global0.b, ~(~1u), (-11227i == _wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, 2863i), arg_2.yy), vec2<i32>(28514i, arg_2.x))) != any(!(!vec3<bool>(false, var_0.d, false))), _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, var_0.e), arg_2.yy)), -40589i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a | 1363i, ~2147483647i, arg_2.x, -2147483647i), countOneBits(firstLeadingBit(vec4<i32>(var_0.e, 148i, global0.e, var_0.e))))));
    var_1 = ~46235u;
    let var_2 = Struct_2(true, vec4<f32>(global0.b, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1, 215f), _wgslsmith_f_op_f32(min(561f, var_0.b))), arg_1)), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_1)), 365f))), _wgslsmith_f_op_f32(-1473f + _wgslsmith_f_op_f32(select(global0.b, 197f, any(vec3<bool>(global0.d, true, false)))))), var_0);
    return var_0;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_4) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_mult_u32(7899u, ~(~arg_2.e.c.c.c)) & ~reverseBits(global0.c), arg_0.c.b, ~4294967295u, arg_0.c.d, firstTrailingBit(firstTrailingBit(2147483647i) & 2147483647i));
    let var_0 = -(~(~abs(0i)));
    let var_1 = 1000f;
    var var_2 = ~firstTrailingBit(~(~(~vec4<u32>(global0.a, global0.a, arg_1.c, 1u))));
    var_2 = ~countOneBits(~max(firstTrailingBit(vec4<u32>(global0.a, 0u, arg_1.c, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.e.c.c.a, global0.a, arg_2.e.a.c.c, 1u), vec4<u32>(arg_0.e.c.c.c, arg_2.b.c.a, 1u, arg_2.e.c.c.a))));
    return arg_0.e.a.b;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_3) -> Struct_4 {
    global0 = func_1(abs(~arg_1.x), arg_2.x, max(_wgslsmith_sub_vec3_i32(max(~vec3<i32>(17242i, u_input.a, u_input.a), -vec3<i32>(global0.e, arg_3.a.c.e, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(global0.e, global0.e, arg_3.a.c.e) >> (vec3<u32>(75339u, 1u, 31032u) % vec3<u32>(32u)), vec3<i32>(global0.e, 2147483647i, -17866i))), vec3<i32>(firstLeadingBit(global0.e ^ u_input.a), ~(arg_3.a.c.e << (arg_3.a.c.c % 32u)), func_1(global0.a >> (260u % 32u), _wgslsmith_f_op_f32(-328f + -295f), select(vec3<i32>(1i, arg_3.c.c.e, global0.e), vec3<i32>(u_input.a, 2147483647i, u_input.a), arg_3.b.xyw)).e)));
    var var_0 = arg_3;
    return Struct_4(vec3<u32>(~_wgslsmith_sub_u32(arg_1.x & 5523u, ~0u), 17891u, abs(func_1(abs(arg_1.x), _wgslsmith_f_op_f32(arg_3.a.c.b - -105f), select(vec3<i32>(-20481i, global0.e, u_input.a), vec3<i32>(31018i, -19640i, -20900i), vec3<bool>(var_0.a.a, arg_3.c.c.d, false))).a)), Struct_2(global0.d, var_0.c.b, var_0.a.c), Struct_1(firstTrailingBit(~arg_3.a.c.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -907f)), global0.b), firstLeadingBit(~func_2()), all(select(arg_3.b, !vec4<bool>(global0.d, arg_3.a.a, global0.d, false), select(vec4<bool>(false, false, false, var_0.c.c.d), arg_3.b, var_0.b))), _wgslsmith_div_i32(~(~arg_3.c.c.e), -(~(-33315i)))), var_0.a, arg_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1164f, global0.b, -343f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global0.b, -191f) * vec3<f32>(global0.b, global0.b, 1304f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global0.b, global0.b) - vec3<f32>(global0.b, -998f, global0.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-681f, global0.b, 174f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b, global0.b, global0.b), vec3<f32>(global0.b, 807f, -134f), vec3<bool>(true, false, global0.d)))))), ~vec3<u32>(countOneBits(15029u | global0.a), ~(~global0.a), abs(~global0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), 1f, global0.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.b, global0.b))), _wgslsmith_f_op_f32(global0.b * global0.b), global0.b)), Struct_3(Struct_2(any(select(vec4<bool>(false, true, global0.d, global0.d), vec4<bool>(global0.d, false, true, global0.d), vec4<bool>(global0.d, true, false, global0.d))), _wgslsmith_f_op_vec4_f32(func_4(Struct_4(vec3<u32>(global0.a, global0.c, 1u), Struct_2(true, vec4<f32>(-730f, global0.b, global0.b, -454f), Struct_1(global0.a, global0.b, global0.a, global0.d, u_input.a)), Struct_1(129506u, global0.b, global0.a, global0.d, -28486i), Struct_2(true, vec4<f32>(global0.b, global0.b, -444f, global0.b), Struct_1(73422u, global0.b, 27021u, global0.d, u_input.a)), Struct_3(Struct_2(global0.d, vec4<f32>(156f, global0.b, -117f, -651f), Struct_1(global0.a, 2141f, global0.c, false, global0.e)), vec4<bool>(global0.d, global0.d, true, true), Struct_2(global0.d, vec4<f32>(global0.b, global0.b, global0.b, global0.b), Struct_1(global0.c, -139f, 0u, true, u_input.a)))), func_1(51371u, global0.b, vec3<i32>(u_input.a, 0i, global0.e)), Struct_4(vec3<u32>(global0.a, global0.c, 0u), Struct_2(global0.d, vec4<f32>(1472f, global0.b, global0.b, -2606f), Struct_1(global0.a, 625f, 4294967295u, true, global0.e)), Struct_1(global0.c, global0.b, global0.c, global0.d, global0.e), Struct_2(global0.d, vec4<f32>(global0.b, 868f, global0.b, -732f), Struct_1(88859u, global0.b, 28031u, false, -2147483647i)), Struct_3(Struct_2(global0.d, vec4<f32>(-182f, global0.b, global0.b, global0.b), Struct_1(0u, global0.b, 1u, global0.d, 38521i)), vec4<bool>(global0.d, global0.d, global0.d, false), Struct_2(false, vec4<f32>(806f, global0.b, global0.b, 3356f), Struct_1(0u, global0.b, 4294967295u, global0.d, global0.e)))))), func_1(global0.a, 378f, vec3<i32>(-17680i, global0.e, -72018i))), vec4<bool>(!(!global0.d), global0.d, !global0.d, global0.d), Struct_2(global0.d, _wgslsmith_f_op_vec4_f32(func_4(Struct_4(vec3<u32>(14636u, 0u, global0.a), Struct_2(false, vec4<f32>(global0.b, -808f, global0.b, -642f), Struct_1(global0.a, global0.b, global0.a, false, u_input.a)), Struct_1(global0.c, -1012f, 12726u, true, -19109i), Struct_2(global0.d, vec4<f32>(1092f, -2017f, global0.b, global0.b), Struct_1(1u, global0.b, 1u, global0.d, 37354i)), Struct_3(Struct_2(true, vec4<f32>(global0.b, global0.b, 1132f, global0.b), Struct_1(4294967295u, global0.b, global0.c, global0.d, u_input.a)), vec4<bool>(true, global0.d, false, true), Struct_2(global0.d, vec4<f32>(-331f, global0.b, -1053f, 935f), Struct_1(global0.c, global0.b, global0.c, false, global0.e)))), Struct_1(33190u, -324f, 4294967295u, true, 0i), Struct_4(vec3<u32>(74689u, global0.a, 19130u), Struct_2(global0.d, vec4<f32>(global0.b, global0.b, 934f, 2063f), Struct_1(1u, global0.b, global0.c, global0.d, global0.e)), Struct_1(41305u, global0.b, global0.a, global0.d, global0.e), Struct_2(global0.d, vec4<f32>(1919f, 359f, global0.b, global0.b), Struct_1(global0.c, 1092f, global0.a, true, -1i)), Struct_3(Struct_2(true, vec4<f32>(global0.b, 873f, global0.b, 232f), Struct_1(4294967295u, -1913f, 0u, global0.d, u_input.a)), vec4<bool>(true, false, false, false), Struct_2(false, vec4<f32>(-528f, 1145f, -596f, -158f), Struct_1(108524u, 704f, 71377u, false, global0.e)))))), func_1(~global0.c, global0.b, vec3<i32>(u_input.a, -46736i, u_input.a)))));
    var_0 = func_5(var_0.e.c.b.xxy, vec3<u32>(~(~(var_0.c.c >> (56298u % 32u))), var_0.c.c, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_0.a, vec3<u32>(67137u, 39410u, 67426u)), var_0.a) << (abs(4294967295u & global0.c) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, var_0.e.c.c.b, global0.b, var_0.c.b), vec4<f32>(global0.b, 1000f, 880f, var_0.c.b)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.e.a.b.x, global0.b, var_0.d.b.x, global0.b))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-925f, -1583f, var_0.d.c.b, 465f), vec4<f32>(2950f, var_0.c.b, 1000f, global0.b))))))), var_0.e);
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(-var_0.b.b.zxx), var_0.a, _wgslsmith_f_op_vec4_f32(var_0.d.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(vec3<u32>(0u, var_0.c.c, global0.c), var_0.b, Struct_1(var_0.c.c, -1067f, var_0.b.c.c, var_0.e.b.x, u_input.a), Struct_2(var_0.c.d, vec4<f32>(var_0.c.b, global0.b, -1969f, -1000f), var_0.d.c), Struct_3(var_0.d, var_0.e.b, Struct_2(global0.d, vec4<f32>(-1000f, 136f, global0.b, -683f), Struct_1(var_0.c.c, var_0.d.c.b, global0.c, var_0.d.c.d, -1i)))), var_0.e.a.c, Struct_4(vec3<u32>(global0.a, global0.c, global0.a), var_0.b, Struct_1(global0.c, -189f, var_0.c.c, var_0.c.d, -1i), Struct_2(global0.d, vec4<f32>(1493f, 467f, var_0.d.b.x, 143f), var_0.e.a.c), var_0.e))) * vec4<f32>(global0.b, global0.b, -1000f, 324f)))), Struct_3(var_0.b, select(func_5(_wgslsmith_f_op_vec3_f32(-var_0.e.a.b.zyz), var_0.a, vec4<f32>(var_0.d.c.b, 684f, var_0.b.c.b, -1138f), func_5(var_0.e.c.b.xzw, var_0.a, var_0.b.b, var_0.e).e).e.b, vec4<bool>(true & global0.d, any(vec2<bool>(true, global0.d)), true, var_0.d.c.b >= 545f), var_0.b.a), func_5(_wgslsmith_div_vec3_f32(var_0.b.b.zwx, _wgslsmith_f_op_vec3_f32(-var_0.d.b.yzz)), var_0.a, vec4<f32>(var_0.c.b, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(var_0.c.b - var_0.c.b), -566f), var_0.e).b));
    var_0 = Struct_4(~(~(~abs(var_0.a))), var_0.e.c, var_0.c, var_0.d, var_0.e);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-372f + global0.b), _wgslsmith_f_op_f32(select(840f, _wgslsmith_f_op_f32(trunc(global0.b)), var_0.d.a)))), 1u, _wgslsmith_f_op_f32(176f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * -135f)) == _wgslsmith_div_f32(global0.b, 1734f), -(~(-_wgslsmith_add_i32(global0.e, var_0.b.c.e))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-(~vec3<i32>(-31579i, global0.e, -2147483647i)) & (vec3<i32>(var_0.c.e, global0.e, global0.e) >> (vec3<u32>(global0.c, global0.c, global0.a) % vec3<u32>(32u)))), select(vec2<i32>(0i, func_1(~0u, 810f, -vec3<i32>(u_input.a, 48300i, 57978i)).e), select(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, global0.e), vec2<i32>(1i, global0.e))), select(vec2<i32>(u_input.a, var_0.b.c.e), vec2<i32>(0i, u_input.a), var_0.e.b.ww) << (var_0.a.xz % vec2<u32>(32u)), false), !(!func_5(vec3<f32>(global0.b, -759f, -438f), vec3<u32>(15540u, global0.a, 4294967295u), vec4<f32>(var_0.e.c.c.b, 1447f, var_0.c.b, 227f), Struct_3(var_0.e.c, var_0.e.b, Struct_2(true, var_0.e.a.b, Struct_1(39434u, global0.b, 0u, false, 31362i)))).e.b.xy)), ~(firstTrailingBit(vec2<i32>(global0.e, u_input.a)) & select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, var_0.d.c.e), vec2<i32>(-2147483647i, 23272i)), -vec2<i32>(u_input.a, 2147483647i), vec2<bool>(false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.b, _wgslsmith_f_op_f32(-332f + global0.b)) - global0.b)));
}

