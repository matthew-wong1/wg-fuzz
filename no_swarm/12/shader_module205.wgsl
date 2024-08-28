struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = 1492f;

var<private> global2: array<vec4<f32>, 6>;

var<private> global3: array<vec4<u32>, 16>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    global0 = 1330f;
    global2 = array<vec4<f32>, 6>();
    return _wgslsmith_f_op_f32(-136f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1074f)), 217f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) - -863f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1761f * -372f) + -164f))));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<bool> {
    global0 = 1640f;
    let var_0 = arg_2.e.x;
    let var_1 = var_0;
    global1 = arg_2.d;
    let var_2 = (-1i << (_wgslsmith_add_u32((arg_2.a ^ arg_1.x) | 4294967295u, ~(~arg_2.a)) % 32u)) != arg_2.c.x;
    return arg_2.e;
}

fn func_2() -> StorageBuffer {
    var var_0 = Struct_1(0u << (u_input.b.x % 32u), -(~max(u_input.a.x, _wgslsmith_mult_i32(17723i, u_input.c.x))), ~(~reverseBits(select(vec4<i32>(u_input.c.x, -31802i, u_input.c.x, -39259i), vec4<i32>(u_input.c.x, 23025i, u_input.c.x, 9181i), vec4<bool>(true, false, false, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(499f, _wgslsmith_f_op_f32(f32(-1f) * -1024f))), _wgslsmith_f_op_f32(115f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(215f - -356f) + _wgslsmith_f_op_f32(f32(-1f) * -1103f)))), !(!func_3(_wgslsmith_mult_i32(2147483647i, -1i), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b), Struct_1(0u, u_input.c.x, vec4<i32>(37407i, u_input.a.x, 32169i, -4535i), 1000f, vec4<bool>(false, false, true, false)))));
    var var_1 = Struct_1(var_0.a, abs(~(~(-64821i))) & u_input.c.x, var_0.c, -302f, vec4<bool>(var_0.e.x, var_0.e.x, select(var_0.e.x, true, !(!var_0.e.x)), var_0.e.x));
    var var_2 = var_0.c.zx;
    var var_3 = 4294967295u;
    let var_4 = Struct_1(u_input.b.x ^ var_1.a, var_1.b, vec4<i32>(u_input.c.x, var_2.x, 0i, var_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))) + 1301f)), var_0.e);
    return StorageBuffer(_wgslsmith_mod_vec3_u32(min(abs(~vec3<u32>(1806u, var_0.a, u_input.b.x)), ~(~vec3<u32>(12425u, 35702u, u_input.b.x))), min(abs(countOneBits(vec3<u32>(56730u, 4294967295u, var_4.a))), ~vec3<u32>(var_1.a, var_4.a, 4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.d, -2149f, 393f), vec3<f32>(var_1.d, var_1.d, var_4.d))) * vec3<f32>(-892f, -876f, var_4.d))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(245f, -1345f, -1000f) + vec3<f32>(var_1.d, var_1.d, var_4.d))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1850f, var_1.d, var_1.d)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.d, -504f, var_0.d), vec3<f32>(1278f, 1171f, 1097f))), var_1.e.yyy))))), _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(-var_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 6>();
    global3 = array<vec4<u32>, 16>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -499f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-611f + _wgslsmith_f_op_f32(round(-959f))) * _wgslsmith_f_op_f32(func_1()))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    let var_0 = all(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, false), false));
    let x = u_input.a;
    s_output = func_2();
}

