struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 35035u);

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<f32>(-146f, 1961f), vec4<bool>(true, true, false, false)), Struct_1(vec2<f32>(-2158f, 659f), vec4<bool>(false, false, false, true)), Struct_1(vec2<f32>(1189f, -551f), vec4<bool>(true, true, true, true)), Struct_1(vec2<f32>(603f, 1000f), vec4<bool>(false, true, true, true)), Struct_1(vec2<f32>(867f, 1000f), vec4<bool>(false, true, true, false)), Struct_1(vec2<f32>(125f, 1332f), vec4<bool>(true, false, true, true)), Struct_1(vec2<f32>(1000f, -1510f), vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(-543f, -1000f), vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(-329f, -1056f), vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(-583f, -1000f), vec4<bool>(true, true, false, false)), Struct_1(vec2<f32>(2204f, -624f), vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(-101f, -113f), vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(313f, -1382f), vec4<bool>(false, false, true, true)), Struct_1(vec2<f32>(991f, -296f), vec4<bool>(false, true, true, true)), Struct_1(vec2<f32>(-172f, -604f), vec4<bool>(false, false, false, true)), Struct_1(vec2<f32>(-495f, -644f), vec4<bool>(true, true, true, false)), Struct_1(vec2<f32>(-191f, 326f), vec4<bool>(true, true, true, true)), Struct_1(vec2<f32>(-112f, -1000f), vec4<bool>(false, true, true, false)), Struct_1(vec2<f32>(-542f, -1318f), vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(-1841f, 300f), vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(252f, -729f), vec4<bool>(true, true, true, false)), Struct_1(vec2<f32>(160f, -774f), vec4<bool>(true, false, true, false)), Struct_1(vec2<f32>(1585f, 1829f), vec4<bool>(false, false, false, false)), Struct_1(vec2<f32>(-510f, 1000f), vec4<bool>(true, true, false, true)), Struct_1(vec2<f32>(592f, 1617f), vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(-1190f, 1600f), vec4<bool>(false, false, false, true)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = ((u_input.a << (~_wgslsmith_mult_u32(global0.x, global0.x) % 32u)) | u_input.a) ^ -_wgslsmith_clamp_i32(reverseBits(1i), ~(~27879i), abs(0i));
    return select(vec2<u32>(0u, 0u), vec2<u32>(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(49586u, global0.x), vec2<u32>(0u, 0u))), _wgslsmith_sub_u32(global0.x, 9287u)), true);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<Struct_1, 15>();
    var var_0 = global1[_wgslsmith_index_u32(global0.x & ~_wgslsmith_dot_vec2_u32(func_3(vec2<f32>(-101f, -1710f), Struct_1(vec2<f32>(719f, 389f), vec4<bool>(true, true, true, true))), vec2<u32>(global0.x ^ global0.x, max(69307u, 36192u))), 15u)];
    var var_1 = _wgslsmith_f_op_f32(step(171f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * var_0.a.x), var_0.a.x)))))) >= var_0.a.x;
    global0 = select(vec2<u32>(139686u, 1u), ((vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(global0.x, 1u) % vec2<u32>(32u))) ^ ~vec2<u32>(1u, global0.x)) | vec2<u32>(global0.x & global0.x, global0.x), false) >> (~(~((vec2<u32>(global0.x, global0.x) >> (vec2<u32>(108870u, global0.x) % vec2<u32>(32u))) & vec2<u32>(0u, global0.x))) % vec2<u32>(32u));
    let var_2 = _wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    return global2[_wgslsmith_index_u32(global0.x, 26u)];
}

