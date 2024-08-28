struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 18> = array<vec3<f32>, 18>(vec3<f32>(1413f, -1000f, -261f), vec3<f32>(-157f, -1260f, -165f), vec3<f32>(-738f, -902f, 543f), vec3<f32>(1698f, 1000f, 678f), vec3<f32>(607f, 1000f, -342f), vec3<f32>(467f, 439f, -1000f), vec3<f32>(-183f, -944f, -1206f), vec3<f32>(-381f, 922f, 483f), vec3<f32>(557f, 179f, 212f), vec3<f32>(-277f, 561f, 1848f), vec3<f32>(-224f, 232f, -2168f), vec3<f32>(129f, -1034f, -822f), vec3<f32>(-335f, -1292f, 1000f), vec3<f32>(-352f, 322f, -813f), vec3<f32>(1154f, -1348f, -331f), vec3<f32>(-1706f, -3395f, -389f), vec3<f32>(665f, -983f, -174f), vec3<f32>(597f, 156f, 2058f));

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(309f, 285f, 1658f, 831f), vec4<f32>(-1262f, -179f, -182f, -1000f), vec4<f32>(-981f, -188f, 884f, -724f), vec4<f32>(-1382f, -1000f, -746f, 295f), vec4<f32>(936f, 944f, -1772f, 1000f));

var<private> global2: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> bool {
    global1 = array<vec4<f32>, 5>();
    let var_0 = !vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true)) & false, false, true, true);
    var var_1 = _wgslsmith_div_vec3_u32((~(~u_input.b) & (vec3<u32>(1u, 24631u, 1u) >> (_wgslsmith_mult_vec3_u32(u_input.b, u_input.b) % vec3<u32>(32u)))) ^ ~vec3<u32>(1u, select(u_input.b.x, 60759u, var_0.x), u_input.b.x), vec3<u32>(u_input.b.x ^ ~(~u_input.b.x), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x) & 18960u, min(max(~22437u, firstLeadingBit(u_input.b.x)), 8208u)));
    global1 = array<vec4<f32>, 5>();
    var var_2 = vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(422f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))) * -568f), _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f + -649f))))));
    return false;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    var var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(464f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-164f * arg_1) * _wgslsmith_div_f32(244f, arg_1)), -213f), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-375f * 1000f), _wgslsmith_f_op_f32(abs(arg_1)))));
    var var_1 = select(global2[_wgslsmith_index_u32(arg_3, 9u)], vec2<bool>(1i <= (i32(-1i) * -u_input.a.x), true), true);
    let var_2 = arg_2.yx;
    var var_3 = _wgslsmith_f_op_f32(step(-468f, var_0.x));
    global3 = any(vec4<bool>(all(vec4<bool>(true, arg_0, arg_0 || true, true)), true, func_3(var_0.x, var_0.xz), u_input.c <= (~u_input.c & (-38042i & u_input.c))));
    return u_input.a.x;
}

fn func_1() -> Struct_3 {
    let var_0 = vec3<i32>(u_input.c, -26545i, _wgslsmith_add_i32(-u_input.c, -25032i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(325f)))))));
    global2 = array<vec2<bool>, 9>();
    let var_2 = _wgslsmith_mod_i32(-60935i, abs(func_2(true, var_1, vec3<u32>(min(35521u, u_input.b.x), ~1u, 1u), ~u_input.b.x)));
    global0 = array<vec3<f32>, 18>();
    return Struct_3(select(~(~u_input.b.zy), u_input.b.zx, select(vec2<bool>(true, false), select(!global2[_wgslsmith_index_u32(u_input.b.x, 9u)], select(global2[_wgslsmith_index_u32(0u, 9u)], vec2<bool>(false, false), global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), true), vec2<bool>(select(false, true, false), false))), Struct_2(vec4<u32>(countOneBits(1u >> (u_input.b.x % 32u)), 7783u, _wgslsmith_mult_u32(u_input.b.x, 4294967295u) & 25420u, u_input.b.x), u_input.b.x, _wgslsmith_add_vec3_i32(var_0, u_input.a.zyz), Struct_1(vec3<bool>(true, true, true)), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(var_2, u_input.a.x, 46522i, var_2))), -vec4<i32>(u_input.a.x, -1174i, var_0.x, -302i))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>) -> StorageBuffer {
    global1 = array<vec4<f32>, 5>();
    var var_0 = arg_0;
    global3 = false;
    var var_1 = Struct_1(vec3<bool>(false, !arg_0.b.d.a.x, !(!(true || arg_1.b.d.a.x))));
    global0 = array<vec3<f32>, 18>();
    return StorageBuffer(_wgslsmith_f_op_f32(-1063f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-182f)) - -859f)))), 68102i, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(vec4<u32>(32598u, arg_0.a.x, arg_1.b.b, 60044u) >> (var_0.b.a % vec4<u32>(32u))), ~(vec4<u32>(35532u, 0u, 40098u, 4294967295u) ^ arg_1.b.a)), func_1().b.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 9>();
    var var_0 = vec4<u32>(u_input.b.x, firstLeadingBit(~1u), u_input.b.x, select(u_input.b.x, u_input.b.x ^ ~u_input.b.x, any(vec4<bool>(true, false, true, true)) || true));
    global1 = array<vec4<f32>, 5>();
    global0 = array<vec3<f32>, 18>();
    let var_1 = ~(~u_input.b.yz);
    let x = u_input.a;
    s_output = func_4(func_1(), func_1(), u_input.a.yy);
}

