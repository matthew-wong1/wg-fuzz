struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1190f, -1614f, -262f), Struct_1(0u, false));

var<private> global1: array<f32, 17> = array<f32, 17>(-409f, -234f, -1000f, -663f, 741f, -889f, 917f, 1143f, -366f, 1000f, -638f, -551f, -927f, 738f, -690f, -201f, 383f);

var<private> global2: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(71914i, 1i, 1i), vec3<i32>(-16136i, 0i, -1i), vec3<i32>(6159i, -1i, 21714i), vec3<i32>(20593i, 2147483647i, 2147483647i), vec3<i32>(0i, 121i, i32(-2147483648)), vec3<i32>(66094i, -46770i, 1i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(2147483647i, 58058i, i32(-2147483648)), vec3<i32>(-13406i, -47486i, -28605i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(0i, -1i, 16930i), vec3<i32>(-38373i, 1i, -15636i), vec3<i32>(-41111i, 2147483647i, 20583i), vec3<i32>(-4550i, 12032i, i32(-2147483648)));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(0u, true), Struct_1(12738u, false), Struct_1(13675u, true), Struct_1(0u, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> f32 {
    global3 = array<Struct_1, 4>();
    let var_0 = arg_1.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(trunc(-1614f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(467f, var_1.x, arg_1.a.x, 365f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1232f, -2440f, -161f, global1[_wgslsmith_index_u32(47993u, 17u)]) + vec4<f32>(var_1.x, global1[_wgslsmith_index_u32(global0.b.a, 17u)], global0.a.x, global0.a.x))))));
    global3 = array<Struct_1, 4>();
    return -264f;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = -676f;
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(-var_0)) + var_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1208f), 248f))), Struct_1(4294967295u, any(vec2<bool>(true, true))));
    var var_1 = Struct_1(1u >> (_wgslsmith_mult_u32(firstLeadingBit(arg_1.a), 0u) % 32u), false & arg_1.b);
    let var_2 = min(firstLeadingBit(firstLeadingBit(firstLeadingBit(u_input.b.x))), (~u_input.c | _wgslsmith_div_i32(-26079i, 2147483647i)) | -_wgslsmith_mult_i32(u_input.b.x, 1i)) >> (58402u % 32u);
    let var_3 = _wgslsmith_clamp_vec2_u32(abs(u_input.a.zy), vec2<u32>(abs(arg_1.a) >> (firstLeadingBit(~arg_1.a) % 32u), arg_1.a), vec2<u32>(1u << (arg_1.a % 32u), 12015u));
    return false;
}

fn func_1() -> f32 {
    global3 = array<Struct_1, 4>();
    global0 = Struct_2(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(false, Struct_2(global0.a, global0.b))))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~max(u_input.a.x, u_input.a.x), 17u)] - -368f)), Struct_1(u_input.a.x & ~_wgslsmith_div_u32(6425u, u_input.a.x), all(select(select(vec2<bool>(false, global0.b.b), vec2<bool>(global0.b.b, global0.b.b), false), select(vec2<bool>(false, global0.b.b), vec2<bool>(global0.b.b, false), false), any(vec3<bool>(global0.b.b, global0.b.b, global0.b.b))))));
    let var_0 = all(vec4<bool>(true, func_3(!(global0.b.b | global0.b.b), Struct_1(79907u, !global0.b.b)), !any(select(vec2<bool>(global0.b.b, global0.b.b), vec2<bool>(global0.b.b, global0.b.b), global0.b.b)), global0.b.b));
    var var_1 = true;
    global2 = array<vec3<i32>, 14>();
    return -1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(func_1()), global0.a.x);
    let var_1 = 4294967295u;
    var var_2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0 * vec3<f32>(global0.a.x, var_0.x, global0.a.x))) + vec3<f32>(_wgslsmith_f_op_f32(round(955f)), global1[_wgslsmith_index_u32(global0.b.a, 17u)], -159f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-207f, -522f, global1[_wgslsmith_index_u32(11813u, 17u)]) - vec3<f32>(var_0.x, -1010f, -490f)), _wgslsmith_f_op_vec3_f32(-global0.a)))), Struct_1((4294967295u | select(var_1, 30935u, global0.b.b)) ^ 0u, !global0.b.b));
    global2 = array<vec3<i32>, 14>();
    let var_3 = var_2.b.a;
    var var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~(u_input.b >> (~vec3<u32>(52111u, 35306u, 4294967295u) % vec3<u32>(32u))), u_input.b.x, max(u_input.c, ~_wgslsmith_div_i32(u_input.c << (78792u % 32u), _wgslsmith_clamp_i32(1i, 33589i, u_input.b.x))), global0.a);
}

