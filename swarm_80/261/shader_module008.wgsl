struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-265f, -347f, 3621f, -2437f);

var<private> global1: Struct_4 = Struct_4(382f, Struct_1(-344f, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<i32>(2147483647i, 0i, i32(-2147483648), -1i));

var<private> global2: array<u32, 28> = array<u32, 28>(67617u, 1080u, 1u, 75064u, 70854u, 36718u, 0u, 1u, 1u, 3159u, 15351u, 73333u, 1u, 4294967295u, 4294967295u, 0u, 48616u, 87455u, 12729u, 3529u, 1u, 0u, 19516u, 45686u, 1331u, 38467u, 1u, 1u);

var<private> global3: Struct_3 = Struct_3(Struct_2(-959f, 626f), Struct_1(-487f, true), -40188i, vec3<i32>(i32(-2147483648), i32(-2147483648), 1i));

var<private> global4: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(486f, 1279f, -1713f, -868f), vec4<f32>(-740f, 1000f, 572f, -1744f), vec4<f32>(-567f, 719f, 172f, -1042f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_3) -> f32 {
    let var_0 = 2380u;
    var var_1 = _wgslsmith_mod_vec4_i32(global1.e, vec4<i32>(_wgslsmith_mult_i32(~(u_input.c.x >> (global2[_wgslsmith_index_u32(74730u, 28u)] % 32u)), reverseBits(2147483647i)), -32793i, -global3.d.x << (~var_0 % 32u), abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(-7946i, global3.c), 22195i))));
    return -111f;
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-556f, arg_0.b));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-global1.a), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(round(240f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * global1.a)), (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 0u), 28u)], 28u)] == ~0u) || global1.d.x), vec4<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1494f * global1.b.a))) <= 838f, true, global3.b.b, global1.d.x), select(vec4<bool>(false, !global3.b.b && global3.b.b, any(!vec3<bool>(global1.c.x, true, true)), true), vec4<bool>(any(select(vec2<bool>(true, global3.b.b), vec2<bool>(global3.b.b, false), global1.d.xw)), global1.d.x, all(global1.d.ywy), select(true, true, global1.c.x)), all(!(!vec3<bool>(global3.b.b, global3.b.b, false)))), vec4<i32>(37538i, global3.d.x, ~_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-2147483647i, global3.d.x), 26596i, -54902i), _wgslsmith_clamp_i32(global3.c << (_wgslsmith_div_u32(global2[_wgslsmith_index_u32(464u, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19287u, 28u)], 28u)]) % 32u), _wgslsmith_div_i32(39795i, global1.e.x), ~(~(-52370i)))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global0.x, -1224f))))), var_1.b, select(var_1.d, !global1.c, var_1.c.x), select(global1.d, var_1.c, true), max(vec4<i32>(12554i, _wgslsmith_sub_i32(-u_input.c.x, 1i), firstLeadingBit(var_1.e.x) | ~(-1i), var_1.e.x), global1.e >> (_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(u_input.b, global2[_wgslsmith_index_u32(73860u, 28u)], u_input.b, 30069u)), vec4<u32>(37060u, 1u, u_input.a, u_input.b), ~vec4<u32>(56201u, global2[_wgslsmith_index_u32(u_input.b, 28u)], 14220u, 0u)) % vec4<u32>(32u))));
    global4 = array<vec4<f32>, 3>();
    return abs(vec4<i32>(abs(var_2.e.x ^ 0i) & reverseBits(~27342i), -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_2.e.x) ^ var_2.e.xz, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_2.e.x), vec2<i32>(2147483647i, global3.d.x))), reverseBits(~28478i ^ _wgslsmith_add_i32(u_input.c.x, u_input.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.c.x), -36238i, firstTrailingBit(-55949i), 43709i), vec4<i32>(u_input.c.x & var_2.e.x, min(global3.c, global1.e.x), -28244i, 1i))));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_4(global3.a.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-435f, global0.x)) + _wgslsmith_f_op_f32(843f - global3.b.a))), global3.b.b), global1.c, !(!vec4<bool>(arg_0, true, true, true)), func_3(global3.a, 1090f));
    var var_1 = global0.wyx;
    var_0 = Struct_4(_wgslsmith_f_op_f32(243f - -600f), global3.b, vec4<bool>(true, global3.b.b, false && any(!vec2<bool>(var_0.d.x, var_0.c.x)), any(vec3<bool>(global1.d.x, global1.c.x, true))), vec4<bool>(false, var_0.b.b, true, global1.c.x), var_0.e);
    var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1602f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.a)))), var_0.b, var_0.c, vec4<bool>(global1.e.x != (i32(-1i) * -u_input.c.x), true, any(var_0.c.zz), false), global1.e);
    var var_2 = all(select(!vec4<bool>(arg_0, arg_0, true, var_0.c.x), vec4<bool>(any(!var_0.c), select(arg_0 || arg_0, global1.c.x, true), global1.b.b, arg_0 & true), !(!select(var_0.c, vec4<bool>(global3.b.b, arg_0, global3.b.b, false), vec4<bool>(false, arg_0, true, global1.b.b)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_4) -> Struct_4 {
    global0 = global4[_wgslsmith_index_u32(u_input.b, 3u)];
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, -881f), _wgslsmith_f_op_f32(-186f - arg_1), all(select(!vec4<bool>(true, false, true, arg_2.c.x), vec4<bool>(arg_2.d.x, global1.d.x, true, true), !global1.c)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-645f * arg_0), -1000f));
    global3 = Struct_3(Struct_2(global3.a.b, arg_2.a), global3.b, abs(u_input.c.x), vec3<i32>(_wgslsmith_mod_i32(global1.e.x, _wgslsmith_sub_i32(-12946i, -global3.c)), (i32(-1i) * -global3.c) << (u_input.a % 32u), _wgslsmith_add_i32(global3.d.x, abs(arg_2.e.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(var_0)), true);
    var var_2 = min(vec4<i32>(~(-(~global3.d.x)), 1i, global1.e.x, -arg_2.e.x), max(arg_2.e, _wgslsmith_div_vec4_i32(global1.e & vec4<i32>(-1i, -9789i, 1i, u_input.c.x), abs(global1.e))));
    return Struct_4(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b.a)))), global3.b, vec4<bool>(true, any(vec3<bool>(all(vec4<bool>(global1.d.x, arg_2.b.b, global3.b.b, global3.b.b)), true, false)), all(global1.c.yww), global3.b.b), vec4<bool>(all(select(select(global1.c.yx, global1.c.xy, global1.d.yz), select(arg_2.d.xy, vec2<bool>(true, global3.b.b), arg_2.c.x), arg_2.d.x)), false, (!global1.d.x && any(arg_2.d)) || (21954u <= (global2[_wgslsmith_index_u32(u_input.a, 28u)] | u_input.a)), var_1.b), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, max(~28755i, abs(global1.e.x)), reverseBits(_wgslsmith_dot_vec2_i32(arg_2.e.xx, vec2<i32>(22277i, -2147483647i))), global1.e.x << (u_input.a % 32u)), abs(abs(vec4<i32>(global3.c, 2147483647i, -25753i, u_input.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(-393f, 1233f), Struct_1(_wgslsmith_div_f32(676f, -414f), global1.d.x), u_input.c.x, ~(-global3.d)))), _wgslsmith_f_op_f32(func_2(global1.b.b)), Struct_4(-271f, global3.b, select(global1.c, !vec4<bool>(true, global3.b.b, global3.b.b, global1.b.b), true), global1.d, firstTrailingBit(_wgslsmith_clamp_vec4_i32(global1.e, vec4<i32>(global3.d.x, -2147483647i, -38672i, global3.c), global1.e)) >> (~select(vec4<u32>(16323u, u_input.a, u_input.b, u_input.b), vec4<u32>(u_input.a, 84126u, u_input.a, u_input.b), false) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_dot_vec4_i32(global1.e, vec4<i32>(-22182i, ~_wgslsmith_sub_i32(-10294i, var_0.e.x) >> (_wgslsmith_add_u32(~4294967295u, 4294967295u & global2[_wgslsmith_index_u32(u_input.b, 28u)]) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(-9802i, 0i), _wgslsmith_div_vec2_i32(select(vec2<i32>(1i, -1i), global3.d.xx, vec2<bool>(global3.b.b, global3.b.b)), global1.e.zy)), global1.e.x));
    let var_2 = global1.e.zzy;
    global3 = Struct_3(global3.a, func_4(-860f, -486f, Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(171f)), -1258f), var_0.b, !vec4<bool>(false, true, var_0.b.b, var_0.d.x), global1.c, ~reverseBits(var_0.e))).b, u_input.c.x, func_4(_wgslsmith_f_op_f32(select(1000f, -548f, global3.b.b)), 262f, var_0).e.wxz << (abs(~reverseBits(vec3<u32>(u_input.b, u_input.a, 97098u))) % vec3<u32>(32u)));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + var_0.a) * _wgslsmith_f_op_f32(func_1(Struct_3(global3.a, Struct_1(global3.a.b, global3.b.b), -1i, vec3<i32>(var_2.x, var_0.e.x, -2147483647i))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2165f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), -546f)))), global3.b, 7393i, vec3<i32>(select(-global3.d.x, ~_wgslsmith_div_i32(global3.d.x, -24775i), any(func_4(global3.a.a, var_0.a, var_0).c.xww)), ~func_3(Struct_2(-331f, -1382f), _wgslsmith_div_f32(global0.x, 809f)).x, global3.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(global0.wx + _wgslsmith_f_op_vec2_f32(global0.xx - vec2<f32>(704f, 1836f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-383f, global3.b.a, var_3.b.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, var_0.b.a, 332f), global0.zxx, true)), select(func_4(global1.b.a, 1238f, Struct_4(var_0.b.a, global1.b, vec4<bool>(false, false, var_3.b.b, true), var_0.d, global1.e)).d.zzz, global1.d.xyz, var_0.d.wzy)))), global0.zww, ~(~4294967295u), var_2.xz);
}

