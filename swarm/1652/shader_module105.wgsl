struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec3<bool>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<bool>(true, false), Struct_1(vec4<u32>(4294967295u, 5582u, 0u, 0u)), Struct_1(vec4<u32>(4294967295u, 45754u, 80537u, 33541u)), Struct_2(Struct_1(vec4<u32>(0u, 1u, 4294967295u, 49011u)), 1000f));

var<private> global1: array<Struct_5, 3> = array<Struct_5, 3>(Struct_5(true, Struct_4(vec2<bool>(true, true), Struct_1(vec4<u32>(2905u, 4118u, 1u, 0u)), Struct_1(vec4<u32>(9817u, 14986u, 1u, 1u)), Struct_2(Struct_1(vec4<u32>(34907u, 4294967295u, 16159u, 58247u)), 544f)), vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<u32>(32567u, 86037u, 4294967295u, 4294967295u)), 1626f), vec3<bool>(false, true, true)), Struct_5(false, Struct_4(vec2<bool>(false, false), Struct_1(vec4<u32>(31996u, 4294967295u, 0u, 58137u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 45003u, 53357u)), Struct_2(Struct_1(vec4<u32>(1u, 11791u, 17532u, 1u)), -2780f)), vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 16491u)), 1263f), vec3<bool>(false, true, false)), Struct_5(false, Struct_4(vec2<bool>(false, false), Struct_1(vec4<u32>(4294967295u, 24605u, 41107u, 1u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 31520u, 1u)), Struct_2(Struct_1(vec4<u32>(1u, 58688u, 14396u, 22995u)), 799f)), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<u32>(15570u, 33486u, 4294967295u, 92283u)), 1157f), vec3<bool>(false, false, false)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec3<bool> {
    global0 = Struct_4(vec2<bool>(-u_input.d < _wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, u_input.d), u_input.c.yx)), !global0.a.x), Struct_1(vec4<u32>(52937u << (~4294967295u % 32u), ~_wgslsmith_clamp_u32(1u, 44993u, 4294967295u), global0.d.a.a.x, firstTrailingBit(0u & global0.c.a.x))), global0.c, Struct_2(global0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.b * 212f) - _wgslsmith_f_op_f32(-global0.d.b)))));
    global1 = array<Struct_5, 3>();
    let var_0 = Struct_3(-1i, _wgslsmith_mult_vec2_u32(u_input.a.xy, ~global0.c.a.zx), Struct_2(global0.b, _wgslsmith_f_op_f32(ceil(-1658f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.b)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -358f), 1055f)))));
    let var_1 = vec4<bool>(all(!(!vec4<bool>(false, true, true, global0.a.x))), !global0.a.x, true, false);
    global0 = Struct_4(global0.a, Struct_1(~(~vec4<u32>(global0.c.a.x, global0.b.a.x, 0u, u_input.e) ^ abs(var_0.c.a.a))), global0.b, Struct_2(Struct_1(vec4<u32>(1u, u_input.e, global0.b.a.x, var_0.c.a.a.x) | ~vec4<u32>(3414u, 20111u, global0.b.a.x, 99402u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(930f, _wgslsmith_f_op_f32(-var_0.c.b))))));
    return var_1.xzz;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(global0.a, global0.c, global0.d.a, Struct_2(global0.c, _wgslsmith_div_f32(global0.d.b, _wgslsmith_f_op_f32(f32(-1f) * -260f))));
    let var_1 = 29389u;
    let var_2 = _wgslsmith_add_u32(~(~_wgslsmith_clamp_u32(var_1, _wgslsmith_clamp_u32(78369u, u_input.a.x, 0u), 88449u & global0.b.a.x)), ~_wgslsmith_mod_u32(59209u, 1u) & global0.c.a.x);
    let var_3 = Struct_5(!(global0.a.x || (var_0.a.x || var_0.a.x)), var_0, !func_3(), var_0.d, vec3<bool>(_wgslsmith_add_u32(countOneBits(23952u), abs(u_input.a.x)) > max(0u, 1u), !(global0.a.x | (-1i >= u_input.b.x)), func_3().x));
    var var_4 = var_0.d;
    return var_3.b.c;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> Struct_1 {
    global0 = Struct_4(select(global0.a, global0.a, global0.a.x), Struct_1(firstTrailingBit(~(vec4<u32>(u_input.a.x, 12604u, 3455u, arg_2.x) << (vec4<u32>(1u, 0u, global0.b.a.x, arg_2.x) % vec4<u32>(32u))))), global0.c, global0.d);
    let var_0 = _wgslsmith_div_f32(global0.d.b, 223f);
    var var_1 = global0.a.x;
    var var_2 = abs(select(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~arg_1.x, 131787u, reverseBits(arg_2.x)), _wgslsmith_div_u32(~arg_1.x, select(21695u, arg_2.x, false))), _wgslsmith_mod_u32(arg_1.x, 17590u), true));
    global0 = Struct_4(vec2<bool>((_wgslsmith_f_op_f32(-global0.d.b) <= _wgslsmith_f_op_f32(-377f * -720f)) != global0.a.x, true), func_2(), global0.d.a, Struct_2(global0.b, global0.d.b));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec3<i32>) -> f32 {
    global1 = array<Struct_5, 3>();
    var var_0 = Struct_4(select(!vec2<bool>(arg_2.x, false), select(global0.a, global0.a, global0.a.x), false), func_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, u_input.d), u_input.b.x | -32559i, _wgslsmith_div_i32(13821i, 29715i)), 1i), _wgslsmith_mod_vec2_u32(global0.d.a.a.ww, ~vec2<u32>(0u, 0u)), ~_wgslsmith_div_vec4_u32(global0.c.a, vec4<u32>(arg_1.a.x, 26556u, global0.d.a.a.x, 4294967295u))), func_1(firstTrailingBit(1i) ^ -12593i, select(~u_input.a.yz, reverseBits(select(arg_0.a.xw, vec2<u32>(arg_0.a.x, u_input.a.x), true)), arg_2.yy), _wgslsmith_add_vec4_u32(vec4<u32>(~global0.b.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, 40495u), vec4<u32>(0u, u_input.a.x, 0u, 4294967295u)), _wgslsmith_mult_u32(1u, u_input.e), _wgslsmith_clamp_u32(u_input.e, 36129u, arg_0.a.x)), _wgslsmith_mult_vec4_u32(~arg_0.a, func_1(-35852i, vec2<u32>(4294967295u, arg_1.a.x), vec4<u32>(0u, u_input.e, 53987u, 55191u)).a))), Struct_2(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1119f)));
    let var_1 = arg_1.a;
    var var_2 = 1652f;
    let var_3 = reverseBits(var_1);
    return var_0.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -33604i;
    let var_1 = !global0.a.x;
    let var_2 = _wgslsmith_f_op_f32(func_4(func_1(u_input.c.x, abs(~vec2<u32>(4294967295u, 4294967295u)), ~countOneBits(~vec4<u32>(u_input.e, global0.d.a.a.x, 0u, 1442u))), func_1(max(u_input.c.x, -(i32(-1i) * -1i)), global0.c.a.wx >> (u_input.a.wz % vec2<u32>(32u)), _wgslsmith_div_vec4_u32(abs(u_input.a), reverseBits(~global0.d.a.a))), !select(vec4<bool>(any(vec4<bool>(true, global0.a.x, global0.a.x, var_1)), all(global0.a), true, global0.d.b < global0.d.b), !(!vec4<bool>(false, var_1, true, var_1)), true), _wgslsmith_mod_vec3_i32(select(~u_input.c.ywx, -u_input.b.wxx, !vec3<bool>(var_1, false, var_1)), _wgslsmith_mult_vec3_i32(u_input.c.yzz, vec3<i32>(u_input.c.x, u_input.d, -1i)) << (u_input.a.zzy % vec3<u32>(32u))) | min(vec3<i32>(~u_input.c.x, firstTrailingBit(u_input.c.x), u_input.b.x), u_input.b.wwy)));
    var var_3 = 1702f;
    var var_4 = func_2();
    var var_5 = abs(vec4<i32>(u_input.b.x, i32(-1i) * -countOneBits(-35234i), firstTrailingBit(_wgslsmith_div_i32(2147483647i, -5372i)), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, var_2, 415f), vec3<f32>(global0.d.b, global0.d.b, global0.d.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.b, global0.d.b, var_2))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.b, global0.d.b, global0.d.b)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.b, -690f, global0.d.b))), vec3<f32>(_wgslsmith_f_op_f32(var_2 + 1376f), 240f, _wgslsmith_f_op_f32(f32(-1f) * -530f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2, -1292f))), ~u_input.b.x, vec2<u32>(firstLeadingBit(firstTrailingBit(1u)), _wgslsmith_dot_vec4_u32(select(u_input.a, var_4.a, vec4<bool>(false, false, true, global0.a.x)), ~vec4<u32>(global0.c.a.x, var_4.a.x, global0.d.a.a.x, u_input.a.x))) ^ var_4.a.zx);
}

