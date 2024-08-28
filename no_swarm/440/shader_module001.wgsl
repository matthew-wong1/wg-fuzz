struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(280f, -1414f));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: Struct_5) -> f32 {
    var var_0 = select(true, true, _wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(arg_0.c.x, max(8614u, 0u))) <= (_wgslsmith_add_u32(~arg_0.e.x, arg_0.c.x) & 4294967295u));
    var var_1 = Struct_4(0u);
    return -1662f;
}

fn func_3(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_4(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 38997u), vec2<u32>(u_input.a, u_input.a)) | _wgslsmith_mod_u32(u_input.a, 4294967295u), ~_wgslsmith_mod_u32(u_input.a, u_input.a)));
    let var_1 = vec3<i32>(-1i, (((-1i << (var_0.a % 32u)) >> (~5676u % 32u)) & -1i) >> (22328u % 32u), _wgslsmith_add_i32(_wgslsmith_add_i32(52157i, -16792i), 1i ^ _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 0i, 1i), vec3<i32>(1i, 1i, 1i))));
    global0 = array<vec2<f32>, 1>();
    var var_2 = Struct_5(~_wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1025u, 2370u), vec2<u32>(3207u, var_0.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, u_input.a))), select(vec4<bool>(true, (u_input.a | 0u) == u_input.a, all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), all(vec3<bool>(false, true, true)) || true), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false)), any(vec4<bool>(true, any(vec4<bool>(false, true, true, true)), all(vec2<bool>(true, false)), true))), ~(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(718u, 54464u, var_0.a)), vec3<u32>(0u, var_0.a, 71855u))), vec3<bool>(true, any(vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, false)), select(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), false, true)), vec2<u32>(~0u, u_input.a));
    global0 = array<vec2<f32>, 1>();
    return Struct_1(_wgslsmith_dot_vec2_i32(-var_1.zz, abs(min(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, var_1.x), var_1.xz), -var_1.zz))), (all(select(var_2.b.wx, var_2.d.yy, false)) != var_2.d.x) && var_2.d.x, var_1.x, 561f);
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.a;
    let var_1 = func_3(vec4<f32>(652f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_5(vec2<u32>(u_input.a, u_input.a), vec4<bool>(false, true, true, false), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(true, true, false), vec2<u32>(u_input.a, 1u))))))), 984f, _wgslsmith_f_op_f32(trunc(1175f))));
    var var_2 = vec2<bool>(true, true);
    var_0 = reverseBits(72180u);
    var var_3 = func_3(vec4<f32>(-241f, var_1.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1985f + 1402f) + -1057f), _wgslsmith_f_op_f32(min(781f, -718f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(619f * _wgslsmith_f_op_f32(select(var_1.d, var_1.d, false))) * -944f)));
    return Struct_3(Struct_2(func_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_1.d, var_1.d, -2052f))))), var_1, select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 18960u, 32301u, 44087u), vec4<u32>(4294967295u, 27101u, u_input.a, u_input.a) | vec4<u32>(790u, 1u, 18558u, u_input.a)), vec4<u32>(u_input.a, ~36599u, 0u, ~4294967295u), false || var_1.b)), vec2<u32>(~(~(~24760u)), ~(~0u)), Struct_2(var_1, func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, 1000f, -1000f, var_3.d) * vec4<f32>(var_1.d, var_3.d, var_1.d, 409f)))), vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(u_input.a, 1u, u_input.a), 1u, _wgslsmith_sub_u32(17768u, u_input.a)) >> ((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 3199u, 1u, 0u)) << (vec4<u32>(u_input.a, u_input.a, 9439u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(min(vec2<i32>(var_1.c, 2147483647i), vec2<i32>(var_1.a, 1i)), firstTrailingBit(vec2<i32>(23385i, 2147483647i))), vec2<i32>(i32(-1i) * -30088i, ~12511i)) >> (u_input.a % 32u));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    global0 = array<vec2<f32>, 1>();
    global0 = array<vec2<f32>, 1>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), -1353f);
    var var_1 = false;
    let var_2 = arg_1.a.a;
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -11000i;
    let var_1 = global0[_wgslsmith_index_u32(54060u, 1u)];
    var_0 = 1i;
    let var_2 = func_4(true, func_1(), Struct_4(u_input.a));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-448f * func_1().a.a.d) - _wgslsmith_f_op_f32(func_2(Struct_5(~_wgslsmith_add_vec2_u32(vec2<u32>(var_2, u_input.a), vec2<u32>(4294967295u, 16949u)), vec4<bool>(true, true, true, true), vec3<u32>(1051u, 37060u, func_1().b.x), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(firstTrailingBit(vec2<u32>(0u, var_2)), func_1().b, func_1().a.a.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(1f)), i32(-1i) * -(i32(-1i) * -2147483647i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-579f + 645f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1339f))), _wgslsmith_f_op_f32(exp2(func_1().c.b.d))));
}

