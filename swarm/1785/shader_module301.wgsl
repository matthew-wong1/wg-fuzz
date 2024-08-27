struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31> = array<f32, 31>(748f, -1098f, 293f, 1952f, 986f, -733f, -1000f, 1437f, 544f, -369f, -479f, 874f, -339f, -196f, 508f, -2128f, -2325f, 403f, -1000f, -1062f, -281f, -1349f, 461f, -771f, -183f, -222f, -757f, -472f, 861f, 642f, -1334f);

var<private> global1: array<vec4<u32>, 24>;

var<private> global2: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    global1 = array<vec4<u32>, 24>();
    global2 = _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-arg_1.a.b.x)) < _wgslsmith_f_op_f32(floor(arg_0.b.x));
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 31u)];
    let var_1 = u_input.a.x;
    global1 = array<vec4<u32>, 24>();
    return min(1u, u_input.a.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = vec3<u32>(30933u, ~1u, func_3(Struct_1(vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0[_wgslsmith_index_u32(arg_0.x, 31u)], 574f, arg_1.x, arg_1.x), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], arg_1.x, global0[_wgslsmith_index_u32(14189u, 31u)], arg_1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], arg_1.x, arg_1.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(0i, -2147483647i, 25577i) >> (vec3<u32>(0u, u_input.a.x, arg_0.x) % vec3<u32>(32u)))), Struct_3(Struct_1(-vec3<i32>(1i, -1i, -1i), vec4<f32>(global0[_wgslsmith_index_u32(1u, 31u)], arg_1.x, 426f, -735f), 1i))));
    let var_1 = _wgslsmith_mod_vec4_i32(select(~vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1606i, 64568i, 49640i) << (vec4<u32>(38376u, 43763u, arg_0.x, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-17690i, 0i, -2147483647i, 0i), vec4<i32>(14922i, 86710i, -1i, -2147483647i)))), all(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))), vec4<i32>(1i, abs(0i), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-4131i, 0i, 1i), vec3<i32>(1942i, -2147483647i, 38693i)), -2147483647i), -(i32(-1i) * -1i)) & _wgslsmith_clamp_vec4_i32(select(-vec4<i32>(-39894i, 1i, 31419i, 2147483647i), countOneBits(vec4<i32>(-1i, 0i, -18787i, 2147483647i)), vec4<bool>(true, true, true, true)), vec4<i32>(0i, ~1i, _wgslsmith_div_i32(85968i, 1i), 1i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -26616i, 1471i, -1403i), vec4<i32>(1i, -1i, -15913i, 2147483647i))));
    global0 = array<f32, 31>();
    var var_2 = Struct_3(Struct_1(vec3<i32>(~_wgslsmith_div_i32(-2147483647i, var_1.x), (-1i >> (arg_0.x % 32u)) ^ -14606i, ~var_1.x & var_1.x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1568f + -476f), _wgslsmith_f_op_f32(step(arg_1.x, -689f)), 270f, _wgslsmith_f_op_f32(max(285f, 1138f))))), ~(i32(-1i) * -55570i)));
    var var_3 = var_0.x;
    return var_2.a;
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_2(func_2(u_input.a, vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], arg_0, arg_0)), -1216f, Struct_1(-(vec3<i32>(arg_1.x, -1i, arg_1.x) << (~vec3<u32>(4140u, u_input.a.x, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 475f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 31u)]), 500f)), arg_1.x), select(select(vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec3<bool>(false, false, false)), -13033i == arg_1.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true)), !vec3<bool>(false, any(vec3<bool>(false, false, true)), 15262u <= u_input.a.x), all(vec2<bool>(true, false))), _wgslsmith_mod_vec4_i32(~(~vec4<i32>(arg_1.x, -13888i, 430i, -2147483647i)), vec4<i32>(-9515i, arg_1.x, ~arg_1.x, arg_1.x ^ func_2(vec2<u32>(15105u, 55814u), vec3<f32>(1726f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], 386f)).c)));
    let var_1 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, ~u_input.a), vec2<u32>(_wgslsmith_sub_u32(0u, u_input.a.x), u_input.a.x), u_input.a) & vec2<u32>(~(~(0u | u_input.a.x)), ~select(16498u, _wgslsmith_sub_u32(0u, u_input.a.x), true));
    var var_2 = Struct_1(-(~var_0.c.a), vec4<f32>(-1023f, global0[_wgslsmith_index_u32(u_input.a.x | func_3(func_2(u_input.a, var_0.a.b.yyw), Struct_3(Struct_1(var_0.a.a, var_0.c.b, 1i))), 31u)], _wgslsmith_f_op_f32(1237f - -443f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(9835u, 31u)] - -385f))))), 15486i);
    let var_3 = vec2<u32>(14531u, _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_sub_u32(var_1.x, 27633u) << (25422u % 32u), 58442u));
    let var_4 = 1u;
    return vec4<bool>(var_0.d.x, var_0.d.x, all(select(!vec4<bool>(var_0.d.x, true, var_0.d.x, false), vec4<bool>(var_0.d.x, all(vec4<bool>(var_0.d.x, var_0.d.x, false, var_0.d.x)), false, select(false, var_0.d.x, var_0.d.x)), select(!vec4<bool>(true, true, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, false), vec4<bool>(true, var_0.d.x, true, true)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2075f, 1399f), _wgslsmith_f_op_f32(953f + 352f), 1u <= u_input.a.x)), vec2<i32>(_wgslsmith_div_i32(6061i, -2692i), -68138i << (u_input.a.x % 32u))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = Struct_2(func_2(u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(894f, global0[_wgslsmith_index_u32(4294967295u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)])), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 31u)], 1276f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)]))), any(vec3<bool>(true, false, true)))) + _wgslsmith_f_op_vec3_f32(func_2(u_input.a, vec3<f32>(global0[_wgslsmith_index_u32(22329u, 31u)], global0[_wgslsmith_index_u32(u_input.a.x, 31u)], -1491f)).b.xxx - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-759f, -579f, 340f)))))), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(firstTrailingBit(15215u), 31u)])), Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(max(-2147483647i, 43301i), 1i, 1i), vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(u_input.a.x, 71049u, u_input.a.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], -697f, -438f) * vec4<f32>(998f, -1323f, 999f, 1805f))))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-260i, 2147483647i, -2147483647i), vec3<i32>(46577i, -860i, 19347i)) | 0i), !vec3<bool>(any(vec3<bool>(false, false, false)) && all(vec4<bool>(false, false, false, true)), !func_1(-858f, vec2<i32>(1i, 14044i)).x, func_1(global0[_wgslsmith_index_u32(u_input.a.x & 33660u, 31u)], ~vec2<i32>(-1i, 0i)).x), -vec4<i32>(_wgslsmith_div_i32(28961i, -31390i), -1i, -1i, 1i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32((countOneBits(u_input.a.x) >> (u_input.a.x % 32u)) >> (~countOneBits(1u) % 32u), 31u)]));
    var var_3 = true;
    var_0 = all(var_1.d.yz);
    global2 = var_1.d.x;
    var var_4 = -1756f;
    let var_5 = !(!vec4<bool>(var_1.d.x, false, var_1.d.x, var_1.c.a.x != _wgslsmith_add_i32(var_1.e.x, -1i)));
    var var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(round(1738f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a), 31u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-3380f - var_2) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1008f)), func_2(vec2<u32>(61478u, 43598u), var_1.a.b.xwz).b.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1032f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -170f)))), var_1.c.c, 1030f);
}

