struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_1(1i, vec3<i32>(1359i, -1i, -37901i), -1i), Struct_1(2147483647i, vec3<i32>(-8758i, -1i, -46959i), i32(-2147483648)), -1i, Struct_2(vec3<i32>(1i, 14288i, 21848i), vec3<u32>(0u, 16049u, 1u), Struct_1(1i, vec3<i32>(0i, -36015i, 51038i), -4680i))), Struct_3(Struct_1(25869i, vec3<i32>(-30697i, -8016i, 14341i), 1i), Struct_1(-1i, vec3<i32>(-1i, 2147483647i, 2147483647i), 47887i), -14570i, Struct_2(vec3<i32>(-17758i, 0i, 0i), vec3<u32>(7713u, 76u, 21193u), Struct_1(2147483647i, vec3<i32>(-21529i, 1i, 0i), -23117i))), Struct_3(Struct_1(15305i, vec3<i32>(-1i, -1i, -1i), 4968i), Struct_1(-43389i, vec3<i32>(-9928i, -4010i, 1i), 2147483647i), -106200i, Struct_2(vec3<i32>(-27673i, 2147483647i, -42508i), vec3<u32>(7167u, 1u, 4294967295u), Struct_1(-40391i, vec3<i32>(-13451i, -1i, 33440i), -1i))), Struct_3(Struct_1(0i, vec3<i32>(i32(-2147483648), 17556i, -195i), -1i), Struct_1(0i, vec3<i32>(18642i, 36747i, -1414i), -1i), -103785i, Struct_2(vec3<i32>(i32(-2147483648), 34420i, 2147483647i), vec3<u32>(1483u, 0u, 1u), Struct_1(1i, vec3<i32>(1i, 32584i, -46760i), 39315i))));

var<private> global1: vec2<f32>;

