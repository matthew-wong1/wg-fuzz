struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(1102f, 792f, 246f), vec3<f32>(564f, -1000f, 653f), vec3<f32>(-623f, -423f, -721f), vec3<f32>(-1186f, -332f, 1000f), vec3<f32>(1704f, -197f, -431f), vec3<f32>(-457f, -329f, -1050f), vec3<f32>(-678f, 877f, 1000f), vec3<f32>(-216f, -642f, -968f), vec3<f32>(1000f, 327f, 140f), vec3<f32>(-668f, -548f, 699f), vec3<f32>(1000f, 315f, -635f));

var<private> global2: array<bool, 16>;

var<private> global3: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(62872u, 95295u), vec2<u32>(4455u, 49714u), vec2<u32>(9789u, 0u), vec2<u32>(69218u, 60761u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(934u, 1u), vec2<u32>(4294967295u, 24522u), vec2<u32>(0u, 1u), vec2<u32>(75046u, 29307u), vec2<u32>(22633u, 4294967295u), vec2<u32>(31482u, 4294967295u), vec2<u32>(49172u, 4294967295u), vec2<u32>(1u, 2678u), vec2<u32>(0u, 86798u), vec2<u32>(4294967295u, 22734u), vec2<u32>(0u, 14356u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 45311u), vec2<u32>(64537u, 1u), vec2<u32>(0u, 26540u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 11872u), vec2<u32>(1u, 72270u), vec2<u32>(35651u, 4294967295u), vec2<u32>(42738u, 21121u), vec2<u32>(1u, 4294967295u), vec2<u32>(27683u, 4294967295u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    var var_0 = true;
    var var_1 = max(min(_wgslsmith_mod_u32(~36576u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b.x, u_input.b.x, 8418u, 55623u), vec4<u32>(u_input.b.x, 7943u, u_input.b.x, u_input.b.x), vec4<bool>(arg_2, true, arg_2, false)), ~vec4<u32>(u_input.b.x, u_input.b.x, 19323u, u_input.b.x))), u_input.b.x), abs(4294967295u) >> (1u % 32u));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(152f, -556f))), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) - _wgslsmith_f_op_f32(trunc(arg_1.x))), 1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-266f, arg_1.x, 383f, arg_1.x)))));
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.xwx), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 389f, var_2.x) - vec3<f32>(arg_1.x, arg_1.x, arg_1.x))))), vec4<bool>(any(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], false, true)), true, any(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(36051u, 16u)], arg_2)), true & (u_input.c.x <= 1i)), _wgslsmith_sub_i32(40087i, firstLeadingBit(arg_0.x)) | ~_wgslsmith_mod_i32(u_input.c.x, 1i)), Struct_1(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(24172u, 11u)] + _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 11u)])), vec4<bool>(true, arg_2, !(false || arg_2), true), ~abs(select(u_input.a, 2147483647i, false))), !select(vec3<bool>(true, !arg_2, global2[_wgslsmith_index_u32(49089u, 16u)]), !select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)], false), vec3<bool>(arg_2, true, global2[_wgslsmith_index_u32(0u, 16u)]), vec3<bool>(false, false, true)), any(select(vec3<bool>(true, true, arg_2), vec3<bool>(global2[_wgslsmith_index_u32(9594u, 16u)], false, true), false))), max(_wgslsmith_mult_u32(_wgslsmith_mod_u32(20432u, 4294967295u), 48055u), abs(~u_input.b.x & ~u_input.b.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], vec3<f32>(455f, -1319f, arg_1.x))))), vec4<bool>(false, true, arg_2 | (u_input.b.x >= 87300u), all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(19198u, 16u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 16u)], true, true, false), vec4<bool>(arg_2, false, global2[_wgslsmith_index_u32(u_input.b.x, 16u)], false)))), _wgslsmith_sub_i32(-_wgslsmith_add_i32(arg_0.x, arg_0.x), ~2147483647i)));
    var var_4 = var_3.e.b.xx;
    return _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

