struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(-3695i, vec4<u32>(62493u, 4294967295u, 49464u, 4294967295u), 4979i);

var<private> global2: vec2<i32>;

var<private> global3: bool;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(124f * _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(f32(-1f) * -708f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    global0 = select(select(select(select(vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, true, true)), all(vec3<bool>(false, global0.x, global0.x))), select(!vec3<bool>(true, global0.x, global0.x), select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false)), !vec3<bool>(false, global0.x, global0.x)), all(vec3<bool>(false, global0.x, global0.x))), !select(select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, true, false), global0.x), !vec3<bool>(global0.x, true, global0.x), all(vec4<bool>(global0.x, global0.x, global0.x, true))), global0.x), !vec3<bool>(any(vec4<bool>(false, false, global0.x, global0.x)), global0.x, !(global2.x <= -1i)), any(global0.xy));
    var var_1 = 0u >> (global1.b.x % 32u);
    let var_2 = global1.b.x;
    global3 = global0.x;
    return _wgslsmith_f_op_f32(519f + arg_2.x);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec2<i32>(6721i, _wgslsmith_mult_i32(u_input.c.x, u_input.b)), global2.x, vec3<f32>(-1000f, _wgslsmith_f_op_f32(1064f + 537f), _wgslsmith_f_op_f32(step(-1028f, -250f))))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f - 1529f));
    global3 = !((global1.a & -1i) > 1i);
    var var_1 = Struct_1(~select(global1.a, -8672i, global0.x), vec4<u32>(global1.b.x, global1.b.x, global1.b.x, ~_wgslsmith_div_u32(~global1.b.x, countOneBits(global1.b.x))), abs(16511i));
    return Struct_2(true, vec3<u32>(min(abs(global1.b.x >> (4294967295u % 32u)), _wgslsmith_sub_u32(1969u, _wgslsmith_dot_vec3_u32(global1.b.xxx, vec3<u32>(8681u, 29058u, 22314u)))), ~32071u, (select(0u, 19338u, true) >> (var_1.b.x % 32u)) << (4294967295u % 32u)), vec3<i32>(-54179i, firstTrailingBit(-1i), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 0i), u_input.d.yw), u_input.c.yx), -1i)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    var var_0 = arg_3;
    var var_1 = (_wgslsmith_sub_vec2_i32(u_input.e, vec2<i32>(_wgslsmith_mod_i32(arg_0.c.x, 58552i), global2.x)) << (func_2().b.yz % vec2<u32>(32u))) ^ vec2<i32>(u_input.e.x, countOneBits(~arg_1.x) | (1i | arg_1.x));
    let var_2 = Struct_1(~abs(arg_0.c.x), arg_2.b, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-arg_2.a), -15789i), vec2<i32>(-(global2.x & -39841i), u_input.c.x)));
    var var_3 = var_2;
    var var_4 = -1025f;
    return func_2();
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = func_4(func_2(), u_input.c.yz, arg_1, _wgslsmith_f_op_f32(1f * -190f));
    var var_1 = 222f;
    var var_2 = func_4(Struct_2(true, func_4(Struct_2(all(vec3<bool>(true, var_0.a, false)), vec3<u32>(arg_2, arg_0, global1.b.x), vec3<i32>(31423i, global1.c, -2147483647i)), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(38312i, 3804i)) << (vec2<u32>(arg_1.b.x, 4294967295u) % vec2<u32>(32u)), arg_1, -158f).b, _wgslsmith_mult_vec3_i32(u_input.c, min(~var_0.c, abs(u_input.c)))), vec2<i32>(func_2().c.x, global1.c) & _wgslsmith_mod_vec2_i32(-u_input.e & u_input.e, vec2<i32>(1i, abs(u_input.d.x))), arg_1, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1355f))))));
    let var_3 = select(vec2<bool>(true, !var_2.a), global0.xy, !(!var_0.a));
    var var_4 = 1f;
    return any(!(!select(select(var_3, vec2<bool>(false, global0.x), vec2<bool>(true, var_0.a)), select(global0.zx, vec2<bool>(global0.x, false), true), select(true, false, true))));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global3 = true;
    global2 = max(vec2<i32>(1i, _wgslsmith_mult_i32(-33886i, global1.a)) & (_wgslsmith_mod_vec2_i32(u_input.c.xy, vec2<i32>(arg_2.a, -1i)) | u_input.e), _wgslsmith_mod_vec2_i32(-select(u_input.c.zz, vec2<i32>(786i, global2.x), global0.x), u_input.c.xx)) | vec2<i32>(arg_1.c.x, arg_1.c.x);
    var var_0 = !arg_1.a;
    let var_1 = vec4<u32>(4294967295u, ~(~_wgslsmith_div_u32(~global1.b.x, arg_0)), arg_0, arg_1.b.x);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(-1604f - _wgslsmith_f_op_f32(-867f - 1398f)), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1295f))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)), -1000f), 692f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -723f))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -654f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 5763u;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_5(1u, Struct_2(func_1(var_0, Struct_1(-1i, global1.b, global2.x), var_0), firstTrailingBit(global1.b.zxw), vec3<i32>(0i, global2.x, global2.x) | u_input.c), Struct_1(_wgslsmith_sub_i32(u_input.e.x, global1.a), global1.b & global1.b, max(global2.x, global2.x)))))), _wgslsmith_f_op_f32(func_5(abs(_wgslsmith_mod_u32(1303u, global1.b.x)) | 1u, Struct_2(false, _wgslsmith_div_vec3_u32(abs(global1.b.wzy), ~vec3<u32>(var_0, global1.b.x, 95076u)), vec3<i32>(-global2.x, u_input.d.x, global1.c)), Struct_1(18190i, ~(~global1.b), i32(-1i) * -global1.c))));
    let var_2 = _wgslsmith_mult_vec2_i32(~u_input.c.xz, func_2().c.yy);
    var var_3 = abs(vec2<i32>(_wgslsmith_mod_i32(firstTrailingBit(1i), -u_input.c.x), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2.x, abs(global1.a)), ~(~2147483647i), 1i)));
    var_3 = u_input.e;
    let var_4 = Struct_1(-3254i, _wgslsmith_add_vec4_u32(vec4<u32>(global1.b.x, var_0, 6338u, 4294967295u), vec4<u32>(~64848u, _wgslsmith_mult_u32(var_0 & 4294967295u, 94293u | var_0), global1.b.x, ~global1.b.x)), 18940i);
    var var_5 = !(!select(vec3<bool>(true, func_1(global1.b.x, Struct_1(u_input.e.x, vec4<u32>(var_4.b.x, global1.b.x, global1.b.x, var_4.b.x), 40444i), var_4.b.x), true), vec3<bool>(all(global0.yx), global0.x | global0.x, true), !(false || global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-u_input.d, u_input.d | vec4<i32>(var_2.x, 1i, -global2.x, ~58467i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_5(~4294967295u, Struct_2(var_5.x, var_4.b.ywx, u_input.c), Struct_1(0i, vec4<u32>(60248u, 48134u, var_4.b.x, var_0), -6766i))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1160f, -2309f, true)) * _wgslsmith_f_op_f32(select(var_1, var_1, true))))));
}