fn func_4(arg_0: Struct_1) -> vec2<u32> {
    var var_0 = ~_wgslsmith_add_u32(global0.x, _wgslsmith_sub_u32(51874u >> (global0.x % 32u), global0.x));
    var var_1 = (-(countOneBits(vec3<i32>(-15201i, u_input.a, u_input.a)) ^ vec3<i32>(-605i, u_input.a, 2147483647i)) | vec3<i32>(2147483647i, u_input.a, abs(i32(-1i) * -27689i))) >> (vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_sub_u32(28206u, 1u), firstTrailingBit(22420u)), 1u, ~(~4294967295u)) % vec3<u32>(32u));
    var var_2 = !arg_0.b.zxy;
    var var_3 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    var var_4 = ~(~abs(vec3<u32>(48038u, 5280u, global0.x) | vec3<u32>(global0.x, 0u, global0.x))) | _wgslsmith_clamp_vec3_u32(select(abs(~vec3<u32>(global0.x, 19720u, global0.x)), countOneBits(~vec3<u32>(global0.x, 0u, global0.x)), !vec3<bool>(true, arg_0.b.x, false)), ~(~(vec3<u32>(1u, global0.x, 56228u) << (vec3<u32>(0u, 0u, global0.x) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32((vec3<u32>(0u, 0u, 5220u) & vec3<u32>(13782u, global0.x, global0.x)) << (reverseBits(vec3<u32>(39511u, 9698u, 1u)) % vec3<u32>(32u)), ~vec3<u32>(36948u, global0.x, 80923u) & vec3<u32>(global0.x, global0.x, 4294967295u), max(vec3<u32>(global0.x, 4294967295u, global0.x), vec3<u32>(0u, global0.x, global0.x))));
    return vec2<u32>(_wgslsmith_add_u32(var_4.x, global0.x << (_wgslsmith_add_u32(1u, global0.x) % 32u)), ~(~_wgslsmith_clamp_u32(global0.x, global0.x, 12366u))) | vec2<u32>(~min(1u, global0.x), ~_wgslsmith_dot_vec2_u32(var_4.xx, select(vec2<u32>(var_4.x, var_4.x), var_4.yz, arg_0.b.x)));
}

fn func_1(arg_0: bool) -> vec2<f32> {
    global0 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(func_4(func_2(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a))) | vec2<u32>(~1u, _wgslsmith_sub_u32(4294967295u, 0u)), vec2<u32>(_wgslsmith_clamp_u32(global0.x, _wgslsmith_clamp_u32(global0.x, 4294967295u, 3614u), ~4294967295u), ~(~global0.x))), _wgslsmith_mod_vec2_u32(~vec2<u32>(global0.x, 0u), vec2<u32>(select(global0.x, 29043u, arg_0), 1u) | vec2<u32>(_wgslsmith_mod_u32(29529u, global0.x), 4294967295u >> (global0.x % 32u))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-588f, _wgslsmith_f_op_f32(452f * 1463f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1050f, 163f) - -1707f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-521f, _wgslsmith_f_op_f32(1f * -276f))), -1916f)));
    global2 = array<Struct_1, 26>();
    let var_1 = false;
    var var_2 = vec2<i32>(u_input.a, countOneBits(u_input.a)) ^ select(~(reverseBits(vec2<i32>(-2147483647i, u_input.a)) >> (~vec2<u32>(59094u, global0.x) % vec2<u32>(32u))), ~vec2<i32>(-30657i, u_input.a ^ 1i), select(vec2<bool>(true, !var_1), select(vec2<bool>(true, true), func_2(vec4<i32>(2147483647i, 2147483647i, -6139i, 17115i)).b.yz, true), any(select(vec4<bool>(var_1, true, arg_0, true), vec4<bool>(true, false, false, true), vec4<bool>(var_1, true, true, var_1)))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -135f), 1741f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(658f, 763f), 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-813f, 1066f), vec2<f32>(2002f, -3366f), arg_0))))));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    return func_2(~vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(-36272i, -2147483647i)), -1i << (global0.x % 32u), firstTrailingBit(u_input.a), -u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 26>();
    var var_0 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(all(vec3<bool>(false, false, false)))))), vec4<bool>(true, !all(vec4<bool>(true, true, true, false)), !all(vec3<bool>(false, false, true)), any(func_2(vec4<i32>(0i, 3348i, 14530i, u_input.a)).b))), !(_wgslsmith_f_op_f32(f32(-1f) * -827f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1863f, 459f)) - _wgslsmith_f_op_f32(min(1792f, 1832f)))), global1[_wgslsmith_index_u32(max(1u, global0.x), 15u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-548f, -1005f, -869f, -1827f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, 451f, -202f, 1174f) + vec4<f32>(-2224f, -304f, 1739f, -1051f))))))));
    var var_1 = func_5(func_5(Struct_1(var_0.a, !var_0.b), var_0.b.x, Struct_1(vec2<f32>(_wgslsmith_div_f32(1000f, 649f), -3176f), vec4<bool>(true, true, !var_0.b.x, var_0.b.x && var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-558f, -1056f, -292f, var_0.a.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, -115f, var_0.a.x, -1119f), vec4<f32>(-2160f, var_0.a.x, 152f, 1120f), var_0.b))))), var_0.b.x, func_2(-_wgslsmith_mod_vec4_i32(vec4<i32>(58280i, u_input.a, 58758i, u_input.a), ~vec4<i32>(2147483647i, u_input.a, -2147483647i, -2147483647i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(272f + 656f), -1793f, -841f, -453f))));
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(u_input.a, 15083i, -1i, 0i) ^ -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), -vec4<i32>(min(u_input.a, u_input.a), 0i, -u_input.a, _wgslsmith_sub_i32(0i, 22950i)), ~countOneBits(vec4<i32>(-1546i, -14685i, u_input.a, u_input.a))), vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(abs(select(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, -8069i, u_input.a), var_1.b.x)), (vec3<i32>(u_input.a, 0i, -2147483647i) ^ vec3<i32>(11317i, 1i, u_input.a)) | abs(vec3<i32>(u_input.a, -11095i, u_input.a))), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(9163i, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 14854i, u_input.a, u_input.a), vec4<bool>(var_0.b.x, false, false, var_1.b.x)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(10779i, u_input.a, 1i, 67994i)), -vec4<i32>(u_input.a, u_input.a, -3041i, u_input.a))), u_input.a));
    var var_3 = all(var_1.b.yw);
    var var_4 = func_2(vec4<i32>(-29593i, -1i << (firstLeadingBit(min(global0.x, 65731u)) % 32u), max(u_input.a, _wgslsmith_sub_i32(32288i, i32(-1i) * -52178i)), u_input.a << (_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global0.x, global0.x, 12815u)), vec3<u32>(global0.x, 1u, 2248u) >> (vec3<u32>(6750u, global0.x, 52128u) % vec3<u32>(32u))) % 32u)));
    var_1 = Struct_1(vec2<f32>(var_4.a.x, _wgslsmith_f_op_f32(-var_4.a.x)), select(select(func_2(vec4<i32>(-97062i, u_input.a, -46049i, u_input.a)).b, select(var_4.b, !var_4.b, var_4.a.x == 1000f), any(vec4<bool>(true, var_0.b.x, false, false))), var_1.b, var_0.b));
    let var_5 = ~global0.x;
    var var_6 = !func_2(~vec4<i32>(1i, i32(-1i) * -1i, u_input.a, ~u_input.a)).b;
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, reverseBits(~_wgslsmith_div_vec3_i32(abs(vec3<i32>(1i, u_input.a, 68366i)), ~vec3<i32>(2147483647i, u_input.a, -1i))));
}

