struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<f32>(-390f, 231f, -604f), vec3<bool>(false, true, true)), Struct_1(vec3<f32>(-551f, -1532f, -707f), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-947f, -1431f, 1002f), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(-1691f, -601f, 1054f), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-2158f, 627f, 1141f), vec3<bool>(false, false, false)), Struct_1(vec3<f32>(443f, -820f, 1000f), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(195f, 928f, 349f), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(-964f, 464f, 113f), vec3<bool>(false, false, true)), Struct_1(vec3<f32>(560f, -518f, 707f), vec3<bool>(false, true, true)), Struct_1(vec3<f32>(-833f, 2482f, -179f), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(175f, 324f, -1000f), vec3<bool>(false, false, false)), Struct_1(vec3<f32>(729f, 1057f, -1752f), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(1206f, 1508f, -279f), vec3<bool>(true, false, false)), Struct_1(vec3<f32>(1159f, -1000f, -815f), vec3<bool>(false, true, true)), Struct_1(vec3<f32>(-1656f, -384f, 680f), vec3<bool>(true, false, false)), Struct_1(vec3<f32>(-765f, -883f, -480f), vec3<bool>(true, true, false)));

var<private> global3: array<i32, 5> = array<i32, 5>(1i, -16430i, -1i, 0i, 93055i);

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = arg_0;
    global4 = -14123i;
    var_0 = arg_0;
    var var_1 = true;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(arg_0.a.x * var_0.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.x)) - -404f), 164f))), 951f, arg_0.a.x);
    return 1033f;
}

fn func_4(arg_0: vec3<u32>, arg_1: f32, arg_2: i32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1, 2801f, arg_1))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, 556f, 812f), vec3<f32>(arg_1, arg_1, arg_1))), true)))), global1.xzz);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0, _wgslsmith_clamp_i32(countOneBits(22146i), 1i, global3[_wgslsmith_index_u32(firstLeadingBit(1u), 5u)])))));
    let var_2 = Struct_1(vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(807f)) - -164f) - 1543f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -254f) - -463f)), vec3<bool>(true, !any(!vec4<bool>(false, var_0.b.x, global1.x, false)), select(true, all(!global1.zx), global0.x)));
    var var_3 = var_0.b.x;
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~arg_0.x), 0u), 5u)];
    return vec4<bool>(true, true, global1.x, global0.x);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.a.x);
    global3 = array<i32, 5>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(arg_0.a))), !arg_0.b);
    global3 = array<i32, 5>();
    var var_2 = select(-vec4<i32>(0i, arg_2, u_input.a, ~(~(-2147483647i))), vec4<i32>(0i << (1u % 32u), -u_input.b, ~1i, ~_wgslsmith_clamp_i32(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(arg_3, 2147483647i)), min(41762i, -36695i))), all(func_4(~vec3<u32>(43615u, 4398u, arg_1) | (vec3<u32>(arg_1, 1u, arg_1) << (vec3<u32>(1u, 27112u, 4294967295u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(arg_1, 16u)], 2147483647i))), min(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, arg_2), vec3<i32>(-16726i, -1i, 20519i)), -450i & arg_2))));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x * _wgslsmith_f_op_f32(abs(1f))), arg_0.a.x, _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))))), vec3<bool>(all(vec3<bool>(var_1.b.x, global1.x, any(vec4<bool>(false, true, global0.x, arg_0.b.x)))), global1.x, all(vec3<bool>(false, global1.x || false, global0.x))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = vec4<bool>(var_0.b.x, arg_3.b.x, true, true);
    var var_2 = global2[_wgslsmith_index_u32(select(abs(1u), ~firstTrailingBit(select(40730u, 1u, var_1.x)) >> (~(~min(1u, 4294967295u)) % 32u), !all(var_1.xy)), 16u)];
    let var_3 = true;
    let var_4 = ~(-(~(-max(0i, u_input.b))));
    return global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(reverseBits(vec3<u32>(4294967295u, 7213u, 23477u))), _wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 44463u, 18586u), vec3<u32>(43019u, 41927u, 66271u)), vec3<u32>(4294967295u, 28516u, 1u) & select(vec3<u32>(41219u, 1u, 4294967295u), vec3<u32>(6099u, 32186u, 1u), var_0.b.x))), vec3<u32>(~abs(abs(19911u)), firstTrailingBit(1u), firstTrailingBit(~reverseBits(8928u)))), 16u)];
}

