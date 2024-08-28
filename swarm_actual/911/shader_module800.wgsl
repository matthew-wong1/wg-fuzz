struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 14> = array<vec3<bool>, 14>(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false));

var<private> global1: u32;

var<private> global2: array<Struct_1, 20>;

var<private> global3: array<vec4<u32>, 31>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> vec2<u32> {
    var var_0 = ~vec2<u32>(35883u, select(1u, arg_0.c.b.x, 2147483647i == arg_0.d) & 1u);
    let var_1 = 912f;
    var var_2 = -1241f;
    global2 = array<Struct_1, 20>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-860f, -160f))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-var_1), -1141f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1082f, var_1) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-453f, 1070f)))))));
    return vec2<u32>(1u, _wgslsmith_add_u32(~var_0.x, max(~1u, var_0.x) ^ reverseBits(countOneBits(19994u))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    global3 = array<vec4<u32>, 31>();
    global3 = array<vec4<u32>, 31>();
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    global0 = array<vec3<bool>, 14>();
    return Struct_3(Struct_2(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, u_input.a), func_3(Struct_2(vec2<u32>(52430u, 22126u), vec4<i32>(23680i, u_input.c, 0i, 1i), global2[_wgslsmith_index_u32(1u, 20u)], 36045i), true, max(global3[_wgslsmith_index_u32(4294967295u, 31u)], vec4<u32>(u_input.b, u_input.b, u_input.a, 11660u)))), vec4<i32>(-(~u_input.c), 37702i, abs(arg_0.x), _wgslsmith_mod_i32(2147483647i, arg_0.x) >> (5397u % 32u)), Struct_1(-vec3<i32>(-2147483647i, 2147483647i, arg_0.x), vec4<u32>(u_input.b, u_input.a, u_input.b, u_input.a) ^ global3[_wgslsmith_index_u32(~u_input.a, 31u)], vec3<i32>(-23593i, -arg_0.x, arg_0.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1753f, -1890f)))), arg_0.x), u_input.c ^ 23027i));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = -_wgslsmith_sub_i32(-_wgslsmith_div_i32(arg_1.a.c.c.x, u_input.c), abs(arg_1.a.c.c.x));
    let var_1 = min(((i32(-1i) * -25844i) << (~arg_1.a.a.x % 32u)) | 0i, -2147483647i) >= 1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c.d, _wgslsmith_div_f32(-336f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-977f - arg_1.a.c.d))), arg_1.a.c.d, _wgslsmith_f_op_f32(arg_0.x - arg_1.a.c.d)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 839f, var_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1.a.c.d, arg_0.x))), arg_0.x, -1170f)));
    var var_3 = any(!vec2<bool>(var_1, var_1));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.c.d)));
    return func_2(_wgslsmith_sub_vec2_i32(arg_1.a.c.a.yy | (select(arg_1.a.b.wx, vec2<i32>(u_input.c, u_input.c), vec2<bool>(false, true)) | countOneBits(arg_1.a.c.a.yx)), vec2<i32>(u_input.c, var_0))).a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> f32 {
    global3 = array<vec4<u32>, 31>();
    let var_0 = arg_3;
    let var_1 = vec3<u32>(0u, _wgslsmith_mod_u32(~(~u_input.b), func_2(_wgslsmith_div_vec2_i32(arg_2.b.yw, func_4(vec4<f32>(-1929f, arg_0.c.d, arg_1.c.d, -1538f), Struct_3(Struct_2(arg_1.c.b.zx, arg_2.b, Struct_1(vec3<i32>(-32002i, -32145i, 2147483647i), vec4<u32>(arg_2.c.b.x, arg_1.c.b.x, u_input.b, 1u), arg_0.c.a, arg_1.c.d, 2147483647i), arg_2.c.e))).c.a.zz)).a.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(arg_0.c.b), firstLeadingBit(global3[_wgslsmith_index_u32(arg_1.c.b.x, 31u)])), firstTrailingBit(countOneBits(vec4<u32>(1u, 1u, arg_1.c.b.x, 0u)))) | ~_wgslsmith_div_u32(arg_1.c.b.x ^ 15961u, reverseBits(10616u)));
    var var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(arg_2.a, ~vec2<u32>(arg_1.c.b.x, arg_1.a.x)), firstTrailingBit(arg_1.c.b.yx), _wgslsmith_add_vec2_u32(arg_0.c.b.ww, ~arg_1.c.b.yx)), vec4<i32>(-1i) * -min(vec4<i32>(-5611i, -5769i, 2147483647i, u_input.c), _wgslsmith_clamp_vec4_i32(arg_0.b, arg_2.b, vec4<i32>(-25314i, -1i, arg_1.c.e, -1i))), func_2(arg_1.c.c.yx).a.c, countOneBits(2147483647i));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.d - _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.c.d))))));
    return var_2.c.d;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec3<bool> {
    let var_0 = ~_wgslsmith_mod_vec2_u32(~(~abs(vec2<u32>(45036u, u_input.b))), max(vec2<u32>(2742u, _wgslsmith_sub_u32(45773u, 24314u)), max(firstTrailingBit(vec2<u32>(u_input.a, 53446u)), vec2<u32>(u_input.b, u_input.a) << (vec2<u32>(6179u, u_input.b) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(775f, 1178f, -3039f, -1021f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(321f, -656f, 335f, -1070f), vec4<f32>(323f, -974f, 120f, 638f)))), func_2(vec2<i32>(1i, -27143i))), func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, -1486f, 513f, 1244f)))), Struct_3(Struct_2(vec2<u32>(u_input.b, 1u), vec4<i32>(u_input.c, arg_2.x, 0i, arg_0.x), Struct_1(vec3<i32>(0i, 0i, -2147483647i), global3[_wgslsmith_index_u32(11604u, 31u)], arg_1, 1902f, arg_2.x), arg_1.x))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-982f, 1000f, 823f, 2019f) * vec4<f32>(-750f, 1779f, 1393f, -1077f))), Struct_3(func_4(vec4<f32>(680f, -757f, -1000f, -701f), Struct_3(Struct_2(vec2<u32>(0u, 1u), arg_2, global2[_wgslsmith_index_u32(var_0.x, 20u)], arg_0.x))))), !all(vec4<bool>(true, false, false, false))))));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_0.x, 4294967295u), 20u)];
    let var_3 = Struct_2(vec2<u32>(u_input.a, ~_wgslsmith_div_u32(func_2(vec2<i32>(arg_1.x, -44659i)).a.a.x, 1u)), arg_2, Struct_1(max(vec3<i32>(0i, func_4(vec4<f32>(2794f, 1035f, var_2.d, var_2.d), Struct_3(Struct_2(var_0, arg_2, Struct_1(vec3<i32>(1i, u_input.c, -30884i), vec4<u32>(4294967295u, u_input.b, 0u, var_0.x), vec3<i32>(arg_2.x, u_input.c, arg_0.x), var_2.d, -1i), 9925i))).d, ~1i), vec3<i32>(i32(-1i) * -1i, -1i, arg_1.x)), ~func_2(-arg_0).a.c.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(-arg_2.x, -arg_2.x, -1i ^ arg_2.x), ~vec3<i32>(4640i, arg_1.x, arg_2.x), vec3<i32>(var_2.a.x, i32(-1i) * -2147483647i, arg_0.x)), -2102f, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(func_4(vec4<f32>(-895f, -1500f, -2137f, -635f), Struct_3(Struct_2(vec2<u32>(var_2.b.x, 1u), arg_2, Struct_1(vec3<i32>(arg_0.x, arg_1.x, var_2.c.x), var_2.b, vec3<i32>(arg_2.x, 0i, arg_1.x), var_1, var_2.a.x), 36218i))).b, -arg_2), func_4(vec4<f32>(var_1, var_1, 876f, var_1), func_2(arg_2.yw)).b)), arg_1.x);
    global1 = _wgslsmith_mult_u32(min(var_2.b.x, _wgslsmith_dot_vec2_u32(var_3.a ^ func_3(var_3, true, var_3.c.b), firstLeadingBit(var_2.b.yy))), ~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(48141u, 1u), var_2.b.x)));
    return select(global0[_wgslsmith_index_u32(~20747u, 14u)], !vec3<bool>(all(!global0[_wgslsmith_index_u32(4294967295u, 14u)]), any(vec2<bool>(true, true)) || all(vec4<bool>(true, false, true, true)), true), global0[_wgslsmith_index_u32(var_0.x, 14u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-abs(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c) ^ vec2<i32>(u_input.c, 2147483647i), -vec2<i32>(u_input.c, u_input.c))), vec3<i32>(-5840i, u_input.c, -2147483647i), -reverseBits(vec4<i32>(reverseBits(u_input.c), 1i >> (u_input.b % 32u), -1i, 32917i)));
    var_0 = global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(firstTrailingBit(129828u), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 1u), 4294967295u)), ~(~(~(~u_input.b))), any(!global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a), 14u)])), 14u)];
    var var_1 = (~_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 76362u), vec2<u32>(u_input.b, 4294967295u) & vec2<u32>(0u, u_input.a)) > 26091u) == var_0.x;
    var_1 = true;
    var var_2 = select(all(vec4<bool>(1i != u_input.c, true, any(var_0.xx), true)), !(min(~4294967295u, ~u_input.a) == abs(max(1u, u_input.b))), !(-_wgslsmith_div_i32(2147483647i, u_input.c) >= _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-1i, u_input.c, -8261i)), vec3<i32>(u_input.c, u_input.c, 27104i) >> (vec3<u32>(1u, u_input.a, 0u) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, ~min(~reverseBits(vec3<i32>(-2147483647i, u_input.c, u_input.c)), -(~vec3<i32>(0i, -1i, -19717i))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1764f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-220f)) * 318f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(vec2<u32>(u_input.a, u_input.a), vec4<i32>(-2147483647i, 1i, u_input.c, u_input.c), Struct_1(vec3<i32>(-1i, -1i, u_input.c), global3[_wgslsmith_index_u32(u_input.a, 31u)], vec3<i32>(0i, -40887i, u_input.c), -1000f, 1i), -14144i), func_4(vec4<f32>(562f, -907f, -292f, -548f), Struct_3(Struct_2(vec2<u32>(u_input.a, 101146u), vec4<i32>(u_input.c, 78958i, u_input.c, -18901i), global2[_wgslsmith_index_u32(u_input.b, 20u)], 2147483647i))), Struct_2(vec2<u32>(u_input.a, u_input.a), vec4<i32>(u_input.c, u_input.c, -30917i, u_input.c), global2[_wgslsmith_index_u32(730u, 20u)], 17713i), var_0.x)) + _wgslsmith_f_op_f32(f32(-1f) * -771f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_4(vec4<f32>(2581f, -326f, -908f, 929f), Struct_3(Struct_2(vec2<u32>(0u, u_input.b), vec4<i32>(u_input.c, 56275i, 0i, u_input.c), Struct_1(vec3<i32>(u_input.c, u_input.c, -6090i), global3[_wgslsmith_index_u32(64212u, 31u)], vec3<i32>(u_input.c, 35006i, u_input.c), -266f, 0i), u_input.c))).c.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1321f)), func_2(vec2<i32>(-22032i, -33307i)).a.c.d)), 1f));
}

