struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_4,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(854f, 1111f, 579f, 1159f, 2574f, -466f, -171f, -186f, 367f, 203f, 840f, 432f, -1331f, 887f, 317f, 1460f, -1269f, -321f, 1375f, 133f, -862f, 775f, -495f, 738f, -164f, -1447f, -1244f);

var<private> global1: array<i32, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    global0 = array<f32, 27>();
    let var_0 = Struct_2(~(-29403i), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(28493u, 4294967295u, 1u)), vec3<u32>(select(u_input.b.x, u_input.c, true), u_input.b.x, ~17730u)), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(u_input.b.x, u_input.a.x))), Struct_1(-(i32(-1i) * -17948i)), ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(28240u, 31u)]), vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(8272u, 31u)]) << (u_input.a % vec2<u32>(32u)), vec2<i32>(0i, 69454i))), abs(~(-36531i)));
    return _wgslsmith_sub_u32(u_input.a.x, ~1912u);
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_3(884f, u_input.b.x ^ ~_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.c, 67471u))), _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(_wgslsmith_add_i32(-42561i, 0i)), _wgslsmith_clamp_i32(abs(0i), min(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)]), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(30951u, 31u)], global1[_wgslsmith_index_u32(u_input.c, 31u)])), 0i, -_wgslsmith_mod_i32(2147483647i, 33880i)), ~_wgslsmith_add_vec4_i32(abs(vec4<i32>(-35503i, -2147483647i, global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.a.x, 31u)])), select(vec4<i32>(28784i, -23726i, 40020i, global1[_wgslsmith_index_u32(u_input.c, 31u)]), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -1i, global1[_wgslsmith_index_u32(u_input.c, 31u)], 0i), vec4<bool>(false, false, true, false)))), global0[_wgslsmith_index_u32(~func_3(), 27u)], 386f);
    var_0 = Struct_3(_wgslsmith_f_op_f32(-1f), ~u_input.a.x, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -510f))))), 562f);
    global1 = array<i32, 31>();
    var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(var_0.d)), var_0.b, global1[_wgslsmith_index_u32(~37648u, 31u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 35339u), abs(vec3<u32>(var_0.b, var_0.b, 13179u)), vec3<u32>(u_input.b.x, u_input.c, 0u)), vec3<u32>(u_input.b.x, var_0.b, ~3071u)), 27u)], -384f);
    let var_1 = true;
    return Struct_4(~1u, 1210f, Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(~u_input.b.x, 31u)], -13909i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], 28208i), vec4<i32>(global1[_wgslsmith_index_u32(78024u, 31u)], 17633i, -1i, global1[_wgslsmith_index_u32(568u, 31u)]))), vec3<i32>(countOneBits(3886i), -18370i, reverseBits(var_0.c)))), u_input.a.x);
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: bool) -> f32 {
    var var_0 = func_2();
    var var_1 = vec3<i32>(var_0.c.a, _wgslsmith_clamp_i32(var_0.c.a, 0i, _wgslsmith_sub_i32(26632i, ~(-global1[_wgslsmith_index_u32(0u, 31u)]))), 20233i >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.c, min(arg_1.x, 70651u)), var_0.a) % 32u));
    global0 = array<f32, 27>();
    var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(-var_1.xy, var_1.yy), _wgslsmith_mult_i32(firstLeadingBit(-45507i), 1i), -_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 31u)], var_1.x, 9655i)) & ~(vec3<i32>(-1i) * -vec3<i32>(-33819i, var_0.c.a, global1[_wgslsmith_index_u32(48396u, 31u)])), vec3<i32>(2147483647i, _wgslsmith_sub_i32(firstLeadingBit(var_0.c.a), firstLeadingBit(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(38531u, 31u)]))), select(var_1.x, 1i, !arg_2)));
    global1 = array<i32, 31>();
    return _wgslsmith_f_op_f32(round(2863f));
}

fn func_4(arg_0: bool) -> Struct_3 {
    global0 = array<f32, 27>();
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_mult_u32(u_input.b.x, ~0u) % 32u), 27u)]))));
    let var_1 = !(!(!select(vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), any(vec3<bool>(arg_0, arg_0, arg_0)))));
    global0 = array<f32, 27>();
    var var_2 = vec4<i32>(-1i, firstLeadingBit(~global1[_wgslsmith_index_u32((u_input.b.x >> (u_input.a.x % 32u)) << (4294967295u % 32u), 31u)]), global1[_wgslsmith_index_u32(u_input.a.x, 31u)], ~(-317i & countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)], -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(u_input.b.x, 31u)])))));
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1337f), u_input.a.x, 0i, -760f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f * _wgslsmith_f_op_f32(-1788f * global0[_wgslsmith_index_u32(1u, 27u)])) + -1652f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 27u)] + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1460f), select(var_1.x, false, false))), -1028f), !select(all(vec4<bool>(var_1.x, false, true, false)), all(vec4<bool>(false, arg_0, false, false)), !var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 27u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -684f))) * vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 27u)]), -139f)));
    var var_1 = u_input.a.x;
    let var_2 = func_4(!(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(u_input.b.x, 27u)])) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(21736u, 27u)] + var_0.x), _wgslsmith_f_op_f32(func_1(535f, vec3<u32>(u_input.a.x, u_input.c, u_input.c), false)))));
    let var_3 = var_0.x;
    let var_4 = _wgslsmith_f_op_f32(-var_2.e);
    var var_5 = max(var_2.c, ~(~global1[_wgslsmith_index_u32(func_4(0u >= u_input.c).b, 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1008f, _wgslsmith_f_op_f32(-393f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(687f * 1449f))))), var_2.c);
}

