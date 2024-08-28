struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<f32> = vec4<f32>(-113f, 309f, -1103f, -1462f);

var<private> global2: array<Struct_3, 1>;

var<private> global3: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(937f, 1895f, -730f, -852f), vec4<f32>(593f, -100f, 1128f, -208f), vec4<f32>(1450f, 600f, -1000f, -387f), vec4<f32>(-1000f, -494f, 658f, -1799f), vec4<f32>(698f, 2199f, 529f, 1000f), vec4<f32>(985f, 451f, -107f, 1040f), vec4<f32>(472f, 1046f, -238f, 584f), vec4<f32>(-741f, -1723f, 660f, -1000f), vec4<f32>(1036f, -1348f, -566f, -675f), vec4<f32>(-816f, -1134f, -372f, 2759f), vec4<f32>(559f, 621f, 1000f, 583f), vec4<f32>(1000f, 757f, -1024f, -743f), vec4<f32>(-1000f, -2042f, 639f, -1275f), vec4<f32>(1000f, -1000f, -346f, -1000f), vec4<f32>(-548f, -944f, 678f, 489f), vec4<f32>(-1427f, 1706f, 905f, -964f), vec4<f32>(351f, 823f, -219f, -534f), vec4<f32>(1188f, 872f, 506f, 418f), vec4<f32>(-344f, -1022f, -199f, -432f), vec4<f32>(-247f, -1832f, -824f, -1007f), vec4<f32>(541f, -1802f, 860f, 562f), vec4<f32>(1581f, 216f, 1091f, -262f), vec4<f32>(-938f, 832f, -769f, -998f), vec4<f32>(386f, -1026f, -1851f, -1000f), vec4<f32>(486f, 106f, -722f, -237f), vec4<f32>(-997f, -144f, 815f, -1398f), vec4<f32>(-1953f, -1094f, -1331f, -525f), vec4<f32>(-1507f, -342f, -1903f, 435f), vec4<f32>(859f, 181f, -497f, 1147f));

