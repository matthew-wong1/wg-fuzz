struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec2<f32>(1206f, -929f), vec2<f32>(-259f, -354f)), Struct_1(vec2<f32>(1340f, -400f), vec2<f32>(312f, -1000f)), Struct_1(vec2<f32>(-956f, 1230f), vec2<f32>(-1619f, 161f)), Struct_1(vec2<f32>(324f, 107f), vec2<f32>(287f, -2039f)), Struct_1(vec2<f32>(1351f, -1879f), vec2<f32>(-412f, -379f)), Struct_1(vec2<f32>(253f, -900f), vec2<f32>(417f, -1000f)), Struct_1(vec2<f32>(-614f, -609f), vec2<f32>(-147f, -1000f)), Struct_1(vec2<f32>(-370f, -912f), vec2<f32>(508f, 1305f)), Struct_1(vec2<f32>(-1000f, 248f), vec2<f32>(-446f, 1079f)), Struct_1(vec2<f32>(156f, 566f), vec2<f32>(561f, -676f)), Struct_1(vec2<f32>(-2170f, -315f), vec2<f32>(675f, 1564f)), Struct_1(vec2<f32>(840f, 1058f), vec2<f32>(286f, -534f)), Struct_1(vec2<f32>(509f, 2840f), vec2<f32>(631f, -287f)), Struct_1(vec2<f32>(987f, -546f), vec2<f32>(-1191f, 1473f)), Struct_1(vec2<f32>(1163f, 2036f), vec2<f32>(-285f, 467f)), Struct_1(vec2<f32>(591f, 1089f), vec2<f32>(1228f, -1535f)), Struct_1(vec2<f32>(969f, 1968f), vec2<f32>(607f, 479f)), Struct_1(vec2<f32>(803f, -924f), vec2<f32>(1534f, -1648f)), Struct_1(vec2<f32>(1801f, -293f), vec2<f32>(-417f, -586f)), Struct_1(vec2<f32>(1000f, -2480f), vec2<f32>(546f, -1320f)), Struct_1(vec2<f32>(107f, -491f), vec2<f32>(-1530f, -1323f)), Struct_1(vec2<f32>(1125f, 601f), vec2<f32>(1429f, -1072f)), Struct_1(vec2<f32>(653f, -1512f), vec2<f32>(-1268f, -906f)));

var<private> global2: array<f32, 14> = array<f32, 14>(553f, -251f, 153f, -572f, -138f, 1262f, -143f, 867f, 1000f, -1030f, -2099f, 673f, -768f, -1089f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    var var_0 = vec2<i32>(firstTrailingBit(1i ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, 45520i, -2246i), vec3<i32>(49121i, -1i, 49066i))), countOneBits(~(-68685i)));
    let var_1 = u_input.a.zy;
    global0 = 1i;
    var_0 = vec2<i32>(-1i, 1i) & select(~(-(vec2<i32>(1i, 2147483647i) >> (u_input.a.zy % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, min(1i, 17116i)), vec2<i32>(-var_0.x, ~2147483647i)), true);
    var_0 = firstTrailingBit(max(-vec2<i32>(var_0.x, var_0.x), -vec2<i32>(2147483647i, -8429i)) | ((vec2<i32>(-1i, 44410i) << (vec2<u32>(25571u, var_1.x) % vec2<u32>(32u))) ^ (vec2<i32>(-1i, 2147483647i) >> (u_input.a.xy % vec2<u32>(32u))))) << (_wgslsmith_sub_vec2_u32(vec2<u32>(reverseBits(~var_1.x), _wgslsmith_dot_vec2_u32(max(u_input.a.wy, var_1), ~u_input.a.zw)), ~u_input.a.zx) % vec2<u32>(32u));
    return var_0.x;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 23u)];
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(-664f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(653f)) * var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -255f))), var_0.a);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -354f);
    let var_3 = var_1;
    let var_4 = ~vec2<i32>(arg_1, select(22127i, func_3(), false));
    return min(0i, func_3()) & (~(arg_1 >> ((32784u ^ u_input.a.x) % 32u)) ^ arg_1);
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = ~_wgslsmith_mult_i32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(78874u, 14u)], 561f) + vec2<f32>(1000f, 1546f)), -2147483647i >> (arg_0 % 32u)), -1i) >> (arg_0 % 32u);
    global0 = 2147483647i;
    global1 = array<Struct_1, 23>();
    global2 = array<f32, 14>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -480f), 1314f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(45900u, 14u)], global2[_wgslsmith_index_u32(101568u, 14u)]) - vec2<f32>(global2[_wgslsmith_index_u32(75673u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)])) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1816f, global2[_wgslsmith_index_u32(0u, 14u)]), vec2<f32>(-531f, global2[_wgslsmith_index_u32(0u, 14u)]), vec2<bool>(arg_1, true))))))));
    return ~(var_0 & ~(-var_0 ^ ~var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, true, !any(vec3<bool>(true, true, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(0u, 14u)], global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-680f)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1354f, -809f) + vec2<f32>(-277f, global2[_wgslsmith_index_u32(u_input.a.x, 14u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), vec2<f32>(-1037f, global2[_wgslsmith_index_u32(4294967295u, 14u)]))), vec2<bool>(var_0.x, true)))))));
    let var_2 = _wgslsmith_div_vec2_f32(var_1.b, var_1.a);
    var var_3 = abs(vec4<u32>(~1u, u_input.a.x, ~(~812u), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x))) ^ ~(~(~u_input.a) | vec4<u32>(u_input.a.x | u_input.a.x, 244u, ~u_input.a.x, firstLeadingBit(49363u)));
    let var_4 = Struct_1(vec2<f32>(1169f, global2[_wgslsmith_index_u32(var_3.x, 14u)]), var_1.b);
    global0 = -func_1(countOneBits(27765u | u_input.a.x), !(!(var_3.x <= var_3.x)));
    let var_5 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1416f)), _wgslsmith_f_op_f32(min(752f, _wgslsmith_f_op_f32(trunc(var_1.a.x))))))));
    var_0 = select(select(select(vec3<bool>(var_0.x, var_0.x, !var_0.x), !(!vec3<bool>(false, var_0.x, true)), false), select(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.x, true), true), vec3<bool>(var_3.x < u_input.a.x, false && var_0.x, false), select(vec3<bool>(false, false, var_0.x), !vec3<bool>(var_0.x, var_0.x, var_0.x), all(var_0.xx))), select(select(vec3<bool>(var_0.x, false, true), !vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, var_0.x), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, false, true)), var_0.x | true), !var_0.x)), !vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x != false, true, !(!(-1908f > var_1.b.x))));
    var var_6 = ~(~(~_wgslsmith_sub_u32(var_3.x, 1u))) & 145u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_4.a);
}