var<private> global2: vec4<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: bool) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, _wgslsmith_f_op_f32(floor(182f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1144f, -2001f)))))))) + arg_1.yx);
    var var_0 = Struct_5(!(!any(select(vec2<bool>(true, arg_2), vec2<bool>(false, arg_2), true))), Struct_1(-(arg_0 ^ 2147483647i), reverseBits(firstLeadingBit(select(vec3<i32>(arg_0, -3436i, -12256i), vec3<i32>(11776i, arg_0, arg_0), vec3<bool>(true, arg_2, false)))), ~(-arg_0)), arg_0, ~1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_1))))));
    var var_2 = 1000f;
    let var_3 = 2147483647i != ~firstLeadingBit(~(var_0.c | var_0.c));
    return any(!(!(!(!vec3<bool>(true, var_0.a, true)))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = u_input.d;
    let var_1 = Struct_1(arg_1.x, vec3<i32>(arg_1.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.x << (u_input.d.x % 32u), max(-12736i, arg_1.x)), arg_1.x), select(arg_1.x, -(~arg_1.x), func_3(arg_1.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1256f, global2.x, 1428f), global2.wzz)), all(vec2<bool>(true, false))))), (_wgslsmith_mod_i32(abs(arg_1.x), arg_1.x | 1i) >> ((~var_0.x << (1u % 32u)) % 32u)) | 1i);
    var var_2 = Struct_1(-83674i, ~(-_wgslsmith_clamp_vec3_i32(var_1.b, vec3<i32>(arg_1.x, var_1.b.x, arg_1.x), arg_1)) << ((select(vec3<u32>(15359u, 1u, u_input.c.x), select(vec3<u32>(var_0.x, 155311u, var_0.x), u_input.b.zyx, arg_0.x), arg_0) ^ ~vec3<u32>(u_input.a.x, 0u, u_input.d.x)) % vec3<u32>(32u)), ~(-48587i) >> (1u % 32u));
    global0 = array<Struct_3, 4>();
    let var_3 = var_0.x;
    return select(select(!(!(!vec4<bool>(false, arg_0.x, true, false))), vec4<bool>(-2147483647i != (var_1.c & -2147483647i), arg_0.x, any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true), select(select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(true, arg_0.x, false, arg_0.x)), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), !vec4<bool>(false, false, arg_0.x, arg_0.x)), true)), !vec4<bool>(arg_0.x, false | func_3(var_1.c, vec3<f32>(1289f, global2.x, 628f), true), true, true), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_3, var_0.x)), _wgslsmith_mult_vec3_u32(var_0.wxy, var_0.wwx)) >= (u_input.b.x >> (~(~0u) % 32u)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = select(vec4<bool>(!((1u ^ arg_0.b.x) <= _wgslsmith_dot_vec2_u32(arg_0.b.zx, arg_0.b.xz)), true, any(vec4<bool>(true, false, arg_0.a.x == arg_0.c.b.x, true)), any(func_2(vec3<bool>(true, true, true), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.x, -2147483647i, arg_0.a.x), vec3<i32>(arg_0.c.a, 12838i, arg_0.c.a), arg_0.c.b)))), vec4<bool>(select(true, false, false), any(select(func_2(vec3<bool>(false, true, false), arg_0.c.b).zww, func_2(vec3<bool>(false, true, false), vec3<i32>(-32935i, 48706i, -1i)).yxy, 1i == arg_0.a.x)), all(vec2<bool>(true, true)), false), true);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))) + 1307f), global2.x, all(var_0.xxy) | !var_0.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - -1039f) * _wgslsmith_f_op_f32(step(186f, global1.x)))))));
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -595f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.x, _wgslsmith_div_f32(-2376f, global2.x))) * _wgslsmith_div_f32(global2.x, 923f)), _wgslsmith_f_op_f32(-185f * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-304f, -997f), -1367f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-488f)) - -534f), -563f)));
    var var_1 = true;
    let var_2 = arg_0.c;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 4>();
    let var_0 = Struct_1(-countOneBits(~0i), min(firstLeadingBit(firstTrailingBit(select(vec3<i32>(-1i, 1i, -53828i), vec3<i32>(-31721i, 1i, -1i), vec3<bool>(false, false, false)))), vec3<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_add_i32(48699i, -1i)), 13376i, -func_1(Struct_2(vec3<i32>(-61673i, -1i, -34499i), vec3<u32>(u_input.b.x, 0u, 2500u), Struct_1(0i, vec3<i32>(-2147483647i, 1i, -2147483647i), -2147483647i))))), 1i);
    let var_1 = Struct_4(~max(min(vec4<i32>(10006i, 0i, 2147483647i, -39500i), vec4<i32>(-2147483647i, var_0.c, var_0.a, var_0.c)) << (max(vec4<u32>(4294967295u, 76639u, 1u, 86588u), u_input.d) % vec4<u32>(32u)), ~(~vec4<i32>(-34840i, 20683i, var_0.b.x, var_0.b.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32((var_0.b.zz & vec2<i32>(-1i, var_0.c)) & -vec2<i32>(32703i, 9043i), -vec2<i32>(var_0.b.x, var_0.c)), _wgslsmith_sub_vec2_i32(select(-vec2<i32>(var_0.b.x, -8026i), countOneBits(vec2<i32>(-17300i, var_0.c)), true), var_0.b.xx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(428f, global1.x, global2.x, 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 300f, 662f, global1.x), vec4<f32>(global2.x, global2.x, -1634f, 1234f), vec4<bool>(true, true, false, true)))))));
    let var_2 = Struct_3(var_0, var_0, -var_0.c, Struct_2(vec3<i32>(_wgslsmith_mult_i32(var_0.a, -var_0.b.x), ~54632i, min(1i, max(var_0.c, 2147483647i))), vec3<u32>(_wgslsmith_add_u32(firstTrailingBit(18750u), abs(3337u)), _wgslsmith_mod_u32(0u, 4294967295u), 1u), Struct_1(-2147483647i, ~vec3<i32>(-25265i, var_0.c, 12985i), 11589i)));
    let var_3 = abs(vec4<i32>(_wgslsmith_add_i32(-30667i, -_wgslsmith_dot_vec2_i32(vec2<i32>(85711i, var_0.c), var_2.b.b.yx)), var_2.b.b.x, i32(-1i) * -2147483647i, firstTrailingBit(59218i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(select(82249u, var_2.d.b.x, true) >> (firstLeadingBit(1u) % 32u), var_2.d.b.x), var_2.d.b.x);
}