fn func_2() -> Struct_3 {
    return Struct_3(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(-13132i, 1i, u_input.c.x, 37084i), vec3<f32>(-1000f, -738f, 1163f), true)) - -559f))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> vec2<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(121f * -1000f))))) != arg_1.b, arg_1.b);
    var var_1 = _wgslsmith_mod_u32(4294967295u, 55196u);
    var var_2 = Struct_3(false, -1000f);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-249f)), 1364f))), 1099f));
    global1 = array<vec3<f32>, 11>();
    return vec2<i32>(abs(firstLeadingBit(u_input.a)), -24732i);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(arg_2.x, u_input.c.x | u_input.a)), func_4(vec3<bool>(global2[_wgslsmith_index_u32(55367u, 16u)], !global2[_wgslsmith_index_u32(u_input.b.x, 16u)], true), func_2(), ~(~u_input.b.x))) ^ (vec2<i32>(u_input.a, countOneBits(u_input.c.x)) & u_input.c.xz);
    let var_1 = func_2();
    let var_2 = Struct_3(func_2().a, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2().b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x)))))));
    let var_3 = Struct_1(arg_1.yzw, !(!select(vec4<bool>(true, false, false, var_1.a), vec4<bool>(true, true, true, true), !var_1.a)), select(var_0.x, i32(-1i) * -38929i, all(vec2<bool>(true, true))));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 16>();
    var var_0 = Struct_2(func_1(vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-730f, -1000f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), ~vec3<i32>(1i, _wgslsmith_mod_i32(u_input.c.x, -2147483647i), firstLeadingBit(-2191i))), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-771f, -2456f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(521f, -406f, 154f, 204f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1394f, 1616f, 1195f, 947f), vec4<f32>(1868f, 860f, 1091f, 466f), true)))))), -(vec3<i32>(-1i, 15199i, -40721i) ^ vec3<i32>(-19263i, u_input.a, 33721i))), !(!func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-913f, -303f) - vec2<f32>(1551f, 1425f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, 1396f, 1915f, -926f) - vec4<f32>(1159f, -127f, 1065f, -753f)), u_input.c ^ vec3<i32>(u_input.a, 0i, 10948i)).b.yyw), u_input.b.x, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(18340u, 11u)]))), vec3<f32>(_wgslsmith_f_op_f32(abs(2278f)), 1f, _wgslsmith_f_op_f32(-820f * 1487f))), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1387f, 595f) - vec2<f32>(-1811f, 199f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1033f, -700f, -1566f, 556f), vec4<f32>(253f, -389f, 1000f, -399f), global2[_wgslsmith_index_u32(75443u, 16u)])))), ~(u_input.c & vec3<i32>(-44441i, -56360i, -1i))).b, select(20087i, 11365i, true)));
    let var_1 = var_0.b;
    let var_2 = !var_1.b.xx;
    let var_3 = ~vec4<i32>((_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.c, var_0.e.c, var_1.c), u_input.c) << (5146u % 32u)) & -_wgslsmith_div_i32(-2147483647i, -12315i), var_1.c, 1i, _wgslsmith_mod_i32(1i, -var_1.c) | -(u_input.a << (23514u % 32u)));
    var var_4 = u_input.c;
    var var_5 = countOneBits(max(~select(vec4<u32>(5405u, 1u, u_input.b.x, 1u), vec4<u32>(u_input.b.x, 0u, 4294967295u, var_0.d), var_1.b), min(firstLeadingBit(vec4<u32>(u_input.b.x, 39447u, 1u, u_input.b.x)), ~vec4<u32>(u_input.b.x, var_0.d, 0u, 1u)))) << ((~vec4<u32>(~var_0.d, _wgslsmith_div_u32(1u, var_0.d), u_input.b.x, u_input.b.x) ^ _wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 47549u, 26958u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d, 4294967295u, u_input.b.x, 50130u), vec4<u32>(var_0.d, 4294967295u, 1u, u_input.b.x)), ~4294967295u, 0u, ~0u))) % vec4<u32>(32u));
    global1 = array<vec3<f32>, 11>();
    global0 = array<Struct_3, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_3), ~(~0u), u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(1i >> (var_5.x % 32u), -15674i), -var_0.e.c));
}

