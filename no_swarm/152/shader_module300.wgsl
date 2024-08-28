struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 24>;

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: u32) -> f32 {
    global1 = arg_1.x;
    global0 = array<vec2<u32>, 24>();
    global1 = arg_1.x;
    global0 = array<vec2<u32>, 24>();
    let var_0 = Struct_3(~vec3<u32>(~(19010u | arg_3), arg_3, ~(~arg_1.x)), arg_0, 1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_0)))));
    return -340f;
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> bool {
    global1 = ~_wgslsmith_add_u32(0u, ~29853u);
    var var_0 = Struct_3(~vec3<u32>(~arg_0.c.a.x, 4294967295u, ~(~12529u)), -1090f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-997f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-667f + _wgslsmith_f_op_f32(f32(-1f) * -1004f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1, arg_1)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(arg_1, vec3<u32>(arg_0.c.a.x, 30417u, arg_0.c.a.x), vec4<bool>(arg_0.b.x, false, true, false), 39517u)) + -868f))));
    var_0 = Struct_3(abs(var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-var_0.d)))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_0.c))));
    var var_1 = 1i;
    global0 = array<vec2<u32>, 24>();
    return arg_0.b.x;
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global1 = _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 13920u, 17049u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u) << (countOneBits(vec3<u32>(18233u, 50953u, 0u)) % vec3<u32>(32u))), 61609u);
    var var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(_wgslsmith_mult_i32(1i, u_input.c), u_input.d.x)), vec2<i32>(-15625i ^ u_input.b, u_input.d.x));
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1295f + arg_0), arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1401f, arg_0))))));
    var var_2 = firstTrailingBit(firstTrailingBit(~_wgslsmith_clamp_vec3_u32(vec3<u32>(33362u, 29002u, 56091u), vec3<u32>(94063u, 1u, 13386u), vec3<u32>(1u, 1u, 16535u)))) >> (~vec3<u32>(15069u, 1u, 1u) % vec3<u32>(32u));
    var var_3 = var_1.a;
    return select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !select(vec3<bool>(false, any(vec4<bool>(true, false, true, true)), true), !select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), !vec3<bool>(!any(vec3<bool>(false, true, false)), max(var_2.x, 23777u) != 78026u, any(vec4<bool>(true, false, false, true)) && false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var var_1 = Struct_2((-62645i | ~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -27025i, u_input.c, 2147483647i), vec4<i32>(2147483647i, 4407i, 23608i, -2147483647i))) ^ ~min(-11916i, firstLeadingBit(u_input.c)), select(vec3<bool>(!func_1(Struct_2(-1i, vec3<bool>(false, true, true), Struct_1(vec4<u32>(14628u, 44198u, 10410u, 0u), u_input.d, 0i)), 1000f), true, true), vec3<bool>(all(vec4<bool>(true, true, false, true)), !all(vec2<bool>(true, false)), any(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, true), select(func_3(191f), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))), Struct_1(vec4<u32>(~1u, ~(~5131u), ~_wgslsmith_add_u32(1u, 28992u), ~(0u >> (0u % 32u))), vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-6474i, u_input.d.x, -2147483647i, -1i), vec4<i32>(u_input.b, -2341i, u_input.a, 1i)), vec4<i32>(u_input.b, u_input.b, u_input.d.x, -39540i)), u_input.c), 1i));
    var var_2 = select(!vec4<bool>(true, ~18716i > ~u_input.d.x, true & !var_1.b.x, !(!var_1.b.x)), !vec4<bool>(var_1.b.x, false, false & var_1.b.x, var_1.b.x), !all(vec4<bool>(var_1.b.x, var_1.b.x, false, true)) && false);
    var var_3 = 48902i;
    var_0 = all(select(!(!vec4<bool>(false, var_1.b.x, var_2.x, var_2.x)), !(!vec4<bool>(var_1.b.x, true, var_1.b.x, false)), true));
    let x = u_input.a;
    s_output = StorageBuffer(1i, abs(~vec3<u32>(~49441u, var_1.c.a.x, 0u)));
}

