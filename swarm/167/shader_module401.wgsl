struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(2147483647i, 47109i, -61348i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_4 {
    return Struct_4(1u);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    global0 = array<Struct_2, 16>();
    global0 = array<Struct_2, 16>();
    let var_0 = Struct_3(vec2<i32>(-16388i, 1i), Struct_1(~arg_1));
    let var_1 = true;
    global0 = array<Struct_2, 16>();
    return arg_0;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4) -> u32 {
    let var_0 = u_input.b;
    var var_1 = func_2(16483u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-198f, -774f, 2613f) + vec3<f32>(-469f, 191f, -987f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(1572f)), -213f, -312f)))), !select(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), true), vec3<f32>(1f, 1f, 1f));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(0i, global1.a.x), arg_0.x, ~global1.a.x, func_3(global1.a.x, global1.a)), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-65111i, 48510i, global1.a.x, global1.a.x)), _wgslsmith_div_vec4_i32(vec4<i32>(15121i, var_0, 1i, arg_0.x), vec4<i32>(global1.a.x, u_input.d.x, 0i, 2171i)))), select(vec4<i32>(u_input.d.x, u_input.d.x, arg_0.x, u_input.b), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, u_input.a, 1i, 0i), vec4<i32>(-1i, var_0, arg_0.x, u_input.d.x)), vec4<bool>(false, true, false, true)) << (vec4<u32>(u_input.e, ~u_input.c.x, 49381u, ~0u) % vec4<u32>(32u))), -(var_0 << (var_1.a % 32u)));
    let var_3 = -1i;
    let var_4 = u_input.c;
    return ~_wgslsmith_mult_u32(_wgslsmith_sub_u32(18927u, (u_input.e | u_input.c.x) << (0u % 32u)), ~u_input.c.x);
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_1 {
    return Struct_1(vec3<i32>(func_3(_wgslsmith_clamp_i32(u_input.d.x, -u_input.a, -global1.a.x), min(global1.a, vec3<i32>(global1.a.x, 228i, 12325i))), -firstLeadingBit(countOneBits(-32385i)), ~(-(~(-2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 16>();
    let var_0 = !all(vec4<bool>(true, true, u_input.b <= 2147483647i, true));
    let var_1 = func_4(-1000f, _wgslsmith_sub_u32(func_1(global1.a.yx, Struct_4(reverseBits(60567u))), 4294967295u >> (~(~u_input.e) % 32u)), true);
    global1 = func_4(688f, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.c.x, u_input.e) << (vec2<u32>(u_input.e, u_input.c.x) % vec2<u32>(32u))), select(u_input.c.yz, reverseBits(u_input.c.yz) >> ((vec2<u32>(u_input.e, u_input.e) & u_input.c.yx) % vec2<u32>(32u)), any(vec3<bool>(var_0, var_0, true)))), false && all(vec4<bool>(var_0 != var_0, all(vec3<bool>(false, true, true)), false, any(vec2<bool>(var_0, true)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1060f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-576f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-770f, _wgslsmith_f_op_f32(f32(-1f) * -133f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1803f + -1308f), _wgslsmith_f_op_f32(sign(-1244f))))), _wgslsmith_f_op_f32(min(169f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1149f)))))), _wgslsmith_f_op_f32(238f + -1241f));
    global1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -401f)), 442f)), _wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(u_input.c.x, ~6897u, u_input.e), u_input.e, 4294967295u), true);
    var var_3 = vec4<i32>(-1i) * -vec4<i32>(global1.a.x, _wgslsmith_div_i32(func_4(var_2.x, 28272u, var_0).a.x, select(-22788i, u_input.b, true)), 1i, 18205i);
    var var_4 = abs(~_wgslsmith_sub_u32(u_input.c.x, ~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global1.a.x), abs(max(u_input.c.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-604f, 1932f))), var_2.x)), max(0u, func_2(~_wgslsmith_mult_u32(u_input.e, 0u), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_0)), _wgslsmith_div_f32(var_2.x, 170f)), select(select(vec4<bool>(true, false, false, var_0), vec4<bool>(var_0, false, var_0, false), false), !vec4<bool>(var_0, var_0, false, false), vec4<bool>(var_0, false, var_0, var_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2.x, var_2.x, 785f))), var_2.wzz)).a), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(25087u, u_input.c.x, 4294967295u, u_input.c.x) | vec4<u32>(u_input.c.x, 20898u, u_input.e, 0u), ~vec4<u32>(u_input.e, u_input.c.x, u_input.c.x, u_input.e))), u_input.c));
}

