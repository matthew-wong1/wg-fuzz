struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(1u, 4294967295u, 0u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<bool>) -> vec3<i32> {
    let var_0 = vec2<f32>(-162f, arg_1);
    global0 = array<u32, 3>();
    return ~vec3<i32>(_wgslsmith_mult_i32(~max(u_input.b, 16677i), -5678i), 47164i, abs(arg_0));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    global0 = array<u32, 3>();
    global0 = array<u32, 3>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(157f)))))), 1037f)), countOneBits(vec4<i32>(-12117i, arg_1, -(~2147483647i), i32(-1i) * -14017i)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-660f + -1275f), 2163f, select(any(vec2<bool>(true, false)), true, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1199f, 2108f) - 1458f))), 1f), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-258f, -864f, 2149f) - vec3<f32>(-1624f, -645f, -797f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-567f, 248f, -130f))) + vec3<f32>(-1249f, 1476f, -454f)), vec3<bool>(false, true, false))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1084f, -1872f)), -756f, _wgslsmith_f_op_f32(-677f + _wgslsmith_f_op_f32(select(-935f, -1000f, true))))));
    global0 = array<u32, 3>();
    var var_1 = any(select(!(!select(vec2<bool>(true, false), vec2<bool>(var_0.d, var_0.d), vec2<bool>(var_0.d, true))), select(!vec2<bool>(var_0.d, var_0.d), select(select(vec2<bool>(var_0.d, var_0.d), vec2<bool>(true, var_0.d), var_0.d), select(vec2<bool>(var_0.d, false), vec2<bool>(false, false), vec2<bool>(var_0.d, true)), false), var_0.d), false));
    return var_0.d;
}

