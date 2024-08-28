struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-802f, 1986f, -1564f, -1000f, -299f, -303f, -1762f, 1000f, 1049f, 1427f, 858f, -418f, 210f, 407f, -447f, -228f, 1000f, 1324f);

var<private> global1: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(635f, vec4<u32>(60836u, 4294967295u, 7028u, 29841u)), Struct_4(2699f, vec4<u32>(4154u, 1u, 35250u, 54716u)), Struct_4(-1053f, vec4<u32>(4294967295u, 4294967295u, 1u, 77731u)), Struct_4(410f, vec4<u32>(11166u, 775u, 75019u, 31342u)), Struct_4(-1043f, vec4<u32>(1u, 0u, 0u, 0u)), Struct_4(1260f, vec4<u32>(0u, 28076u, 0u, 4294967295u)), Struct_4(-171f, vec4<u32>(48798u, 17850u, 28004u, 0u)), Struct_4(738f, vec4<u32>(0u, 1u, 59402u, 0u)), Struct_4(-1271f, vec4<u32>(1u, 4294967295u, 90544u, 0u)), Struct_4(-1367f, vec4<u32>(36121u, 4294967295u, 64166u, 10012u)), Struct_4(582f, vec4<u32>(9201u, 8571u, 4294967295u, 0u)), Struct_4(-1006f, vec4<u32>(4294967295u, 0u, 5325u, 20992u)), Struct_4(2468f, vec4<u32>(4294967295u, 1u, 23184u, 1u)), Struct_4(167f, vec4<u32>(1u, 49836u, 0u, 61248u)));

var<private> global2: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b.b.d));
    var_0 = global2.b.b.c.xzz;
    let var_1 = -383f;
    global1 = array<Struct_4, 14>();
    global0 = array<f32, 18>();
    return true;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> i32 {
    return -_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(global2.e.xz, vec2<i32>(u_input.c.x, arg_0), vec2<i32>(-13547i, -7554i)) << (u_input.d % vec2<u32>(32u)), -abs(global2.e.yy));
}

fn func_2() -> Struct_1 {
    global0 = array<f32, 18>();
    var var_0 = vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x ^ u_input.c.x, _wgslsmith_div_i32(global2.b.d, global2.d.x)), u_input.c.yz), min(_wgslsmith_dot_vec2_i32(~global2.e.yy | select(vec2<i32>(-41912i, u_input.c.x), u_input.c.zz, global2.a), vec2<i32>(global2.d.x, 8704i)), 2147483647i), ~(~abs(74764i)));
    global0 = array<f32, 18>();
    global0 = array<f32, 18>();
    var var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, func_4(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 13268i, 19969i), vec3<i32>(global2.e.x, u_input.c.x, -1i)), Struct_1(~19283u, func_3(vec4<bool>(false, global2.b.e.x, true, true), vec2<i32>(24999i, global2.d.x), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], -156f), false), global2.b.b.c, vec3<f32>(823f, global0[_wgslsmith_index_u32(1u, 18u)], 721f)), _wgslsmith_f_op_f32(-1413f * global2.b.b.d.x))), _wgslsmith_mod_vec2_i32(var_0.yx, _wgslsmith_mod_vec2_i32(global2.d.xz, select(-global2.e.xz, _wgslsmith_clamp_vec2_i32(global2.d.yz, vec2<i32>(global2.e.x, 44508i), global2.d.zx), global2.b.e.wy))));
    return Struct_1(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(global2.b.a.yzx, u_input.a.zxx)), global2.b.c, global2.b.b.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global2.b.b.c.x), global2.b.b.d.x, _wgslsmith_f_op_f32(-383f + 555f))), global2.b.b.d));
}

fn func_1(arg_0: bool) -> Struct_3 {
    global1 = array<Struct_4, 14>();
    var var_0 = u_input.d.x;
    var_0 = ~abs(u_input.e) ^ 2872u;
    global2 = Struct_3(vec2<bool>(arg_0, true), Struct_2(_wgslsmith_sub_vec4_u32(~global2.b.a, u_input.a), func_2(), global2.b.b.a > (u_input.a.x ^ u_input.b.x), -1i, !global2.b.e), global2.c || (false || arg_0), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.d.x | global2.d.x, global2.d.x, _wgslsmith_mult_i32(u_input.c.x, 37920i)), vec3<i32>(global2.e.x, 2147483647i, global2.d.x), select(-u_input.c, countOneBits(u_input.c), select(vec3<bool>(global2.a.x, true, false), global2.b.e.zxz, global2.b.e.xxz)))), vec3<i32>(~7574i, min(_wgslsmith_clamp_i32(u_input.c.x, 0i, u_input.c.x), ~u_input.c.x), u_input.c.x) << (select(u_input.a.ywz, abs(u_input.a.yyz), select(select(global2.b.e.yyx, vec3<bool>(arg_0, global2.c, arg_0), false), !vec3<bool>(false, arg_0, global2.a.x), global2.b.e.zzw)) % vec3<u32>(32u)));
    global1 = array<Struct_4, 14>();
    return Struct_3(vec2<bool>(global2.c, !(!global2.b.c)), global2.b, global2.d.x >= ~_wgslsmith_dot_vec4_i32(-vec4<i32>(22881i, global2.b.d, -20952i, u_input.c.x), firstTrailingBit(vec4<i32>(-1731i, u_input.c.x, global2.b.d, -1i))), -vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, global2.d.x, -1i, u_input.c.x), vec4<i32>(-1i, global2.d.x, u_input.c.x, global2.e.x)), u_input.c.x, -17729i), abs(global2.d));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool) -> Struct_4 {
    let var_0 = false;
    var var_1 = Struct_2(~(~u_input.a), func_2(), var_0, 49502i, vec4<bool>(true, !global2.a.x, true, arg_1.c));
    var_1 = func_1(!any(!(!var_1.e))).b;
    global0 = array<f32, 18>();
    var var_2 = _wgslsmith_sub_vec3_i32(arg_0.e ^ vec3<i32>(arg_0.d.x, _wgslsmith_div_i32(-6563i, 18704i), ~(arg_1.d & 2847i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(min(arg_1.d, u_input.c.x), global2.e.x, ~arg_0.b.d), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, -64135i, -23934i) & vec3<i32>(var_1.d, 13655i, global2.e.x), arg_0.e & vec3<i32>(var_1.d, 39102i, 12134i), reverseBits(vec3<i32>(0i, -51655i, global2.b.d))))));
    return Struct_4(arg_1.b.c.x, global2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec4<bool>(true, 4294967295u > global2.b.a.x, true, global2.b.e.x)), vec4<bool>(!global2.b.c, global2.b.b.b, global2.c, !(false != !global2.c)), global2.b.e);
    var var_1 = func_5(func_1(var_0.x), global2.b, all(select(vec4<bool>(true, global2.c, true, true), var_0, !var_0.x)));
    global0 = array<f32, 18>();
    let var_2 = 10924u;
    var var_3 = firstLeadingBit(-(~(-u_input.c.x))) << (firstLeadingBit(var_2) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(abs(global2.b.a.xyy)), 19433u, max(~vec2<u32>(var_2, ~65432u), reverseBits(~_wgslsmith_mod_vec2_u32(global2.b.a.wx, global2.b.a.yx))), u_input.a.xzx);
}

