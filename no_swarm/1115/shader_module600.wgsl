struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, 2147483647i), true, -791f, vec3<i32>(i32(-2147483648), 55407i, 2147483647i)), Struct_1(vec4<i32>(i32(-2147483648), 51421i, -13878i, -39543i), true, -155f, vec3<i32>(-42833i, 67476i, 1427i)), Struct_1(vec4<i32>(-27077i, 2147483647i, 44678i, 30425i), false, -464f, vec3<i32>(-22910i, -18547i, 0i)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 2147483647i, -32560i), true, -873f, vec3<i32>(19907i, i32(-2147483648), 38220i)), Struct_1(vec4<i32>(37021i, -7791i, 2147483647i, -27934i), false, 498f, vec3<i32>(-23491i, i32(-2147483648), -27782i)), Struct_1(vec4<i32>(74963i, -16418i, 33111i, 1i), true, 706f, vec3<i32>(-11542i, -1i, i32(-2147483648))), Struct_1(vec4<i32>(i32(-2147483648), 979i, -40189i, 1i), true, 1800f, vec3<i32>(0i, 2147483647i, 4366i)), Struct_1(vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -15322i), false, 932f, vec3<i32>(8587i, 0i, -30281i)), Struct_1(vec4<i32>(-1i, 6195i, -35488i, -24348i), false, 749f, vec3<i32>(-29065i, 2147483647i, 1i)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(select(~1u, 20049u, !global0.b), abs(~0u)), 1u), firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), 1u, ~35862u);
    var_0 = abs(reverseBits(max(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 34212u, 41723u, 0u), vec4<u32>(var_0.x, 10375u, var_0.x, 1u))))) >> (~(~vec4<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), ~var_0.x, max(var_0.x, var_0.x), var_0.x)) % vec4<u32>(32u));
    return 2091f;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_0.c;
    let var_1 = 1i;
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(func_2());
    global0 = global1[_wgslsmith_index_u32(~25047u, 9u)];
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(abs(vec2<u32>(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 85908u), vec3<u32>(62477u, 5715u, 63119u)))), abs(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, 17505u)), vec2<u32>(0u, 39500u)))), ~(~vec2<u32>(1u, 1u)));
    let var_1 = Struct_2(func_1(Struct_1(vec4<i32>(arg_1.d.x, 17999i, u_input.a, -49016i) | -global0.a, any(vec2<bool>(arg_1.b, global0.b)), -291f, -(vec3<i32>(global0.d.x, u_input.c.x, u_input.b) | vec3<i32>(u_input.d, arg_0.d.x, global0.a.x))), vec3<u32>(15760u, var_0.x, 28305u), u_input.c, func_1(Struct_1(vec4<i32>(1i, 2147483647i, 30196i, 16984i) | arg_1.a, !global0.b, _wgslsmith_f_op_f32(f32(-1f) * -293f), arg_1.a.wzy), ~vec3<u32>(0u, 9592u, var_0.x), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, arg_0.a.x), global0.a.yz, vec2<i32>(-1i, global0.a.x)), arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(round(319f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.c, arg_0.c)), -1252f))));
    let var_2 = arg_0;
    global0 = func_1(Struct_1(vec4<i32>(i32(-1i) * -arg_0.d.x, 0i, arg_0.d.x, ~_wgslsmith_mod_i32(-18544i, 1i)), all(vec3<bool>(true, true, true)), -902f, ~vec3<i32>(-2147483647i, min(var_1.a.a.x, var_1.a.a.x), arg_1.a.x)), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(53422u, var_0.x, var_0.x)), min(~(~vec3<u32>(var_0.x, var_0.x, var_0.x)), vec3<u32>(abs(75251u), 28778u, 0u))), -global0.a.xz, var_2);
    var var_3 = firstLeadingBit(global0.a & (select(vec4<i32>(-1i, var_2.a.x, u_input.d, 2147483647i), abs(global0.a), select(vec4<bool>(false, true, global0.b, true), vec4<bool>(false, arg_1.b, global0.b, arg_0.b), true)) | ~(~arg_0.a)));
    return _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, var_0.x), var_0), var_0) << (select(vec2<u32>(35768u, var_0.x), var_0, var_0.x != var_0.x) % vec2<u32>(32u))), max(vec2<u32>(22280u << (abs(var_0.x) % 32u), 38442u >> (var_0.x % 32u)), vec2<u32>(min(1u, var_0.x & 31395u), _wgslsmith_mod_u32(~1u, var_0.x & var_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = func_1(Struct_1(arg_0.a, !arg_2.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(931f, -415f) + _wgslsmith_f_op_f32(-arg_0.c)) - -975f), ~(-arg_0.d)), vec3<u32>(abs(4294967295u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(52746u, 14245u, 4294967295u, 1u), vec4<u32>(13788u, 4294967295u, 24796u, 4294967295u))), 51532u), vec2<i32>(abs(-arg_3.x) << (_wgslsmith_mult_u32(abs(0u), ~1u) % 32u), arg_0.d.x), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(firstTrailingBit(arg_3.x), ~(-1i), reverseBits(arg_2.a.a.x), u_input.c.x), ~(vec4<i32>(arg_2.a.a.x, global0.a.x, arg_3.x, 2147483647i) | arg_2.a.a)), arg_0.b, 2460f, vec3<i32>(i32(-1i) * -arg_3.x, -49340i, arg_0.d.x)));
    var var_1 = func_1(arg_0, countOneBits(~vec3<u32>(1u, 1u, 1u)), var_0.d.zy, arg_0);
    let var_2 = arg_3.x;
    let var_3 = ~2147483647i;
    global0 = func_1(Struct_1(-firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -5438i, global0.a.x, var_0.d.x), global0.a)), -14146i < (min(var_1.d.x, var_0.a.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(19158u, 2711u), vec2<u32>(1u, 15970u)) % 32u)), -236f, min(arg_2.a.a.zzy, -_wgslsmith_div_vec3_i32(global0.a.ywy, var_0.a.wxw))), _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 48326u), vec2<u32>(78549u, 4294967295u)) | ~25333u, _wgslsmith_dot_vec3_u32(~vec3<u32>(20741u, 19370u, 0u), abs(vec3<u32>(19161u, 65042u, 4294967295u))), ~1u), _wgslsmith_sub_vec3_u32(~vec3<u32>(6346u, 4294967295u, 1u) ^ select(vec3<u32>(53069u, 8629u, 27505u), vec3<u32>(0u, 36464u, 1u), arg_0.b), ~vec3<u32>(30558u, 58332u, 47182u))), select(_wgslsmith_div_vec2_i32(-select(vec2<i32>(arg_2.a.d.x, -59626i), u_input.c, vec2<bool>(false, true)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1.d.x, global0.d.x), vec2<i32>(2147483647i, 28789i)))), vec2<i32>(arg_0.d.x, -(global0.d.x << (49331u % 32u))), !vec2<bool>(true, arg_0.b)), Struct_1(var_1.a, false, 942f, ~func_1(Struct_1(vec4<i32>(-1i, 0i, 2147483647i, var_3), arg_1, arg_0.c, arg_2.a.a.yxz), vec3<u32>(0u, 0u, 4294967295u), firstTrailingBit(vec2<i32>(-2154i, 2147483647i)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(16056u, 127319u), 9u)]).d));
    return StorageBuffer(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), 1380f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + 488f) - _wgslsmith_f_op_f32(-604f * arg_2.a.c)), 677f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1171f, 2218f, arg_0.c, 1246f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, -1907f, arg_2.a.c, global0.c))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1222f - _wgslsmith_f_op_f32(1000f + 773f)) * _wgslsmith_f_op_f32(-var_0.c)), -572f, true)), 2129f, abs(max(~_wgslsmith_clamp_u32(46237u, 0u, 14395u), firstTrailingBit(_wgslsmith_mod_u32(1u, 38062u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 4294967295u, 1u) & countOneBits(func_3(func_1(Struct_1(global0.a, global0.b, global0.c, vec3<i32>(u_input.d, global0.a.x, global0.d.x)), vec3<u32>(64962u, 1u, 1u), global0.a.zz, global1[_wgslsmith_index_u32(4294967295u, 9u)]), Struct_1(global0.a, false, 1051f, vec3<i32>(-30694i, -1i, global0.d.x)), false)), 9u)], global0.b, Struct_2(Struct_1(global0.a, !func_1(Struct_1(vec4<i32>(2147483647i, -1i, global0.d.x, u_input.b), global0.b, global0.c, vec3<i32>(u_input.b, 32410i, global0.d.x)), vec3<u32>(9269u, 6104u, 1u), global0.a.zy, Struct_1(global0.a, global0.b, -2090f, vec3<i32>(global0.a.x, global0.d.x, global0.d.x))).b, global0.c, firstTrailingBit(min(vec3<i32>(global0.d.x, global0.d.x, -2147483647i), vec3<i32>(u_input.a, u_input.a, global0.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.c, global0.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(352f, global0.c) * vec2<f32>(global0.c, -754f)), any(vec2<bool>(global0.b, false)))))), vec3<i32>(~u_input.c.x, _wgslsmith_mult_i32(1i, -_wgslsmith_add_i32(u_input.b, 1i)), -u_input.a));
}

