struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22>;

var<private> global1: array<vec4<bool>, 31>;

var<private> global2: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    var var_0 = arg_0.c.b;
    global1 = array<vec4<bool>, 31>();
    return vec2<u32>(_wgslsmith_clamp_u32(23094u, ~arg_0.c.a, 0u), _wgslsmith_div_u32(reverseBits(u_input.e.x), 47152u));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = array<vec4<bool>, 31>();
    var var_0 = _wgslsmith_mod_vec2_u32(u_input.e.wx, select(func_3(Struct_2(vec2<u32>(0u, 4294967295u), arg_0, Struct_1(u_input.e.x, vec3<i32>(1i, 32202i, u_input.a.x), -2147483647i))), u_input.e.zx, vec2<bool>(true, any(vec2<bool>(true, false)))) >> (u_input.e.xz % vec2<u32>(32u)));
    let var_1 = _wgslsmith_clamp_i32(-20162i, arg_0, arg_0);
    var var_2 = !(_wgslsmith_add_u32(select(select(var_0.x, 0u, false), 56942u, all(vec2<bool>(true, false))), 4294967295u) != u_input.e.x);
    return Struct_1(u_input.d, -vec3<i32>(var_1 | _wgslsmith_add_i32(var_1, u_input.b.x), 2147483647i, 2147483647i), _wgslsmith_add_i32(_wgslsmith_mult_i32(1i, 6726i), ~(-_wgslsmith_sub_i32(-2147483647i, var_1))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_1(23789u, select(vec3<i32>(1i >> (arg_0.a % 32u), arg_0.b.x, abs(33469i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(arg_0.c, 1i, 1i)), vec3<bool>(false, all(vec2<bool>(true, false)), false)) << (vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d, 1u), 4294967295u, _wgslsmith_add_u32(u_input.d, arg_0.a)), 58422u, max(arg_0.a, _wgslsmith_mult_u32(u_input.d, arg_0.a))) % vec3<u32>(32u)), arg_1.x);
    global1 = array<vec4<bool>, 31>();
    global1 = array<vec4<bool>, 31>();
    let var_1 = true;
    let var_2 = 4294967295u;
    return vec3<bool>(all(vec2<bool>(var_1, all(vec3<bool>(true, false, var_1)))), any(!vec4<bool>(false, -23042i != arg_0.b.x, var_1, true)), !(!var_1));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = select(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true))), vec3<bool>(true, arg_2.x >= arg_0, false), false), vec3<bool>(false, true, _wgslsmith_f_op_f32(round(1055f)) >= _wgslsmith_f_op_f32(-arg_2.x)), vec3<bool>(true, !any(vec3<bool>(false, false, true)), any(vec2<bool>(true, false)))), select(func_4(func_2(arg_1.x), ~(~vec2<i32>(arg_1.x, arg_1.x))), vec3<bool>(all(vec3<bool>(false, true, false)) && any(vec3<bool>(false, false, true)), any(vec3<bool>(true, true, true)), arg_2.x >= _wgslsmith_div_f32(-628f, -524f)), firstTrailingBit(1i) >= abs(func_2(u_input.a.x).b.x)), true);
    var var_1 = min(u_input.b.x, 2147483647i);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - arg_2.x), arg_2.x, 1f);
    var var_3 = vec4<bool>(any(var_0), _wgslsmith_f_op_f32(sign(736f)) > _wgslsmith_div_f32(arg_2.x, -807f), false, false);
    global0 = array<vec4<f32>, 22>();
    return 727f;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(vec2<u32>(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.a, 0u, 31307u, 0u), u_input.e), 0u), ~15213u), -1i, func_2(u_input.b.x | u_input.a.x));
    var var_1 = arg_0 <= 640f;
    global0 = array<vec4<f32>, 22>();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<bool>, 31>();
    var var_0 = Struct_2(~vec2<u32>(~_wgslsmith_mult_u32(135087u, 0u), reverseBits(4294967295u << (u_input.e.x % 32u))), u_input.c.x, func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(2023f, u_input.c.zz, vec3<f32>(-1800f, 129f, 1972f)))))), func_2(_wgslsmith_mod_i32(i32(-1i) * -5113i, -u_input.b.x)), _wgslsmith_mult_vec3_u32(~vec3<u32>(8437u, u_input.e.x, 0u) ^ vec3<u32>(0u, u_input.e.x, u_input.e.x), countOneBits(u_input.e.wzw))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(206f, vec2<i32>(u_input.c.x, var_0.b), vec3<f32>(-1855f, -1104f, 2066f)))), -220f, _wgslsmith_f_op_f32(295f - _wgslsmith_div_f32(581f, -335f)))));
}

