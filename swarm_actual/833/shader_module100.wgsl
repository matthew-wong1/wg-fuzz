struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

var<private> global1: Struct_2 = Struct_2(Struct_1(1000f, 1117f, vec4<f32>(1445f, -531f, 1644f, 228f)), 2147483647i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> Struct_5 {
    let var_0 = all(!vec3<bool>(_wgslsmith_f_op_f32(abs(global1.a.b)) > _wgslsmith_f_op_f32(f32(-1f) * -2070f), any(vec2<bool>(true, true)), !(global1.a.a != global1.a.c.x)));
    var var_1 = u_input.a;
    return Struct_5(global1.a);
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1124f * _wgslsmith_f_op_f32(-global1.a.c.x))));
    var var_1 = 2147483647i;
    let var_2 = !vec2<bool>(select(false, true, true), ~(global1.b | -1i) >= -68243i);
    let var_3 = reverseBits(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~12008u, arg_1.e.x), u_input.a, abs(45757u >> (_wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.a) % 32u))));
    global0 = array<Struct_1, 10>();
    return global1.a;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = vec3<i32>(-2147483647i, ~(~(global1.b << (56981u % 32u))), -1i) & _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -53999i, global1.b), vec3<i32>(-5320i, -32474i, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(25711i, global1.b, global1.b), vec3<i32>(-1i, global1.b, 9330i))) | (_wgslsmith_mult_vec3_i32(vec3<i32>(global1.b, global1.b, 49987i), vec3<i32>(46269i, global1.b, -1i)) >> (min(vec3<u32>(15703u, u_input.a, 86902u), vec3<u32>(35169u, u_input.a, 42791u)) % vec3<u32>(32u))), vec3<i32>(-1i) * -(vec3<i32>(global1.b, -1i, global1.b) | vec3<i32>(0i, -1i, -2147483647i)), abs(vec3<i32>(-2147483647i, ~global1.b, _wgslsmith_mod_i32(-249i, -29641i))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(arg_0.c)));
    var var_2 = all(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true));
    var var_3 = func_2();
    let var_4 = var_3.a;
    return any(vec4<bool>((true | all(vec3<bool>(true, false, true))) || !select(false, true, false), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), !(!all(vec3<bool>(true, true, false))), all(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), false), true))));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_5, arg_3: bool) -> f32 {
    var var_0 = vec3<u32>(u_input.a >> (93209u % 32u), ~43750u, ~abs(~u_input.a)) | vec3<u32>(~(30072u << (u_input.a % 32u)), ~firstLeadingBit(39795u), ~max(0u, u_input.a));
    global0 = array<Struct_1, 10>();
    var var_1 = true;
    var_1 = any(select(select(vec3<bool>(arg_3 || arg_0, arg_3, arg_3), select(vec3<bool>(true, true, arg_0), !vec3<bool>(arg_3, true, true), arg_0 & arg_0), !select(vec3<bool>(arg_3, arg_3, arg_0), vec3<bool>(arg_3, arg_3, true), false)), vec3<bool>(arg_0, arg_0, arg_3), select(select(vec3<bool>(arg_0, false, arg_3), !vec3<bool>(arg_0, arg_3, false), !vec3<bool>(false, arg_0, arg_3)), vec3<bool>(true, any(vec2<bool>(false, arg_0)), !arg_3), true)));
    let var_2 = func_2().a;
    return 1937f;
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_1(1368f, _wgslsmith_f_op_f32(-global1.a.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, -554f, 585f, global1.a.b)))))));
    var var_1 = var_0;
    var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(u_input.a >= ~1u, reverseBits(-96502i), func_2(), func_4(func_3(1i, Struct_4(global1.a, vec2<f32>(248f, 860f), var_0.c.yz, 4294967295u, vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), _wgslsmith_f_op_f32(1694f - var_0.c.x)))), 1f), -1208f, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b)), _wgslsmith_f_op_f32(f32(-1f) * -1353f), global1.a.c.x))));
    var var_2 = reverseBits(~(~(~(~vec3<u32>(u_input.a, 128360u, u_input.a)))));
    var_1 = func_2().a;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(min(var_0.a.b, 654f)), _wgslsmith_f_op_f32(-1801f - var_0.a.b), _wgslsmith_f_op_vec4_f32(floor(func_3(countOneBits(2147483647i), Struct_4(Struct_1(var_0.a.a, var_0.a.b, var_0.a.c), var_0.a.c.yz, vec2<f32>(698f, 735f), 4294967295u, vec4<u32>(1u, u_input.a, 22530u, 42385u))).c))), i32(-1i) * -(~1i));
    let var_1 = max(_wgslsmith_clamp_u32(~u_input.a, ~(countOneBits(u_input.a) ^ 4922u), 630u), 21103u);
    var var_2 = vec4<f32>(global1.a.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.c.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1820f))), _wgslsmith_f_op_f32(-var_0.a.a), any(vec2<bool>(true, true)))), func_2().a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2010f + _wgslsmith_f_op_f32(f32(-1f) * -1588f)))));
    global0 = array<Struct_1, 10>();
    var var_3 = -1000f;
    var_3 = -559f;
    let x = u_input.a;
    s_output = StorageBuffer(1070f, abs(countOneBits(_wgslsmith_mod_vec2_i32(~vec2<i32>(64645i, global1.b), select(vec2<i32>(global1.b, global1.b), vec2<i32>(global1.b, global1.b), vec2<bool>(true, true))))), vec3<f32>(_wgslsmith_f_op_f32(-1656f * _wgslsmith_f_op_f32(-var_0.a.c.x)), var_0.a.b, global1.a.b), ~vec4<u32>(4294967295u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(37378u, var_1, 0u, u_input.a), select(vec4<u32>(4294967295u, var_1, var_1, 0u), vec4<u32>(var_1, 0u, var_1, var_1), vec4<bool>(false, false, false, true))), abs(~73240u)));
}

