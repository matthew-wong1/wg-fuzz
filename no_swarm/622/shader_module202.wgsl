struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -17005i;

var<private> global1: array<f32, 1> = array<f32, 1>(1319f);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, false), 1159f, vec2<u32>(0u, 49018u), 1i, -465f), Struct_1(vec3<bool>(true, true, false), -1380f, vec2<u32>(4294967295u, 10238u), 13350i, -1424f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_4) -> bool {
    let var_0 = arg_2.d.a.a.x;
    var var_1 = vec2<i32>(~(-1i), -1i);
    let var_2 = global2.b.b;
    global1 = array<f32, 1>();
    var var_3 = Struct_3(Struct_2(global2.b, arg_2.d.a), arg_2.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u >> (~arg_2.b % 32u), 1u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.a.b * 1477f) + -651f)))));
    return false;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = select(global2.a.a, select(select(!vec3<bool>(false, true, arg_0.x), vec3<bool>(arg_0.x, all(vec2<bool>(false, arg_2.a.x)), false), arg_2.a.x), !vec3<bool>(global2.a.a.x, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_2.a.x, true), vec3<bool>(false, arg_1, any(global2.a.a)), global2.b.a)), vec3<bool>(true == global2.b.a.x, false, false));
    global1 = array<f32, 1>();
    let var_1 = 29985i;
    let var_2 = vec4<u32>(0u, arg_2.c.x, 22158u, u_input.b);
    global1 = array<f32, 1>();
    return Struct_1(!select(vec3<bool>(var_0.x & arg_1, var_0.x, false), arg_0, !select(global2.b.a, global2.a.a, arg_0)), arg_2.b, ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 88382u), _wgslsmith_sub_vec2_u32(arg_2.c | global2.b.c, ~global2.b.c)), -u_input.a.x, arg_2.e);
}

fn func_1() -> Struct_2 {
    global2 = Struct_2(Struct_1(!(!select(global2.a.a, global2.a.a, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(477f)) - _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(~global2.b.c.x, 1u)]))), ~(~abs(vec2<u32>(57666u, global2.b.c.x))), 16281i, 343f), func_3(vec3<bool>(true, false, true), true, Struct_1(global2.a.a, _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~u_input.b, 1u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 1u)] + 2134f))), _wgslsmith_clamp_vec2_u32(global2.a.c, global2.b.c, ~vec2<u32>(67731u, global2.a.c.x)), 23109i, _wgslsmith_f_op_f32(sign(1473f))), -select(2147483647i, 21593i, func_2(-130f, vec2<bool>(true, global2.a.a.x), Struct_4(vec2<i32>(-2147483647i, 59941i), 90045u, Struct_2(Struct_1(vec3<bool>(true, true, global2.a.a.x), global1[_wgslsmith_index_u32(global2.a.c.x, 1u)], vec2<u32>(0u, global2.b.c.x), global2.a.d, 1356f), global2.b), Struct_2(global2.a, global2.a))))));
    var var_0 = Struct_1(select(!(!(!vec3<bool>(global2.a.a.x, global2.a.a.x, global2.b.a.x))), vec3<bool>(true, true, func_3(vec3<bool>(global2.b.a.x, global2.a.a.x, global2.b.a.x), global2.a.a.x, func_3(global2.a.a, true, global2.b, -29728i), -global2.a.d).a.x), select(global2.b.a, !global2.a.a, !(!vec3<bool>(true, global2.b.a.x, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(9026u, 1u)], -685f, false))))), abs(~vec2<u32>(_wgslsmith_add_u32(32372u, 64098u), _wgslsmith_div_u32(u_input.b, global2.b.c.x))), 1i, _wgslsmith_f_op_f32(-global2.b.e));
    var var_1 = Struct_4(_wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d, global2.b.d), u_input.a.yx, u_input.a.zy)), ~vec2<i32>(2147483647i, u_input.a.x) << (max(vec2<u32>(4294967295u, var_0.c.x), vec2<u32>(u_input.b, 52556u)) % vec2<u32>(32u))) & u_input.a.xz, max(~select(var_0.c.x, var_0.c.x, false), abs(12576u ^ global2.b.c.x)) ^ ~u_input.b, Struct_2(func_3(global2.a.a, !global2.a.a.x & any(vec2<bool>(true, false)), Struct_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-var_0.b), ~vec2<u32>(global2.a.c.x, 0u), 1i, var_0.e), _wgslsmith_dot_vec4_i32(vec4<i32>(-7166i, global2.a.d, 53830i, 2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.d, 2147483647i, var_0.d, 2147483647i), vec4<i32>(-2147483647i, var_0.d, 2147483647i, global2.b.d)))), func_3(select(var_0.a, !global2.a.a, !vec3<bool>(false, true, global2.b.a.x)), ~u_input.b < countOneBits(u_input.b), global2.b, _wgslsmith_sub_i32(_wgslsmith_mult_i32(global2.b.d, global2.a.d), 2147483647i))), Struct_2(func_3(func_3(var_0.a, true, func_3(global2.a.a, true, global2.a, var_0.d), select(-4359i, -16775i, var_0.a.x)).a, true, global2.b, global2.a.d), func_3(vec3<bool>(var_0.a.x, u_input.a.x > -1i, true), !(!var_0.a.x), Struct_1(global2.b.a, _wgslsmith_f_op_f32(617f + -1000f), vec2<u32>(1u, 4294967295u), _wgslsmith_clamp_i32(-1i, global2.a.d, global2.b.d), _wgslsmith_f_op_f32(var_0.b - -1116f)), _wgslsmith_mult_i32(abs(2147483647i), 1i))));
    var var_2 = vec2<u32>(var_1.d.a.c.x, _wgslsmith_dot_vec2_u32(~var_1.c.b.c, vec2<u32>(~firstTrailingBit(4294967295u), _wgslsmith_add_u32(43651u, ~global2.b.c.x))));
    global2 = var_1.c;
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1i;
    let var_0 = 24734u;
    var var_1 = Struct_4(-u_input.a.yx, _wgslsmith_sub_u32(global2.b.c.x, var_0), func_1(), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_1.d.b.c.x, 1u)] * 1f), var_1.c.b.e)), _wgslsmith_div_vec2_f32(vec2<f32>(461f, 119f), vec2<f32>(_wgslsmith_f_op_f32(step(1475f, global1[_wgslsmith_index_u32(4294967295u, 1u)])), global2.a.e)));
}