var<private> global4: array<bool, 31> = array<bool, 31>(true, false, true, false, true, false, true, true, true, true, true, true, false, false, false, true, false, true, true, true, true, false, true, true, true, true, false, true, true, true, true);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec2<f32>, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_1 {
    global2 = array<Struct_3, 1>();
    var var_0 = ~(~(~_wgslsmith_add_u32(u_input.b, 8238u)));
    global2 = array<Struct_3, 1>();
    var var_1 = arg_0;
    let var_2 = Struct_1(-(countOneBits(u_input.a) | ~(-2147483647i & arg_3.x)));
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> vec4<u32> {
    global4 = array<bool, 31>();
    let var_0 = _wgslsmith_f_op_f32(-arg_1.c.b);
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(global1.xww, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.d.x, global1.x, 1206f) - arg_1.c.d) * _wgslsmith_f_op_vec3_f32(floor(global1.xwz))))))), global1.yzy));
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 1u)];
    let var_2 = select(vec3<i32>(-(i32(-1i) * -1i), var_1.c.b.a, -17882i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -abs(vec3<i32>(arg_2, 1i, var_1.c.a.a)), _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(17479i, u_input.a, 1i), vec3<i32>(u_input.d, -2147483647i, var_1.c.a.a)), _wgslsmith_div_vec3_i32(vec3<i32>(-26181i, arg_1.c.c.a.a, u_input.d), vec3<i32>(arg_2, 2147483647i, arg_0.a))), (vec3<i32>(var_1.c.b.a, 27839i, arg_1.b.c.a.a) << (vec3<u32>(1u, 40366u, u_input.b) % vec3<u32>(32u))) | -vec3<i32>(arg_2, u_input.c, 18159i))), global4[_wgslsmith_index_u32(u_input.b << (~max(reverseBits(u_input.b), 4203u) % 32u), 31u)]);
    return vec4<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4726u, 1u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 4294967295u)), ~vec2<u32>(77306u, 1u)), vec2<u32>(~1u, _wgslsmith_mult_u32(u_input.b, 9809u))), u_input.b, 76556u, abs(u_input.b));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_4 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_0.d))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.d.x, -1000f, -1000f)))), vec3<f32>(1154f, _wgslsmith_f_op_f32(sign(global1.x)), global0.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(arg_0.d)), arg_0.d)))));
    let var_0 = _wgslsmith_f_op_f32(ceil(-140f));
    let var_1 = ~(select(~vec2<u32>(30487u, arg_3) << (~vec2<u32>(44576u, arg_3) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), 1u), arg_0.a.x) << (~(~vec2<u32>(1u, 44868u)) % vec2<u32>(32u)));
    var var_2 = arg_0.c.a;
    var var_3 = _wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(func_3(func_2(36411i, vec2<f32>(global0.x, 792f), vec4<bool>(false, false, arg_2, false), vec4<i32>(-17806i, 0i, 22040i, u_input.c)), Struct_4(arg_0.d, global2[_wgslsmith_index_u32(var_1.x, 1u)], Struct_3(vec4<bool>(false, global4[_wgslsmith_index_u32(var_1.x, 31u)], true, true), global0.x, Struct_2(Struct_1(u_input.a), arg_0.c.b), vec3<f32>(-1566f, var_0, arg_0.d.x))), countOneBits(2147483647i)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_1.x, u_input.b, 4294967295u), vec4<u32>(3309u, u_input.b, arg_3, 17253u)) >> (~vec4<u32>(arg_3, arg_3, 23471u, var_1.x) % vec4<u32>(32u)), firstLeadingBit(max(vec4<u32>(var_1.x, u_input.b, 8400u, u_input.b), vec4<u32>(u_input.b, u_input.b, var_1.x, u_input.b)))), reverseBits(vec4<u32>(arg_3, _wgslsmith_mult_u32(47291u, arg_3), 1u, ~var_1.x)), vec4<bool>(_wgslsmith_mod_i32(0i, -39694i) > _wgslsmith_mod_i32(var_2.a, var_2.a), arg_0.a.x, true, (61039u & arg_3) >= 4294967295u)), max(~vec4<u32>(_wgslsmith_mult_u32(0u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(40055u, 60779u, 4294967295u, var_1.x), vec4<u32>(arg_3, arg_3, u_input.b, 1u)), 1u, ~var_1.x), vec4<u32>(_wgslsmith_dot_vec2_u32(min(var_1, var_1), vec2<u32>(var_1.x, 1u) << (vec2<u32>(4294967295u, var_1.x) % vec2<u32>(32u))), ~u_input.b & u_input.b, _wgslsmith_div_u32(abs(arg_3), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_3, 32787u, u_input.b), vec4<u32>(u_input.b, arg_3, 12534u, 24273u))), 1u)));
    return Struct_4(global1.wxw, Struct_3(arg_0.a, -672f, arg_0.c, vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -2367f, _wgslsmith_f_op_f32(max(arg_0.d.x, _wgslsmith_f_op_f32(-448f - 821f))))), Struct_3(arg_0.a, _wgslsmith_f_op_f32(1000f + arg_0.b), Struct_2(func_2(firstLeadingBit(1i), vec2<f32>(arg_0.b, 852f), select(vec4<bool>(arg_2, true, true, arg_0.a.x), vec4<bool>(arg_0.a.x, false, true, arg_2), arg_0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(-37392i, -2147483647i, arg_1, -1i), vec4<i32>(arg_0.c.a.a, -1i, arg_1, -29145i))), arg_0.c.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(421f, arg_0.b, -769f)), _wgslsmith_f_op_vec3_f32(global1.yxz * vec3<f32>(arg_0.b, global1.x, 674f)), select(arg_0.a.wwy, arg_0.a.yzz, arg_0.a.xyz))))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    var var_0 = arg_1.a.xx;
    global2 = array<Struct_3, 1>();
    global2 = array<Struct_3, 1>();
    var var_1 = reverseBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.b.c.b.a >> (u_input.b % 32u), arg_2.a), arg_2.a) >> (u_input.b % 32u));
    return u_input.b ^ ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = Struct_1(u_input.c);
    global2 = array<Struct_3, 1>();
    var var_1 = vec3<u32>(abs(arg_1), 4294967295u, max(_wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b), u_input.b));
    let var_2 = vec3<u32>(~(~31257u), 0u, _wgslsmith_div_u32(reverseBits(reverseBits(arg_1)), 0u));
    var_1 = ~(~vec3<u32>(u_input.b | (u_input.b & 42646u), max(u_input.b, ~var_2.x), ~1u));
    return StorageBuffer(~(~vec4<u32>(var_2.x, 0u, 4294967295u, 8626u) & countOneBits(~vec4<u32>(var_1.x, var_1.x, 24609u, 4294967295u))), _wgslsmith_dot_vec4_i32(vec4<i32>(-var_0.a, 0i, _wgslsmith_dot_vec2_i32(-vec2<i32>(5561i, -18860i), -vec2<i32>(2147483647i, u_input.a)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-20856i, -40081i, 0i), vec3<i32>(-2147483647i, var_0.a, -42560i))), -countOneBits(vec4<i32>(1i, -9999i, var_0.a, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global1.xyx;
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.yz)) - global1.yw);
    let x = u_input.a;
    s_output = func_5(110403i, min(select(1u, func_4(func_1(global2[_wgslsmith_index_u32(u_input.b, 1u)], 37543i, true, 58533u), func_1(global2[_wgslsmith_index_u32(u_input.b, 1u)], u_input.a, false, u_input.b), func_1(global2[_wgslsmith_index_u32(1u, 1u)], u_input.c, false, 40298u).b.c.a), !global4[_wgslsmith_index_u32(u_input.b, 31u)]), 4294967295u), func_1(global2[_wgslsmith_index_u32(37629u, 1u)], u_input.d, !global4[_wgslsmith_index_u32((u_input.b & 20450u) | firstTrailingBit(u_input.b), 31u)], _wgslsmith_mult_u32(~u_input.b & (u_input.b >> (u_input.b % 32u)), 1u)).b.c, func_1(func_1(global2[_wgslsmith_index_u32(u_input.b, 1u)], _wgslsmith_mult_i32(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.d, -2147483647i), vec3<i32>(-34490i, -2147483647i, -2147483647i))), true, _wgslsmith_mult_u32(func_4(Struct_4(vec3<f32>(global0.x, 548f, var_0.x), Struct_3(vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 31u)], global4[_wgslsmith_index_u32(0u, 31u)], false, global4[_wgslsmith_index_u32(26739u, 31u)]), -801f, Struct_2(Struct_1(u_input.c), Struct_1(u_input.c)), global1.wxy), global2[_wgslsmith_index_u32(11033u, 1u)]), Struct_4(global1.zwy, Struct_3(vec4<bool>(true, global4[_wgslsmith_index_u32(1u, 31u)], true, global4[_wgslsmith_index_u32(u_input.b, 31u)]), 144f, Struct_2(Struct_1(u_input.d), Struct_1(u_input.d)), global1.ywx), global2[_wgslsmith_index_u32(u_input.b, 1u)]), Struct_1(-20187i)), 1099u)).c, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.d, 31977i, 1i, u_input.d), vec4<i32>(-1i, 34126i, -20581i, -4264i)), true, 0u));
}

