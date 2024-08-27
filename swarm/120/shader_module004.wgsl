struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<i32>(i32(-2147483648), 0i, 25813i, -7513i), vec4<f32>(-1341f, -156f, 145f, -504f), vec4<u32>(0u, 6720u, 6276u, 4294967295u)), Struct_1(vec4<i32>(8702i, 0i, 2147483647i, 20044i), vec4<f32>(692f, 634f, -785f, 1000f), vec4<u32>(4335u, 1u, 111002u, 1u)), Struct_1(vec4<i32>(1i, 1i, -24075i, -1i), vec4<f32>(889f, 1136f, 751f, 1624f), vec4<u32>(4294967295u, 120778u, 0u, 1u)), Struct_1(vec4<i32>(11354i, 49483i, 0i, 2147483647i), vec4<f32>(144f, -1985f, -1627f, 1225f), vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), Struct_1(vec4<i32>(-39839i, 1i, 31120i, 1i), vec4<f32>(600f, 1010f, 436f, -1000f), vec4<u32>(11538u, 35546u, 32112u, 116769u)), Struct_1(vec4<i32>(-12998i, 4252i, -17260i, i32(-2147483648)), vec4<f32>(-130f, -1186f, -1000f, 305f), vec4<u32>(0u, 25320u, 26236u, 84404u)), Struct_1(vec4<i32>(0i, 1i, -54518i, 1i), vec4<f32>(1000f, 842f, 190f, 1386f), vec4<u32>(0u, 0u, 15875u, 0u)), Struct_1(vec4<i32>(0i, -34973i, 23604i, i32(-2147483648)), vec4<f32>(-679f, 581f, -1427f, 1000f), vec4<u32>(0u, 40100u, 19475u, 4294967295u)), Struct_1(vec4<i32>(-42161i, -1i, 29442i, i32(-2147483648)), vec4<f32>(-247f, -588f, 296f, -2564f), vec4<u32>(0u, 4294967295u, 4294967295u, 0u)), Struct_1(vec4<i32>(0i, 2147483647i, -16854i, 1i), vec4<f32>(270f, 418f, 240f, 490f), vec4<u32>(6305u, 13003u, 27306u, 30680u)), Struct_1(vec4<i32>(-16142i, 0i, 2147483647i, -11818i), vec4<f32>(-1163f, -641f, -1555f, -698f), vec4<u32>(1u, 77354u, 0u, 4757u)), Struct_1(vec4<i32>(-1i, 57431i, 0i, -16601i), vec4<f32>(-1181f, -411f, 329f, -939f), vec4<u32>(14127u, 0u, 1u, 44623u)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 0i), vec4<f32>(284f, 1000f, -1229f, -1315f), vec4<u32>(28368u, 93987u, 4294967295u, 0u)), Struct_1(vec4<i32>(-42399i, 53730i, 0i, 15993i), vec4<f32>(1000f, -563f, -265f, -1460f), vec4<u32>(0u, 4294967295u, 74809u, 23752u)), Struct_1(vec4<i32>(-1i, -39505i, 26949i, -13087i), vec4<f32>(-527f, 312f, -106f, -531f), vec4<u32>(14268u, 1u, 29727u, 1u)), Struct_1(vec4<i32>(2939i, -7362i, i32(-2147483648), i32(-2147483648)), vec4<f32>(213f, -1642f, 203f, -107f), vec4<u32>(0u, 95201u, 24669u, 37113u)), Struct_1(vec4<i32>(29264i, 0i, -34148i, -37174i), vec4<f32>(356f, 703f, 988f, -1051f), vec4<u32>(15155u, 0u, 1u, 1u)), Struct_1(vec4<i32>(27595i, -239i, 37641i, 1i), vec4<f32>(-434f, -1070f, -637f, 112f), vec4<u32>(7726u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<i32>(-80303i, -1i, 62i, 12118i), vec4<f32>(-888f, 1152f, 136f, -1830f), vec4<u32>(0u, 1u, 0u, 4294967295u)), Struct_1(vec4<i32>(1155i, 12563i, 7098i, -32297i), vec4<f32>(1233f, -354f, 316f, 132f), vec4<u32>(4294967295u, 4294967295u, 10799u, 70485u)), Struct_1(vec4<i32>(-13689i, 0i, 0i, 2147483647i), vec4<f32>(359f, 889f, -525f, 2707f), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(1i, 14704i, -30425i, -6916i), vec4<f32>(-207f, 469f, 841f, -1210f), vec4<u32>(4801u, 4294967295u, 4294967295u, 4294967295u));

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<i32>(19293i, -4083i, 1i, 20906i), vec4<f32>(185f, 105f, -1000f, -1000f), vec4<u32>(1u, 0u, 99820u, 1u)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec4<i32>(-1i, 0i, 1i, 33638i), vec4<f32>(-324f, 476f, -1000f, -997f), vec4<u32>(0u, 4294967295u, 47994u, 16760u)), vec2<i32>(40629i, -19140i), Struct_1(vec4<i32>(15556i, 0i, 2147483647i, 12659i), vec4<f32>(-193f, 1234f, 1678f, 1000f), vec4<u32>(1u, 25961u, 1u, 0u)), vec2<i32>(-1i, 12845i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.b.x))) - _wgslsmith_f_op_f32(-1000f * global2.a.b.x)), -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-470f, global1.b.x)), -287f)), _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.b.x) - _wgslsmith_f_op_f32(global1.b.x * global2.b.d.b.x)), all(!global2.b.a.yz)))));
    global0 = array<Struct_1, 21>();
    let var_1 = Struct_4(true, global2.b.a.x, global2.a.a);
    let var_2 = global2.b;
    var var_3 = select(_wgslsmith_dot_vec4_i32(~(var_2.b.a >> (global1.c % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(arg_0, abs(vec4<i32>(arg_0.x, -87536i, 2147483647i, -14024i)))) <= ~_wgslsmith_dot_vec3_i32(arg_0.wxz, _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, var_1.c.x), vec3<i32>(8882i, u_input.b.x, u_input.c.x))), true, global2.b.a.x || (7197u <= (~u_input.d.x ^ global2.a.c.x)));
    return global2.b.a;
}

