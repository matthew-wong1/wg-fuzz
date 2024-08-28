struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(2292f, -555f), vec2<f32>(-1278f, 568f), vec2<f32>(429f, -616f), vec2<f32>(918f, 1175f), vec2<f32>(353f, -2139f), vec2<f32>(-908f, -315f), vec2<f32>(-1000f, -906f), vec2<f32>(1000f, 422f), vec2<f32>(439f, -1212f), vec2<f32>(1390f, 1667f), vec2<f32>(-1000f, -1533f), vec2<f32>(-1547f, 888f), vec2<f32>(1050f, 2162f), vec2<f32>(1000f, -1167f));

var<private> global1: f32;

var<private> global2: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec3<f32> {
    let var_0 = -1000f;
    var var_1 = countOneBits(31764u) >> (firstLeadingBit(select(min(arg_2.x, ~4294967295u), 16436u, false)) % 32u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(abs(arg_3.x)) > 517f)) * global2.b.a.x));
    let var_2 = Struct_1(u_input.a.yzx, u_input.a.x, _wgslsmith_clamp_vec2_u32(~(~select(global2.c.c, arg_2, vec2<bool>(true, true))), ~vec2<u32>(arg_0, 2082u), ~arg_2), min(u_input.a, _wgslsmith_sub_vec4_i32(select(global2.c.d, u_input.a, vec4<bool>(true, true, global2.b.c.x, global2.b.c.x)), -global2.b.b.d)) | ~(vec4<i32>(59866i, u_input.a.x, -25842i, arg_1.x) | abs(u_input.a)));
    var var_3 = var_2.d;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * arg_3.x)), var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.b.a + arg_3)) - _wgslsmith_f_op_vec3_f32(round(arg_3))), true)) - global2.b.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> f32 {
    global0 = array<vec2<f32>, 14>();
    global2 = Struct_3(u_input.a.wx, global2.b, global2.b.b);
    var var_0 = Struct_3(-vec2<i32>(-_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(1i, -49055i, 2147483647i, -49840i)), global2.b.b.b), Struct_2(_wgslsmith_f_op_vec3_f32(func_3(35312u, vec2<i32>(_wgslsmith_mult_i32(arg_0.x, -24941i), ~2147483647i), vec2<u32>(max(61896u, global2.b.b.c.x), global2.c.c.x ^ global2.b.b.c.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-685f, global2.b.a.x, global2.b.a.x))))), Struct_1((global2.b.b.d.zwx << (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u))) >> (~vec3<u32>(4294967295u, global2.c.c.x, 0u) % vec3<u32>(32u)), min(85i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_0.x, -1i, -1i), u_input.a)), global2.b.b.c, select(vec4<i32>(arg_0.x, 1i, u_input.a.x, 13895i) << (vec4<u32>(global2.c.c.x, 0u, 43286u, global2.b.b.c.x) % vec4<u32>(32u)), u_input.a, !vec4<bool>(false, true, arg_1, arg_1))), global2.b.c), Struct_1(~(max(vec3<i32>(u_input.a.x, 19230i, global2.a.x), vec3<i32>(global2.c.d.x, global2.a.x, arg_0.x)) << ((vec3<u32>(global2.b.b.c.x, global2.c.c.x, 0u) >> (vec3<u32>(7987u, global2.c.c.x, 75573u) % vec3<u32>(32u))) % vec3<u32>(32u))), -30186i, global2.b.b.c, _wgslsmith_add_vec4_i32(firstTrailingBit(~u_input.a), ~vec4<i32>(arg_0.x, -29679i, 2147483647i, -1i) << (~vec4<u32>(global2.c.c.x, global2.c.c.x, 24432u, 47797u) % vec4<u32>(32u)))));
    let var_1 = var_0.b;
    var var_2 = ~(-((firstTrailingBit(global2.b.b.d.wwy) << ((vec3<u32>(0u, global2.b.b.c.x, var_0.c.c.x) & vec3<u32>(4826u, 29205u, global2.b.b.c.x)) % vec3<u32>(32u))) & var_0.b.b.d.ywz));
    return _wgslsmith_div_f32(var_1.a.x, -1404f);
}

