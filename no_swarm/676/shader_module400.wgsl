struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 32> = array<vec3<bool>, 32>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global1: array<vec3<i32>, 5>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(Struct_2(Struct_1(vec2<bool>(true, false), false), 5641i, false, vec2<u32>(0u, 26523u))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), false), -19259i, true, vec2<u32>(24200u, 0u))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, true), false), -1i, false, vec2<u32>(1u, 0u))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), false), 0i, false, vec2<u32>(0u, 1u))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), false), 48910i, false, vec2<u32>(15706u, 34931u))), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), true), 2147483647i, false, vec2<u32>(18373u, 6724u))), Struct_4(Struct_2(Struct_1(vec2<bool>(true, false), true), -55432i, true, vec2<u32>(4294967295u, 85842u))), Struct_4(Struct_2(Struct_1(vec2<bool>(false, false), true), -70529i, true, vec2<u32>(15971u, 1u))), Struct_4(Struct_2(Struct_1(vec2<bool>(true, true), true), 1i, false, vec2<u32>(1557u, 0u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> Struct_3 {
    var var_0 = arg_1.a;
    let var_1 = arg_1.a;
    global3 = array<Struct_4, 9>();
    var_0 = Struct_2(arg_1.a.a, ~(~(-1i)) & var_1.b, var_0.a.a.x, u_input.c | vec2<u32>(arg_0.a.d.x, 0u));
    var var_2 = arg_1.a.b;
    return Struct_3(vec2<f32>(-1671f, 986f));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_i32(40945i, _wgslsmith_mult_i32(u_input.b, -2147483647i));
    var var_1 = Struct_3(global2.a);
    var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-global2.a.x))));
    global2 = func_2(global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, 70137u, 31742u))) | u_input.c.x), 9u)], Struct_4(Struct_2(Struct_1(!arg_0.a, arg_0.a.x), countOneBits(-16329i), !select(false, arg_0.b, true), vec2<u32>(~u_input.c.x, u_input.c.x))));
    let var_2 = Struct_1(arg_0.a, !(!arg_0.b));
    return _wgslsmith_f_op_vec2_f32(-global2.a);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    var var_0 = vec2<bool>(arg_2, select(true, arg_2, false));
    global3 = array<Struct_4, 9>();
    let var_1 = Struct_3(vec2<f32>(716f, _wgslsmith_f_op_f32(select(arg_0.a.x, 1482f, var_0.x))));
    var var_2 = _wgslsmith_add_u32(1u, ~u_input.c.x);
    let var_3 = max(select(select(select(vec4<i32>(u_input.b, -2147483647i, u_input.a, -27111i), max(vec4<i32>(-60480i, u_input.a, 2147483647i, -4810i), vec4<i32>(u_input.a, u_input.b, 4984i, 1i)), u_input.a == u_input.b), _wgslsmith_clamp_vec4_i32(-vec4<i32>(9252i, u_input.b, u_input.a, 238i), vec4<i32>(u_input.b, -64368i, u_input.a, 2147483647i), ~vec4<i32>(u_input.b, u_input.b, -1i, u_input.b)), !all(vec4<bool>(false, true, false, arg_2))), _wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.b, u_input.a, u_input.b, u_input.a), vec4<i32>(-1i, u_input.a, 2147483647i, 1i)) >> (select(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x), vec4<bool>(false, arg_2, var_0.x, var_0.x)) % vec4<u32>(32u)), select(reverseBits(vec4<i32>(u_input.a, u_input.a, -33565i, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, 41248i, u_input.a), vec4<bool>(arg_2, arg_2, true, false))), true), abs(vec4<i32>(~u_input.a, -2147483647i, 1i, u_input.a)) | _wgslsmith_div_vec4_i32(-select(vec4<i32>(0i, u_input.b, -1i, 1i), vec4<i32>(u_input.a, u_input.a, 53873i, u_input.b), vec4<bool>(arg_1.b, false, true, true)), -(~vec4<i32>(u_input.a, -1i, 39565i, u_input.b))));
    return func_2(global3[_wgslsmith_index_u32(16213u, 9u)], global3[_wgslsmith_index_u32(4294967295u, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1140f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global2.a.x, _wgslsmith_div_f32(global2.a.x, global2.a.x)) * vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(select(global2.a.x, _wgslsmith_div_f32(624f, global2.a.x), any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(select(-1671f, global2.a.x, true)), global2.a.x))));
    let var_1 = true;
    var var_2 = Struct_1(vec2<bool>(32433u > (~u_input.c.x >> (u_input.c.x % 32u)), false), global2.a.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + global2.a.x));
    global3 = array<Struct_4, 9>();
    global3 = array<Struct_4, 9>();
    let var_3 = var_2.a.x;
    var var_4 = func_3(Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(var_2.a, var_2.a.x))), global2.a))), Struct_1(var_2.a, (-575f != _wgslsmith_f_op_f32(var_0.x * -744f)) || false), !(1f > global2.a.x), Struct_3(vec2<f32>(1669f, 197f)));
    let var_5 = vec4<bool>(false, true, false || all(vec2<bool>(var_2.b, var_2.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -22426i, countOneBits(0i), -2147483647i), vec4<i32>(-1i, u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-20313i, u_input.b), vec2<i32>(u_input.a, 0i)), u_input.b)) > -1i);
    let x = u_input.a;
    s_output = StorageBuffer(((_wgslsmith_mult_vec2_u32(vec2<u32>(26528u, 24555u), u_input.c) & vec2<u32>(0u, u_input.c.x)) << (~(vec2<u32>(4294967295u, 0u) | u_input.c) % vec2<u32>(32u))) & u_input.c, ~firstTrailingBit(~(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) & vec4<u32>(u_input.c.x, 0u, u_input.c.x, 42264u))), _wgslsmith_f_op_vec4_f32(max(var_0, vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-global2.a.x), var_0.x, _wgslsmith_f_op_f32(min(598f, 1f))))), var_0, _wgslsmith_mod_u32(1u, reverseBits(select(u_input.c.x, ~0u, var_0.x > global2.a.x))));
}

