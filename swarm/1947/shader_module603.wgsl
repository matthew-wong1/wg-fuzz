struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3>;

var<private> global1: array<vec2<bool>, 28>;

var<private> global2: Struct_3;

var<private> global3: f32 = 1000f;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = global2.a;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(385f + -192f)))));
    let var_2 = vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(i32(-1i) * -37993i), ~firstLeadingBit(global2.a.e.x)) & _wgslsmith_clamp_i32(_wgslsmith_div_i32(~(-1i), -1i), u_input.c.x, _wgslsmith_mod_i32(1i, 1i)), firstLeadingBit(-1i));
    let var_3 = Struct_4(Struct_3(Struct_1(select(vec3<bool>(true, false, var_0.b), select(vec3<bool>(global2.a.b, true, true), vec3<bool>(true, global2.a.b, true), global2.a.a.x), !vec3<bool>(false, global2.a.d.x, true)), var_0.d.x, u_input.b.xw, select(vec2<bool>(global2.a.d.x, false), vec2<bool>(global2.a.a.x, true), select(vec2<bool>(global2.a.a.x, var_0.b), vec2<bool>(global2.a.d.x, false), global2.a.b)), var_0.e)), global2.a, vec2<u32>(u_input.a.x, select(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, global2.a.c.x, var_0.c.x, 79849u) & vec4<u32>(1u, 1u, arg_0, 6123u)), ~u_input.a.x, 4294967295u != (64563u << (arg_0 % 32u)))), !select(global2.a.a, var_0.a, vec3<bool>(global2.a.b, !global2.a.d.x, false)));
    let var_4 = Struct_1(!(!select(vec3<bool>(global2.a.a.x, false, global2.a.b), select(var_0.a, vec3<bool>(var_0.b, true, global2.a.a.x), false), !vec3<bool>(var_3.d.x, false, var_0.a.x))), true, vec2<u32>(countOneBits(arg_0) >> (global2.a.c.x % 32u), 41738u), global1[_wgslsmith_index_u32(var_0.c.x, 28u)], global2.a.e);
    return 18916u;
}

