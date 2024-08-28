struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec3<bool> {
    var var_0 = abs(23997u);
    let var_1 = 622f;
    global0 = array<Struct_1, 31>();
    var var_2 = select(select(!vec4<bool>(any(vec4<bool>(arg_0, arg_0, arg_0, true)), !arg_0, !arg_0, true), select(vec4<bool>(true, !arg_0, arg_0, arg_0), select(!vec4<bool>(true, arg_0, true, true), select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, false, arg_0, arg_0)), !arg_0), vec4<bool>(arg_0, true, arg_0, false)), !vec4<bool>(arg_0, true, true, true)), select(!vec4<bool>(select(true, arg_0, arg_0), 1u <= u_input.a, true | arg_0, all(vec4<bool>(false, arg_0, arg_0, true))), !select(select(vec4<bool>(false, true, false, arg_0), vec4<bool>(true, arg_0, true, arg_0), true), select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, true), arg_0), select(vec4<bool>(false, true, arg_0, true), vec4<bool>(true, false, arg_0, arg_0), arg_0)), !vec4<bool>(!arg_0, true, any(vec2<bool>(arg_0, false)), arg_0 || false)), vec4<bool>(true, true, !(!any(vec4<bool>(false, arg_0, arg_0, arg_0))), any(vec4<bool>(!arg_0, any(vec3<bool>(arg_0, false, arg_0)), true, !arg_0))));
    global0 = array<Struct_1, 31>();
    return vec3<bool>((!arg_0 || (arg_0 | !arg_0)) && var_2.x, true, !(!var_2.x));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_3 {
    global0 = array<Struct_1, 31>();
    global0 = array<Struct_1, 31>();
    var var_0 = Struct_1(any(func_3(true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(186f, 257f)), -580f), 610f)), -14383i);
    global0 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_f_op_f32(trunc(-745f));
    return Struct_3(52968u, false, arg_1.zz, Struct_2(~vec2<u32>(abs(4294967295u), u_input.a), _wgslsmith_f_op_f32(select(var_1, 547f, !(var_0.a & false))), -arg_0), arg_1.x);
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    global0 = array<Struct_1, 31>();
    var var_0 = func_2(-14427i, vec3<u32>(_wgslsmith_mod_u32(~u_input.a, 0u), 30221u, u_input.a | _wgslsmith_mult_u32(~14511u, _wgslsmith_sub_u32(u_input.a, 1u))));
    global0 = array<Struct_1, 31>();
    var var_1 = !all(vec2<bool>(var_0.b, var_0.b)) || false;
    var_1 = false;
    return Struct_3(_wgslsmith_add_u32(countOneBits(_wgslsmith_mult_u32(var_0.e, _wgslsmith_mult_u32(8921u, u_input.a))), 4294967295u), arg_0.x >= var_0.d.c, reverseBits(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_0.d.a.x, u_input.a), true), countOneBits(vec2<u32>(71430u, u_input.a))), var_0.d.a)), Struct_2(~var_0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1540f, -1039f))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.x, 11173i << (u_input.a % 32u)), var_0.d.c)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<i32>(2147483647i, -(~(i32(-1i) * -2147483647i))));
    let var_1 = all(vec4<bool>(all(vec4<bool>(true, false, var_0.b, !var_0.b)), !(!var_0.b), all(select(vec4<bool>(var_0.b, false, var_0.b, true), select(vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(false, false, var_0.b, false), vec4<bool>(var_0.b, var_0.b, false, var_0.b)), select(vec4<bool>(false, var_0.b, true, var_0.b), vec4<bool>(true, false, true, true), var_0.b))), true));
    var var_2 = Struct_3(var_0.e, var_1, ~select(max(vec2<u32>(var_0.d.a.x, u_input.a), var_0.c), _wgslsmith_div_vec2_u32(vec2<u32>(48749u, 0u), vec2<u32>(var_0.c.x, u_input.a)), select(!vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, false), var_0.d.c > 2147483647i)), func_2(25666i, vec3<u32>(u_input.a, max(var_0.d.a.x, 4294967295u), ~(~u_input.a))).d, 2338u);
    let var_3 = var_0.d;
    var var_4 = Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1267f, 1014f) - vec2<f32>(823f, var_2.d.b))))), firstLeadingBit(-_wgslsmith_sub_i32(i32(-1i) * -18801i, countOneBits(var_3.c))));
    var_2 = func_2(var_0.d.c, ((_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a.x, var_2.a, var_3.a.x), vec3<u32>(70260u, var_2.e, 1u)) ^ firstLeadingBit(vec3<u32>(u_input.a, 23682u, 35008u))) ^ _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, 24838u, u_input.a)), vec3<u32>(1u, var_3.a.x, 4294967295u))) << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.a, var_2.c.x, var_0.a) ^ vec3<u32>(1u, var_2.e, var_0.a)), ~max(vec3<u32>(0u, 4866u, var_0.c.x), vec3<u32>(u_input.a, var_0.c.x, u_input.a)), vec3<u32>(~0u, ~var_3.a.x, u_input.a)) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1435f, 955f), _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d.c, var_0.d.c), vec2<i32>(var_3.c, -57567i)), vec2<i32>(var_4.c, 2147483647i) | vec2<i32>(var_0.d.c, -1i)), -_wgslsmith_mult_vec2_i32(vec2<i32>(var_3.c, -1i), ~vec2<i32>(1i, -2147483647i))));
}