fn func_6(arg_0: Struct_1) -> u32 {
    global2 = array<Struct_1, 16>();
    var var_0 = true;
    var var_1 = vec3<i32>((u_input.b >> (4294967295u % 32u)) >> (_wgslsmith_div_u32(39888u, 1u << (1u % 32u)) % 32u), ~2147483647i, u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-459f - arg_0.a.x));
    let var_3 = -var_1.xy;
    return ~_wgslsmith_mod_u32(703u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 4294967295u, 0u)) | ~1u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global3 = array<i32, 5>();
    let var_0 = arg_0;
    global4 = u_input.b;
    var var_1 = 0u;
    let var_2 = ~_wgslsmith_mult_u32(func_6(func_5(Struct_1(vec3<f32>(-728f, var_0.a.x, arg_1.a.x), var_0.b), -984f, vec3<f32>(-1461f, var_0.a.x, arg_1.a.x), func_2(Struct_1(arg_1.a, arg_0.b), 15397u, -14433i, u_input.b))), ~(~firstLeadingBit(88623u)));
    return countOneBits(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~1u);
    var var_1 = false;
    let var_2 = -vec2<i32>(func_1(global2[_wgslsmith_index_u32(1u, 16u)], Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, -2480f, 1047f) + vec3<f32>(-403f, -727f, 394f)), global1.zxz)), global3[_wgslsmith_index_u32(1u, 5u)] ^ -2147483647i);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(Struct_1(vec3<f32>(728f, 956f, -397f), global1.zwy), min(4294967295u, 77693u), ~var_2.x, u_input.b).a.x, func_2(Struct_1(vec3<f32>(2310f, -1229f, 1000f), global1.xwz), min(4294967295u, 61589u), u_input.a, -29593i).a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(global2[_wgslsmith_index_u32(0u, 16u)], -55814i)))), -1249f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1381f, -2031f, 1139f, 541f))) * vec4<f32>(-1091f, 903f, -657f, -2036f)))), select(func_4(vec3<u32>(15055u, 87236u, 4344u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(553f, 651f, -1433f), global1.yyy), var_2.x)) + 117f), abs(var_2.x)), func_4(vec3<u32>(_wgslsmith_clamp_u32(6098u, 15783u, 0u), 1u, _wgslsmith_div_u32(15862u, 15119u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(867f, -161f)) + _wgslsmith_f_op_f32(sign(197f))), 1i), func_5(func_2(Struct_1(vec3<f32>(1629f, 1526f, -882f), global1.yzx), countOneBits(62276u), -global3[_wgslsmith_index_u32(0u, 5u)], select(28328i, 2147483647i, global0.x)), 365f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-742f, -1000f, -1242f)))), func_5(global2[_wgslsmith_index_u32(reverseBits(6835u), 16u)], _wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1115f, 2354f, 1401f)), global2[_wgslsmith_index_u32(1u, 16u)])).b.x)));
    let var_4 = _wgslsmith_mod_i32(1i, global3[_wgslsmith_index_u32(~(~(~(~50349u))), 5u)]);
    var var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(var_3.yyx * vec3<f32>(_wgslsmith_f_op_f32(215f * -330f), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_div_f32(1333f, var_3.x))), global1.yww);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, -22976i, reverseBits((_wgslsmith_dot_vec4_u32(vec4<u32>(53914u, 0u, 0u, 50668u), vec4<u32>(0u, 0u, 4294967295u, 29510u)) >> (reverseBits(4294967295u) % 32u)) ^ 1u), var_2, ~(~(~_wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, 49104i, -35678i), vec3<i32>(-1i, u_input.a, var_2.x)))));
}

