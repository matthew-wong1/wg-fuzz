struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(1i, 0u, i32(-2147483648), 2000f), Struct_1(1i, 14414u, 1i, 771f), Struct_1(2147483647i, 21248u, -23858i, -900f), Struct_1(-14187i, 2697u, 1i, -218f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> i32 {
    let var_0 = Struct_1((-select(2147483647i, 50749i, false) << ((1u | ~u_input.a.x) % 32u)) << (firstLeadingBit(u_input.a.x) % 32u), select(0u, 4294967295u, all(vec4<bool>(true, true, true, true))), countOneBits(2147483647i), 1000f);
    global0 = array<Struct_1, 4>();
    var var_1 = Struct_1(i32(-1i) * -_wgslsmith_div_i32(0i, 2147483647i), _wgslsmith_mult_u32(reverseBits(u_input.a.x), 1571u), var_0.a, _wgslsmith_f_op_f32(-var_0.d));
    var var_2 = -651f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d)))));
    let var_3 = var_1.b;
    return 30380i;
}

fn func_3() -> vec4<f32> {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_0 = 41920u;
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(418f, -1000f, -1168f, 430f) - vec4<f32>(774f, 1247f, 1519f, -888f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2101f, -860f, -331f, -937f)), _wgslsmith_div_vec4_f32(vec4<f32>(316f, -138f, 976f, 2010f), vec4<f32>(-207f, -1050f, -1019f, 332f))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2617f), _wgslsmith_f_op_f32(select(139f, 1374f, false)), _wgslsmith_f_op_f32(-566f - -964f), _wgslsmith_f_op_f32(f32(-1f) * -819f)))), true))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> bool {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.a.xw, u_input.a.xz)), vec2<u32>(~u_input.a.x, ~u_input.a.x)), select(~u_input.a.x, 79434u, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))))));
    let var_2 = Struct_1(~(~select(arg_3, -arg_0, true)), (32629u >> (~u_input.a.x % 32u)) ^ u_input.a.x, -59230i, arg_1.x);
    var var_3 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d)) + -150f) > arg_2, !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))));
    var_1 = ~_wgslsmith_mod_u32(~u_input.a.x, min(1u, abs(77748u)));
    return all(select(vec4<bool>(any(vec4<bool>(var_3.x, var_3.x, true, var_3.x)), false, var_3.x, all(vec4<bool>(false, false, true, true))), vec4<bool>(true && var_3.x, true, var_3.x, !var_3.x), false)) && false;
}

fn func_1() -> u32 {
    var var_0 = func_4(func_2(), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-130f, -1877f, -338f, 803f))) * _wgslsmith_f_op_vec4_f32(func_3())))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(529f)))), -countOneBits(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(24444i, -40888i, 0i), vec3<i32>(0i, -38951i, 22889i)))));
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, 1i, 1i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(0i, 2147483647i, -1i), ~vec3<i32>(50993i, 10499i, 1i))), _wgslsmith_sub_u32(u_input.a.x, min(~u_input.a.x, ~(u_input.a.x << (1u % 32u)))), _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, _wgslsmith_mod_i32(2147483647i, -1i)), ~countOneBits(vec2<i32>(27404i, 0i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(739f + _wgslsmith_f_op_vec4_f32(func_3()).x), 376f, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(0i, 3046i, -1i, 0i)), abs(vec4<i32>(-1i, 27227i, 14287i, -2147483647i))) != (-1076i << ((u_input.a.x | 88622u) % 32u)))));
    let var_2 = global0[_wgslsmith_index_u32(36963u, 4u)];
    global0 = array<Struct_1, 4>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = ~func_1() & u_input.a.x;
    let var_1 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false))), vec4<bool>(false, true, true, true)), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), func_4(-2147483647i, vec4<f32>(-842f, 533f, 2687f, 1138f), 782f, -1i))), select(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, any(vec3<bool>(false, false, true)), false, true)), !vec4<bool>(true, true, true, all(vec3<bool>(true, false, true)) | true));
    global0 = array<Struct_1, 4>();
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 4u)];
    var var_3 = select(select(vec2<bool>(true, false), !vec2<bool>(!var_1.x, !var_1.x), var_1.wy), var_1.yx, any(var_1));
    global0 = array<Struct_1, 4>();
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d, -1604f, var_2.d)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.d, var_2.d, var_2.d)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1593f, var_2.d) - vec3<f32>(-1363f, var_2.d, 1219f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(var_2.d)), _wgslsmith_f_op_f32(trunc(var_4.x)), var_4.x))), abs(max(_wgslsmith_add_vec4_i32(vec4<i32>(29946i, var_2.c, var_2.c, -1i), vec4<i32>(var_2.a, var_2.c, 14020i, var_2.c)), ~vec4<i32>(-1315i, 12980i, -32104i, var_2.c))) & countOneBits(vec4<i32>(i32(-1i) * -2147483647i, i32(-1i) * -2147483647i, var_2.c >> (44064u % 32u), var_2.c)), -530f);
}