fn func_2() -> Struct_1 {
    global2 = Struct_3(global2.a, Struct_2(select(!func_3(global2.b.b.a), !vec3<bool>(true, true, global2.b.a.x), false), Struct_1(global2.a.a, global1.b, firstLeadingBit(global2.a.c | vec4<u32>(49906u, global1.c.x, 1u, 36396u))), vec2<i32>(i32(-1i) * -2147483647i, 35406i >> (u_input.a.x % 32u)) >> (reverseBits(u_input.d) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(abs(u_input.d.x & 1901u) & _wgslsmith_add_u32(_wgslsmith_clamp_u32(global1.c.x, global2.a.c.x, global1.c.x), 1u >> (global1.c.x % 32u)), 21u)], ~vec2<i32>(1i, abs(37918i))));
    global1 = global2.a;
    let var_0 = u_input.c.x;
    let var_1 = ~vec3<u32>(3739u, firstTrailingBit(45190u), u_input.a.x);
    global2 = Struct_3(global2.b.d, Struct_2(vec3<bool>(global2.b.a.x, global2.b.a.x, global2.a.b.x >= 1268f), global2.a, global2.a.a.zz, global0[_wgslsmith_index_u32(reverseBits(countOneBits(46793u)), 21u)], ~vec2<i32>(u_input.b.x, var_0) ^ select(vec2<i32>(global2.a.a.x, var_0), u_input.c.zz, !global2.b.a.x)));
    return Struct_1(vec4<i32>(var_0, 2147483647i, _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mod_i32(-22845i, global2.a.a.x)), _wgslsmith_sub_i32(-2147483647i, global1.a.x)), -2147483647i), vec4<f32>(1005f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-296f, -483f) + -868f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.x, global2.a.b.x) - global2.b.d.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.b.x + _wgslsmith_f_op_f32(global1.b.x - global2.a.b.x)) - global1.b.x)), ~select(vec4<u32>(abs(4294967295u), min(4294967295u, 81369u), 1u, min(4294967295u, 1u)), vec4<u32>(max(var_1.x, 1u), 1u, var_1.x, _wgslsmith_mult_u32(39604u, var_1.x)), false));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec4<f32> {
    let var_0 = arg_1.b.wxx;
    var var_1 = (arg_1.a | ~(-global2.b.b.a)) | select(_wgslsmith_mod_vec4_i32(global1.a, arg_1.a), ~(~(-vec4<i32>(-34871i, global1.a.x, arg_0, arg_0))), global2.b.a.x);
    var var_2 = true;
    global0 = array<Struct_1, 21>();
    var var_3 = Struct_3(arg_1, Struct_2(!(!(!global2.b.a)), arg_1, arg_1.a.wx >> (arg_1.c.zw % vec2<u32>(32u)), func_2(), countOneBits(vec2<i32>(arg_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.b.e.x, global1.a.x, var_1.x, u_input.c.x), vec4<i32>(1i, 1i, u_input.b.x, 0i))))));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.b.b.a & global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1229f, global1.b.x, global2.b.b.b.x), _wgslsmith_f_op_vec4_f32(global1.b * global1.b), true)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_1(-2147483647i, Struct_1(vec4<i32>(1i, 14726i, u_input.b.x, global2.a.a.x), global2.a.b, vec4<u32>(u_input.d.x, u_input.d.x, 48936u, u_input.d.x)))), _wgslsmith_div_vec4_f32(global1.b, global2.a.b)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global2.a.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, -1177f, global2.a.b.x, -381f))), _wgslsmith_f_op_vec4_f32(trunc(global2.b.b.b))))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~36666u | u_input.d.x, ~(~59106u), ~46099u >> (0u % 32u), ~(~global2.a.c.x)), _wgslsmith_mult_vec4_u32(~func_2().c, global2.a.c), global2.b.d.c));
    let var_1 = _wgslsmith_mod_vec4_u32(~vec4<u32>(abs(_wgslsmith_mult_u32(4294967295u, 0u)), 36972u ^ global2.b.b.c.x, _wgslsmith_add_u32(u_input.d.x, 78690u), _wgslsmith_add_u32(reverseBits(global2.b.d.c.x), ~global1.c.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(75656u, func_2().c.x, 4294967295u ^ global1.c.x, _wgslsmith_dot_vec3_u32(global1.c.wyx, global1.c.xxx)), ~abs(vec4<u32>(15669u, 0u, global2.a.c.x, 4294967295u)), reverseBits(~vec4<u32>(u_input.a.x, 7188u, global1.c.x, 100257u) | (global1.c & var_0.c))));
    global1 = global0[_wgslsmith_index_u32(9991u, 21u)];
    var var_2 = Struct_3(func_2(), Struct_2(select(global2.b.a, vec3<bool>(global2.b.a.x, true, global2.b.a.x), select(!vec3<bool>(global2.b.a.x, false, global2.b.a.x), vec3<bool>(true, false, true), select(global2.b.a, global2.b.a, false))), func_2(), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b.x, global1.a.x), var_0.a.yx), func_2(), ~u_input.b));
    let var_3 = var_2.b.a.x;
    var var_4 = global2.b;
    let var_5 = global2.b.d.a;
    var_0 = Struct_1(global2.a.a, global2.a.b, vec4<u32>(_wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(var_4.d.c, vec4<u32>(u_input.d.x, 4294967295u, global2.b.b.c.x, global1.c.x))), var_1), var_4.b.c.x ^ var_0.c.x, func_2().c.x, ~0u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.xyz, ~_wgslsmith_dot_vec4_i32(-var_2.a.a, select(vec4<i32>(var_5.x, u_input.c.x, 0i, -36613i), max(vec4<i32>(var_5.x, -7345i, var_2.a.a.x, var_5.x), vec4<i32>(-1i, 1i, var_0.a.x, -1i)), global2.b.a.x & var_2.b.a.x)), _wgslsmith_sub_i32(func_2().a.x, -964i));
}

