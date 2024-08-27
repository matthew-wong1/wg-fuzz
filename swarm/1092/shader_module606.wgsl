struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec2<i32>(i32(-2147483648), 0i), 17362u, 3228i, vec4<u32>(1u, 4294967295u, 19279u, 56069u), vec3<i32>(2147483647i, 1i, 0i)), Struct_1(vec2<i32>(-10551i, 1i), 0u, i32(-2147483648), vec4<u32>(36376u, 4294967295u, 1u, 1u), vec3<i32>(-1i, -34931i, 12562i)), Struct_1(vec2<i32>(26333i, 7196i), 32119u, 53093i, vec4<u32>(25623u, 59799u, 104150u, 10568u), vec3<i32>(-9745i, 1i, 52374i)), Struct_1(vec2<i32>(-1i, -8270i), 15824u, -1i, vec4<u32>(0u, 32299u, 28688u, 4294967295u), vec3<i32>(2147483647i, 0i, 5050i)), Struct_1(vec2<i32>(1i, -14871i), 25276u, 8212i, vec4<u32>(1u, 4294967295u, 1u, 0u), vec3<i32>(0i, 11844i, -8194i)), Struct_1(vec2<i32>(25371i, 1i), 79096u, 9023i, vec4<u32>(4294967295u, 0u, 51288u, 4294967295u), vec3<i32>(37111i, i32(-2147483648), i32(-2147483648))), Struct_1(vec2<i32>(-1721i, 9818i), 4294967295u, -74545i, vec4<u32>(16463u, 29306u, 39937u, 29731u), vec3<i32>(361i, 2147483647i, -1i)), Struct_1(vec2<i32>(-1i, -37345i), 4564u, 1i, vec4<u32>(30471u, 1u, 4294967295u, 1u), vec3<i32>(23781i, 15219i, -25485i)), Struct_1(vec2<i32>(21212i, -42093i), 28420u, -23598i, vec4<u32>(1u, 5580u, 33289u, 0u), vec3<i32>(i32(-2147483648), -25473i, 5527i)));

var<private> global2: array<u32, 29>;

var<private> global3: f32 = -320f;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2273f, 373f, 161f, -889f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-936f, -1000f, 187f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(247f, -355f, -932f, 450f), vec4<f32>(358f, -168f, -1710f, 512f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1577f, -724f, -987f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1920f, -1856f, -191f, -108f), vec4<f32>(-388f, -1274f, -482f, -2025f), true)), !vec4<bool>(true, arg_2, arg_2, arg_2))))), all(vec4<bool>(arg_2, arg_2, arg_2, !arg_2)) || true, (true | arg_2) != true, reverseBits(u_input.a));
    var var_1 = var_0.e.zzx;
    global3 = -1161f;
    global2 = array<u32, 29>();
    let var_2 = _wgslsmith_f_op_f32(1690f + var_0.b.x);
    return u_input.a.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(func_3(1u, ~u_input.c.x, arg_0.d), 9u)];
    var var_1 = -_wgslsmith_div_vec4_i32(u_input.c, u_input.c);
    var var_2 = arg_0;
    let var_3 = vec4<bool>(true, var_2.c, all(!select(vec3<bool>(true, true, true), vec3<bool>(var_2.c, true, false), !vec3<bool>(arg_0.d, false, false))), any(select(!select(vec2<bool>(var_2.c, var_2.c), vec2<bool>(false, true), true), select(select(vec2<bool>(false, arg_0.d), vec2<bool>(true, true), arg_0.d), select(vec2<bool>(false, true), vec2<bool>(true, false), var_2.d), vec2<bool>(false, true)), vec2<bool>(any(vec2<bool>(arg_0.c, true)), arg_0.d))));
    var var_4 = Struct_2(vec3<u32>(u_input.a.x, 1u, 1u), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, ~(arg_0.e.x >> (4294967295u % 32u)), abs(u_input.a.x), 0u), ~vec4<u32>(~30525u, ~arg_2, func_3(29274u, -2147483647i, true), func_3(var_2.e.x, -17262i, arg_0.d))), 29u)], 9u)], global1[_wgslsmith_index_u32(var_0.d.x, 9u)], global1[_wgslsmith_index_u32(~(~(~arg_0.e.x)), 9u)], select(select(vec3<bool>(all(vec4<bool>(arg_0.c, arg_0.c, true, arg_0.c)), !arg_0.c, var_2.d), vec3<bool>(var_3.x || arg_0.d, any(vec3<bool>(false, true, var_2.c)), !arg_0.c), any(var_3.zy) != select(var_3.x, arg_0.c, false)), select(vec3<bool>(true, true, var_2.d), select(var_3.yxz, vec3<bool>(var_2.c, false, var_3.x), true), var_3.yzy), all(select(!var_3, vec4<bool>(var_3.x, false, false, false), vec4<bool>(false, true, false, var_3.x)))));
    return arg_0.e.x;
}

fn func_1() -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(trunc(-1030f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -880f), _wgslsmith_div_f32(2542f, -248f), _wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(-341f * 615f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(653f - _wgslsmith_f_op_f32(step(-137f, -246f))))) <= 1326f, true, _wgslsmith_mod_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(u_input.a.x, 0u), ~global2[_wgslsmith_index_u32(1u, 29u)], ~global2[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_sub_u32(57350u, ~u_input.a.x)), vec4<u32>(select(0u, func_2(Struct_4(-689f, vec4<f32>(215f, 504f, -2027f, -378f), false, false, vec4<u32>(0u, u_input.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 0u)), vec3<i32>(-68894i, u_input.c.x, u_input.c.x), 16208u), true), 79491u, 4294967295u, 4294967295u)));
    global0 = select(var_0.d, all(vec3<bool>(any(vec2<bool>(true, true)), select(!var_0.d, true, true), true)), true);
    var var_1 = Struct_3(var_0.e.x | abs(~55184u));
    let var_2 = Struct_1(u_input.c.zy, 0u, ~(-1i), max(vec4<u32>(~u_input.a.x, max(1986u, 63612u), 42914u, _wgslsmith_add_u32(max(var_1.a, 0u), var_1.a)), firstLeadingBit(var_0.e) << (u_input.a % vec4<u32>(32u))), vec3<i32>(18722i, _wgslsmith_dot_vec4_i32(~u_input.c, u_input.c), 2147483647i));
    global1 = array<Struct_1, 9>();
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let var_0 = ~u_input.a.zx;
    global0 = !func_1();
    global2 = array<u32, 29>();
    let var_1 = Struct_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -599f), -1051f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(110f - 595f) * _wgslsmith_f_op_f32(floor(683f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1109f, _wgslsmith_f_op_f32(sign(2088f)), -1276f, _wgslsmith_f_op_f32(f32(-1f) * -873f))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)))), all(vec3<bool>(true, true, select(true, true, true))), vec4<u32>(24264u, global2[_wgslsmith_index_u32(17354u, 29u)], 0u, 24283u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-381f, 980f, -208f, 342f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1295f, -1407f, 912f, 280f)))), any(vec4<bool>(true, true, true, true)));
    var var_2 = var_1;
    global0 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_sub_u32(func_2(Struct_4(var_2.a.b.x, var_2.a.b, var_2.c, var_1.c, vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 61333u)), u_input.c.zzz, global2[_wgslsmith_index_u32(var_0.x, 29u)]), reverseBits(global2[_wgslsmith_index_u32(67645u, 29u)])), 21047u, global2[_wgslsmith_index_u32(~u_input.a.x, 29u)]), _wgslsmith_f_op_f32(trunc(var_1.b.x)));
}