fn func_1() -> vec3<f32> {
    let var_0 = max(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(1i, -1i, u_input.b)) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 15214i, 3558i) & vec3<i32>(-18654i, 0i, u_input.b), min(vec3<i32>(u_input.b, 36949i, 14959i), vec3<i32>(u_input.b, u_input.b, u_input.b)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -32015i, -u_input.b, -10210i ^ u_input.b), select(~vec3<i32>(7635i, u_input.b, u_input.b), func_2(2147483647i, -511f, vec2<bool>(true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-669f)))), vec4<i32>(u_input.b, u_input.b, var_0.x, _wgslsmith_div_i32(-var_0.x, _wgslsmith_div_i32(var_0.x, var_0.x)) & (reverseBits(var_0.x) >> (1u % 32u))), vec3<f32>(_wgslsmith_f_op_f32(min(1489f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-373f, _wgslsmith_f_op_f32(f32(-1f) * -142f), true)))), func_3(~firstLeadingBit(u_input.b), var_0.x) & (global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(1u, 3u)] << (u_input.a.x % 32u)), 3u)] <= 43771u), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -786f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-425f)))) - -446f)));
    var var_2 = Struct_1(var_1.e.x, -(~var_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.c.x, var_1.e.x, -939f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.e + vec3<f32>(var_1.e.x, var_1.e.x, 336f)) * vec3<f32>(var_1.e.x, var_1.a, var_1.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.e, vec3<f32>(-1000f, -603f, 1598f), var_1.d))))), !(true | any(!vec2<bool>(true, var_1.d))), vec3<f32>(_wgslsmith_f_op_f32(var_1.a * var_1.c.x), var_1.e.x, -184f));
    let var_3 = vec3<bool>(!((var_2.a < var_2.e.x) == any(vec4<bool>(true, var_2.d, false, false))), var_2.d, true);
    var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1757f)), vec4<i32>(60592i, -56931i, _wgslsmith_clamp_i32(abs(8789i), _wgslsmith_div_i32(var_1.b.x, var_2.b.x), _wgslsmith_clamp_i32(u_input.b, var_0.x, u_input.b)) & max(_wgslsmith_sub_i32(u_input.b, var_1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b.x, var_2.b.x, 3428i, var_2.b.x), var_2.b)), ~(-var_2.b.x)), var_2.e, !any(!select(vec4<bool>(var_3.x, var_3.x, var_3.x, var_2.d), vec4<bool>(var_1.d, true, false, false), vec4<bool>(true, var_2.d, var_1.d, var_1.d))), vec3<f32>(_wgslsmith_f_op_f32(step(645f, _wgslsmith_f_op_f32(select(var_1.e.x, -965f, true)))), -153f, _wgslsmith_f_op_f32(floor(-247f))));
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.e.x, var_2.c.x, var_1.e.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.a, 362f, 552f)))) * vec3<f32>(-731f, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(round(var_1.e.x)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.x, var_1.a, var_1.e.x) - vec3<f32>(var_1.e.x, -941f, -776f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1564f, 2614f, var_2.c.x) - var_1.e) * vec3<f32>(var_1.a, 478f, -691f))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    global0 = array<u32, 3>();
    var var_0 = arg_1;
    global0 = array<u32, 3>();
    let var_1 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], u_input.a.x), countOneBits(vec2<u32>(select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31284u, 3u)], 3u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 3u)], 3u)], arg_0), global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(10669u, 3u)], 3u)]))), _wgslsmith_div_vec2_u32(abs(~(~vec2<u32>(4294967295u, u_input.a.x))), _wgslsmith_sub_vec2_u32(u_input.a.zx << (vec2<u32>(global0[_wgslsmith_index_u32(9617u, 3u)], 8332u) % vec2<u32>(32u)), u_input.a.xz)));
    global0 = array<u32, 3>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(544f)))))), vec4<i32>(0i, reverseBits(u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-36942i, u_input.b, u_input.b, -1i), vec4<i32>(u_input.b, 0i, u_input.b, u_input.b)), _wgslsmith_sub_i32(u_input.b, u_input.b)) ^ ((vec4<i32>(37401i, -15664i, -39074i, u_input.b) ^ vec4<i32>(u_input.b, 25714i, -1i, -30213i)) ^ vec4<i32>(-8705i, u_input.b, u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, 259f, 686f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1867f, 727f, 875f)))), !select(true, true, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, 827f, 472f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1688f, 994f, 297f))))), vec3<i32>(-1i) * -vec3<i32>(u_input.b >> (u_input.a.x % 32u), func_2(20795i, -1167f, vec2<bool>(false, true)).x, _wgslsmith_add_i32(-1i, u_input.b)), true);
    global0 = array<u32, 3>();
    let var_1 = vec4<i32>(-min(0i, -20609i), countOneBits(_wgslsmith_clamp_i32(-u_input.b, func_4(var_0.d, Struct_1(var_0.e.x, var_0.b, var_0.c, var_0.d, var_0.c), var_0.b.yyx, var_0.d).b.x, -32678i ^ u_input.b)) >> (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(0u, 3u)], _wgslsmith_mod_u32(25781u >> (u_input.a.x % 32u), ~u_input.a.x)) % 32u), u_input.b, 24410i);
    var var_2 = func_4(!func_4(false, func_4(!var_0.d, var_0, vec3<i32>(u_input.b, 2147483647i, var_1.x), true), vec3<i32>(_wgslsmith_mult_i32(var_0.b.x, -1i), -1i, min(-2147483647i, -40561i)), true).d, func_4(2147483647i <= firstTrailingBit(firstLeadingBit(-1i)), var_0, countOneBits(var_1.wwx), true || all(!vec3<bool>(true, var_0.d, true))), vec3<i32>(38472i, -2147483647i, _wgslsmith_mult_i32(16276i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.zz, var_0.b.yw), min(var_0.b.x, 2147483647i)))), true);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(var_2.e.x * var_2.a)))) + var_2.e.x), ~vec4<i32>(~(~var_1.x), _wgslsmith_div_i32(1i, -34820i), var_2.b.x, 0i), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - -279f) * 913f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.c.x * 561f), _wgslsmith_f_op_f32(-var_0.e.x))))), ~82304u <= global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 0u), vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 3u)], 3u)], 3u)], 1u, 28702u)) | 4294967295u, 3u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(468f, var_2.c.x, 1152f)), vec3<f32>(410f, var_0.a, 1000f)) * var_2.e) - _wgslsmith_f_op_vec3_f32(-var_2.e)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(4294967295u | u_input.a.x))), vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(56019u, 3u)], 0u), u_input.a.x), _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x)), firstTrailingBit(u_input.a));
}

