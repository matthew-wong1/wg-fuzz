struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(35445i, Struct_1(1i, -44420i, vec4<f32>(-565f, -356f, -340f, -118f), 48877u, vec3<f32>(674f, -948f, 943f)), 43653u, -741f, false);

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-751f, 1259f), vec2<f32>(1065f, -1000f), vec2<f32>(-1000f, 901f), vec2<f32>(460f, -427f), vec2<f32>(-719f, -1317f), vec2<f32>(1084f, 1278f), vec2<f32>(-711f, -1509f), vec2<f32>(196f, 1234f), vec2<f32>(571f, -1000f), vec2<f32>(208f, -253f), vec2<f32>(675f, -345f), vec2<f32>(1338f, 1003f), vec2<f32>(-226f, 229f), vec2<f32>(132f, -786f), vec2<f32>(231f, -367f), vec2<f32>(-142f, 257f), vec2<f32>(1368f, 923f), vec2<f32>(-1617f, 147f), vec2<f32>(-2468f, 301f), vec2<f32>(-605f, -1135f), vec2<f32>(1065f, -590f), vec2<f32>(-544f, -600f), vec2<f32>(-1567f, -1293f), vec2<f32>(-201f, 897f), vec2<f32>(-334f, 1000f), vec2<f32>(-221f, 2413f), vec2<f32>(-920f, -685f), vec2<f32>(-255f, 619f), vec2<f32>(1000f, 596f), vec2<f32>(106f, 1000f), vec2<f32>(1000f, 933f), vec2<f32>(143f, 1000f));

var<private> global3: array<f32, 3> = array<f32, 3>(1039f, -298f, -296f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_5) -> f32 {
    global0 = Struct_3(countOneBits(_wgslsmith_add_i32(max(~0i, -2147483647i), 1151i)), global0.b, arg_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.e.x)))) - global0.d), all(!select(vec3<bool>(true, true, true), arg_0.b.a.xxy, !vec3<bool>(global1.x, true, global1.x))));
    let var_0 = arg_0;
    global0 = Struct_3(global0.a, global0.b, u_input.b.x, 572f, any(!select(select(vec3<bool>(false, false, global1.x), vec3<bool>(global0.e, false, false), true), vec3<bool>(true, false, false), !arg_0.a)));
    let var_1 = Struct_3(~(-5012i), Struct_1(_wgslsmith_add_i32(-14032i, global0.a), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -762f), _wgslsmith_f_op_f32(select(-1055f, arg_0.c, global1.x)))), global0.b.c.x, -419f, _wgslsmith_f_op_f32(trunc(arg_0.c))), 13861u, _wgslsmith_f_op_vec3_f32(-global0.b.e)), u_input.b.x & ~global0.c, _wgslsmith_f_op_f32(arg_0.c + -1051f), global0.e);
    let var_2 = Struct_5(!var_0.a, Struct_4(!arg_0.b.a, ~var_0.b.b, var_1.b, select(-_wgslsmith_mod_i32(-2147483647i, arg_0.b.c.a), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global0.b.b, global0.a), var_0.b.c.a, -26692i), any(var_0.a.zy) | global1.x), arg_0.b.c.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(780f, 1552f)))) - -1523f), select(select(vec2<bool>(true, false), !select(vec2<bool>(false, global0.e), vec2<bool>(true, global0.e), arg_0.b.a.zy), false), vec2<bool>(any(!vec4<bool>(global1.x, false, false, global1.x)), false), arg_0.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.x) * -430f);
}

fn func_2() -> Struct_5 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec3<bool>(global1.x, global1.x, false), Struct_4(vec4<bool>(true, global1.x, global1.x, true), vec2<u32>(global0.b.d, global0.c), global0.b, 34927i, global0.c), global0.d, global1.zz))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 3u)])))));
    var_0 = global0.b.c.yz;
    let var_1 = abs(vec3<u32>(global0.c, 1u, 4294967295u) & min(~(u_input.b.wzy ^ u_input.b.wxx), u_input.b.www));
    global2 = array<vec2<f32>, 32>();
    return Struct_5(select(!select(vec3<bool>(global1.x, global1.x, global0.e), select(vec3<bool>(false, true, true), vec3<bool>(global1.x, false, global1.x), false), any(vec3<bool>(global0.e, global1.x, false))), select(!select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global0.e, global1.x, true), vec3<bool>(true, global1.x, global1.x)), select(vec3<bool>(global0.e, global1.x, true), select(vec3<bool>(global1.x, true, global0.e), vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, false, global1.x)), !global1.x), vec3<bool>(true, all(global1.xy), !global1.x)), true || (true | global0.e)), Struct_4(select(vec4<bool>(global1.x, global0.e, !global0.e, true), select(!vec4<bool>(global0.e, true, false, global0.e), !vec4<bool>(false, false, global1.x, false), global1.x), !(!vec4<bool>(global0.e, false, false, global0.e))), ~_wgslsmith_div_vec2_u32(~var_1.yz, max(var_1.xy, vec2<u32>(global0.b.d, 23831u))), Struct_1(u_input.a, ~(-1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3[_wgslsmith_index_u32(691u, 3u)], var_0.x, -327f, -433f))) - _wgslsmith_f_op_vec4_f32(floor(global0.b.c))), ~0u, vec3<f32>(-1497f, global0.b.e.x, _wgslsmith_f_op_f32(global0.d + global3[_wgslsmith_index_u32(2800u, 3u)]))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -16277i), -vec2<i32>(8612i, global0.b.a))), 16473u), global0.b.e.x, select(select(global1.yx, vec2<bool>(global0.e, global1.x || global1.x), any(select(vec4<bool>(false, global0.e, false, global1.x), vec4<bool>(global0.e, global0.e, global0.e, true), vec4<bool>(global0.e, global1.x, global0.e, false)))), select(vec2<bool>(true, true), !global1.xy, all(!vec2<bool>(false, global0.e))), global1.x));
}

fn func_1() -> Struct_5 {
    let var_0 = u_input.a != _wgslsmith_clamp_i32(0i, u_input.a, global0.b.b);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~abs(reverseBits(860i)), global0.b, abs(u_input.b.x), _wgslsmith_f_op_f32(sign(1119f)), global0.e);
    let var_1 = func_1();
    var var_2 = func_1().b;
    var var_3 = var_1.b.a;
    global2 = array<vec2<f32>, 32>();
    var var_4 = Struct_5(var_1.b.a.ywx, var_1.b, global0.d, vec2<bool>(true, true));
    var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.b.c.c.x, _wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 3u)])))), _wgslsmith_f_op_f32(-var_4.b.c.e.x), select(~(~(~vec4<u32>(53418u, global0.c, var_2.e, var_2.b.x))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(27398u, var_2.b.x), abs(var_2.b.x)), 4294967295u, var_1.b.e, 1u), select(!var_4.b.a, select(func_2().b.a, vec4<bool>(false, global0.e, global0.e, false), var_3.x), vec4<bool>(true, true, var_0.e & var_3.x, true))), ~(~max(~vec4<i32>(u_input.a, var_0.a, var_4.b.c.b, var_2.d), vec4<i32>(var_2.d, global0.b.a, var_4.b.d, u_input.a))), vec3<i32>(i32(-1i) * -2147483647i, var_0.b.a, -9523i) | firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 17466i, u_input.a), -vec3<i32>(-14489i, u_input.a, u_input.a))));
}

