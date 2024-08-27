struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 855f;

var<private> global2: vec3<i32>;

var<private> global3: array<vec2<u32>, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = !arg_0.c.a.d;
    return -2147483647i;
}

fn func_2(arg_0: bool, arg_1: Struct_5, arg_2: u32, arg_3: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -782f);
    var var_1 = u_input.b.wyw;
    var var_2 = i32(-1i) * -2147483647i;
    let var_3 = vec3<bool>(all(!select(arg_1.c.b.a, arg_1.c.b.a, select(vec4<bool>(arg_1.c.b.a.x, false, false, true), vec4<bool>(arg_1.c.a.d, arg_0, true, arg_1.a.x), arg_1.c.b.a))), false, arg_1.a.x);
    let var_4 = ~_wgslsmith_mod_i32(-arg_1.c.a.c, abs(1i) & _wgslsmith_sub_i32(func_3(arg_1, vec3<bool>(var_3.x, false, var_3.x), global2.x, Struct_1(arg_1.c.b.a, vec3<f32>(1714f, var_0, arg_1.c.b.b.x))), select(22112i, -37836i, var_3.x)));
    return arg_1.c.b.a.wz;
}

fn func_1() -> Struct_4 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1334f)))) + -818f));
    let var_0 = all(!(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)))));
    global3 = array<vec2<u32>, 7>();
    let var_1 = select(vec3<bool>(true, false, any(!func_2(var_0, Struct_5(vec3<bool>(true, var_0, false), u_input.b.x, Struct_4(Struct_3(Struct_2(u_input.b.x), vec2<f32>(-1024f, 1179f), global2.x, var_0), Struct_1(vec4<bool>(false, var_0, false, false), vec3<f32>(436f, -335f, 1223f)), vec2<f32>(1268f, -466f), global2.yz)), u_input.b.x, vec4<i32>(global2.x, u_input.a, -2147483647i, 0i)))), select(vec3<bool>(!(1u < u_input.b.x), all(select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(false, var_0, true, false), false)), !var_0), select(select(!vec3<bool>(true, var_0, false), select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, false, var_0)), !vec3<bool>(false, var_0, var_0)), select(select(vec3<bool>(var_0, false, false), vec3<bool>(true, false, var_0), vec3<bool>(var_0, var_0, var_0)), vec3<bool>(true, true, true), vec3<bool>(var_0, true, false)), vec3<bool>(any(vec2<bool>(var_0, var_0)), false, true)), ~(~u_input.c) != (abs(global2.x) & func_3(Struct_5(vec3<bool>(var_0, var_0, false), 1u, Struct_4(Struct_3(Struct_2(u_input.b.x), vec2<f32>(-364f, 1237f), global2.x, true), Struct_1(vec4<bool>(true, false, true, var_0), vec3<f32>(2117f, 1144f, 239f)), vec2<f32>(320f, -653f), global2.yx)), vec3<bool>(var_0, var_0, true), global2.x, Struct_1(vec4<bool>(true, var_0, var_0, var_0), vec3<f32>(-2186f, -190f, 633f))))), vec3<bool>(!all(vec2<bool>(false, var_0)), false, !all(select(vec3<bool>(true, true, true), vec3<bool>(var_0, var_0, true), var_0))));
    var var_2 = ~_wgslsmith_mod_i32(u_input.c, ~_wgslsmith_mult_i32(-26631i, countOneBits(-2147483647i)));
    return Struct_4(Struct_3(Struct_2(_wgslsmith_mod_u32(reverseBits(u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 71527u))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1146f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-144f, -1000f), vec2<f32>(2147f, -1226f)))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1191f, 2139f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -580f), vec2<f32>(1394f, -1832f))), !vec2<bool>(true, var_1.x)))), abs(-(i32(-1i) * -20391i)), ~u_input.b.x < ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x)), Struct_1(!(!vec4<bool>(var_0, true, var_0, false)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-510f + -770f) + _wgslsmith_f_op_f32(f32(-1f) * -253f)), _wgslsmith_div_f32(-797f, _wgslsmith_f_op_f32(step(345f, -1807f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-402f + -2066f), 1f)), vec2<i32>(~(-2827i), ~abs(0i)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(arg_0.a.a, _wgslsmith_f_op_vec2_f32(arg_3.b.yx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.c.x, arg_3.b.x), arg_3.b.yz)))), -1i, true), arg_3, arg_0.a.b, arg_0.d << (u_input.b.xw % vec2<u32>(32u)));
    global0 = abs(u_input.a);
    let var_1 = 62338u;
    var_0 = func_1();
    global2 = vec3<i32>(firstTrailingBit(abs(~arg_0.a.c) ^ var_0.d.x), _wgslsmith_dot_vec3_i32(select(_wgslsmith_add_vec3_i32(vec3<i32>(75216i, u_input.a, var_0.a.c), vec3<i32>(2147483647i, 58617i, u_input.a)), vec3<i32>(1i, 1i, -2147483647i) & vec3<i32>(13448i, -34705i, u_input.c), arg_0.b.a.zyz), ~vec3<i32>(u_input.c, var_0.a.c, u_input.a)) >> (var_1 % 32u), 37421i);
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 7>();
    var var_0 = ~abs(max(u_input.b.x ^ (u_input.b.x >> (u_input.b.x % 32u)), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)));
    var var_1 = reverseBits(global2.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -883f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f) * _wgslsmith_f_op_f32(max(-1426f, -187f))), true)))));
    global2 = abs(-vec3<i32>(~abs(u_input.c), _wgslsmith_div_i32(u_input.c, i32(-1i) * -2147483647i), global2.x));
    let var_2 = Struct_4(Struct_3(Struct_2(~1u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-865f, 1000f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(979f, -579f), vec2<f32>(481f, -1000f))), vec2<bool>(true, false))))), select(abs(0i), select(u_input.c, u_input.a, true), -1i != global2.x) << (u_input.b.x % 32u), true), func_4(func_1(), func_1().a.a, _wgslsmith_mult_u32(select(25202u, 39763u, false), ~u_input.b.x) == min(u_input.b.x, ~0u), func_1().b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(step(-186f, func_1().c.x)))), -_wgslsmith_mult_vec2_i32(vec2<i32>(-2939i, -global2.x), -global2.xz));
    let var_3 = var_2;
    var var_4 = Struct_5(vec3<bool>(any(!var_3.b.a.zx), all(var_2.b.a.xyx), any(!vec2<bool>(var_3.b.a.x, true))), 1u, func_1());
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.c, _wgslsmith_div_vec3_u32(firstLeadingBit(u_input.b.yyy), ~(~vec3<u32>(1u, var_4.b, u_input.b.x))) ^ vec3<u32>(0u, var_2.a.a.a, ~var_4.b >> (4294967295u % 32u)), var_3.c.x, u_input.b.x, select(firstTrailingBit(global3[_wgslsmith_index_u32(~var_2.a.a.a, 7u)]), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 1u), ~(~vec2<u32>(12487u, 5013u))), select(!var_4.a.zx, func_4(func_1(), func_1().a.a, func_2(var_3.a.d, Struct_5(vec3<bool>(true, var_3.b.a.x, true), 0u, var_2), 0u, vec4<i32>(global2.x, global2.x, -4509i, -7457i)).x, var_4.c.b).a.zy, vec2<bool>(true, true))));
}