fn func_4(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = vec3<u32>(countOneBits(arg_0.d), 3086u, u_input.b.x | _wgslsmith_mult_u32(global2.a.c.x, ~_wgslsmith_sub_u32(51686u, arg_0.d)));
    global2 = Struct_3(global2.a);
    var var_1 = global2.a;
    var var_2 = false;
    global2 = Struct_3(Struct_1(vec3<bool>(true, arg_0.e.b, false), true, select(_wgslsmith_mod_vec2_u32(global2.a.c, ~vec2<u32>(u_input.b.x, var_0.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(50167u, 1u), vec2<u32>(var_0.x, u_input.b.x)), var_1.b), vec2<bool>(u_input.c.x > 0i, true), ~global2.a.e));
    return select(!(!global2.a.a), select(select(vec3<bool>(var_1.b | true, true, global2.a.b | arg_0.e.a.x), !(!arg_0.e.a), any(vec2<bool>(arg_0.e.d.x, true))), select(select(vec3<bool>(false, arg_0.e.d.x, true), vec3<bool>(true, arg_0.e.d.x, false), -40303i <= var_1.e.x), vec3<bool>(false | var_1.d.x, any(vec4<bool>(global2.a.d.x, var_1.a.x, true, true)), var_1.a.x), all(select(arg_0.e.a, arg_0.e.a, vec3<bool>(false, var_1.a.x, true)))), select(vec3<bool>(true, global2.a.d.x, true), vec3<bool>(all(vec2<bool>(var_1.d.x, true)), global2.a.a.x, any(vec4<bool>(arg_0.e.d.x, true, arg_0.e.d.x, arg_0.e.a.x))), !vec3<bool>(var_1.d.x, false, arg_0.e.d.x))), arg_0.e.d.x & false);
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    global2 = Struct_3(Struct_1(func_4(Struct_2(-u_input.c.yy, vec4<f32>(352f, -1781f, -868f, -2194f), arg_0.a.c.x, func_3(4294967295u), Struct_1(global2.a.a, global2.a.b, arg_0.a.c, vec2<bool>(global2.a.a.x, false), global2.a.e))), false, ~global2.a.c, global2.a.d, vec4<i32>(~reverseBits(global2.a.e.x), ~abs(2147483647i), 2147483647i, -(global2.a.e.x >> (1u % 32u)))));
    global0 = array<vec3<bool>, 3>();
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-268f, 142f, 200f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(930f, 107f, -1210f), vec3<f32>(-319f, 1842f, 1109f))), !global2.a.a.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1101f)), 881f, 1287f) - vec3<f32>(_wgslsmith_f_op_f32(-1861f + 1020f), _wgslsmith_div_f32(-753f, -1153f), -266f)))));
    var var_1 = -global2.a.e.x;
    global2 = arg_0;
    return Struct_4(arg_0, Struct_1(select(func_4(Struct_2(vec2<i32>(arg_0.a.e.x, 34025i), vec4<f32>(-785f, var_0.x, var_0.x, 565f), u_input.b.x, global2.a.c.x, Struct_1(global0[_wgslsmith_index_u32(11962u, 3u)], global2.a.b, global2.a.c, global1[_wgslsmith_index_u32(59455u, 28u)], global2.a.e))), !(!vec3<bool>(arg_0.a.d.x, true, arg_0.a.b)), vec3<bool>(true, global2.a.a.x && arg_0.a.d.x, false == global2.a.d.x)), global2.a.b, min(~u_input.a.yy, u_input.b.yy), global2.a.d, _wgslsmith_div_vec4_i32(~max(global2.a.e, vec4<i32>(790i, -2147483647i, u_input.c.x, u_input.c.x)), vec4<i32>(~49269i, _wgslsmith_add_i32(global2.a.e.x, -1i), 0i, 7491i))), arg_0.a.c, vec3<bool>(true, global2.a.a.x, false));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    var var_0 = arg_0.a.a.e.xx;
    let var_1 = Struct_2(_wgslsmith_div_vec2_i32(global2.a.e.zx, u_input.c.yy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-839f, 1000f, 1313f, -314f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, -760f, -802f, -1465f))))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(712f)), 852f, -430f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1275f)), _wgslsmith_f_op_f32(f32(-1f) * -602f), all(vec2<bool>(arg_0.b.b, false)))))), ~(1u >> (((4294967295u << (global2.a.c.x % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.c.x, u_input.a.x, 45009u, global2.a.c.x), u_input.b)) % 32u)), _wgslsmith_clamp_u32(u_input.a.x, global2.a.c.x | global2.a.c.x, firstTrailingBit(~24996u)), func_2(Struct_3(arg_0.b)).a.a);
    var var_2 = _wgslsmith_f_op_vec4_f32(var_1.b - var_1.b);
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b) * var_1.b);
    var var_3 = _wgslsmith_f_op_f32(round(var_1.b.x));
    return arg_0.a.a;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global2 = Struct_3(func_5(func_2(Struct_3(global2.a))));
    global1 = array<vec2<bool>, 28>();
    let var_0 = global2.a;
    global2 = Struct_3(func_5(func_2(func_2(Struct_3(Struct_1(vec3<bool>(false, global2.a.b, global2.a.d.x), true, vec2<u32>(4294967295u, 33170u), global2.a.d, vec4<i32>(var_0.e.x, u_input.c.x, u_input.c.x, global2.a.e.x)))).a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, _wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(_wgslsmith_f_op_f32(574f * -508f), arg_0)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, arg_0), vec2<f32>(-283f, 1333f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) - vec2<f32>(arg_0, arg_0)))), func_5(func_2(Struct_3(global2.a))).a.xx)))));
    return !(!vec4<bool>(all(select(vec4<bool>(true, false, var_0.b, global2.a.a.x), vec4<bool>(global2.a.a.x, var_0.a.x, global2.a.a.x, true), vec4<bool>(false, global2.a.a.x, var_0.a.x, true))), func_2(func_2(Struct_3(Struct_1(var_0.a, false, var_0.c, vec2<bool>(global2.a.d.x, false), vec4<i32>(var_0.e.x, 89044i, global2.a.e.x, var_0.e.x)))).a).a.a.d.x, var_0.d.x, func_2(func_2(Struct_3(global2.a)).a).a.a.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec4<bool>(global2.a.b, true, global2.a.a.x, false), !vec4<bool>(global2.a.a.x, global2.a.a.x, true, false), global2.a.a.x), !func_1(-902f), false), vec4<bool>(!global2.a.a.x, any(vec2<bool>(all(vec3<bool>(true, false, global2.a.a.x)), true)), all(vec2<bool>(!global2.a.b, global2.a.b)), select(true, ~global2.a.e.x < global2.a.e.x, !global2.a.b)), vec4<bool>(global2.a.a.x || global2.a.b, true, global2.a.d.x, any(vec3<bool>(global2.a.b, global2.a.b, global2.a.d.x)) & all(func_2(Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], false, vec2<u32>(u_input.a.x, u_input.b.x), vec2<bool>(global2.a.b, true), vec4<i32>(-31358i, global2.a.e.x, -1i, global2.a.e.x)))).a.a.a)));
    let var_1 = func_2(Struct_3(Struct_1(global0[_wgslsmith_index_u32(0u, 3u)], func_5(func_2(Struct_3(Struct_1(vec3<bool>(false, global2.a.b, global2.a.d.x), false, vec2<u32>(global2.a.c.x, 89311u), global1[_wgslsmith_index_u32(global2.a.c.x, 28u)], vec4<i32>(23705i, u_input.c.x, global2.a.e.x, -1i))))).d.x, vec2<u32>(~83955u, global2.a.c.x), select(!global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1413u, u_input.a.x, 38473u), 28u)], false & global2.a.b), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.c.x, 42970i, -69136i, u_input.c.x), vec4<i32>(-1i, global2.a.e.x, global2.a.e.x, -27886i), vec4<bool>(global2.a.d.x, global2.a.d.x, true, false)), global2.a.e, global2.a.e)))).a;
    var var_2 = global2.a.c.x;
    var var_3 = true;
    let var_4 = func_2(var_1).a;
    var var_5 = Struct_1(!func_2(Struct_3(func_2(var_4).b)).a.a.a, global2.a.a.x && true, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, _wgslsmith_clamp_u32(var_1.a.c.x, 0u, u_input.a.x), 4294967295u, ~var_1.a.c.x), vec4<u32>(func_3(82136u), abs(var_1.a.c.x), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.xwz, vec3<u32>(84170u, var_4.a.c.x, global2.a.c.x)))), global2.a.c.x), global2.a.d, firstLeadingBit(vec4<i32>(-1i, -2147483647i, abs(firstLeadingBit(global2.a.e.x)), -(~u_input.c.x))));
    var var_6 = global2.a.a;
    var var_7 = var_1;
    var var_8 = func_2(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(var_4.a.e.x, global2.a.e.x) >> (var_5.c.x % 32u), 1i), 1i, var_5.e.x), abs(var_1.a.e), ~(~(1u ^ var_4.a.c.x)));
}

