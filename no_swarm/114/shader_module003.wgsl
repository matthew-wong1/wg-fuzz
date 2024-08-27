struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(198f, 1678f, -322f), vec3<f32>(1310f, -1000f, -750f), vec3<f32>(490f, -288f, -1359f), vec3<f32>(931f, 384f, 1140f), vec3<f32>(-639f, 1234f, -185f), vec3<f32>(-637f, -1233f, -1302f), vec3<f32>(1034f, -1052f, 108f), vec3<f32>(-1000f, -1527f, -1000f), vec3<f32>(-1287f, -622f, -2088f), vec3<f32>(-563f, -1000f, 841f), vec3<f32>(-187f, 467f, 793f), vec3<f32>(-1302f, 466f, 1000f), vec3<f32>(-1000f, 838f, -1000f), vec3<f32>(1672f, 663f, -423f), vec3<f32>(1140f, 1485f, -985f), vec3<f32>(-596f, -1105f, -1022f));

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(32284i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(13863i, 2147483647i), vec2<i32>(6529i, 0i), vec2<i32>(8423i, -1i), vec2<i32>(-1i, -81978i), vec2<i32>(1i, -1i), vec2<i32>(21789i, -5766i), vec2<i32>(13970i, -76559i), vec2<i32>(2147483647i, 0i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -28630i), vec2<i32>(63565i, -1i), vec2<i32>(2147483647i, 31185i), vec2<i32>(-84454i, -1i), vec2<i32>(0i, 1i), vec2<i32>(15611i, 1i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -23660i), vec2<i32>(16282i, 2147483647i), vec2<i32>(37672i, 31361i), vec2<i32>(4402i, 27394i), vec2<i32>(-7079i, -14806i), vec2<i32>(801i, 30703i), vec2<i32>(i32(-2147483648), 78025i), vec2<i32>(1i, 2147483647i), vec2<i32>(19456i, 28602i), vec2<i32>(14920i, -1i), vec2<i32>(69199i, 77743i));

var<private> global2: array<vec3<i32>, 14>;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<f32>(869f, -773f, 705f), -2661f, vec3<f32>(-1062f, -791f, 1182f), -1370f, vec3<i32>(12155i, 2147483647i, -1i)), Struct_1(vec3<f32>(-2049f, -711f, -656f), 1599f, vec3<f32>(1000f, -557f, 611f), 1000f, vec3<i32>(-73315i, -116693i, 0i)), vec4<i32>(0i, -41596i, -62801i, 2147483647i), Struct_1(vec3<f32>(-624f, 736f, 1642f), -2040f, vec3<f32>(-144f, -165f, -391f), -615f, vec3<i32>(-10094i, -1i, 0i))), vec4<u32>(62440u, 103401u, 6072u, 0u), Struct_1(vec3<f32>(1301f, -363f, 1000f), -695f, vec3<f32>(1002f, 342f, -1083f), -1000f, vec3<i32>(14554i, 2147483647i, -1i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> vec3<bool> {
    global2 = array<vec3<i32>, 14>();
    global1 = array<vec2<i32>, 29>();
    global1 = array<vec2<i32>, 29>();
    var var_0 = -_wgslsmith_mod_i32(-26181i, u_input.b.x ^ u_input.b.x);
    global1 = array<vec2<i32>, 29>();
    return !vec3<bool>(!any(vec4<bool>(false, true, false, true)) | true, !(u_input.b.x != u_input.b.x), true);
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = select(select(select(vec3<bool>(any(vec4<bool>(false, true, false, true)), true, true), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), !(-27717i != arg_0.a.e.x)), select(vec3<bool>(true, true, true), select(func_3(31927u), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, false)), false), true), func_3(abs(42993u) >> (1u % 32u)), vec3<bool>(true, false, true));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.a.x - global3.c.a.x), _wgslsmith_f_op_f32(exp2(global3.c.c.x))), arg_0.b.a.zx, vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(global3.c.c.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -886f) + global3.a.a.c.xy))))), !(!(u_input.b.x == global3.c.e.x)))), vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_div_u32(u_input.a.x, 6219u)), -_wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(17056i, 24440i)), u_input.b.wx, vec2<i32>(~global3.c.e.x, global3.a.a.e.x)));
    global1 = array<vec2<i32>, 29>();
    var_1 = Struct_4(_wgslsmith_f_op_f32(select(1549f, -522f, var_0.x || false)), vec2<f32>(664f, -211f), ~(vec2<u32>(var_1.c.x << (36846u % 32u), 22605u) ^ ~u_input.a.zx), global3.c.e.xz);
    var var_2 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-974f * global3.c.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.c.x - 632f)))) * _wgslsmith_f_op_f32(trunc(-215f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -957f))) + _wgslsmith_f_op_f32(global3.a.a.a.x + arg_0.x)));
    global2 = array<vec3<i32>, 14>();
    var var_1 = !all(!(!select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, false, true), arg_2)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1112f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-656f - arg_3.d.b) - _wgslsmith_f_op_f32(var_0 + -179f)), var_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, 168f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))))));
    var_1 = !(true | arg_2);
    return Struct_3(global3.a, global3.b, arg_3.b);
}

