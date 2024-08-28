struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, true, true), 44639u, -9924i, -195f, vec3<f32>(1703f, 803f, 1163f));

var<private> global2: array<vec2<u32>, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = global1.a.x;
    var var_1 = Struct_1(!select(global1.a, global1.a, select(global1.a, select(global1.a, vec4<bool>(global1.a.x, false, true, global1.a.x), global1.a.x), select(global1.a, vec4<bool>(false, global1.a.x, false, global1.a.x), global1.a.x))), reverseBits(~18993u), max(~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(2147483647i, global1.c, -1i) | vec3<i32>(global1.c, -2147483647i, 60841i)), global1.c), -1463f, global1.e);
    let var_2 = var_1.e.xz;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(794f, var_1.e.x, -331f, 708f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1233f - var_1.d), 418f, -1804f, _wgslsmith_f_op_f32(334f - global1.e.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, 374f, 1566f, var_1.d))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-512f, -264f, var_1.e.x, 606f) + vec4<f32>(var_2.x, 1000f, 613f, -873f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(2027f, var_1.d, -138f, 1089f) * vec4<f32>(-1011f, global1.e.x, -659f, var_2.x)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.e.x, 1000f, global1.e.x, var_2.x), vec4<f32>(-1762f, var_2.x, 204f, 541f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.e.x, -1219f, -998f, 2687f))))))));
    let var_4 = _wgslsmith_dot_vec2_i32(u_input.c.xy, -u_input.b);
    return countOneBits(_wgslsmith_mult_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global1.b, var_1.b), u_input.a.wyz), var_1.b), 21u)], vec2<u32>(0u, var_1.b)) >> (firstLeadingBit(~(vec2<u32>(global1.b, global1.b) >> (vec2<u32>(global1.b, 5882u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_u32(arg_0.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~global2[_wgslsmith_index_u32(25774u, 21u)], global2[_wgslsmith_index_u32(arg_2.b, 21u)]), func_3()));
    let var_1 = reverseBits(select(vec2<i32>(-2147483647i, arg_0.c) ^ u_input.b, vec2<i32>(-20964i, arg_0.c) ^ vec2<i32>(arg_0.c, 0i), global1.a.x) & vec2<i32>(4914i, _wgslsmith_sub_i32(-1i, 2147483647i))) ^ u_input.b;
    return global1.a.zxx;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = arg_2.d;
    var var_1 = arg_2;
    var var_2 = -1i;
    var var_3 = ~24489u;
    var var_4 = select(arg_2.a.x, any(select(!func_2(arg_0, global1.c, Struct_1(global1.a, 1885u, 2147483647i, -640f, var_1.e)), arg_2.a.zyy, _wgslsmith_div_f32(1459f, -1695f) <= _wgslsmith_f_op_f32(-var_0))), true);
    return arg_2;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global2 = array<vec2<u32>, 21>();
    let var_0 = _wgslsmith_clamp_vec4_u32(u_input.a << (max(vec4<u32>(4294967295u, 0u, 4294967295u, 4294967295u), ~vec4<u32>(u_input.d, 77600u, arg_2.b, 36984u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a), abs(abs(max(u_input.a, vec4<u32>(4294967295u, 4294967295u, u_input.d, global1.b))))) ^ ~vec4<u32>(func_3().x, ~_wgslsmith_mult_u32(u_input.d, 1u), _wgslsmith_sub_u32(~arg_2.b, 1u), min(~u_input.d, arg_2.b));
    let var_1 = arg_2;
    global2 = array<vec2<u32>, 21>();
    let var_2 = 2654u;
    return var_1;
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    global0 = array<vec2<bool>, 6>();
    var var_1 = arg_0.c;
    var_0 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(280f, -399f, -765f, arg_0.d)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(655f, global1.d, arg_0.e.x, global1.d))) - vec4<f32>(-556f, global1.d, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    return vec4<bool>(var_0.a.x, !(!(!arg_0.a.x)), ~(-20635i) > abs(~u_input.b.x), any(select(vec2<bool>(func_4(-301f, true, arg_0).a.x, all(vec3<bool>(arg_0.a.x, false, true))), func_4(_wgslsmith_f_op_f32(-var_2.x), arg_0.a.x, Struct_1(var_0.a, arg_0.b, var_0.c, 940f, vec3<f32>(global1.d, arg_0.e.x, 812f))).a.xw, vec2<bool>(true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!(!(!select(global1.a.wxy, global1.a.ywz, global1.a.x))));
    global1 = Struct_1(func_5(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.a.x, func_1(Struct_1(global1.a, global1.b, 15507i, 488f, global1.e), u_input.a.x, Struct_1(global1.a, 54275u, 0i, global1.d, vec3<f32>(global1.e.x, global1.e.x, -403f)), vec2<u32>(global1.b, u_input.a.x)))), _wgslsmith_sub_u32(39411u, global1.b) << (4294967295u % 32u), ~24420i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.e.x))))), _wgslsmith_div_f32(710f, global1.e.x)), _wgslsmith_f_op_vec3_f32(trunc(global1.e)));
    var var_1 = func_4(func_4(_wgslsmith_f_op_f32(f32(-1f) * -1746f), select(true, u_input.b.x == u_input.b.x, func_5(Struct_1(global1.a, 4294967295u, 2147483647i, global1.d, vec3<f32>(global1.d, global1.d, 1191f))).x), Struct_1(!func_4(global1.d, global1.a.x, Struct_1(global1.a, 0u, u_input.b.x, -533f, global1.e)).a, _wgslsmith_clamp_u32(~18406u, 57608u, ~u_input.d), _wgslsmith_div_i32(1i, global1.c) & (u_input.c.x | global1.c), -586f, vec3<f32>(1f, 1f, 1f))).e.x, true, Struct_1(func_5(func_1(Struct_1(vec4<bool>(global1.a.x, global1.a.x, false, false), u_input.a.x, 10293i, global1.d, vec3<f32>(502f, -1149f, 1513f)), global1.b, func_4(global1.e.x, false, Struct_1(global1.a, 0u, -3974i, global1.d, global1.e)), select(vec2<u32>(u_input.d, 1u), global2[_wgslsmith_index_u32(u_input.d, 21u)], false))), ~(~(u_input.a.x ^ u_input.d)), u_input.c.x, func_4(-2030f, true, func_1(func_4(global1.d, global1.a.x, Struct_1(vec4<bool>(true, global1.a.x, global1.a.x, true), 66616u, 0i, -197f, global1.e)), ~7417u, Struct_1(global1.a, global1.b, -2147483647i, global1.d, vec3<f32>(global1.e.x, 1215f, global1.e.x)), global2[_wgslsmith_index_u32(30290u, 21u)])).e.x, _wgslsmith_f_op_vec3_f32(-func_4(116f, u_input.d > 46052u, func_1(Struct_1(global1.a, global1.b, 14059i, global1.d, vec3<f32>(1343f, -866f, global1.e.x)), 0u, Struct_1(vec4<bool>(global1.a.x, true, false, false), 4294967295u, global1.c, global1.e.x, vec3<f32>(1094f, 1237f, global1.d)), vec2<u32>(18693u, 4294967295u))).e)));
    var var_2 = var_1.d;
    let var_3 = Struct_1(global1.a, ~58309u, global1.c, func_1(Struct_1(func_5(Struct_1(vec4<bool>(true, true, true, true), 52040u, u_input.c.x, -255f, var_1.e)), var_1.b, 1i, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(var_1.e)), vec3<f32>(var_1.d, var_1.e.x, global1.d)))), ~_wgslsmith_dot_vec3_u32(~u_input.a.wxw, select(vec3<u32>(u_input.d, 17360u, global1.b), vec3<u32>(u_input.a.x, 4464u, 39581u), global1.a.x)), func_1(func_4(_wgslsmith_f_op_f32(-var_1.e.x), !global1.a.x, func_4(-668f, var_1.a.x, Struct_1(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), 36870u, -47840i, global1.e.x, var_1.e))), ~select(4294967295u, var_1.b, true), Struct_1(global1.a, 1u, global1.c, -943f, _wgslsmith_f_op_vec3_f32(floor(var_1.e))), _wgslsmith_clamp_vec2_u32(u_input.a.yy & u_input.a.zy, firstLeadingBit(u_input.a.yw), u_input.a.yx >> (global2[_wgslsmith_index_u32(87956u, 21u)] % vec2<u32>(32u)))), vec2<u32>(~var_1.b, ~(16545u << (global1.b % 32u)))).e.x, vec3<f32>(global1.e.x, -1526f, func_1(Struct_1(vec4<bool>(true, true, global1.a.x, false), 18193u, global1.c, _wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, var_1.e.x, -1273f) - vec3<f32>(var_1.d, var_1.d, var_1.d))), 9205u, Struct_1(vec4<bool>(false, global1.a.x, true, false), 43263u, ~0i, _wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.d, -931f, var_1.d), vec3<f32>(var_1.d, 1606f, 1386f))), countOneBits(u_input.a.zw)).e.x));
    let var_4 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.b, global1.b), vec2<u32>(_wgslsmith_mult_u32(u_input.d, 71274u), ~var_1.b), ~vec2<u32>(4294967295u, 0u) ^ ~vec2<u32>(1u, u_input.a.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.d), 0u), vec2<u32>(global1.b >> (36857u % 32u), 54013u & var_1.b))) | vec2<u32>(global1.b << (reverseBits(0u) % 32u), 0u);
    global0 = array<vec2<bool>, 6>();
    var var_5 = func_1(func_4(global1.e.x, true, var_3), _wgslsmith_clamp_u32(firstTrailingBit(~u_input.a.x), ~22713u | ~_wgslsmith_sub_u32(var_4.x, 56404u), _wgslsmith_clamp_u32(0u, var_1.b, abs(countOneBits(var_3.b)))), var_3, ~func_3());
    global1 = Struct_1(!(!var_1.a), global1.b, -2147483647i, var_5.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(396f, 390f, -248f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1186f, -623f, var_3.e.x), var_5.e) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1011f, 165f, 175f), var_5.e, true))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_3.e - vec3<f32>(-178f, global1.e.x, global1.d)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global1.c, countOneBits(-39594i), var_5.c, max(-29885i, abs(1i))) | ((_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_5.c, 1i, var_1.c), vec4<i32>(-1573i, var_5.c, -2147483647i, -1i)) >> (min(u_input.a, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(~24722u, ~global1.b, ~35076u, 0u) % vec4<u32>(32u))), abs(firstTrailingBit(u_input.b.x)), var_5.b, vec3<u32>(~(~(~var_1.b)), func_3().x, 1u));
}

