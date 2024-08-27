struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

var<private> global1: array<u32, 32>;

var<private> global2: array<vec2<bool>, 20>;

var<private> global3: f32 = -533f;

var<private> global4: array<bool, 14> = array<bool, 14>(true, true, true, false, false, false, false, true, false, false, false, true, false, true);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = Struct_1(any(vec2<bool>(any(vec2<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 32u)], 14u)], global0.a)), !(arg_0 != arg_0))));
    let var_1 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, -660f))) <= -142f));
    global3 = arg_0;
    return var_1;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    global1 = array<u32, 32>();
    let var_0 = arg_1;
    global0 = func_2(1714f, 5778u, ~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b, u_input.b), arg_2.c, -1i), ~abs(vec3<i32>(arg_2.d, -12601i, arg_2.d)), vec3<i32>(countOneBits(8480i), -u_input.b, 75887i)));
    global4 = array<bool, 14>();
    return vec4<i32>(-min(u_input.b, 10538i), ~(-1i), _wgslsmith_mult_i32(arg_2.d, i32(-1i) * -29178i), arg_2.d) << (vec4<u32>(arg_2.b.x, min(firstTrailingBit(u_input.a), select(0u, 1u, var_0.a)), reverseBits(u_input.a), u_input.c) % vec4<u32>(32u));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = func_3(func_2(-155f, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, 1u), 12696u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23123u, 32u)], 32u)], 32u)], 32u)], ~u_input.a), ~_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, -2147483647i, 8396i), vec3<i32>(-15531i, u_input.b, 29953i))), Struct_1(any(arg_2.a.zy)), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(594f, 327f) * _wgslsmith_f_op_f32(round(1756f))), ~firstLeadingBit(vec4<u32>(36008u, 0u, global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58932u, 32u)], 32u)], 32u)])), arg_1, ~51424i)) ^ vec4<i32>(5316i, _wgslsmith_mult_i32(2075i, _wgslsmith_dot_vec2_i32(arg_0, -vec2<i32>(-1i, 4696i))), 1i, -((arg_0.x ^ -2147483647i) & ~(-2147483647i)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(sign(919f)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c, 1u, global1[_wgslsmith_index_u32(u_input.c, 32u)]) | vec4<u32>(2482u, u_input.c, global1[_wgslsmith_index_u32(41864u, 32u)], 3119u), vec4<u32>(23518u, 1u, 11908u, global1[_wgslsmith_index_u32(1u, 32u)]))) << (~(~(~vec4<u32>(60498u, u_input.c, 4294967295u, 30561u))) % vec4<u32>(32u)), arg_0.x, -2147483647i);
    let var_2 = true;
    global3 = var_1.a;
    global1 = array<u32, 32>();
    return vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), -589f);
}

fn func_4(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = Struct_2(vec4<bool>(false, false, all(vec3<bool>(false, arg_0.x > 863f, true)), global0.a));
    let var_1 = ~min(vec4<i32>(-32828i & reverseBits(u_input.b), -3351i >> (_wgslsmith_mult_u32(u_input.a, 8860u) % 32u), firstTrailingBit(u_input.b), _wgslsmith_mod_i32(u_input.b ^ 58160i, max(u_input.b, u_input.b))), -abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.b, -4061i, -2147483647i), vec4<i32>(16844i, u_input.b, 2147483647i, u_input.b), vec4<i32>(2147483647i, u_input.b, -2147483647i, u_input.b))));
    global2 = array<vec2<bool>, 20>();
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1250f) * -1724f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - 323f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f + arg_0.x))))));
    let var_2 = _wgslsmith_add_vec2_i32(reverseBits(var_1.zw), vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(64723i, 38169i, -51157i, 2147483647i), var_1, var_0.a), min(var_1, vec4<i32>(1i, u_input.b, u_input.b, -2147483647i))), 29740i)) ^ abs(-countOneBits(reverseBits(var_1.zz)));
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -574f, true)))), arg_0.x)), vec4<u32>(u_input.c << (1u % 32u), 1u, ~firstTrailingBit(u_input.c), u_input.a), ~_wgslsmith_add_i32(i32(-1i) * -24957i, ~(~var_2.x)), _wgslsmith_sub_i32(var_2.x, -(~u_input.b)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 32u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a, 332f) * vec2<f32>(arg_1.a, arg_1.a)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-176f, arg_1.a))))))));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(step(-897f, 508f))))), var_1.x), _wgslsmith_f_op_f32(exp2(arg_1.a)), 707f);
    var var_3 = arg_1.b & firstLeadingBit(arg_1.b);
    let var_4 = arg_1.b ^ arg_1.b;
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -1610f;
    global0 = func_5(!(!(!(!vec4<bool>(global0.a, false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 32u)], 14u)], true)))), func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(abs(vec2<i32>(u_input.b, 1i)), abs(14844i), Struct_2(vec4<bool>(global4[_wgslsmith_index_u32(0u, 14u)], global4[_wgslsmith_index_u32(66656u, 14u)], true, false)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1921f, 175f), vec2<f32>(1110f, 414f))), true))), (vec3<u32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28793u, 32u)], 32u)], 4294967295u, 7707u), vec3<u32>(0u, 62709u, global1[_wgslsmith_index_u32(u_input.a, 32u)])), 64399u) << ((vec3<u32>(10069u, global1[_wgslsmith_index_u32(348u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]) << (firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c, 32u)], u_input.a, 9383u)) % vec3<u32>(32u))) % vec3<u32>(32u))) >> (max(~func_4(vec2<f32>(-284f, -1144f)).b.wxy, ~(~vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 32u)], 0u, 1u))) % vec3<u32>(32u)));
    global2 = array<vec2<bool>, 20>();
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(~firstLeadingBit(vec2<i32>(1i, u_input.b)), u_input.b, Struct_2(!vec4<bool>(false, true, global0.a, true)))).x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1000f)))));
    let var_0 = _wgslsmith_f_op_f32(2261f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -357f) * _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(u_input.b, u_input.b), u_input.b, Struct_2(vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 14u)], global4[_wgslsmith_index_u32(55548u, 14u)], true, global0.a)))).x, _wgslsmith_f_op_vec2_f32(func_1(vec2<i32>(u_input.b, -1i), -2147483647i, Struct_2(vec4<bool>(true, global0.a, false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 32u)], 14u)])))).x)), _wgslsmith_f_op_f32(546f - _wgslsmith_f_op_f32(-1287f + _wgslsmith_f_op_f32(1281f + 240f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_sub_i32(func_4(vec2<f32>(-1276f, var_0)).d, -1i), 1i));
}

