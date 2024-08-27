struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3>;

var<private> global1: array<vec2<f32>, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_4) -> bool {
    global1 = array<vec2<f32>, 27>();
    let var_0 = Struct_3(Struct_1(max(_wgslsmith_mult_u32(1u, 4294967295u), min(reverseBits(5933u), ~41295u)), min(-(vec4<i32>(-23815i, u_input.a, u_input.a, u_input.a) & vec4<i32>(-1819i, 40613i, u_input.a, 0i)), vec4<i32>(-1i, -11192i, -5303i, arg_0.a) >> (vec4<u32>(52753u, 0u, 1u, 48478u) % vec4<u32>(32u))), firstLeadingBit(4294967295u), _wgslsmith_mod_i32(arg_0.a, u_input.a | -64822i)));
    let var_1 = Struct_1(~abs(4294967295u), var_0.a.b, abs(~(~var_0.a.a ^ firstLeadingBit(var_0.a.c))), 2147483647i);
    global0 = array<vec2<i32>, 3>();
    var var_2 = Struct_4(reverseBits(36329i));
    return false;
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_2(~select(abs(select(36262i, u_input.a, false)), u_input.a ^ u_input.a, func_3(Struct_4(-1i)) & true), abs(abs(~reverseBits(103665u))), Struct_1(min(_wgslsmith_clamp_u32(0u, 1u, 3192u), abs(0u)), -(_wgslsmith_add_vec4_i32(vec4<i32>(-16664i, 35752i, 2147483647i, 17880i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), ~83710u, u_input.a), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)) != !any(vec3<bool>(true, true, true)), Struct_1(27082u, ~firstLeadingBit(vec4<i32>(37312i, u_input.a, -1i, -1i)), ~18531u, i32(-1i) * -2147483647i));
    global0 = array<vec2<i32>, 3>();
    global1 = array<vec2<f32>, 27>();
    var var_1 = Struct_3(var_0.e);
    var_1 = Struct_3(Struct_1(_wgslsmith_dot_vec3_u32(max(select(vec3<u32>(var_0.e.c, 0u, 4294967295u), vec3<u32>(1u, var_0.c.a, var_1.a.c), var_0.d), vec3<u32>(1u, 59114u, 1u)), ~vec3<u32>(49704u, 0u, var_1.a.c)), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.b.x, var_0.c.b.x, var_0.c.b.x, 0i), _wgslsmith_clamp_vec4_i32(var_0.c.b, vec4<i32>(var_1.a.d, u_input.a, var_0.e.d, u_input.a), var_1.a.b)), _wgslsmith_mult_vec4_i32(firstTrailingBit(var_0.c.b), -vec4<i32>(0i, var_1.a.d, var_1.a.d, u_input.a))), 1884u, _wgslsmith_mult_i32(~_wgslsmith_div_i32(41535i, -4254i), var_0.a)));
    return var_0.d;
}

fn func_4(arg_0: bool) -> Struct_1 {
    global1 = array<vec2<f32>, 27>();
    return Struct_1(1u, vec4<i32>(26576i, _wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, -2147483647i, 0i), vec3<i32>(2147483647i, u_input.a, -2147483647i)), vec3<i32>(-2147483647i, 30246i, u_input.a)), ~_wgslsmith_div_i32(u_input.a, 2147483647i), u_input.a) & ~abs(vec4<i32>(0i, 2147483647i, u_input.a, 1i)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 0u, firstLeadingBit(_wgslsmith_add_u32(8156u, 28234u))), 15291u), u_input.a);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = func_4(!(arg_2.d || (true || func_2(-637f))));
    var var_1 = firstLeadingBit(select(~(u_input.a << (0u % 32u)), _wgslsmith_add_i32(arg_0.x, firstTrailingBit(-arg_1.a)), !arg_1.d));
    var var_2 = 271f;
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, arg_2.e.c), vec2<u32>(1u, arg_1.e.c)), arg_2.c.c), 27u)];
    global1 = array<vec2<f32>, 27>();
    return vec3<f32>(_wgslsmith_div_f32(var_3.x, 1815f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 1293f), _wgslsmith_div_f32(var_3.x, var_3.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-397f))))), _wgslsmith_f_op_f32(-var_3.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<f32>) -> StorageBuffer {
    let var_0 = Struct_2(_wgslsmith_add_i32(~(-min(arg_0.x, arg_0.x)), -1i), ~(min(func_4(false).c, min(1u, 79512u)) | reverseBits(13195u)), func_4(true), any(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true)), Struct_1(1u, vec4<i32>(arg_0.x, 2147483647i, -2147483647i ^ select(2147483647i, -10382i, false), 1i), ~_wgslsmith_add_u32(0u, 2548u) | abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 7141u, 69375u, 0u), vec4<u32>(19517u, 3093u, 0u, 0u))), firstTrailingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(0i, 36707i, -1i, u_input.a), abs(vec4<i32>(u_input.a, 1195i, u_input.a, arg_0.x))))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 1i, _wgslsmith_sub_i32(u_input.a & 2147483647i, -2147483647i)), vec4<i32>(_wgslsmith_div_i32(-var_0.c.d, _wgslsmith_mod_i32(-19230i, u_input.a)), 1i ^ min(u_input.a, u_input.a), ~u_input.a >> (var_0.b % 32u), arg_0.x)), u_input.a ^ _wgslsmith_sub_i32(-8307i, _wgslsmith_sub_i32(var_0.c.b.x, var_0.a)));
    var var_2 = ((var_0.b | var_0.c.a) & select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.c.a), vec2<u32>(89234u, var_0.c.a)), _wgslsmith_div_u32(~var_0.e.c, 4294967295u << (0u % 32u)), false)) >> (~4294967295u % 32u);
    var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.c.a, _wgslsmith_mult_u32(var_0.b & var_0.e.a, 0u)), vec2<u32>(~(~1u), ~firstLeadingBit(var_0.c.a))), vec2<u32>(_wgslsmith_mod_u32(~(var_0.e.c ^ 133902u), 1u), 4294967295u));
    var var_3 = Struct_3(func_4(var_0.d));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -522f))))), _wgslsmith_dot_vec2_i32(arg_0.zy, abs(vec2<i32>(0i, -63604i))) | var_3.a.d, var_0.e.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(vec3<i32>(max(-4178i, u_input.a), 1i, -54623i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec2<i32>(u_input.a, -25432i), Struct_2(-10773i, 4294967295u, Struct_1(27107u, vec4<i32>(u_input.a, -31406i, 29457i, -2147483647i), 87588u, u_input.a), false, Struct_1(0u, vec4<i32>(u_input.a, u_input.a, 9840i, u_input.a), 1u, -20331i)), Struct_2(u_input.a, 1u, Struct_1(38387u, vec4<i32>(u_input.a, u_input.a, 1i, 33101i), 56123u, u_input.a), true, Struct_1(2611u, vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a), 1u, u_input.a)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-382f, -1373f, 811f) - vec3<f32>(565f, -878f, -1481f))))) * vec3<f32>(1f, 1f, 1f)));
}

