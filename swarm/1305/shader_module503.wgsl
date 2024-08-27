struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec4<f32>, 8>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<i32> {
    global1 = array<vec4<f32>, 8>();
    var var_0 = _wgslsmith_f_op_f32(-440f + -1015f);
    global1 = array<vec4<f32>, 8>();
    global1 = array<vec4<f32>, 8>();
    var var_1 = ~firstLeadingBit(min(vec3<i32>(1i, ~1i, 1i), vec3<i32>(1i, 547i, _wgslsmith_mod_i32(-2147483647i, 1i))));
    return vec4<i32>(var_1.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(var_1.x, -1i, 53179i)) << ((u_input.c.xxw << (vec3<u32>(18218u, u_input.c.x, 10381u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -42043i, var_1.x, 2147483647i), vec4<i32>(var_1.x, var_1.x, var_1.x, 1i)), -2147483647i, 71159i)), var_1.x, abs(_wgslsmith_add_i32(var_1.x, var_1.x))) | firstTrailingBit(abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -2147483647i, 10951i, var_1.x), vec4<i32>(-17394i, 14802i, var_1.x, var_1.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(1156i, var_1.x, 31146i, -29483i), vec4<i32>(1i, var_1.x, var_1.x, 19961i)), vec4<i32>(-11512i, -42445i, var_1.x, -24095i))));
}

fn func_2() -> Struct_2 {
    var var_0 = firstLeadingBit(_wgslsmith_mod_vec3_u32(select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.d.x, 4294967295u, global2.b, 40348u), vec4<u32>(53831u, 36386u, global0.x, global0.x)), u_input.b, max(u_input.a.x, 33928u)), u_input.c.wzz, select(global2.c, select(vec3<bool>(false, false, global2.e.b), vec3<bool>(true, global2.c.x, true), global2.c), !global2.c)), vec3<u32>(firstTrailingBit(global0.x), ~47687u, ~48161u) << (vec3<u32>(u_input.a.x, 59873u, global0.x & global0.x) % vec3<u32>(32u))));
    var var_1 = func_3();
    var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, abs(_wgslsmith_mult_u32(global2.d.x, 0u)), select(3387u, abs(global2.b), true)), vec3<u32>(45083u, 0u, _wgslsmith_dot_vec4_u32(~u_input.c, abs(vec4<u32>(1u, var_0.x, global2.d.x, 0u))))), u_input.c.zyw);
    global1 = array<vec4<f32>, 8>();
    global1 = array<vec4<f32>, 8>();
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global2.a)))), 37279u, global2.c, ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_clamp_u32(global2.b, 0u, 77264u), ~u_input.a.x), abs(var_0.x)), global2.e);
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = global2.c;
    let var_1 = global2.c.x;
    global2 = func_2();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-160f, 1012f))), _wgslsmith_f_op_f32(-global2.e.c), arg_0.e.c)), arg_0.d.x, vec3<bool>(arg_0.e.a, !global2.e.b, true), global2.d, Struct_1(arg_0.e.a, true, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(659f, -683f)), _wgslsmith_div_f32(global2.e.d.x, arg_0.a.x), _wgslsmith_f_op_f32(1318f - global2.e.c)))));
    var var_3 = false;
    return select(1i, select(-2147483647i, -countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-49459i, -26214i), vec2<i32>(41245i, -13529i))), false), firstTrailingBit(reverseBits(u_input.b & 58016u)) > u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    var var_1 = global2.c;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(global2.a)), 4294967295u, vec3<bool>(-2147483647i > select(-2147483647i, func_1(Struct_2(global2.e.d, global0.x, vec3<bool>(var_1.x, true, var_1.x), vec2<u32>(68126u, 14942u), global2.e)), true), all(vec2<bool>(global2.c.x, var_1.x & false)), true), _wgslsmith_mult_vec2_u32(global2.d, firstLeadingBit(select(vec2<u32>(20415u, global0.x), global2.d, vec2<bool>(var_1.x, true)))), func_2().e);
    let var_3 = global2.e;
    global2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.x, 100f, _wgslsmith_f_op_f32(sign(global2.e.d.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-737f, -3264f, var_2.e.d.x) + var_2.e.d)))), var_3.d), var_2.d.x, var_2.c, ~(~_wgslsmith_mod_vec2_u32(u_input.c.zy >> (vec2<u32>(33365u, global2.b) % vec2<u32>(32u)), vec2<u32>(30711u, 1u))), func_2().e);
    var var_4 = Struct_1(true, !func_2().e.a, global2.a.x, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(var_2.e.c, _wgslsmith_f_op_f32(round(-1422f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(712f)), 466f, !var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.c * -304f)))))));
    var var_5 = vec2<bool>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(2147483647i, -1i, 23984i, -2147483647i), select(vec4<i32>(0i, -2147483647i, -51565i, -2147483647i), vec4<i32>(-18880i, 2147483647i, -1i, 55024i), true)), firstLeadingBit(firstLeadingBit(vec4<i32>(-22880i, 1i, 63611i, 0i)))) <= -_wgslsmith_clamp_i32(558i, ~1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(-1i, -7479i, -43966i))), !(_wgslsmith_mult_u32(11784u, 52062u & u_input.b) < 34087u));
    var var_6 = var_2.e;
    let x = u_input.a;
    s_output = StorageBuffer(func_3().zz, ~vec2<i32>(_wgslsmith_add_i32(~(-6448i), 1i), 2147483647i));
}

