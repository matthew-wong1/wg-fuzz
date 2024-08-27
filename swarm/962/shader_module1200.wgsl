struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(1358f, -1211f), vec2<f32>(-238f, 272f), vec2<f32>(2135f, 694f), vec2<f32>(1000f, -769f), vec2<f32>(-947f, -121f), vec2<f32>(1000f, 1255f), vec2<f32>(-273f, -1125f), vec2<f32>(-1214f, -478f), vec2<f32>(921f, 539f), vec2<f32>(1977f, 987f), vec2<f32>(-317f, 1357f), vec2<f32>(1279f, -594f), vec2<f32>(400f, 257f), vec2<f32>(-126f, 159f), vec2<f32>(892f, -385f), vec2<f32>(-1076f, -183f), vec2<f32>(403f, -529f), vec2<f32>(556f, -724f), vec2<f32>(1000f, 379f), vec2<f32>(-641f, -1784f), vec2<f32>(838f, 554f), vec2<f32>(1202f, -1218f), vec2<f32>(-1788f, 554f), vec2<f32>(-1823f, -1000f), vec2<f32>(844f, 1000f), vec2<f32>(-2266f, 653f), vec2<f32>(-603f, 333f), vec2<f32>(-419f, 1106f), vec2<f32>(-221f, -454f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> u32 {
    global0 = array<vec2<f32>, 29>();
    let var_0 = Struct_3(~vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.c, u_input.c), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c, 0u), vec3<u32>(3439u, u_input.c, u_input.c))), u_input.c), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, false, true)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true)))), Struct_1(select(vec2<bool>(any(vec4<bool>(false, true, true, false)), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), true)), vec3<bool>(any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true)), true, !all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), ~24022u, Struct_1(vec2<bool>(false, true))));
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    var var_1 = var_0.a.x;
    return ~firstLeadingBit(u_input.c);
}

fn func_2() -> f32 {
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    let var_0 = func_3();
    let var_1 = var_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -2295f);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    return Struct_5(-11504i, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 29>();
    global0 = array<vec2<f32>, 29>();
    var var_0 = true;
    global0 = array<vec2<f32>, 29>();
    var var_1 = func_1(u_input.b.yw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) * -2106f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1300f, -942f) - _wgslsmith_f_op_f32(f32(-1f) * -1565f)))));
    var var_2 = _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(1i, -u_input.a), -(vec2<i32>(1i, 1i) >> (firstLeadingBit(vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u)))), u_input.b.wx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2()), (-min(u_input.b.yw, var_1.b) | _wgslsmith_add_vec2_i32(var_1.b | var_1.b, vec2<i32>(-1i, -2147483647i))) | (select(vec2<i32>(0i, var_1.b.x) ^ vec2<i32>(var_2.x, -2147483647i), -vec2<i32>(1i, u_input.a), vec2<bool>(false, true)) >> (_wgslsmith_mult_vec2_u32(~vec2<u32>(35344u, u_input.c), ~vec2<u32>(1u, 14937u)) % vec2<u32>(32u))), _wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.c, abs(u_input.c), 4294967295u), vec3<u32>(~u_input.c, u_input.c, u_input.c & u_input.c)), reverseBits(vec3<u32>(firstTrailingBit(54021u), ~u_input.c, u_input.c))));
}

