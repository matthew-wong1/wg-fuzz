struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: bool = true;

var<private> global2: array<vec3<u32>, 16> = array<vec3<u32>, 16>(vec3<u32>(1u, 58461u, 0u), vec3<u32>(66704u, 1u, 0u), vec3<u32>(0u, 2306u, 103132u), vec3<u32>(22676u, 45766u, 25668u), vec3<u32>(1u, 14947u, 24370u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(15233u, 98743u, 37920u), vec3<u32>(1u, 0u, 100642u), vec3<u32>(14831u, 25456u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 1u, 35729u), vec3<u32>(5401u, 64492u, 4294967295u), vec3<u32>(0u, 4294967295u, 27977u), vec3<u32>(113850u, 1u, 0u), vec3<u32>(96429u, 1u, 4294967295u), vec3<u32>(35944u, 58625u, 7779u));

var<private> global3: Struct_5;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    global1 = false;
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, 602f, -1685f, 601f))))) - vec4<f32>(_wgslsmith_div_f32(-1057f, -162f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-756f - 1593f), _wgslsmith_f_op_f32(-1289f - 391f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(-1798f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f + -396f)), -187f))));
    global1 = (1u == arg_2.b.b) && global3.b.c.x;
    global1 = global3.b.c.x;
    var var_1 = 6918u;
    return firstLeadingBit(min(~min(0u, arg_1.a), 78313u)) | abs(_wgslsmith_mult_u32(4294967295u, arg_2.b.b & min(arg_2.b.a, u_input.b)));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1263f - 601f) - _wgslsmith_f_op_f32(abs(arg_2.a)))) - _wgslsmith_div_f32(-603f, _wgslsmith_f_op_f32(f32(-1f) * -420f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)), 348f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(1000f * -393f))))));
    var var_1 = false;
    global3 = arg_0;
    var_1 = false;
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(abs(~global3.b.b), func_3(29037u, Struct_2(global3.b.a), arg_1)), ~u_input.b);
    return vec4<u32>(global3.b.b, firstLeadingBit(global3.c), global0.a, 52190u);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec4<u32>) -> i32 {
    var var_0 = arg_2.ywy;
    let var_1 = func_4(Struct_5(global3.b.b, Struct_3(4294967295u, reverseBits(_wgslsmith_add_u32(994u, 58397u)), !select(global3.b.c, vec4<bool>(arg_1, arg_1, arg_1, global3.b.c.x), false), -vec3<i32>(global3.b.d.x, -55764i, global3.b.d.x)), arg_2.x ^ 1u), Struct_4(2147483647i, Struct_3(~var_0.x, func_3(1u, Struct_2(2580u), Struct_4(global3.b.d.x, global3.b, vec4<i32>(-8302i, 18428i, global3.b.d.x, global3.b.d.x), global3.b.d)), !select(global3.b.c, global3.b.c, arg_1), vec3<i32>(~global3.b.d.x, reverseBits(global3.b.d.x), abs(1i))), vec4<i32>(1i, global3.b.d.x, abs(-31549i), global3.b.d.x | global3.b.d.x) | _wgslsmith_div_vec4_i32(-vec4<i32>(global3.b.d.x, 1i, -1i, 3186i), firstLeadingBit(vec4<i32>(global3.b.d.x, global3.b.d.x, global3.b.d.x, global3.b.d.x))), ~(-max(global3.b.d, global3.b.d))), Struct_1(-710f, _wgslsmith_div_i32(9595i, select(_wgslsmith_mod_i32(global3.b.d.x, global3.b.d.x), -34659i, !global3.b.c.x)), false));
    global1 = -713f > _wgslsmith_f_op_f32(-arg_0.x);
    var var_2 = Struct_2(var_1.x);
    let var_3 = false;
    return _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~reverseBits(global3.b.d.x), -23981i, 0i & -(global3.b.d.x >> (arg_2.x % 32u))), ~(~(~global3.b.d.x)), global3.b.d.x);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> u32 {
    var var_0 = min(~_wgslsmith_add_vec3_i32(arg_0.d, _wgslsmith_sub_vec3_i32(global3.b.d, vec3<i32>(global3.b.d.x, 28037i, global3.b.d.x))), _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(~arg_1, 2147483647i, ~arg_1)), vec3<i32>(func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-224f, -300f, 2532f, 448f))), true, _wgslsmith_clamp_vec4_u32(vec4<u32>(11270u, 4294967295u, global0.a, global0.a), vec4<u32>(global0.a, 132288u, u_input.a.x, 48344u), vec4<u32>(1u, 0u, global0.a, 4294967295u))), global3.b.d.x, -(~(-1i)))));
    let var_1 = 11798i;
    var var_2 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(267f - 1439f)))));
    var var_3 = Struct_4(max(~_wgslsmith_add_i32(-global3.b.d.x, _wgslsmith_div_i32(var_1, arg_1)), ~var_0.x), Struct_3(_wgslsmith_div_u32(abs(0u << (arg_2.a % 32u)), arg_0.b & _wgslsmith_add_u32(global3.b.a, arg_0.a)), ~(~4294967295u), !arg_0.c, vec3<i32>(arg_1, _wgslsmith_div_i32(var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(44577i, 1i, 0i, 20202i), vec4<i32>(2466i, 2147483647i, 1i, global3.b.d.x))), arg_0.d.x)), -vec4<i32>(_wgslsmith_add_i32(-1680i, -1716i), -1142i, countOneBits(arg_0.d.x), -1i), firstTrailingBit(global3.b.d));
    global1 = arg_0.c.x;
    return 4294967295u >> (global0.a % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(29847u);
    var var_1 = ~(0u & ~global0.a);
    var_1 = firstTrailingBit(func_1(global3.b, -2147483647i, Struct_2(_wgslsmith_add_u32(1u, 0u))) >> (func_1(Struct_3(global0.a | 4294967295u, u_input.a.x, !global3.b.c, vec3<i32>(global3.b.d.x, -2147483647i, global3.b.d.x)), select(1i, _wgslsmith_div_i32(2147483647i, global3.b.d.x), u_input.b == 41417u), Struct_2(reverseBits(16270u))) % 32u));
    var var_2 = false;
    var var_3 = -742f;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_5(_wgslsmith_sub_u32(var_0.a, 0u), global3.b, select(22465u, u_input.b, false)), Struct_4(_wgslsmith_mod_i32(global3.b.d.x, global3.b.d.x), global3.b, _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, global3.b.d.x, global3.b.d.x, global3.b.d.x), vec4<i32>(global3.b.d.x, global3.b.d.x, global3.b.d.x, 19i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global3.b.d.x, 1i, global3.b.d.x), vec3<i32>(56092i, global3.b.d.x, global3.b.d.x))), Struct_1(691f, -15837i, true)).wz & _wgslsmith_add_vec2_u32(func_4(Struct_5(0u, global3.b, 4294967295u), Struct_4(-2147483647i, global3.b, vec4<i32>(global3.b.d.x, global3.b.d.x, global3.b.d.x, 2147483647i), vec3<i32>(488i, global3.b.d.x, global3.b.d.x)), Struct_1(1000f, global3.b.d.x, global3.b.c.x)).xz, (u_input.a ^ u_input.a) << (u_input.a % vec2<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -811f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(869f * 462f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(226f, _wgslsmith_f_op_f32(f32(-1f) * -851f))), false)), vec4<f32>(_wgslsmith_div_f32(1583f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -439f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-418f * 616f) - _wgslsmith_f_op_f32(f32(-1f) * -1553f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-738f)) + _wgslsmith_f_op_f32(round(-687f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f - -1390f))), _wgslsmith_f_op_f32(f32(-1f) * -174f)), vec3<u32>((global3.c << (4294967295u % 32u)) >> (~global0.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 0u), u_input.a), (var_0.a | 3288u) >> (~global3.c % 32u)) >> (reverseBits(vec3<u32>(func_1(Struct_3(76405u, global3.b.a, vec4<bool>(global3.b.c.x, global3.b.c.x, false, true), global3.b.d), -1i, Struct_2(16719u)), 0u, 0u)) % vec3<u32>(32u)), vec2<i32>(0i, _wgslsmith_mod_i32(-1i, -2147483647i)));
}