fn func_1() -> Struct_3 {
    var var_0 = (u_input.a.x < -50857i) != global2.b.c.x;
    var var_1 = global2.b.c.x;
    var_0 = global2.b.c.x;
    let var_2 = vec2<f32>(899f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global2.b.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -922f)))));
    var var_3 = _wgslsmith_f_op_f32(func_2(-countOneBits(vec3<i32>(max(12995i, u_input.a.x), u_input.a.x, global2.c.a.x)), true));
    return Struct_3(global2.c.a.xz, global2.b, global2.b.b);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec4<f32>) -> Struct_2 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-181f, _wgslsmith_f_op_f32(func_2(vec3<i32>(1i, arg_1.x, global2.c.b) & (vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.b.b.b) << (vec3<u32>(arg_0.c.c.x, global2.c.c.x, global2.b.b.c.x) % vec3<u32>(32u))), !(arg_0.b.b.d.x < u_input.a.x))), !any(vec3<bool>(true, false, global2.b.c.x)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, arg_0.b.a.x, arg_0.b.c.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1150f * 337f)))))));
    let var_0 = _wgslsmith_add_u32(~(~(arg_0.b.b.c.x & 1u)), ~(~countOneBits(_wgslsmith_sub_u32(1u, arg_0.c.c.x))));
    global0 = array<vec2<f32>, 14>();
    let var_1 = global2.b.c.yy;
    var var_2 = func_1().c;
    return arg_0.b;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_3 {
    global0 = array<vec2<f32>, 14>();
    let var_0 = arg_1.c.x;
    let var_1 = arg_2.x;
    let var_2 = vec3<f32>(arg_2.x, -289f, global2.b.a.x);
    let var_3 = -_wgslsmith_sub_i32(-2147483647i, func_1().c.b);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b.a.x), global2.b.a.x, !global2.b.c.x))));
    let var_0 = func_5(_wgslsmith_div_vec4_u32(~(vec4<u32>(global2.b.b.c.x, 0u, global2.c.c.x, global2.b.b.c.x) | ~vec4<u32>(global2.b.b.c.x, global2.b.b.c.x, global2.c.c.x, 36299u)), ~abs(vec4<u32>(global2.b.b.c.x, global2.c.c.x, 17186u, 0u)) ^ (vec4<u32>(global2.c.c.x, global2.c.c.x, 0u, global2.c.c.x) & vec4<u32>(1u, 48368u, global2.c.c.x, global2.c.c.x))), func_4(func_1(), vec3<i32>(~(-u_input.a.x), abs(-36574i), 17480i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b.a.x, global2.b.a.x, 367f, -341f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.a.x, global2.b.a.x, global2.b.a.x, -748f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.a.x, -789f, -699f, global2.b.a.x) + vec4<f32>(320f, global2.b.a.x, global2.b.a.x, -610f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.a.x, global2.b.a.x, global2.b.a.x, global2.b.a.x)))));
    let var_1 = var_0.b.a.x;
    global2 = func_5(~(~min(~vec4<u32>(0u, 38557u, global2.c.c.x, global2.c.c.x), select(vec4<u32>(global2.c.c.x, var_0.c.c.x, var_0.b.b.c.x, global2.b.b.c.x), vec4<u32>(4294967295u, global2.b.b.c.x, global2.b.b.c.x, var_0.b.b.c.x), vec4<bool>(global2.b.c.x, false, var_0.b.c.x, var_0.b.c.x)))), global2.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -106f, var_1, 1546f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1353f, -405f, -195f, -1067f), vec4<f32>(-1216f, global2.b.a.x, 262f, 455f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1397f, 755f, global2.b.a.x, -346f))))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.b.a.x, var_0.b.a.x, -544f, 1000f), vec4<f32>(-1032f, global2.b.a.x, var_0.b.a.x, var_1), vec4<bool>(true, global2.b.c.x, true, true))))))) + vec4<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.b.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -235f), -1523f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1763f, var_1, var_1, -170f), vec4<f32>(911f, var_0.b.a.x, var_1, var_1))))), _wgslsmith_f_op_vec3_f32(sign(global2.b.a)), ~(~reverseBits(vec4<u32>(var_0.c.c.x, var_0.c.c.x, var_0.b.b.c.x, 0u) << (vec4<u32>(47931u, global2.b.b.c.x, global2.c.c.x, 7445u) % vec4<u32>(32u)))));
}

