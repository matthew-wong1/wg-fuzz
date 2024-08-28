struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(Struct_2(vec4<i32>(1i, 33855i, 13959i, 0i), Struct_1(1u, vec2<bool>(false, true), vec4<bool>(false, false, false, true)), vec3<u32>(4294967295u, 55765u, 98352u)), Struct_4(9345i, 1i)), Struct_5(Struct_2(vec4<i32>(0i, -24421i, i32(-2147483648), -1i), Struct_1(47709u, vec2<bool>(false, false), vec4<bool>(false, false, false, true)), vec3<u32>(65u, 1u, 0u)), Struct_4(2147483647i, 3252i)), Struct_5(Struct_2(vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), -45300i), Struct_1(49223u, vec2<bool>(false, false), vec4<bool>(false, true, true, false)), vec3<u32>(51532u, 57392u, 1u)), Struct_4(i32(-2147483648), 1i)), Struct_5(Struct_2(vec4<i32>(41562i, 1i, -1i, 17284i), Struct_1(54102u, vec2<bool>(true, false), vec4<bool>(false, true, true, true)), vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_4(0i, -241i)), Struct_5(Struct_2(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 1i), Struct_1(4294967295u, vec2<bool>(false, false), vec4<bool>(false, false, true, true)), vec3<u32>(1u, 0u, 1u)), Struct_4(2147483647i, 1359i)), Struct_5(Struct_2(vec4<i32>(-1i, 2147483647i, 5501i, 0i), Struct_1(1u, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), vec3<u32>(39970u, 31070u, 4294967295u)), Struct_4(1851i, 663i)), Struct_5(Struct_2(vec4<i32>(-1i, 90583i, 1i, -33864i), Struct_1(0u, vec2<bool>(false, false), vec4<bool>(true, true, true, false)), vec3<u32>(8748u, 0u, 0u)), Struct_4(1195i, 0i)), Struct_5(Struct_2(vec4<i32>(-21217i, 2147483647i, -1i, 1i), Struct_1(11175u, vec2<bool>(true, false), vec4<bool>(true, false, true, false)), vec3<u32>(11007u, 0u, 49634u)), Struct_4(36928i, 1i)), Struct_5(Struct_2(vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 2147483647i), Struct_1(1u, vec2<bool>(false, true), vec4<bool>(false, false, true, false)), vec3<u32>(60642u, 25676u, 0u)), Struct_4(11429i, 55140i)), Struct_5(Struct_2(vec4<i32>(22511i, -1i, -740i, i32(-2147483648)), Struct_1(0u, vec2<bool>(true, false), vec4<bool>(true, true, false, false)), vec3<u32>(45366u, 4294967295u, 4294967295u)), Struct_4(71783i, 2147483647i)), Struct_5(Struct_2(vec4<i32>(0i, i32(-2147483648), 1079i, 29929i), Struct_1(33233u, vec2<bool>(true, true), vec4<bool>(false, true, false, true)), vec3<u32>(22345u, 0u, 0u)), Struct_4(0i, i32(-2147483648))), Struct_5(Struct_2(vec4<i32>(22303i, 1i, 2147483647i, 2147483647i), Struct_1(13694u, vec2<bool>(true, true), vec4<bool>(true, true, true, true)), vec3<u32>(29973u, 24624u, 4294967295u)), Struct_4(26758i, -31441i)), Struct_5(Struct_2(vec4<i32>(-1i, 25453i, 22763i, -29786i), Struct_1(0u, vec2<bool>(true, true), vec4<bool>(false, true, false, false)), vec3<u32>(38381u, 0u, 59254u)), Struct_4(-60496i, 41626i)), Struct_5(Struct_2(vec4<i32>(-36073i, 18105i, -21867i, 10921i), Struct_1(0u, vec2<bool>(true, false), vec4<bool>(false, true, true, false)), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_4(-8232i, -12131i)), Struct_5(Struct_2(vec4<i32>(-1i, -20444i, 4083i, -23371i), Struct_1(83955u, vec2<bool>(true, false), vec4<bool>(false, true, true, false)), vec3<u32>(68294u, 50951u, 81728u)), Struct_4(2147483647i, 0i)), Struct_5(Struct_2(vec4<i32>(1i, 2147483647i, 7485i, -40952i), Struct_1(1u, vec2<bool>(true, false), vec4<bool>(false, true, false, true)), vec3<u32>(4294967295u, 65583u, 45180u)), Struct_4(-3150i, -1i)), Struct_5(Struct_2(vec4<i32>(14139i, 2147483647i, 40473i, 1i), Struct_1(59535u, vec2<bool>(true, true), vec4<bool>(false, true, false, false)), vec3<u32>(4294967295u, 11225u, 23604u)), Struct_4(2147483647i, 100350i)), Struct_5(Struct_2(vec4<i32>(-1i, -14656i, 50687i, 0i), Struct_1(72396u, vec2<bool>(true, false), vec4<bool>(false, true, true, false)), vec3<u32>(96690u, 35500u, 17142u)), Struct_4(-20736i, 39807i)), Struct_5(Struct_2(vec4<i32>(-1i, 14267i, 2147483647i, 19304i), Struct_1(0u, vec2<bool>(false, false), vec4<bool>(false, false, false, true)), vec3<u32>(4294967295u, 68984u, 4294967295u)), Struct_4(-70624i, 33044i)), Struct_5(Struct_2(vec4<i32>(47266i, 53178i, 2147483647i, -18795i), Struct_1(0u, vec2<bool>(true, false), vec4<bool>(false, false, false, true)), vec3<u32>(21676u, 45215u, 1u)), Struct_4(1i, 0i)));

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1u, vec2<bool>(false, true), vec4<bool>(false, true, false, true)), Struct_1(13007u, vec2<bool>(true, false), vec4<bool>(true, true, true, true)), Struct_1(0u, vec2<bool>(false, false), vec4<bool>(false, true, true, true)), Struct_1(7410u, vec2<bool>(true, true), vec4<bool>(true, false, false, false)), Struct_1(1u, vec2<bool>(false, false), vec4<bool>(false, true, false, true)), Struct_1(78551u, vec2<bool>(false, true), vec4<bool>(true, false, true, true)), Struct_1(4294967295u, vec2<bool>(true, false), vec4<bool>(false, false, false, false)), Struct_1(67074u, vec2<bool>(true, false), vec4<bool>(true, true, false, false)), Struct_1(46187u, vec2<bool>(true, true), vec4<bool>(true, false, true, false)), Struct_1(43855u, vec2<bool>(false, false), vec4<bool>(false, false, true, false)), Struct_1(96301u, vec2<bool>(false, false), vec4<bool>(false, false, true, false)), Struct_1(27371u, vec2<bool>(true, true), vec4<bool>(false, false, true, true)), Struct_1(27369u, vec2<bool>(true, false), vec4<bool>(false, true, true, true)), Struct_1(9507u, vec2<bool>(false, true), vec4<bool>(true, false, true, false)), Struct_1(1u, vec2<bool>(true, true), vec4<bool>(true, false, true, true)), Struct_1(66423u, vec2<bool>(false, true), vec4<bool>(true, true, true, false)), Struct_1(75282u, vec2<bool>(false, false), vec4<bool>(true, true, false, false)), Struct_1(1u, vec2<bool>(false, false), vec4<bool>(false, false, false, true)), Struct_1(0u, vec2<bool>(false, true), vec4<bool>(false, false, true, false)), Struct_1(973u, vec2<bool>(false, true), vec4<bool>(false, false, false, true)), Struct_1(17707u, vec2<bool>(true, false), vec4<bool>(false, true, false, true)), Struct_1(4294967295u, vec2<bool>(true, false), vec4<bool>(true, false, false, true)), Struct_1(41499u, vec2<bool>(true, true), vec4<bool>(true, false, true, false)), Struct_1(12140u, vec2<bool>(false, true), vec4<bool>(true, false, false, true)), Struct_1(4294967295u, vec2<bool>(true, false), vec4<bool>(true, false, true, true)), Struct_1(13566u, vec2<bool>(false, true), vec4<bool>(true, true, true, false)), Struct_1(1u, vec2<bool>(false, false), vec4<bool>(false, false, true, true)), Struct_1(34861u, vec2<bool>(false, true), vec4<bool>(true, true, true, false)), Struct_1(34582u, vec2<bool>(false, true), vec4<bool>(false, true, true, false)), Struct_1(1u, vec2<bool>(true, false), vec4<bool>(true, false, true, true)), Struct_1(45003u, vec2<bool>(true, true), vec4<bool>(true, false, false, false)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(417f, -228f, 1219f, -1000f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1293f, _wgslsmith_f_op_f32(1167f * -770f), -699f, _wgslsmith_f_op_f32(ceil(506f)))))));
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    let var_1 = vec3<bool>(true, arg_2.b.x, !select(false, true, arg_1.b.b.x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -909f, 2756f))))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_4) -> vec4<f32> {
    var var_0 = arg_3;
    var var_1 = 93290i;
    global1 = array<Struct_1, 31>();
    var_1 = arg_3.b;
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, 122f, -634f, -1896f)))))))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-808f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -856f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(42555u, 31u)], arg_0.a.c.xz, Struct_3(15340u, arg_0.a.a.wwx, Struct_2(arg_0.a.a, Struct_1(arg_0.a.b.a, vec2<bool>(arg_0.a.b.b.x, arg_0.a.b.b.x), vec4<bool>(true, arg_0.a.b.b.x, true, arg_0.a.b.c.x)), vec3<u32>(arg_0.a.c.x, arg_0.a.b.a, 40865u)), arg_0.a.b.c.zww, global1[_wgslsmith_index_u32(1u, 31u)]), arg_0.b)).x, -141f)))));
    var var_1 = arg_0.a;
    global1 = array<Struct_1, 31>();
    var var_2 = vec3<bool>(!var_1.b.c.x, arg_0.a.b.b.x, true);
    var var_3 = abs(_wgslsmith_clamp_vec2_i32(~vec2<i32>(39587i, arg_0.a.a.x), abs(-(~var_1.a.yw)), -(var_1.a.wy & firstTrailingBit(vec2<i32>(-14986i, -4545i)))));
    return select(arg_0.a.b.c, arg_0.a.b.c, false);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    var var_0 = ~_wgslsmith_add_vec4_i32(reverseBits(-countOneBits(vec4<i32>(u_input.a, 0i, 4528i, u_input.b.x))), firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b.x), u_input.b.xz), 0i, -22934i, u_input.a)));
    let var_1 = global1[_wgslsmith_index_u32(12158u, 31u)];
    let var_2 = ~70466u;
    var_0 = firstTrailingBit(vec4<i32>(-(u_input.b.x ^ -7401i) ^ -u_input.a, -_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.b.x, var_0.x, 5285i), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_0.x, u_input.a, -46188i), vec4<i32>(1i, 937i, var_0.x, var_0.x))), -var_0.x, var_0.x));
    var_0 = vec4<i32>(-_wgslsmith_div_i32(-38693i, min(-1i, select(u_input.a, var_0.x, arg_1.x))), ~(~max(-16712i, -2147483647i) | _wgslsmith_sub_i32(-21643i, reverseBits(u_input.a))), 3468i, -_wgslsmith_sub_i32(30080i, reverseBits(_wgslsmith_mod_i32(var_0.x, -6229i))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-986f, arg_3)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3, arg_3), vec2<f32>(-788f, -1146f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_3 - 1000f), _wgslsmith_f_op_f32(arg_3 + 968f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3, _wgslsmith_f_op_f32(exp2(arg_3))) * vec2<f32>(_wgslsmith_f_op_f32(506f + arg_3), _wgslsmith_f_op_f32(1000f + -2427f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 20>();
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    global0 = array<Struct_5, 20>();
    global1 = array<Struct_1, 31>();
    var var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(u_input.a, u_input.a, -60465i, 34510i), Struct_2(vec4<i32>(u_input.a, u_input.b.x, -2147483647i, 1i), Struct_1(1u, vec2<bool>(true, false), vec4<bool>(false, true, true, true)), vec3<u32>(32196u, 42194u, 4294967295u)), Struct_1(0u, vec2<bool>(false, false), vec4<bool>(true, true, false, false)), u_input.b)), _wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(41450u, 31u)], vec2<u32>(17657u, 0u), Struct_3(1455u, vec3<i32>(u_input.a, u_input.a, -2147483647i), Struct_2(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), global1[_wgslsmith_index_u32(36606u, 31u)], vec3<u32>(1u, 0u, 1u)), vec3<bool>(false, true, true), Struct_1(4294967295u, vec2<bool>(false, false), vec4<bool>(false, false, false, true))), Struct_4(6937i, u_input.b.x))), true)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1110f, 1000f, 1099f, -1269f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-304f, -962f, 543f, 1473f), vec4<f32>(375f, -1324f, -952f, 626f))) * vec4<f32>(1108f, -595f, 997f, 157f)) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(448f, -1076f, -1000f, -1109f), vec4<f32>(315f, 2596f, 1236f, 1329f)), _wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(-1i, 27853i, u_input.a, u_input.a), Struct_2(vec4<i32>(u_input.a, u_input.b.x, 12342i, u_input.b.x), global1[_wgslsmith_index_u32(29451u, 31u)], vec3<u32>(0u, 0u, 1u)), global1[_wgslsmith_index_u32(4294967295u, 31u)], u_input.b))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -322f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1584f - -1206f), _wgslsmith_f_op_f32(max(106f, -1586f))))), _wgslsmith_f_op_f32(f32(-1f) * -578f), _wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(1u, 0u), 0u >> (0u % 32u)), 1u, ~16941u), 31u)], vec4<bool>(true, true, true, true), Struct_1(1u, vec2<bool>(all(vec2<bool>(true, false)), true), func_3(global0[_wgslsmith_index_u32(18627u, 20u)], Struct_4(7274i, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)))), u_input.b.x);
}