fn func_1(arg_0: bool) -> vec2<u32> {
    global2 = array<vec3<i32>, 14>();
    var var_0 = false;
    let var_1 = 40851i;
    let var_2 = u_input.a.x;
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.a.b, -1427f, _wgslsmith_f_op_f32(-global3.a.a.c.x), -1234f) + vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(global3.a.b.a, 1473f, global0[_wgslsmith_index_u32(global3.b.x, 16u)], global3.a.d.b, u_input.b.wwx), global3.c, u_input.b, Struct_1(vec3<f32>(-919f, global3.a.b.a.x, 160f), -1617f, vec3<f32>(-307f, global3.a.b.d, -2027f), global3.a.a.d, u_input.b.wxy)))), -508f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a.d.c.x))), -809f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(602f, global3.c.a.x, global3.a.a.b, -413f), vec4<f32>(global3.c.c.x, -1138f, global3.c.d, -430f))) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(997f, global3.c.a.x, global3.a.b.b, -1390f), vec4<f32>(1920f, global3.c.a.x, global3.c.d, global3.a.d.c.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-534f, global3.a.b.d, -224f, -330f), vec4<f32>(global3.c.b, global3.a.d.c.x, global3.a.b.d, -1422f))) + vec4<f32>(-400f, global3.a.b.a.x, -712f, global3.a.b.a.x)))), arg_0, Struct_2(global3.a.a, Struct_1(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 16u)]), 111f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global3.b.x, 16u)]) * vec3<f32>(global3.c.a.x, 546f, 410f)), global3.a.b.b, reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, global3.b.yw), 14u)])), _wgslsmith_div_vec4_i32(abs(global3.a.c & vec4<i32>(global3.a.d.e.x, -33901i, 2147483647i, global3.c.e.x)), -vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, 2147483647i)), Struct_1(global3.a.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1634f)) - -383f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global3.c.a * global3.a.d.c))), _wgslsmith_f_op_f32(f32(-1f) * -700f), global2[_wgslsmith_index_u32(28254u ^ min(0u, global3.b.x), 14u)])));
    return var_3.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(global3.b.x >> (~345u % 32u), global3.b.x), select(vec2<u32>(~global3.b.x, 37727u), func_1(true), true) << (abs(vec2<u32>(4294967295u, global3.b.x) >> (~u_input.a.xx % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = global3.c.e.xz;
    var var_2 = 372f;
    var var_3 = max(u_input.a, ~(~vec3<u32>(4294967295u, var_0.x, global3.b.x) | global3.b.xxw));
    var var_4 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_1.x, global3.c.e.x, u_input.b.x));
}

